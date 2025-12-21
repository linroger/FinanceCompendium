---
title: "Chapter 6: Relations and Modular Arithmetic: Structuring Sets and Proving Facts About The Integers"
parent_directory: "Everything You Always Wanted to Know About Mathematics"
formatted: "2025-12-21 09:57:00 AM"
formatter_model: "kimi-k2-turbo"
cli-tool: "claude-code"
primary_tags:
  - relations and modular arithmetic
  - equivalence relations
  - modular arithmetic
  - congruence modulo n
  - chinese remainder theorem
  - bezouts identity
secondary_tags:
  - binary relations
  - reflexive relations
  - symmetric relations
  - transitive relations
  - anti-symmetric relations
  - equivalence classes
  - partial orders
  - total orders
  - integer divisibility
  - multiplicative inverses
  - number theoretic proofs
  - set partitions
  - order relations
  - strict partial orders
  - quadratic residues
cssclasses: academia
---

# Chapter 6: Relations and Modular Arithmetic: Structuring Sets and Proving Facts About The Integers

## 6.1 Introduction

Now that we've built a strong foundation of mathematical terminology, concepts, and material, you might be wondering what we're going to talk about next! Well, much like we wanted to rigorize the concept of mathematical induction—something we intuitively "understood" but couldn't yet develop in a precise mathematical way—we will, in the next two chapters, set on firmer ground a concept that we have used in passing already, and one that you're likely familiar with in an intuitive sense: a function.

To accomplish this, we will start by talking about relations. This will lead us into the particular area of equivalence relations, which allow us to talk about some qualitative properties of sets. In particular, we will use some equivalence relations on the set  $\mathbb{Z}$  to state and prove many interesting properties about integers. This will give us occasion to briefly explore the mathematical branch of Number Theory. It is a rich, deep, and broad field, and we will really only skim the surface by stating and proving a few helpful theorems and using them to solve some interesting puzzles and problems. Then, we will move right along to the next chapter and get back to our goal of discussing functions.

### 6.1.1 Objectives

The following short sections in this introduction will show you how this chapter fits into the scheme of the book. They will describe how our previous work

will be helpful, they will motivate why we would care to investigate the topics that appear in this chapter, and they will tell you our goals and what you should keep in mind while reading along to achieve those goals. Right now, we will summarize the main objectives of this chapter for you via a series of statements. These describe the skills and knowledge you should have gained by the conclusion of this chapter. The following sections will reiterate these ideas in more detail, but this will provide you with a brief list for future reference. When you finish working through this chapter, return to this list and see if you understand all of these objectives. Do you see why we outlined them here as being important? Can you define all the terminology we use? Can you apply the techniques we describe?

By the end of this chapter, you should be able to …

- Define a relation and provide many examples.  
- Define and understand various properties that a relation might have, providing examples of relations that do and do not have these properties.  
- Consider a defined relation and discover and prove what properties it has.  
- Define equivalence relations and equivalence classes and explain why these are particularly interesting and important examples of relations.  
- Consider a defined equivalence relation and categorize its equivalence classes.  
- Use a particular equivalence relation on the set of integers to state and prove interesting results in number theory.  
- Define the concept of multiplicative inverses, understand what this means in the particular context of modular arithmetic, and apply this idea to prove/disprove the existence of solutions to particular equations.  
- State and understand various theorems in number theory, and apply them to solve given problems.

### 6.1.2 Segue from previous chapter

This chapter doesn't quite follow from the previous one directly, in the way that others have. Instead, we are really moving into a new part of the book. From now on, we will be taking all of the mathematical knowledge we have developed thus far and applying it to learn about other interesting areas. We needed to work through all of that other material first, to get to this point. From now on, we will be stating complicated claims and applying proof techniques to prove them. We will provide you with definitions and theorems and expect you to use them to prove other claims. In this sense, this chapter follows from all of the previous chapters. We will be putting all of that acquired knowledge, terminology, and experience to good use!

### 6.1.3 Motivation

You have possibly worked with functions in calculus (differentiating and integrating them) or in a high school algebra course (graphing a function or finding its roots) or even in computer science (coding an algorithm or using recursive programming). But try this: define what a function is. How would you explain it to your uncle who's never studied mathematics? How would you explain it to a hyper-intelligent alien? How would you attempt to explain it with the level of rigor that we've provided with mathematical induction? It's not so easy, is it?

To develop a rigorous notion of functions, we will first talk about relations, a way to compare elements of sets. We will look at plenty of examples and their properties. Then, in the next chapter, we will see that a function is just a particular type of relation! While we talk about relations, we will explore their properties and discover that a particular combination of properties yields a special property. Specifically, we will see that equivalence relations yield natural partitions of sets, and vice-versa. This result will allow us to state and prove several results about the integers.

### 6.1.4 Goals and Warnings for the Reader

This chapter will continue our foray into abstract ideas and rigorous mathematics, so it is essential (especially if you feel put off by or uncomfortable with this increasing level of abstraction and the language required as part of it) that you don't get swept up and think that none of this information is "important" or "applicable". All of these concepts will continue to appear throughout this book—and all of mathematics, of course!—so keep that in mind if you find yourself losing focus. We recommend jotting down notes to yourself about what you're learning to remind yourself of what you're doing. When you see a theorem and read through it several times and finally understand it, write down a summary of the theorem in the margin or something so you'll have it later. Draw a little picture to help you conceptualize the important components of an example or theorem. When you read a definition, write down a canonical example and a non-example. After reading a proof, jot down an outline of the steps of the argument so you can "chunk" the concepts and remember (and recall) them more effectively. If you don't understand a definition or theorem or proof, make a note about your confusion, too! Take it to a fellow student or smart mathy friend or your TA or professor in office hours and see if they can address your confusion. Most of all, just remember that it takes time to digest and internalize these types of abstract concepts and arguments, and it's as important as ever to always work through examples to make sure you follow along in a way that makes sense to you. If you can understand something well enough to explain it to someone else, then you're in great shape.

## 6.2 Abstract (Binary) Relations

# 6.2.1 Definition

Let's jump right in and start talking about relations. We'll give you a definition and then a bunch of examples.

Definition 6.2.1. Let  $A, B$  be sets. A relation between  $A$  and  $B$  is a set of ordered pairs,  $R \subseteq A \times B$ . Given elements  $a \in A$  and  $b \in B$ , we say  $a$  and  $b$  are related if and only if  $(a, b) \in R$ .

The set  $A$  is called the domain and the set  $B$  is called the codomain. The set  $R$  is called the relation set.

If  $A = B$ , we say  $R$  is a relation on  $A$ .

It is also fairly common to write  $xRy$  to mean  $(x,y) \in R$ . When we have defined a relation in this way, we will stick to the notation  $(x,y) \in R$  to indicate the underlying set structure. Later on, we will sometimes define relations by using some symbol, like  $x < y$  or  $x \star y$ , and so on.

Remark 6.2.2. A relation, as we defined it here, is also sometimes referred to as a binary relation. This is because there are two "inputs" of the relation; the set  $R$  consists of ordered pairs.

We could generalize this idea to ternary relations. That is, given sets  $A, B, C$ , we could define a set  $R \subseteq A \times B \times C$  to be a ternary relation and say  $a, b, c$  are related if and only if  $(a, b, c) \in R$ . We could generalize this further to relations with  $n$  "inputs", as well. In this context, though, we will only consider binary relations, so we will use the term relation to mean binary relation.

Remark 6.2.3. A relation  $R$  is often defined by identifying a property of elements of  $A$  and  $B$  (phrased as a variable proposition  $P(a, b)$ ) and setting

$$
(a, b) \in R \Longleftrightarrow P (a, b)
$$

## Examples

Example 6.2.4. Let  $W = \{\text{Englishwords}\}$  and  $L = \{\text{Englishletters}\}$ . Define the relation  $R$  by setting

$$
(w, \ell) \in R \Longleftrightarrow w \text{begins with} \ell
$$

Then, (mathematics,m)  $\in R$  and (golf,g)  $\in R$  because these are valid words and we have identified their starting letters. For some non-examples, notice that (knowledge,n)  $\notin R$  and (you,u)  $\notin R$ . Furthermore, note that (zyzyxyqy,z)  $\notin R$  because zzyxyqy\n\n

It is often the case that  $A = B$ , so  $R$  defines a relation on pairs of elements from one set. The next example considers this situation.

Example 6.2.5. Let  $A = B = \mathbb{Z}$  and define a relation  $R$  on  $\mathbb{Z}$  by setting

$$
(x, y) \in R_2 \Longleftrightarrow x \text{and} y \text{have the same parity}
$$

Then  $(2,8)\in R$  and  $(-3,7)\in R$  and  $(-99,-99)\in R$ , but  $(1,2)\notin R$  and  $(0,-3)\notin R$  and  $(\pi,0)\notin R$  (since  $\pi \notin \mathbb{Z}$ ).

Example 6.2.6. Define a relation  $L$  on  $\mathbb{R}$  by setting

$$
(x, y) \in L \Longleftrightarrow x < y
$$

Then  $(-1,\pi)\in L$  and  $(0,100)\in L$  but  $(2,2)\notin L$  and  $(\pi,-1)\notin L$

Notice that these are ordered pairs (which we may forget about since  $A = B = \mathbb{R}$ ) so the order of the elements matters. Indeed, knowing that  $(x,y) \in L$  doesn't necessarily imply that  $(y,x) \in L$ , in general. In this example, that implication is always False, in fact!

Recall that we sometimes write  $xLy$  to say  $(x,y)\in L$ , so let us note that we could say  $-1R\pi$  but  $\pi \mathcal{R}$ -1 here, and  $2\mathcal{R}2$ .

## The Empty Relation

Remark 6.2.7. The examples we have seen thus far are interesting relations, in some sense. Given any  $x, y \in \mathbb{R}$ , we can determine whether  $x < y$  or not by just comparing them and deciding whether that property holds. That is, each of the examples we have seen thus far were defined by saying  $(a, b) \in R \Longleftrightarrow P(a, b)$  is true for some property  $P(a, b)$ .

A relation doesn't necessarily need to be defined this way, though. For instance, we know  $\varnothing \subseteq S$  for any set  $S$ . Thus, given two sets, we can always define the trivial relation by using the fact that  $\varnothing \subseteq A \times B$ ; that is, the trivial relation is the one where no elements are related! This is relatively "uninteresting" for sure, but it still satisfies the definition of a relation, so we allow it.

## Any Set of Ordered Pairs is a Relation

Remark 6.2.8. Given sets  $A, B$ , any subset  $R \subseteq A \times B$  defines a relation. It might be difficult (or impossible, perhaps) to identify a property that characterizes that relation.

For instance, if  $A = \{1, 3, 5\}$  and  $B = \{\star, \heartsuit\}$ , then we can define a relation between  $A$  and  $B$  by setting

$$
R = \{(1, \star), (5, \heartsuit) \}
$$

Why is 1 related to  $\star$ ? Why is 3 not related to anything? Who knows? It's just a set of ordered pairs! This is, mathematically speaking, totally fine.

## The Equality Relation

Example 6.2.9. Another example of a way to define a relation on any set  $X$  is to define the equality relation. That is, let  $(x, y) \in R \Longleftrightarrow x = y$ . Notice that this doesn't depend on what  $X$  is or what types of objects it contains as elements, merely that it is a set.

## Similarities Between Relations

Example 6.2.10. Let  $S$  be the set of students in your class. Define a relation  $R_{1}$  between  $S$  and  $\mathbb{N}$  by saying  $(s, n) \in R_{1}$  if person  $s \in S$  is  $n$  years old. Write out a few elements of this relation set.

Now, define a relation  $R_{2}$  on  $S$  itself by saying  $(s,t)\in S$  if persons  $s$  and  $t$  are the same age (in years). Write out a few elements of this relation set.

How do the relations  $R_{1}$  and  $R_{2}$  compare? Do they somehow "encode" the same information about the elements of the set  $S$ ? Why or why not? Is there a way we can use  $R_{1}$  to determine  $R_{2}$ ? What about the other way around? Think about this carefully and try to write a few sentences that summarize your thoughts about this. We will address these questions immediately in the next subsection, but take some time now to investigate on your own!

## Relations "Encode" Information

The previous example is meant to illustrate the real use of abstract relations and motivate why we even talk about them at all (besides our overarching goal of rigorizing the notion of a function). In some sense, a relation is a way of "storing" information about elements of two sets, or one set; it's a way of comparing two elements and declaring whether or not they satisfy some property. In a more general sense, though, a relation can provide information about how "well" a set's (or sets') elements behave in terms of a specific property.

For instance, notice that in the previous example, the relation  $R_{1}$  told us a little "more" about the elements of  $S$ . Certainly,  $R_{1}$  tells us who is the same age as anyone else: we can look for two pairs like  $(s,n)$  and  $(t,n)$ , say, with the same second coordinate. But  $R_{1}$  also tells us what that age is: just look at that second coordinate the pairs share. This does not work with  $R_{2}$ . Knowing  $(s,t) \in R_{2}$  just tells us students  $s$  and  $t$  are the same age; it does not tell us what that age is! In that sense,  $R_{1}$  is a "better" relation and provides "more" information.

There are also reasons why  $R_{2}$  is "better", too, though! For example, look at one of its nice properties: if  $(x,y)\in R_2$ , it is necessarily true that  $(y,x)\in R_{2}$ , as well. This is certainly not true of  $R_{1}$  because when  $(s,n)\in R_{1}$ , it doesn't even make sense to say whether or not  $(n,s)\in R_{1}$  because the order of the pair does not match the domain and codomain! Does this property now make  $R_{2}$  a "better" relation? Well, yes and no. It depends on context and what type of information we want to encode and retrieve. In certain situations, maybe you'd want to use  $R_{1}$ , and other times you'd want to use  $R_{2}$ .

But we're getting slightly ahead of ourselves here! We can't yet describe to you what these properties mean and why they may or may not be desirable. On the whole, though, we are curious about these types of properties and when they do (and do not) hold for all pairs of elements in a given set. In the next subsection, we will define and explore several common properties of abstract relations. It is not a guarantee (or requirement) that any relation possess one or more of these properties, but these are the ones that have proven to be interesting and useful in the mathematical and real-world contexts in which relations arise. After that, we'll see lots of examples of relations and discuss how to prove these properties hold. While doing this, we'll develop some intuitions for how to work with relations and even figure out the kinds of claims we'd be trying to prove in the first place!

# 6.2.2 Properties of Relations

Let's start right off by defining a few properties. For each of these properties, every relation either does or does not satisfy it. We encourage you to read each property one by one and try to construct a relation that does satisfy the property, and then one that doesn't. This will help you truly understand the underlying principles of the property and how relations work. (Then, try to define some relations that have some combination of the properties!) After these definitions, we will provide some canonical examples that you might have even come up with yourself! But seriously, do try to come up with some on your own and share any interesting ones that you have!

## Definitions: Properties of a Relation on a Set

These properties rely on being able to reverse the order of a pair. That is, given  $(x,y)\in R$ , we might wonder about the pair  $(y,x)$ ; however, the relationship between the domain and codomain demands that  $(y,x)\in A\times B$ , as well. Thus, we will require  $A\times B = B\times A$ , which only happens when  $A = \emptyset$  or  $B = \emptyset$  or  $A = B$ . (Remember we proved this earlier when talking about sets in Chapter 3!) Since  $A = \emptyset$  and  $B = \emptyset$  are uninteresting cases, we will assume in these properties that  $A = B$  (and  $A\neq \emptyset$ ), so we are defining a relation on one non-empty set and comparing its elements with each other.

Definition 6.2.11. Let  $A$  be a set and let  $R$  be a relation on  $A$ , i.e.  $R \subseteq A \times A$ .

- We say  $R$  is reflexive if

$$
\forall x \in A. (x, x) \in R
$$

That is, every element is related to itself.

- We say  $R$  is symmetric if

$$
\forall x, y \in A \bullet (x, y) \in R \Rightarrow (y, x) \in R
$$

That is, the order of the comparison doesn't matter.

- We say  $R$  is transitive if

$$
\forall x, y, z \in A. [ (x, y) \in R \wedge (y, z) \in R ] \Longrightarrow (x, z) \in R
$$

That is, relationships can transition through a middle-man.

- We say  $R$  is anti-symmetric if

$$
\forall x, y \in A. [ (x, y) \in R \wedge (y, x) \in R ] \Rightarrow x = y
$$

That is, two different elements can be related in at most one way, or not at all. To see why this is the same statement, let's look at the contrapositive of the conditional statement in the line above:

$$
\forall x, y \in A. x \neq y \Longrightarrow [ (x, y) \notin R \vee (y, x) \notin R ]
$$

Note: it is important to point out that anti-symmetric is NOT the same as not symmetric. Look carefully at the logical order and quantifiers of the properties to make sense of this. For example, the  $\leq$  relation on  $\mathbb{R}$  is antisymmetric but not symmetric. Think about why this is the case.

In fact, try to come up with a relation that is both anti-symmetric AND symmetric. It actually isn't that hard! We've already mentioned one fundamental relation that has this property.

# 6.2.3 Examples

Again, try to come up with some relations that do and do not satisfy the four properties we just defined. We will present some nice, canonical examples of relations defined on  $\mathbb{N}$  below to give you some concrete ideas to keep in mind. Feel free to add to this list as you come up with simple examples, perhaps defined on other sets like  $\mathbb{Z}$  and  $\mathbb{R}$ .

Example 6.2.12. Throughout this example, relations are defined on the set  $\mathbb{N}$ .

- Define  $R_{1}$  on  $\mathbb{N}$  by

$$
(x, y) \in R_{1} \Longleftrightarrow x \text{divides} y
$$

(i.e.  $y$  is divisible by  $x$ , or  $\exists k \in \mathbb{N}$  such that  $y = kx$ . This definition is formally restated below; see Definition 6.2.15)

Then  $R_{1}$  is reflexive, because  $x|x$  since  $x = 1 \cdot x$ .

The divisibility relation is reflexive.

- Define  $R_2$  on  $\mathbb{N}$  by

$$
(x, y) \in R_{2} \Longleftrightarrow x \text{and} y \text{havethesameparity}
$$

Then  $R_{2}$  is symmetric because if  $x$  and  $y$  have the same parity then certainly  $y$  and  $x$  have the same parity.

The "has the same parity" relation is symmetric.

- Define  $R_{3}$  on  $\mathbb{N}$  by

$$
(x, y) \in R_{3} \Longleftrightarrow x < y
$$

Then  $R_{3}$  is transitive because if  $x < y$  and  $y < z$  then  $x < y < z$ , so  $x < z$ .

The  $<<$  relation is transitive.

- Define  $R_4$  on  $\mathbb{N}$  by

$$
(x, y) \in R_{4} \Longleftrightarrow x \leq y
$$

Then  $R_4$  is anti-symmetric because if  $x \leq y$  and  $y \leq x$  then  $x \leq y \leq x$  so  $x = y$ .

The " $\leq$ " relation is anti-symmetric.

Example 6.2.13. Remember that a relation is just a set of ordered pairs. We don't have to define it in terms of a property. Let's see an example phrased this way, and investigate its properties:

Define the relation  $R$  on the set  $S = \{a, b, c\}$  by

$$
R = \{(a, a), (a, c), (b, c), (c, b) \}
$$

Notice that this relation is:

- Not Reflexive:  $(c, c) \notin R$  
- Not Symmetric:  $(a, c) \in R$  but  $(c, a) \notin R$  
- Not Transitive:  $(a, c) \in R$  and  $(c, b) \in R$  but  $(a, b) \notin R$  
- Not Anti-Symmetric:  $(b, c) \in R$  and  $(c, b) \in R$  but  $b \neq c$

Example 6.2.14. Let's get a little practice using slightly different notation for relations. Remember that we can also write something like  $xRy$  to mean  $(x,y) \in R$ .

Define the relation  $\star$  on the set  $S$  of people in your class by saying, for any  $x, y \in S$ ,

$x \star y \iff x$  and  $y$  were born in the same month

We claim that this relation is reflexive, symmetric, and transitive. Do you see why?

- The relation is reflexive because each person is certainly born in the same month as himself (i.e.,  $x \star x$ ).  
- The relation is symmetric because if person  $x$  and person  $y$  were born in the same month (i.e.  $x \star y$ ), then certainly person  $y$  and person  $x$  (just a different order!) were born in the same month (i.e.  $y \star x$ ).  
- The relation is transitive because … well, you get the idea, right? We're just appealing to the concept of the word "same" over and over!

What about anti-symmetry here? It depends! Are there two different people in your class that were born in the same month? If so, this relation is not antisymmetric. However, was everybody in your class born in a different month? If so, this relation is anti-symmetric, because no one will be related to anybody but themselves! Think about this …

# 6.2.4 Proving/Disproving Properties of Relations

When we are presented with a set and a relation on that set, we will immediately wonder whether any of these properties hold. By playing around with some particular elements of the set in question, we can try to conjecture whether or not the relation satisfies a property, and then attempt to prove/disprove it. This sometimes amounts to a bit of "guessing and checking" but, ultimately, to prove a property holds, we must prove a statement of the form "For all … it is true that …" (Look back at our proof techniques from Section 4.9!) Thus, proving a relations property amounts to taking an arbitrary element (or elements) and arguing about how they are related. To disprove such a statement, we would prove its logical negation, which is of the form "There exists … such that …" (Again, look back at our proof techniques!) Thus, disproving a property amounts to finding a counterexample. Let's look at a couple of examples of proving/disproving relation properties. There are several more examples of these styles of proofs in the exercises, as well.

## The "Divides" Relation on  $\mathbb{Z}$

We will present (or, perhaps, remind you of) one definition first, because it will be the basis of one of our examples. This is a formal definition of what it means for one integer to divide another integer.

Definition 6.2.15. Let  $a, b \in \mathbb{Z}$ . We say  $\mathbf{x}$  divides  $\mathbf{y}$ , and write  $\mathbf{x} \mid \mathbf{y}$ , if and only if

$$
\exists k \in \mathbb {Z}. y = k x
$$

Example 6.2.16. Define the relation  $R$  on  $\mathbb{Z}$  by

$$
(x, y) \in R \Longleftrightarrow x \mid y
$$

Let's determine whether  $R$  satisfies any of the four properties of relations, and then prove/disprove all our claims!

In general, depending on the set and relation in question, you might immediately notice whether or not a property holds, via some intuition or just being able to "see" it right away. If so, great! If not (which is far more likely) we recommend starting a "proof" as if a property actually held, and seeing if you can finish. If you do, well then, you just proved the property! If you struggle at some point, maybe that's because the property doesn't hold, and the point in your proof where you're caught up will give you some insight into finding a counterexample. This strategy doesn't always work (maybe you're

struggling through a proof because it's actually challenging, say) but it can be quite helpful, so keep it in mind. We will see it in action in this example, too.

One other strategy—an even simpler one, actually—is to just make a statement out loud, or write down in words what the relation and the property in question is. Sometimes, just making yourself say something in plain language, instead of reading abstract symbols on the page, will force you brain into realizing something helpful! We'll see this strategy in action here, too.

- Let's see if  $R$  is reflexive. What would that actually mean? Let's make ourselves say this out loud. Would we expect that: "Any integer is divisible by itself." Of course! Now, let's try to write that down in the symbolic terms required in a proof.

Proof. We claim  $R$  is reflexive. Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Then  $x \mid x$  since  $x = 1 \cdot x$  and  $1 \in \mathbb{Z}$ . Thus,  $(x, x) \in R$ . Therefore,  $R$  is reflexive.

Voilà! Just thinking out loud helped us realize a fact, and that made it easier for us to write down that statement in mathematical language.

- Let's see if  $R$  is symmetric. This property is defined in terms of an implication, a conditional statement. So, let's assume we have an arbitrary related pair,  $(x, y) \in R$ . Would we necessarily believe  $(y, x) \in R$ , too? Said another way:

Assuming  $x$  divides  $y$ , can we also say that  $y$  divides  $x$ ?

This actually seems rather unlikely! Knowing  $x \mid y$  tells us that  $y = kx$  for some  $k \in \mathbb{Z}$ , but why would that lead us to believe that  $x = \frac{1}{k} y$  means  $y \mid x$ ? What if  $\frac{1}{k} \notin \mathbb{Z}$ ?

You might be tempted at this point to say something like "Well,  $\frac{1}{k}$  is only an integer when  $k = 1$  or  $k = -1$  so that's that." That isn't quite a full explanation! Remember that to disprove a "For all …" claim, we need to provide an explicit counterexample whenever possible. We don't need to characterize all of the cases where the property does and does not hold and try to explain things in generality. We just need an example to convince someone that the property does not hold. This is much more illustrative and direct than flailing our arms about and pointing out how some counterexample exists out there somewhere. Let's just show our reader one and move on!

Proof. Consider  $2, 6 \in \mathbb{Z}$ . Since  $6 = 3 \cdot 2$ , we have  $(2, 6) \in R$ .

However, writing  $2 = \ell \cdot 6$  requires  $\ell = \frac{1}{3}$ , and  $\frac{1}{3} \notin \mathbb{Z}$ . Thus,  $(6,2) \notin R$ .

This shows that  $R$  is not symmetric.

- Let's see if  $R$  is transitive. In general, transitivity is typically the most difficult property to think about. This is partly due to the fact that it's defined by a conditional statement with two hypotheses, and it uses three variables.

In this specific example, we will assume  $x \mid y$  and  $y \mid z$ , and then wonder whether  $x \mid z$  necessarily. Try saying that out loud with words and seeing if you believe it or not.

It seems like it's true, right? Now, try writing down the hypotheses and the conclusion in mathematical language. Can you see how to piece those together? Try writing out your version of this proof before reading on.

Proof. Let  $x, y, z \in \mathbb{Z}$  be arbitrary and fixed. Suppose  $(x, y) \in R$  and  $(y, z) \in R$ .

This means  $x \mid y$  and  $y \mid z$ , so  $\exists k, \ell \in \mathbb{Z}$  such that  $y = kx$  and  $z = \ell y$ . Let such  $k, \ell$  be given.

Substituting the first equation into the second, we find that

$$
z = \ell y = \ell (k x) = (k \ell) x
$$

Since  $k\ell \in \mathbb{Z}$ , as well, we have shown that  $x \mid z$ . Thus,  $(x,z) \in R$ , necessarily.

Therefore,  $R$  is transitive.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/27ce77de83eea3304b09dad22b3987f696b56cddee47bb9a16ad8595d8928b1b.jpg)

- Let's see if  $R$  is anti-symmetric. This property is also defined by a conditional statement with two hypotheses, so we will assume we have an  $x$  and a  $y$  and that  $x \mid y$  and  $y \mid x$ . Can we conclude that  $x = y$ ? This question hearkens back to proving that  $R$  was not symmetric. Remember, we proved that  $x \mid y$  does not necessarily imply  $y \mid x$  and, actually, if you thought about it for a moment, it's actually very unlikely that  $x \mid y$  and  $y \mid x$  can both be true. How can this be? Think about it carefully and try to come up with your own proof before you read ours.

Proof. Let  $x, y \in \mathbb{Z}$  be arbitrary and fixed. Suppose  $(x, y) \in R$  and  $(y, x) \in R$ .

This means  $x \mid y$  and  $y \mid x$ , so  $\exists k, \ell \in \mathbb{Z}$  such that  $y = kx$  and  $x = \ell y$ . Let such  $k, \ell$  be given.

Substituting the first equation into the second, we find that  $y = kx = k(\ell y) = (k\ell)y$ . We now have two cases.

Case 1: Suppose  $y = 0$ . Then we cannot divide both sides by  $y$ . Instead, we observe that  $x = \ell y = \ell \cdot 0 = 0$ , and therefore  $x = 0$ , as well. Thus,  $x = y$  in this case.

Case 2: Suppose  $y \neq 0$ . Then we can divide both sides by  $y$ . This yields  $k\ell = 1$ . Since  $k, \ell \in \mathbb{Z}$  this means either  $k = \ell = 1$  or  $k = \ell = -1$ .

If  $k = \ell = 1$ , then  $x = \ell y = y$ . In the other case …

Oh, shucks! This doesn't work! Do you see what happened? In "most" of the cases, we did conclude that  $x = y$ , but there is actually a possibility that  $y = -x$ . For instance, when  $y = 3$  and  $x = -3$ , notice that  $x \mid y$  and  $y \mid x$  but  $x \neq y$ . THIS is the counterexample we need, and trying to finish our "proof" helped us find it. Perhaps you saw this case coming all along; if so, way to go! Let's wrap this up by presenting that counterexample:

Proof. Consider  $x = 3$  and  $y = -3$ , so  $x, y \in \mathbb{Z}$ . Notice that  $x \mid y$  and  $y \mid x$  because  $3 = (-1)(-3)$  and  $-3 = (-1) \cdot 3$ , and since  $-1 \in \mathbb{Z}$ .

However, certainly  $x \neq y$ . This shows that  $R$  is not anti-symmetric.

As a follow-up question, consider what happens when we define this relation on the set  $\mathbb{N}$  instead of  $\mathbb{Z}$ . What changes? Which properties hold now? Are any answers different than with  $\mathbb{Z}$ ? Do think about this. The answers to those questions will motivate our next subsection.

## Constructing a Relation with Specific Properties

One more example before we move on. An interesting "game" to play is to take a set and construct a relation  $R$  that satisfies some specific subset of the four properties. (Note: there are 16 different ways that the 4 properties can/cannot hold.) We will ask you questions like this in the exercises, so let's work through one example here.

Example 6.2.17. Goal: Let  $S$  be the set of students in this class. Define a relation  $R$  that is (1) not reflexive, (2) not symmetric, (3) transitive, and (4) anti-symmetric.

To ensure that  $R$  is not reflexive, we must make sure that no element is related to itself. To ensure  $R$  is not symmetric, we must make sure that whenever a pair  $(x,y) \in R$ , then  $(y,x) \notin R$ . To ensure  $R$  is transitive, we must make sure whenever  $(x,y) \in R$  and  $(y,z) \in R$ , then  $(x,z) \in R$ . And to ensure  $R$  is anti-symmetric, we will think of the contrapositive form of the property's definition, which requires that any pair of elements is related in at most one way. This last property is perhaps the hardest to think about; it says that for every  $x,y \in S$ , either  $x$  is related to  $y$  but not the other way, or else  $y$  is related to  $x$  and not the other way, or else  $x$  and  $y$  just aren't related either way. That is, we must not allow any pairs to satisfy both  $(x,y) \in R$  and  $(y,x) \in R$ . (Again, reread the definition of anti-symmetric and write down the contrapositive of the conditional statement and think about why this works.)

Now let's try to construct  $R$  so that it satisfies these properties. Property (1) means that our definition can't allow anything of the form "or is equal to", and (2) means that the definition must relate any  $x$  and  $y$  in "only one way". Thus, we might guess that a comparison property, something like the "less than" relation on  $\mathbb{Z}$ , might work. Let's try it out and attempt to prove/disprove the desired properties.

Let us define  $R$  on  $S$  by

$$
x R y \Longleftrightarrow x \text{is} y \text{(in ye ar s)}
$$

Now, let's explore its properties and make sure they are what we wanted them to be. Try to prove/disprove them on your own before reading our solutions! Also, play around with a different relation on  $S$  (make one up!) and see how its properties are different. Can you come up with another relation that has the exact same properties as this one?

- $R$  is not reflexive. This is because any person  $x \in S$  has the exact same age as him/herself, and so  $x \notin R$ .  
- $R$  is not symmetric. This is because if  $x$  is strictly younger than  $y$ , then  $y$  is strictly older than  $x$ , so  $y \not\subset R$ .  
- $R$  is transitive. This is because if  $x$  is (strictly) younger than  $y$  and  $y$  is (strictly) younger than  $z$ , then certainly  $x$  is (strictly) younger than  $z$ .  
- $R$  is anti-symmetric. This is because for any two people  $x, y \in S$ , one of them must be younger than the other, or else they are the same age; they cannot both be strictly younger than each other. (Essentially, we are ensuring anti-symmetry holds by making sure the hypothesis of the conditional statement in that property's definition never holds, so the conditional itself is always True.)

Thus, this relation  $R$  satisfies all of the desired properties.

You'll notice that we were not completely rigorous in these arguments, but there's a good reason for it. Specifically, we didn't produce explicit counterexamples for the properties that fail. It would be best if we could identify two students in your class and show how one is younger than the other but not the other way around. But we don't know who's in your class! That's why we left our arguments as "explaining the existence of something without pointing to it explicitly".

We will point out that, in general, a relation of this form—one defined as  $(x,y)\in R\Longleftrightarrow x$  is "less" than  $y$  (however "less" makes sense in that context)—will be non-reflexive, non-symmetric, transitive, and anti-symmetric. In fact, we can even replace "less" with "greater" and this still holds. To see why this is true, think about the  $<<$  relation on  $\mathbb{N}$ , or  $\mathbb{Z}$ , or  $\mathbb{R}$ . Think about the  $>>$  relation on those sets. Think about the "is younger than" relation on the set of people, or the "is taller than" relation, or the "has more children than" relation. What about the  $<<$  relation on  $\mathbb{Z}$ ? How is this different than the  $<<$  relation? What properties change?

(These types of questions will be explored a little bit further in the next subsection, where we examine a particular type of relation that behaves like these " $\leq$ " and " $\geq$ " relations. They are called order relations, naturally.)

# 6.2.5 Questions & Exercises

## Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) How is (binary) relation defined, in terms of sets?  
(2) Say we have a relation  $R$  defined between  $A$  and  $B$ . What must true about  $A$  and  $B$  for us to be able to talk about whether  $R$  is reflexive, say?  
(3) When is a relation reflexive? Give an example of a set and a reflexive relation on that set.  
(4) When is a relation symmetric? Give an example of a set and a symmetric relation on that set.  
(5) When is a relation transitive? Give an example of a set and a transitive relation on that set.  
(6) When is a relation anti-symmetric? Give an example of a set and an anti-symmetric relation on that set.  
(7) What is the difference between not symmetric and anti-symmetric?

Give an example of a set and a relation on that set which is both symmetric and anti-symmetric.

## Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Consider the set  $A = \{1,2,3\}$ . For each of the following relations, defined on  $A$  or  $\mathcal{P}(A)$  as specified, decide whether it is (i) reflexive, (ii) symmetric, (iii) transitive, (iv) anti-symmetric.

Not much justification is required, just a Yes or No and a sentence or two.

(a)  $R_{a}$  on  $A$  defined by  $R_{a} = \{(1,1),(1,2),(2,1),(2,2),(3,3)\}$  
(b)  $R_{b}$  on  $A$  defined by  $R_{b} = \{(1,1),(1,2),(2,2),(2,3),(3,3)\}$  
(c)  $R_{c}$  on  $\mathcal{P}(A)$  defined by  $\forall S,T\in \mathcal{P}(A)$  .  $(S,T)\in R_c\iff S\cap T = \emptyset$  
(d)  $R_{d}$  on  $\mathcal{P}(A)$  defined by  $\forall S,T\in \mathcal{P}(A)$  .  $(S,T)\in R_d\iff S\cap T\neq \emptyset$

(e)  $R_{e}$  on  $\mathcal{P}(A)$  defined by  $\forall S,T\in \mathcal{P}(A).(S,T)\in R_e\Longleftrightarrow S\subseteq T$

(2) Define the relation  $\star$  on  $\mathbb{Z}$  by saying

$$
\forall x, y \in \mathbb {Z}. x \star y \Longleftrightarrow 3 \mid x - y
$$

(a) Prove that  $\star$  is reflexive.  
(b) Prove that  $\star$  is symmetric.  
(c) Prove that  $\star$  is transitive.

(Remember that "|" means "divides". Be sure to use the formal definition; see Definition 6.2.15.)

(3) Define the relation  $\sim$  on  $\mathbb{Z}$  by saying

$$
\forall x, y \in \mathbb {Z}. x \sim y \Longleftrightarrow 3 \mid x + 2 y
$$

(a) Prove that  $\sim$  is reflexive.  
(b) Prove that  $\sim$  is symmetric.  
(c) Prove that  $\sim$  is transitive.

(4) Define the relation  $T$  on  $\mathbb{R}$  by saying, for any  $x,y\in \mathbb{R}$

$$
(x, y) \in T \iff \left(\frac{y}{x} \in \mathbb{R} \wedge \frac{y}{x} \geq 0\right)
$$

(a) Find  $x \in \mathbb{R}$  such that  $(x, x) \notin T$ . Does this mean  $T$  is not reflexive? Why or why not?  
(b) Find  $x, y \in \mathbb{R}$  such that  $(x, y) \in T$  and  $(y, x) \in T$ . Does this mean  $T$  is symmetric? Why or why not?  
(c) Find  $x, y \in \mathbb{R}$  such that  $(x, y) \in T$  but  $(y, x) \notin T$ . Does this mean  $T$  is not symmetric? Why or why not?  
(d) Determine whether or not  $T$  is transitive, and prove your claim.

(5) Define the relation  $\leftrightarrow$  on  $\mathcal{P}(\mathbb{N})$  by saying, for any  $X,Y\subseteq \mathbb{N}$

$$
X \leftrightarrow Y \iff \left( \begin{array}{c c c} X \subseteq Y & \vee & X \cap Y = \emptyset \end{array} \right)
$$

Prove/disprove each of the four standard properties for this relation (i.e. reflexive, symmetric, transitive, anti-symmetric).

(6) What is wrong with the following "proof" that the symmetric and transitive properties imply the reflexive property?

Let  $A$  be a non-empty set. Let  $R$  be a relation on  $A$ .

Suppose  $R$  is symmetric and transitive. We will show  $R$  is reflexive.

Let  $x \in A$  be arbitrary and fixed. Define the set  $T$  to be

$$
\{y \in A \mid (x, y) \in R \}
$$

Let  $y \in T$  be given. Thus,  $(x,y) \in R$ .

Since  $R$  is symmetric, we can deduce  $(y,x)\in R$

Since  $R$  is transitive, and  $(x,y) \in R$  and  $(y,x) \in R$ , we deduce that  $(x,x) \in R$ .

Since  $x$  was arbitrary, we have shown that the reflexive property holds.

## 6.3 [Optional Reading] Order Relations

Let us discuss some relations that behave like " $\leq$ " and have similar inherent properties. This is motivated by the fact that these relations are easily definable on the standard sets of numbers we have— $\mathbb{N}$ ,  $\mathbb{Z}$ ,  $\mathbb{Q}$ ,  $\mathbb{R}$ —and they also apply to some other, potentially surprising, situations. We will give a definition first and then consider some examples. We will then use those examples to motivate some interesting properties of order relations and then state and prove those facts.

Definition 6.3.1. Let  $R$  be a relation defined on the set  $A$ .

- If  $R$  is reflexive, transitive, and anti-symmetric, then we say  $R$  is a partial order on  $A$ .  
- If  $R$  is reflexive, transitive, and anti-symmetric and, in addition, it satisfies

$$
\forall x, y \in A. (x, y) \in R \vee (y, x) \in R
$$

then we say  $R$  is a total order on  $A$ . (That is, a total order is a partial order such that every two elements of the set are comparable one way or the other.)

This definition tells us what partial and total orders are. The next definition just gives us some useful shorthand for referring to partial and total orders on sets.

Definition 6.3.2. When  $R$  is a partial order on  $A$ , we say that the pair  $(A, R)$  is a partially ordered set, or sometimes just a poset, for short.

When  $R$  is a total order on  $A$ , we say that the pair  $(A, R)$  is a totally ordered set, or sometimes just a toset, for short.

We will attempt to explain the reasons for these terms by giving several related examples.

Example 6.3.3. Define the following four relations on  $\mathbb{R}$ :

$$
\begin{array}{l} (x, y) \in R_{1} \Longleftrightarrow x \leq y \\ (x, y) \in R_{2} \Longleftrightarrow x <   y \\ (x, y) \in R_{3} \Longleftrightarrow x = y \\ (x, y) \in R_{4} \Longleftrightarrow \lfloor x \rfloor = \lfloor y \rfloor \\ \end{array}
$$

(Recall that  $\lfloor x\rfloor = \max \{a\in \mathbb{Z}\mid a\leq x\}$  is the "floor" of a real number; it is the integer we get by rounding down.)

Which of these are partial orders? Total orders? Neither? Think about this for a few minutes and try to sketch some proofs of your claims, or explain them out loud to a friend/classmate.

Now, here are our thoughts. The relations  $R_{1}$  and  $R_{3}$  are both partial orders, but only  $R_{1}$  is a total order. The relations  $R_{2}$  and  $R_{4}$  are neither partial nor total orders (because  $R_{2}$  is not reflexive and  $R_{4}$  is not anti-symmetric). The idea behind any type of order relation—partial or total—is that we can somehow compare the elements of the set  $A$  and assign … well, an ordering to them. Heuristically speaking, a partial order induces "chains" of elements in  $A$  so that, along any chain, we can arrange the elements in a line, kind of like the number line and how we usually picture  $\mathbb{R}$ ; for a total order, there is only one "chain" and it is all of  $A$ .

You might object to the idea that  $R_{2}$  isn't somehow an "order-like" relation, though, and you'd have a fair point. The only fundamental difference between  $R_{2}$  and  $R_{1}$  is that we don't allow equality; quite literally, the phrase "or equal to" is built into the definition of " $\leq$ ", yet that phrase is left out of the definition of " $<$ "". This results in  $R_{2}$  being non-reflexive, but that's it. You might also notice that the relation  $R_{4}$  doesn't have this same type of relationship with  $R_{1}$ ; it seems to be something different (and we'll get to that soon enough). This motivates the following few definitions, wherein a partial or total order can be "relaxed" to a related ordering.

Definition 6.3.4. Let  $A$  be a set and let  $R$  be a relation on  $A$ . We say  $R$  is irreflexive if and only if

$$
\forall x \in A. (x, x) \notin R
$$

Notice that this is not the same as merely being not reflexive. Think about the quantifiers: reflexivity means every element is related to itself, so the logical negation of that means there exists at least one element that is not related to itself. Irreflexivity means that every element is not related to itself.

Definition 6.3.5. Let  $A$  be a set and let  $R$  be a relation on  $A$ . We say  $R$  is a strict partial order if it is irreflexive, transitive, and anti-symmetric.

We say  $R$  is a strict total order if it is irreflexive, transitive, anti-symmetric, and satisfies the following property:

$$
\forall x, y \in A. x \neq y \Rightarrow [ (x, y) \in R \vee (y, x) \in R ]
$$

You might wonder what the connection is to non-strict order relations here. Well, there is a natural way to convert any order relation into a strict one, and vice-versa. We can always define one from the other by either building in, or removing, whether or not elements are related to themselves. The following lemma summarizes how to do this and, in so doing, shows that there are just as many strict orders as there are non-strict ones.

Lemma 6.3.6. Let  $(A,R_1)$  be a partially ordered set. Then the relation  $S_{1}$  defined by

$$
(x, y) \in S_{1} \Longleftrightarrow [ (x, y) \in R_{1} \wedge x \neq y ]
$$

is a strict partial order on  $A$ .

Let  $(A,R_2)$  be a totally ordered set. Then the relation  $S_{2}$  defined by

$$
(x, y) \in S_{2} \Longleftrightarrow [ (x, y) \in R_{2} \wedge x \neq y ]
$$

is a strict total order on  $A$ .

Let  $(A, S_3)$  be a strictly partially ordered set. Then the relation  $R_3$  defined by

$$
(x, y) \in R_{3} \Longleftrightarrow [ (x, y) \in S_{3} \vee x = y ]
$$

is a (non-strict) partial order.

Let  $(A, S_4)$  be a strictly totally ordered set. Then the relation  $R_4$  defined by

$$
(x, y) \in R_{4} \Longleftrightarrow [ (x, y) \in S_{4} \vee x = y ]
$$

is a (non-strict) total order.

Thinking back to the relations  $R_{1}$  and  $R_{2}$  defined above on  $\mathbb{R}$ , it might seem a little odd to define "less than" by "less than or equal to and not equal to". It's certainly wordier! However, this is just a consequence of how we describe "  $\leq$  " linguistically. Mathematically speaking, it is more natural to speak of reflexive relations and partial and total orders, and then alter those to become strict orders. We will see soon enough—when we talk about minimal elements—why reflexivity is a nice property, and this is a reasonable justification for why we would start with a partial order and then amend the definition to allow strict orders, as opposed to the other way around. For now, just notice that  $R_{2}$  is the strict total order that corresponds to the total order  $R_{1}$ .

Question: is there a strict partial order that corresponds to the partial order  $R_3$ ? If so, what is it? If not, why?

The relation  $R_4$  is not any type of order relation, strict or otherwise. However, notice that  $R_4$  does nicely "package" the elements of  $\mathbb{R}$  together. Essentially, every real number  $y$  satisfying  $1 \leq y < 2$  is "the same" under this relation. Likewise for every  $y$  satisfying  $2 \leq y < 3$ , and every  $y$  satisfying, say,  $-5 \leq y < 4$ , and so on. Once that "packaging" is accomplished, we "know" that there is an ordering we can assign to those "packages", but no information about that order is encoded in the relation  $R_4$ , itself. We would have to do some extra work to impose that ordering. This is why  $R_4$  is not an order relation

of any kind, the way it is defined. However, it is what we call an "equivalence relation" because of this nice "packaging" property that partitions the elements of the set into separate classes. This is a notion we will explore in the next section. Once we have established those "packages", we can compare them and order them.

Let's explore some examples in a context other than  $\mathbb{R}$ . One of these following relations is actually a standard example of a partial order.

Example 6.3.7. Let  $S = [3]$  and consider the power set,  $\mathcal{P}(S)$ . (Remember that the power set of  $S$  is the set of all subsets of  $S$ .) Define the following relations on  $\mathcal{P}(S)$ , where  $X, Y \subseteq S$ :

$$
\begin{array}{l} (X, Y) \in R_{1} \Longleftrightarrow X \subseteq Y \\ (X, Y) \in R_{2} \Longleftrightarrow X \subset Y \\ (X, Y) \in R_{3} \Longleftrightarrow X \cap Y = \varnothing \\ (X, Y) \in R_{4} \Longleftrightarrow X \Delta Y = S \\ \end{array}
$$

Recall that  $X \Delta Y$  is the symmetric difference of  $X$  and  $Y$ , and is defined as  $X \Delta Y = (X - Y) \cup (Y - X) = (X \cup Y) - (X \cap Y)$ .

We claim that  $R_{1}$  is a partial order but not a total order. Before we go on to prove this claim, consider this challenge problem: Can you define a total order on  $\mathcal{P}(S)$ ? Can you do it in a way that would generalize to the case where  $S = [n]$ , for some arbitrary  $n \in \mathbb{N}$ .

Now, to prove that  $R_{1}$  is a partial order, we must show that it is reflexive, transitive, and anti-symmetric. To also show it is not a total order, we must show that it fails the additional property that says any two elements are somehow comparable. We will accomplish some of these steps, and leave the rest as exercises.

- Let's prove  $R_1$  is anti-symmetric: Let  $X, Y \in \mathcal{P}(S)$  and assume  $(X, Y) \in R_1$  and  $(Y, X) \in R_1$ . This means  $X \subseteq Y$  and  $Y \subseteq X$ , and therefore  $X = Y$ , by standard properties of sets.  
- Let's show  $R_{1}$  is not a total order. Consider  $X = \{1\} \subseteq S$  and  $Y = \{2,3\} \subseteq S$ . Notice that  $X \not\subseteq Y$  and  $Y \not\subsetneq X$ , so  $(X,Y) \notin R_{1}$  and  $(Y,X) \notin R_{1}$ . That is,  $X$  and  $Y$  are incomparable under this relation.

This relation separates the entire set  $\mathcal{P}(S)$  into chains that are ordered within themselves, but separate chains may contain elements that are incomparable. For instance, consider the following subsets of  $\mathcal{P}(S)$ :

$$
\begin{array}{l} A_{1} = \{\varnothing , \{1 \}, \{1, 2 \}, \{1, 2, 3 \} \} \\ A_{2} = \{\varnothing , \{1 \}, \{1, 3 \}, \{1, 2, 3 \} \} \\ A_{3} = \{\varnothing , \{2 \}, \{1, 2 \}, \{1, 2, 3 \} \} \\ A_{4} = \left\{\{3 \}, \{2, 3 \} \right\} \\ \end{array}
$$

These sets are not disjoint, so they do not form a partition of  $\mathcal{P}(S)$ . Notice, though, that  $R_{1}$  does induce a total order within each subset. By "induce" we mean that we use the same defining property of  $R_{1}$  but restrict our domain to the set  $A_{1}$ , for instance, instead of all of  $\mathcal{P}(S)$ . Of course, there are even more sets we could define that are chains under this relation.

Let's formalize this notion and then continue our example

Definition 6.3.8. Let  $(A,R)$  be a partially ordered set, and let  $B\subseteq A$ . Let  $\hat{R}$  denote the relation induced by  $R$  on  $B$ ; that is, we set

$$
\forall x, y \in A_{\bullet} (x, y) \in \hat{R} \Longleftrightarrow [ x, y \in B \land (x, y) \in R ]
$$

If  $(B,\hat{R})$  is a totally ordered set, then we say  $B$  is a chain of  $A$  (under  $R$ ).

With this definition in hand, we see that  $A_1, A_2, A_3, A_4$  are chains of  $\mathcal{P}(S)$  under  $R_1$ . Now, try proving that  $R_2$  is a (strict) partial order, and then try writing some chains of  $\mathcal{P}(S)$  under the relation  $R_2$ . How do they compare to chains of  $\mathcal{P}(S)$  under  $R_1$ ?

In the next subsection, we will see why chains are important; specifically, we will look at special properties of partial orders, chains, and total orders, that allow us to find "smallest" and "greatest" elements of subsets.

Before we move on, though, let's see two more related examples of partial orders.

Example 6.3.9. Consider the set  $\mathbb{R} \times \mathbb{R}$ . We define a relation  $R$  on  $\mathbb{R} \times \mathbb{R}$  by establishing when a pair of real numbers is related to another pair of real numbers. Specifically, let's say

$$
\big ((u, v), (x, y) \big) \in R \Longleftrightarrow [ u \leq x \wedge v \leq y ]
$$

One can prove that  $R$  is a partial order on  $\mathbb{R} \times \mathbb{R}$ . We will prove the transitivity property and leave the rest as exercises:

Proof. Let  $(u,v),(x,y),(z,w) \in \mathbb{R} \times \mathbb{R}$ . Suppose that  $((u,v),(x,y)) \in R$  and that  $((x,y),(z,w)) \in R$ . This means  $u \leq x$  and  $x \leq z$ , so  $u \leq z$ ; also, this means  $v \leq y$  and  $y \leq w$ , so  $v \leq w$ . Thus,  $((u,v),(z,w)) \in R$ . This shows  $R$  is transitive.

Hint: to prove  $R$  is not a total order, we must find a counterexample. That is, we need a pair  $(x,y), (u,v)$  such that neither  $((x,y),(u,v)) \in R$  nor  $((u,v),(x,y)) \in R$ . Think about the relation  $R$  visually, i.e. geometrically, to come up with such an example.

Think about what the chains are under this relation. Try to describe them geometrically and draw a few representatives.

Example 6.3.10. Let  $A$  be the standard English alphabet of 26 letters, and let  $W$  be the set of all finite strings of letters from  $A$ . That is,  $W$  is the set of all possible "words", where we allow any combination of letters to be included in our "dictionary". Let's try to define  $L$ , the standard lexicographic ordering on

 $W$ . It helps to represent  $A$  as the set [26], where  $\mathrm{a} = 1$  and  $\mathrm{b} = 2$  and so on, until  $\mathrm{z} = 26$ . Then, we say a word  $w \in W$  is represented by

$$
w = \left(w_{1}, w_{2}, \dots , w_{n}\right) \quad \text{where} n \in \mathbb {N} \text{and} \forall i \in [ n ]. w_{i} \in A
$$

Notice that for any two words  $v, w \in W$ , we can compare them "letter by letter" reading left to right until we reach a difference between them. Wherever that difference occurs, we sort the two words according to the comparison of those two letters. If one word is longer than the other and they have the same letters otherwise, we want to sort the longer one after the shorter one, just like "there" comes before "therefore" in the dictionary.

$$
\begin{array}{c} (v, w) \in L \Longleftrightarrow \text{at the smallest index} i \text{where} v_{i} \neq w_{i}, \text{we have} v_{i} <   w_{i} \\ \text{(and where a blank space is treated as 27)} \end{array}
$$

Think about why this corresponds to the usual ordering of words in the dictionary. (Could you define this using more rigorous mathematical notation? Try it!)

Now that we've looked at several examples of order relations, we recommend you try several of the exercises to practice identifying these relations and proving their properties. After that, we can move on to talk about many other interesting and useful properties of order relations!

### 6.3.1 Questions & Exercises

## Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between a partial order and a total order?  
(2) Give an example of a partial order that is not total. Give an example of a total order.

## Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Let  $S = [2]$ , and define  $R$  on  $\mathcal{P}(S)$  by  $(x, y) \in R \Longleftrightarrow x$  has at least as many elements as  $y$ . Prove that  $S$  is not a partial order.

(2) Let  $S = [3]$ ,  $T = [2]$ , and define  $R \subseteq S \times T$  by  $(x, y) \in R \Longleftrightarrow x \supseteq y$ . Prove/disprove each of the four standard properties of relations for  $R$  (i.e. reflexive, symmetric, transitive, anti-symmetric.) Use your results to determine whether  $R$  is any kind of order relation(s).

## 6.4 Equivalence Relations

### 6.4.1 Definition and Examples

Let's shift gears only slightly and talk about another type of relation that satisfies a different subset of the four standard properties of relations. In fact, let's return to a particular relation we mentioned in a previous example: on the set  $\mathbb{R}$ , define  $R$  to be the relation where

$$
(x, y) \in R \Longleftrightarrow \lfloor x \rfloor = \lfloor y \rfloor
$$

(In case you missed it in the Optional Reading, this is seen in Example 6.3.3.) Notice that this relation is

- reflexive because  $\forall x\in \mathbb{R}$ $\lfloor x\rfloor = \lfloor x\rfloor$  
- symmetric because  $\forall x, y \in \mathbb{R}$ .  $\lfloor x \rfloor = \lfloor y \rfloor \Rightarrow \lfloor y \rfloor = \lfloor x \rfloor$  
- transitive because  $\forall x, y, z \in \mathbb{R}$ .  $\left(\lfloor x\rfloor = \lfloor y\rfloor \wedge \lfloor y\rfloor = \lfloor z\rfloor\right) \Rightarrow \lfloor x\rfloor = \lfloor z\rfloor$

This particular set of properties has some interesting and useful consequences, so we assign a name to any relation that has these three properties.

Definition 6.4.1. Let  $A$  be a set and  $R$  a relation on  $A$ . If  $R$  is reflexive, symmetric, and transitive, then we say  $R$  is an equivalence relation.

That's it! Given any relation  $R$  on a set  $S$ , all we have to do is go through and prove/disprove these three properties to determine whether  $R$  is, in fact, an equivalence relation. Let's run through some of the examples of relations that we have seen already and determine whether they are equivalence relations or not, based on what we've proven about them.

Example 6.4.2. (1) Look back at the equality relation on an arbitrary set  $X$  that we defined in Example 6.2.9. This is an equivalence relation. Certainly,  $(x, x) \in R$ , since  $x = x$ . However, the hypothesis  $xRy$  is false for any  $x \neq y$ , which makes the conditional statement true. Thus, the only "relevant case" in the symmetric property is the one where  $x = y$ , in which case, yes,  $y = x$ , too. Similarly, for the transitive property, if either  $x \neq y$  or  $y \neq z$ , the hypothesis of the defining conditional statement is false, so the statement itself is true; and when  $x = y$  and  $y = z$ , yes, certainly  $x = z$ . This may not seem like a particularly enlightening development, but it is nice to know that there is always at least one equivalence relation we can define on any set.

(2) The "divides" relation on  $\mathbb{Z}$  is not an equivalence relation because it is not symmetric.

(See Example 6.2.16.)

(3) The "is strictly younger than relation" on a (nonempty) set of people is not an equivalence relation because it is not reflexive.

(See Example 6.2.17.)

(4) The relation  $R$  defined on  $\mathbb{Z}$  by

$$
\forall x, y \in \mathbb {Z}. x \star y \Longleftrightarrow 3 \mid x - y
$$

is an equivalence relation because it is reflexive and symmetric and transitive.

(See Exercise 2 in Section 6.2.5.)

This particular example of an equivalence relation will be generalized and discussed in great detail later in this chapter. You might even already recognize it as the "equivalent modulo 3" relation!

Many exercises in this chapter will be of the form "Identify whether or not this definition yields an equivalence relation." These are like problems we have seen before of the form "Prove/disprove the following claim." We need to figure out (somehow) whether we think a given relation is actually an equivalence relation or not; if so, we need to prove that, and if not we need to identify which property fails and produce a counterexample to show that. Let's see one example of this to illustrate the idea.

Example 6.4.3. Let  $S = \mathbb{N} - \{1\}$  and define  $(x,y)\in R\Longleftrightarrow x$  and  $y$  have a common factor (that is not 1, i.e. strictly greater than 1). Let's determine if this relation is, in fact, an equivalence relation by trying to prove that it is one, and seeing if the argument breaks down anywhere. If it doesn't, then we have succeeded, and if it does, then we can use that knowledge to construct a counterexample.

First, we notice that  $(x,x)\in R$  because  $x$  and  $x$  have a common factor,  $x$ . Also, by the definition of  $S$  we have  $x > 1$ , so  $R$  is reflexive. Second, we notice that if  $(x,y)\in R$ , then  $x$  and  $y$  have a common factor, some  $k > 1$ . Then, certainly, switching the letters in the pair doesn't alter this fact:  $y$  and  $x$  have a common factor  $k > 1$ , so  $(y,x)\in R$ , as well, and  $R$  is symmetric.

Third, let's assume  $(x,y) \in R$  and  $(y,z) \in R$ . This means  $x$  and  $y$  have a common factor, call it  $k > 1$ , and  $y$  and  $z$  have a common factor  $\ell > 1$ . Can we use this to find a common factor of  $x$  and  $z$ ? Not necessarily, it seems … There is no way we can determine that  $k$  and  $\ell$  have a common factor, for instance. What if  $k = 2$  and  $\ell = 3$ ? Can we identify some values of  $x,y,z$  that achieve these common factors, and then verify that  $x$  and  $z$  have no common factor? Sure, let's consider  $x = 2$  and  $y = 6$  and  $z = 9$ . Then  $(2,6) \in R$  and  $(6,9) \in R$  but  $(2,9) \notin R$ . This is a counterexample that shows that the transitive property is False for this relation, so it is not an equivalence relation.

We do recommend this method for identifying whether or not a given relation is an equivalence or order relation. Just go through each of the relevant properties—reflexivity, symmetry, transitivity, whatever else you might consider—and try to prove them. If you succeed, that's it! If you struggle to prove one of them, use your efforts to identify the problem and see why the property fails. Use this to construct a counterexample for that property.

## Motivation

Think about that first example again that we mentioned in this section, where  $xRy \Longleftrightarrow \lfloor x\rfloor = \lfloor y\rfloor$ . Notice that each real number is related to an integer, specifically the integer we get by rounding down. For instance, 1.5 R1 and π R3 and -1.5 R-2. Furthermore, any two real numbers that are related to the same integer are related to each other. For instance, 3.5 R3 and π R3, and 3.5 Rπ. Because of these observations, we claim that we can "package" all of the real numbers that satisfy  $0 \leq x < 1$  into one "cluster" and represent them by a single element of that cluster, say 0. Likewise, we can take all of the real numbers that satisfy  $1 \leq x < 2$  and package them into one "cluster" represented by 1. And so on. We didn't have to choose 0 and 1 as the representative elements. We could very well have chosen  $\frac{1}{2}$  and  $\frac{3}{2}$  instead, for example. But the point is that those "clusters" of real numbers are all related to each other within the same cluster, and we can represent each of those clusters by one representative element.

This observation will lead us directly into the next section, where we will discuss how to formally describe these "clusters". These are called equivalence classes. We will then investigate many examples and ascertain some general properties.

Before doing that, we strongly recommend that you play around with some of the examples we have seen already, looking for these kinds of "clusters" and "representatives". For instance, take the relation  $R$  defined on  $\mathbb{Z}$  by

$$
\forall x, y \in \mathbb {Z}. x \star y \Longleftrightarrow 3 \mid x - y
$$

It is an equivalence relation. What are those "clusters" in this case? Can you identify all of them? How many elements are in each cluster? Can you choose representatives?

Try doing the same work with another equivalence relation, like the "was born in the same month" relation on the set of students in your class. (This is an equivalence relation, as you'll realize after a moment's thought.)

A similarly instructive task is to take a non-equivalence relation and try to figure out why/how it does not have this "cluster" property. For example, take the "divides" relation on  $\mathbb{Z}$ . Where does it fail to have this property? Does it "come close" at all?

Essentially, do some exploring! It will really help to solidify your understanding of the properties of relations and will make the next section easier to follow.

# 6.4.2 Equivalence Classes

## Definition

Let's say we have an equivalence relation  $R$  on a set  $A$ . The reason we make the following definition was hinted at in the previous paragraphs. The three properties—reflexivity, symmetry, and transitivity—combine to create a canonical partition of a set  $A$ . Any elements that are related to each other form a kind of "closed club" or "cluster", and this allows us to refer to any one element of the "club" as a representative, instead of all of them. These "clubs" are called equivalence classes, and this idea is explored in the following definition.

Definition 6.4.4. Let  $R$  be an equivalence relation on the set  $A$ , and let  $x \in A$ . The equivalence class of  $x$  (under the relation  $R$ ) is the set of all elements related to  $x$  and is denoted by  $[x]_R$ . That is,

$$
[ x ]_{R} = \{y \in A \mid (x, y) \in R \}
$$

### Motivation and Examples

The idea behind this definition is that equivalence classes allow us to partition the set  $A$  into some canonical sets based on the relation  $R$ . Look back at Definition 3.6.9 in Chapter 3 to see how we defined a partition of a set. (In fact, look at Definition 4.5.11, as well, to see how we restated that definition using logical symbols.) For now, just remember that a partition is a non-empty collection of sets that are pairwise disjoint and whose union is the entire set in question.

Example 6.4.5. Let's return to the original motivating example from this section. We define the relation  $R$  on  $\mathbb{R}$  by

$$
\forall x, y \in \mathbb{R}. (x, y) \in R \Longleftrightarrow \lfloor x \rfloor = \lfloor y \rfloor
$$

Let's think about a particular equivalence class, using the definition we just made. Specifically, let's consider

$$
\begin{array}{l} [ 0 ]_{R} = \left\{y \in \mathbb{R} \mid (0, y) \in R \right\} = \left\{y \in \mathbb{R} \mid \lfloor 0 \rfloor = \lfloor y \rfloor \right\} = \left\{y \in \mathbb{R} \mid \lfloor y \rfloor = 0 \right\} \\ = \left\{y \in \mathbb{R} \mid 0 \leq y <   1 \right\} \\ \end{array}
$$

By using the definition of  $[0]_R$  from above, the definition of  $R$ , and some knowledge of what  $\lfloor y \rfloor$  means, we have figured out that the equivalence class of 0 under the relation  $R$  is this particular interval, between 0 (inclusive) and 1 (exclusive). We can picture that interval like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/ee2ec4e875a9c643c3e3b3ccc978483b2ccaec75539882e2bc001a2847f1336f.jpg)

Similarly, we could find that

$$
[ 1 ]_{R} = \{y \in \mathbb{R} \mid (1, y) \in R \} = \{y \in \mathbb{R} \mid 1 \leq y <   2 \}
$$

and picture that set like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/b5366593dc2821f9239c290303d6ca5bb45532ff66a7dd96811a4c3fb258744f.jpg)

Notice that these two sets are disjoint (they don't overlap) because the first one does not include 1 as an element, but the second one does. Also, notice that every real number belongs to exactly one interval like this. For example, we can say things like

$$
\pi \in [ 3 ]_{R}, \mathrm{e} \in [ 2 ]_{R}, - 1. 5 \in [ - 2 ]_{R}, \frac{1}{2} \in [ 0 ]_{R}
$$

However, notice that the definition of equivalence class doesn't say that we have to use exactly one element to represent that class. For example, we can say

$$
[ 0 ]_{R} = \left[ \frac{1}{2} \right]_{R}
$$

because the two sets are equal; they contain the same elements, because any real number whose "floor" is 0 is related to 0 (under  $R$ ), and therefore also related to  $\frac{1}{2}$  under  $R$  (because its floor is also 0).

Play around with this example some more and try to convince yourself that this partitioning property really works here. In the next part, we will formally prove this fact in its full generality, with your help! Because it will be a somewhat abstract discussion, we encourage you to get your hands dirty working with actual examples like this one. Try to define an equivalence relation on another set. What are its equivalence classes? Do you see why they form a partition?

## Equivalence Classes Partition the Set

Now that we've explored the idea that equivalence classes partition a set, let's formalize this idea. We'll need to make a definition, then we can prove a theorem! The theorem will be, essentially, an "if and only if" style theorem, and we will prove one direction, leaving the other for you as an exercise.

Definition 6.4.6. Let  $R$  be an equivalence relation on the set  $A$ . The set of equivalence classes (under  $R$ ), denoted by  $A / R$ , is a modulo  $R$ . That is,

$$
A / R = \left\{\left[ x \right]_{R} \mid x \in A \right\}
$$

Equivalently,

$$
A / R = \{X \subseteq A \mid \exists x \in A. X = [ x ]_{R} \}
$$

Let's look at a few examples to get a handle on these ideas before we prove an important result. In each example, let's convince ourselves that we have an equivalence relation, examine the equivalence classes, and think about what the modulo operation does.

Example 6.4.7. Consider, again, the relation  $R$  defined on  $\mathbb{R}$  by  $(x,y) \in R \Longleftrightarrow \lfloor x \rfloor = \lfloor y \rfloor$ . We previously talked about why this is an equivalence relation, so let's examine the equivalence classes.

Any two elements that are related have the same equivalence class, by definition. For instance,  $[0]_R = [0.5]_R = [0.999]_R$ . Likewise,  $[3.5]_R = [3.75]_R$ , and  $[- \pi]_R = [-4]_R$ , but  $[\pi]_R \neq [4]_R$ . Every real number  $x \in \mathbb{R}$  has an associated equivalence class,  $[x]_R$ , but the idea of the modulo operation is to reduce the set  $\mathbb{R}$  by considering only as many equivalence classes as are necessary. Since  $[0]_R = [0.5]_R = [0.333]_R$  and so on, we can represent all of those identical sets by one set, namely  $[0]_R$ . Thus, we can say

$$
\mathbb{R} / R = \{\dots , [ - 2 ]_{R}, [ - 1 ]_{R}, [ 0 ]_{R}, [ 1 ]_{R}, [ 2 ]_{R}, \dots \}
$$

In essence, then,  $\mathbb{R} / R$  "is" the set of integers  $\mathbb{Z}$ . However, we really only feel comfortable writing  $\mathbb{R} / R^{“} = \mathbb{Z}$  because this equality is not exact. In particular, we haven't even rigorously derived the real numbers or the integers yet, only  $\mathbb{N}$ . Here, we have just observed some kind of "correspondence" between the set of equivalence classes under this relation and the set of integers. We can identify one with the other, and vice-versa, but this doesn't mean they are equal, technically speaking.

No matter! The entire point of this example is just to point out that  $\mathbb{R} / R$  is a set of equivalence classes. Remember that when we write down a set, order and repetition are irrelevant. That is,  $\{1,3,5,3,1\} = \{1,3,5\}$  in the sense of sets. They have the same elements, so they are the same object. In the current context, we don't need to include both  $[0]_R$  and  $[0.5]_R$  in our set  $\mathbb{R} / R$  because they are the same thing; we would be repeating that object in our list of elements, and that won't do anything.

In general, what we will be concerned with is identifying what equivalence classes "look like" and coming up with some qualitative description of them. In particular, we will often wonder how many equivalence classes there are in  $A / R$ . We will also wonder how big those classes are. Are they all the same size? Do some only have a couple elements, while others are infinitely large? Why or why not? Do the classes all have roughly the same "description" of their elements?

In this particular example, we have found that all of the equivalence classes in  $\mathbb{R} / R$  are quite similar in form. There are infinitely many classes—one for each element of  $\mathbb{Z}$ —and they are all infinitely big—containing an interval of real numbers. Moreover, all the classes are of the form  $[z]_R = \{y \in \mathbb{R} \mid z \leq y < z + 1\}$ , for some  $z \in \mathbb{Z}$ . In that sense, these equivalence classes are all qualitatively similar.

Example 6.4.8. Define the relation  $B$  on the set of all people  $S$  by saying  $(x, y) \in B \Longleftrightarrow x$  and  $y$  were born in the same month. Then, (Leonhard Euler, Henri Poincaré)  $\in B$  and (Paul Erdős, Emmy Noether)  $\in B$ , for example. Why is this

an equivalence relation? Well, any person has the same birth month as himself (reflexivity), and if any two people share a birth month then they … (duh) share a birth month (symmetry), and if  $x$  and  $y$  share a birth month and  $y$  shares that month with  $z$  then  $x$  and  $z$  share that same birth month (transitivity).

(Note: in general, a relation defined by "has the same …" or "is the same …" will be an equivalence relation.)

Equivalence classes under this relation correspond to months! Since we are characterizing people by which month they were born in, an equivalence class is a set of people all born in the same month. For instance, Paul Erdős and Emmy Noether were both born in March, so we can say Emmy Noether  $\in$  [Paul Erdős]B. This equivalence class corresponds to the month of March, but notice that it is defined in terms of a particular element of the set  $S$  (of all people).

If we define  $M$  to be the set of all people ever born in the month of March, then we can say  $M = [\text{PaulErdős}]_B$ . Taking these observations all together, we can say this: The set of people modulo birth month, written  $S / B$ , consists of 12 sets, each corresponding to a different month and containing all of the people born in that month.

Example 6.4.9. Consider the set  $\mathbb{R} \times \mathbb{R}$  of all ordered-pairs of real numbers. We define a relation  $R$  on  $\mathbb{R} \times \mathbb{R}$  by declaring when two pairs are related. Specifically, let's say that

$$
\left(\left(x, y\right), \left(u, v\right)\right) \in R \Longleftrightarrow x = u
$$

That is, two pairs of points on the plane are related, under  $R$ , whenever their first coordinates are the same. Think about why this is an equivalence relation: geometrically speaking, the relation only cares about the vertical line, parallel to the  $y$ -axis, that a point lies on. With this in mind, you can easily "see" and explain why  $R$  is an equivalence relation, while proving that rigorously just takes a little bit more writing and notation. (Try it!)

This also lets us easily describe and visualize the equivalence classes under this relation. All of the points lying on the same vertical line are packaged together into an equivalence class, and we can index (i.e. keep track of) those classes by just looking at where the line intersects the horizontal axis. That is, for example,  $(1,3)\in [(1,0)]_R$ , because the points  $(1,3)$  and  $(1,0)$  lie on the same vertical line. We can write every equivalence class in such a way,  $[(x,0)]_R$ , for some  $x\in \mathbb{R}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/23e98c55a1fde7bb29e5077034b30d65e25315c1d7d5b2f2822f811cff196277.jpg)

Thus, the set of equivalence classes,  $(\mathbb{R}\times \mathbb{R}) / R$ , is "identical" to the real number line,  $\mathbb{R}$ , in some sense! We can just collapse all of the points of the plane down to the horizontal axis by ignoring their second coordinates. There is a way of making this idea more precise, mathematically speaking, but we won't be able to truly discuss it formally in this context. Suffice it to say that there's something interesting going on here, in that this relation on  $\mathbb{R}\times \mathbb{R}$  yields equivalence classes that are represented by  $\mathbb{R}$ .

Here's another relation on  $\mathbb{R} \times \mathbb{R}$ . Define  $S$  by setting

$$
\left(\left(x, y\right), \left(u, v\right)\right) \in S \Longleftrightarrow \sqrt{x^{2} + y^{2}} = \sqrt{u^{2} + v^{2}}
$$

Remembering some basic geometry and algebra, you might recognize that the expression  $\sqrt{x^2 + y^2}$  describes the distance from the point  $(x,y)$  to the origin  $(0,0)$ . (In mathematics, we call such an expression a metric.) Thus, the relation says that two points are related whenever they are the same distance from the origin. Visually, this explains why  $S$  is an equivalence relation, and it shows us that the equivalence classes are circles centered around the origin! Therefore, we can describe the elements of the set  $(\mathbb{R} \times \mathbb{R}) / S$  by just representing these circles by their one distinguishing feature: their radius, some real number  $r \geq 0$ . Accordingly, the set of equivalence classes, under  $S$ , is "identical" to the set of non-negative real numbers!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/1b47c99ec72dc181cc905310c1d5d433cf192ca27f7b34574c92a79c8c756bb4.jpg)

This is a pretty weird idea, right? We started with a two-dimensional set and related pairs of points and sorted out the equivalence classes and ended up with a one-dimensional set. (Note: We don't have a formal way to define dimension here, but we think you have an intuition for what we mean.) Look back at the relation  $R$  defined on  $\mathbb{R}^2$  above. What if we had defined that relation on just the "right half" of  $\mathbb{R}^2$ , all of the points whose first coordinate is non-negative. Then, the set of equivalence classes would also be "identical" to the set of non-negative real numbers. In what sense would that set be the "same" as  $(\mathbb{R} \times \mathbb{R}) / S$ ? Is that even a reasonable question to ask? How might we prove statements like this? These are all very interesting questions that we encourage you to think about!

Don't get too distracted by these notions and broad questions, though. The larger point is this: the set of equivalence classes forms a partition of the underlying set.

Now that we've seen a few examples, let's state (and prove!) some important results about equivalence relations. Mainly, these theorems present the ideas that we have been alluding to in words all along, namely that an equivalence relation partitions a set into its corresponding equivalence classes. Perhaps somewhat surprisingly, though, we have another nice result which says we can do this process in reverse: given any partition, we can define an equivalence relation for it!

Theorem 6.4.10. Let  $R$  be an equivalence relation on the set  $A$ . Then the sets belonging to  $A / R$  form a partition of  $A$ . That is, they are nonempty, they are pairwise disjoint, and their union is  $A$ .

Proof. See Exercise 6.7.13!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/9c473df6461198a8b109e6e41dcb4dadd1320abf05f96e13be17430b17e75e51.jpg)

We will guide you through a proof of this result in Exercise 6.7.13 at the end of this chapter. The examples we have examined already should give you

an intuitive understanding of why this theorem is true, but working through the details of the proof will give you a solid understanding of the mathematical rigor behind that.

## A Partition Yields an Equivalence Relation

Now, let's move on and look at a similar and important result that is a converse for the previous theorem. To warm up to it, we will first look at one example that will also give us a sketch of the theorem's proof.

Example 6.4.11. Consider the set  $S = [6]$ . Define the collection of sets

$$
\mathcal {F} = \{\{1, 4 \} \{2, 3, 5 \}, \{6 \} \}
$$

Notice that  $\mathcal{F}$  is a partition of  $S$  because the sets are disjoint, none are empty, and their union is  $S$ . Wouldn't it be nice if there were some equivalence relation  $R$  that yielded these sets when we considered  $S / R$ ? It turns out that there is! Of course, we may not be able to define it in a nice way, like the relations we have seen so far, which are usually defined as " $(x, y) \in R \iff x \text{ and } y \text{ sharesomecommonproperty}"$ . However, having the partition in hand already allows us to define the relation in terms of the partition. Specifically, the partition sets are the equivalence classes. The partition itself builds in the equivalence class structure, and we can just define an equivalence relation  $R$  by saying  $(x, y) \in R \iff x \text{ and } y \text{ belongtothesamepartitionset.}$

In this example, we would define  $S_{1} = \{1,4\}$  and  $S_{2} = \{2,3,5\}$  and  $S_{3} = \{6\}$ . Then, we define the relation  $R$  by

$$
(x, y) \in R \Longleftrightarrow \exists i \in [ 3 ]. (x \in S_{i} \wedge y \in S_{i})
$$

Think about why this works. Do you see why this is an equivalence relation? Do you see what the equivalence classes are?

Now we're ready to state the theorem and prove it.

Theorem 6.4.12. Let  $S$  be a set and let  $\mathcal{F}$  be a partition of  $S$ . Then there exists an equivalence relation  $R$  such that  $S / R = \mathcal{F}$ .

As we hinted at above, this result hinges entirely upon the fact that a partition is a collection of sets that are precisely the equivalence classes we want to define. All that we need to do is prove that the relation " $x$  and  $y$  are related if and only if they belong to the same partition set" is an equivalence relation. It's not too hard! Try to sketch the details of the proof before reading our version!

Proof. Let  $\mathcal{F}$  be a partition of  $S$ . This means we have an index set  $I$ , and

$$
\mathcal {F} = \{S_{i} \mid i \in I \}
$$

where the sets  $S_{i}$  satisfy  $S_{i} \subseteq S$  and  $S_{i} \neq \emptyset$  and

$$
\bigcup_{i \in I} S_{i} = S \qquad \text{an d} \qquad \forall i, j \in I. i \neq j \Rightarrow S_{i} \cap S_{j} = \varnothing
$$

Let's define the relation  $R$  on  $S$  by

$$
(x, y) \in R \iff \exists i \in I. (x \in S_{i} \wedge y \in S_{i})
$$

We will now prove  $R$  is an equivalence relation.

- Let  $x \in S$  be arbitrary and fixed. Since the sets  $S_i$  cover  $S$ , we know  $\exists i \in I$ .  $x \in S_i$ . Let such an  $i$  be given.

Certainly, then  $x \in S_i$  and  $x \in S_i$ , so  $(x, x) \in R$ . Therefore,  $R$  is reflexive.

- Let  $x, y \in S$  be arbitrary and fixed. Suppose  $(x, y) \in R$ . This means  $\exists i \in I$ .  $(x \in S_i \land y \in S_i)$ . Let such an  $i$  be given.

Certainly, then, we have  $y \in S_i \wedge x \in S_i$ . Thus,  $(y, x) \in R$ , as well.

Therefore,  $R$  is symmetric.

- Let  $x, y, z \in S$  be arbitrary and fixed. Suppose that  $(x, y) \in R$  and  $(y, z) \in R$ . This means  $\exists i \in I$ .  $(x \in S_i \land y \in S_i)$  and  $\exists j \in I$ .  $(y \in S_j \land z \in S_j)$ . Let such  $i, j$  be given.

Notice that  $y \in S_i \wedge y \in S_j$ . Since  $S_i \cap S_j = \emptyset$  for any distinct  $i, j$ , it must be that  $i = j$ . (Otherwise,  $y \in \emptyset$ , which is impossible!)

Accordingly  $x\in S_i$  and  $y\in S_{i}$  and  $z\in S_{i}$ . Thus,  $(x,z)\in R$

Therefore,  $R$  is transitive.

Since all three properties hold,  $R$  is an equivalence relation!

The equivalence classes of  $S$  modulo  $R$ ,  $S / R$ , are of the form  $[x]_R$ , where  $x \in S$ . Since  $\mathcal{F}$  is a partition of  $S$ ,  $x \in S_i$  for some  $i$ . Thus,  $[x]_R = S_i$  for some  $i$ . Therefore, all the equivalence classes are equal to some set  $S_i$ .

Likewise, any set  $S_i \neq \emptyset$ , so  $\exists x \in S_i$ , and thus there is a corresponding equivalence class  $S_i = [x]_R$ . Therefore, every equivalence class is a set of the form  $S_i$  and vice-versa.

This shows that any partition corresponds nicely to an equivalence relation, and its classes!

## 6.4.3 More Examples

Now that we have these two theorems in hand, let's work with some examples of relations. For each, we'll try to figure out whether it is an equivalence relation or not. If it is, we can describe its equivalence classes. If it's not, we can try to invoke one of the theorems and see why it isn't.

Example 6.4.13. Let's start with an easy one. Look back at the equality relation that we defined in Example 6.2.9. We explained already that " $=$ " is an equivalence relation on any set. Specifically, it partitions a set into the equivalence classes which are … well, the elements of the set themselves! That is, on the

set  $\mathbb{N}$ , say,  $[1]_{=} = \{1\}$  and  $[2]_{=} = \{2\}$ , and so on. The equivalence classes are all singletons (sets with one element each).

Example 6.4.14. Let's do another fairly easy example. Look back at the parity relation on  $\mathbb{Z}$  that we defined in Example 6.2.5. It is an equivalence relation, so let's prove that now.

Proof. Let  $a, b, c \in \mathbb{Z}$  be arbitrary.

First, notice that  $(a,a)\in R$  because  $a$  has the same parity as itself. Thus,  $R$  is reflexive.

Second, assume that  $(a,b)\in R$ , so  $a$  and  $b$  have the same parity; certainly, then,  $b$  and  $a$  have the same parity, so  $(b,a)\in R$ . Thus,  $R$  is symmetric.

Third, assume  $(a,b) \in R$  and  $(b,c) \in R$ . If  $a$  is odd, we can deduce that  $b$  is odd and then  $c$  is odd; similarly, if  $a$  is even, we can deduce that  $b$  is even and then  $c$  is even. In either case,  $a$  and  $c$  have the same parity, so  $(a,c) \in R$  necessarily. Thus,  $R$  is transitive.

Since  $R$  is reflexive, symmetric, and transitive,  $R$  is an equivalence relation.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/f1fd0643f4a98bf6022d2bea89fb928e4dbd350cdaf7cdbafb1ca5a9863595a6.jpg)

This means the set of equivalence classes  $\mathbb{Z} / R$  forms a partition of  $\mathbb{Z}$ . Let's identify that partition.

Consider  $[0]_R$ . This is the set of all integers related to 0, i.e. the set of integers that have the same parity as 0, namely all the even integers. Thus, in this case

$$
\mathbb {Z} / R = \left\{O_{\mathbb {Z}}, E_{\mathbb {Z}} \right\}
$$

where  $O_{\mathbb{Z}}$  is the set of odd integers and  $E_{\mathbb{Z}}$  is the set of even integers. There are two equivalence classes, each infinitely big.

Example 6.4.15. Look back at the order relation on  $\mathbb{R}$  that we defined in Example 6.2.6. Is this an equivalence relation? To figure this out, we can check each property in the definition. Notice that, whatever  $x \in \mathbb{R}$  is, we have  $(x, x) \notin R$  because  $x \not\prec x$ . Thus,  $R$  is not reflexive, and therefore not an equivalence relation. (It is also true that  $R$  is not symmetric, but it is transitive.)

Why does it make sense that this strict order relation would not be an equivalence relation? Why do we want an equivalence relation to be reflexive? Think about the concept of an equivalence class; an equivalence relation should place the elements of the whole set into a partition, where we can identify any partition set by an element that belongs to it. With a relation that is not reflexive, we would then have some elements that don't belong to their own "equivalence classes", surely an undesirable situation!

(Follow-up question: What about the order relation  $\leq$ , which is reflexive; is this an equivalence relation? Why or why not?)

Put another way, we can see that the relation "<" on  $\mathbb{R}$  does not separate the real numbers into a partition. Because of this, and thinking about the contrapositive of Theorem 6.4.10, we conclude that "<" cannot be an equivalence relation.

Example 6.4.16. Define the relation  $\sim$  on  $\mathbb{R} \times \mathbb{R}$  by

$$
(x, y) \sim (u, v) \iff x \leq u \wedge y \leq v
$$

Without even examining its properties, let's see if we can identify whether it is an equivalence relation or not. To do this, let's take a specific element of the set and look at all of the elements related to that specific one. For the picture below, we will use (1,1) as the specific element.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/f709a9ed811a5704f9f529028a2216720eb3e1c3df2e3b75417bf29defaa0a9d.jpg)

Notice that the defining condition of  $\sim$  asks that a point lie "above and to the right" of another one for the two to be related. Also, notice that the inequalities are " $\leq$ " so the second point doesn't have to be strictly above or to the right.

Thus,  $(1,2) \sim (1,1)$  as we can see from the picture (also observing that  $1 \leq 1 \land 1 \leq 2$ ). Also,  $(1,1) \sim (2,1)$ , for similar reasons. Accordingly, the points  $(1,2)$  and  $(2,1)$  are both related to  $(1,1)$  and so for this relation  $\sim$  to be an equivalence relation, we would require that  $(2,1)$  and  $(1,2)$  be related to each other. This is because they would both have to belong to the "equivalence class" of  $(1,1)$ . However, notice that  $(1,2) \not\sim (2,1)$ , unfortunately! The second point lies strictly "below and to the left" of the first one, so it does not satisfy the defining condition of  $\sim$ .

This means that the set of all elements related to  $(1,1)$  does not form a "closed club". Mathematically speaking, this set of elements is not an equivalence class. Therefore,  $\sim$  is not an equivalence relation.

Now, try to identify which properties  $\sim$  does and doesn't have. Is it reflexive? Symmetric? Transitive? Why or why not? In so doing, you will prove again that  $\sim$  is not an equivalence relation. Wasn't it helpful to have already

figured out beforehand that it isn't? We recommend, in general, doing something similar when you are faced with a defined relation. Can you figure out what the "equivalence classes" might be? If so, then you've developed some intuition for how and why the relation is an equivalence relation, and it will help you describe the equivalence classes. If not, then you've developed some intuition for how to disprove such a claim.

[Optional Reading] How  $\mathbb{Z}$  comes from an Equivalence Relation on  $\mathbb{N} \times \mathbb{N}$

Remember that crazy exercise from Chapter 3 that had you prove something about a set of pairs of pairs of natural numbers, and we claimed that was proving something about the existence of the integers? What was that all about? Look back at the exercise now, Exercise 3.11.22. You'll see that the last three parts of the problem have you proved that the set  $R$  we defined is an equivalence relation on the set  $P$ . (The underlying set was  $P = \mathbb{N} \times \mathbb{N}$ .) Look at that! You proved  $R$  is reflexive, symmetric, and transitive.

What that exercise showed is that (essentially, we are glossing over some details here) any negative integer is represented as the equivalence class of pairs of integers whose difference is that negative integer. That is,

$$
- 1 \quad “ = ” [ (1, 2) ]_{R} = \{(1, 2), (2, 3), (3, 4), \dots \}
$$

and, for another example,

$$
- 3 “ = ” [ (1, 4) ]_{R} = \{(1, 4), (2, 5), (3, 6), \dots \}
$$

This is only an intuitive explanation and not rigorous, mathematically speaking, but that's the main idea!

# 6.4.4 Questions & Exercises

## Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What properties does an equivalence relation have to satisfy?  
(2) What is an equivalence class? What must be true about all of the elements in one equivalence class?  
(3) Given a set  $S$  and an equivalence relation  $R$  on  $S$ , what must be true about the set of equivalence classes?

## Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Look back at the relation defined in Exercise 2 in Section 6.2.5. There, we define the relation  $\star$  on  $\mathbb{Z}$  by setting

$$
\forall x, y \in \mathbb {Z}. x \star y \Longleftrightarrow 3 \mid x - y
$$

You proved there that it is, indeed, an equivalence relation.

Now, describe the equivalence classes in  $\mathbb{Z} / \star$ . How many are there? How "big" are they? Can you list their elements or describe them somehow?

(2) Look back at the relation defined in Exercise 3 in Section 6.2.5. There, we defined the relation  $\sim$  on  $\mathbb{Z}$  by saying

$$
\forall x, y \in \mathbb {Z}. x \sim y \Longleftrightarrow 3 \mid x + 2 y
$$

You proved there that it is, indeed, an equivalence relation.

Now, identify and describe the equivalence classes in  $\mathbb{Z} / \sim$ . How many are there? How "big" are they? Can you list their elements or describe them somehow?

Compare this to the previous exercise. What do you notice?

(3) Consider the set  $[5] = \{1,2,3,4,5\}$ . Define the relation  $\approx$  on [5] by setting, for any  $x,y\in [5]$

$$
x \approx y \quad \Longleftrightarrow \quad | x^{2} - y^{2} | \leq 5
$$

For every  $x \in [5]$ , let  $S(x)$  be the set of all elements  $y \in [5]$  such that  $x \approx y$ .

(a) Write out all the elements of the sets  $S(1), S(2), S(3), S(4), S(5)$ .  
(b) Can you determine whether or not  $\approx$  is an equivalence relation by looking at these sets? How?  
(c) Prove whether or not  $\approx$  is an equivalence relation by proving/disproving the reflexive, symmetric, and/or transitive properties.

(4) Consider the set  $\mathbb{N} \times \mathbb{N}$ . Define the relation  $\sim$  on this set by setting

$$
(a, b) \sim (c, d) \Longleftrightarrow a + b = c + d
$$

Determine whether or not this is an equivalence relation. If it is, describe its equivalence classes visually.

# 6.5 Modular Arithmetic

A natural and common equivalence relation that you may have already seen and worked with before is that of congruence, in the context of the integers. This is a direct generalization of the "even/odd parity" equivalence relation, which classifies integers based on one specific property. Here, we expand this idea by defining a few properties of integers and then defining a bunch of relations. We will also go through some interesting results that become easy to prove (or provable at all!) by using these relations.

# 6.5.1 Definition and Examples

## Divisibility

We'll start with a definition that we have seen a few times already.

Definition 6.5.1. Let  $a, b \in \mathbb{Z}$ . We say that  $a$  divides  $b$  if  $b$  is evenly divisible by  $a$ , i.e.  $\exists k \in \mathbb{Z}$  such that  $b = ak$ , or equivalently,  $\frac{b}{a} \in \mathbb{Z}$  (except for the case where  $a = b = 0$ ). We denote this by  $a \mid b$ .

Notice that this definition says that every integer divides 0 (e.g.,  $5 \mid 0$ ) but 0 doesn't divide anything except itself (e.g.,  $0 \nmid 5$  but  $0 \mid 0$ ). Think about how this makes sense with your intuitive understanding of "divides" and also how it satisfies the given definition. Also, notice that negative numbers are accounted for here, since the existence quantifier takes an integer  $k \in \mathbb{Z}$ . Thus,  $-2 \mid 4$  and  $8 \mid -24$ , as well.

Now, a statement like  $2 \nmid 5$  tells us some information about how the integers 2 and 5 are related, but it doesn't say everything. We know that there is no possible integer  $k$  that satisfies  $2k = 5$ , but it doesn't say how close we can get. Certainly  $k = -100$  is a bad estimate, but  $2 \cdot 2 = 4$  and  $2 \cdot 3 = 6$  are pretty close to 5 … This seems obvious with small numbers like this where we can check by hand, but what about huge numbers? We know that  $7 \nmid 100000$  (Why? Think about primes …), but how can we approach this "find the  $k$  that makes  $7k$  the closest possible to 100000" problem? How do we know there's even a specific answer? Might there be two equally "reasonable" answers, like with  $2 \nmid 5$ ?

Regarding the second question, about plurality, we'd like to restrict ourselves so that there is only one reasonable answer. This comes from a desire for simplicity, not having to worry about finding another answer after finding one. Accordingly, we will follow the The Price Is Right standard: we want the closest answer without going over. With the example  $2 \nmid 5$ , we consider  $k = 2$  to be the best estimate since  $4 < 5$ . Likewise, with the example  $7 \nmid 100000$ , we consider  $k = 14285$  to be the best estimate because  $7 \cdot 14285 = 99995$ . (Notice that, in this case, there is a "closer" estimate that does go over, but we don't consider it.)

This now motivates how to come up with such estimates. Given  $a, b \in \mathbb{Z}$ , we can just look at larger and larger multiples of  $a$  until we go too far, past  $b$ ; the multiple right before that will be the best. The "accuracy" of the estimate

has to be some amount between 0 and  $a - 1$ , where 0 happens if  $a \mid b$  is actually true. (Note: the idea of "going too far" is the order relation  $>$ , so think carefully about how this applies to negative integers. For instance,  $2 \nmid -3$  and  $2 \cdot -2 = -4$  is considered the best estimate, since  $-4 \leq -3$ .) The following Lemma encapsulates these ideas of iteratively looking at multiples of  $a$  until we find the best estimate for  $b$ , and declares that there is always a unique solution, under the constraints we have agreed upon.

Lemma 6.5.2 (The Division Algorithm). Let  $a, b \in \mathbb{Z}$ . Then  $\exists! k, r \in \mathbb{Z}$  such that  $ak + r = b$  and such that  $0 \leq r \leq a - 1$ . Said another way, given any two integers, there is always a unique multiple of  $a$  that is closest to  $b$  without being greater, and there is a corresponding unique remainder. We call this  $r$  the "remainder of  $b$  upon division by  $a$ " or "the remainder when  $b$  is divided by  $a$ ".

It is this concept of remainder that we will most frequently use from this result. Specifically, we will compare remainders of two divisions and define a relation based on those remainders. We'll see those details shortly. First, we want you to prove this important Lemma!

Proof. Left for the reader as Exercise 6.7.14.

The reason this is called the Division Algorithm is that there is an implied process by which we can actually find these multiples and remainders. This method is, naively but effectively enough, repeated subtraction. That is, given  $a$  and  $b$ , we can just keep subtracting  $a$  from  $b$  — finding  $b - a$  and then  $b - 2a$  and then  $b - 3a$  and then …— until we are left with a remainder between 0 and  $a$ . Example 6.5.3. Let's see this process played out, just to show you the idea. Let's use  $a = 8$  and  $b = 62$ . We continually subtract 8 from 62, finding

$$
6 2, 5 4, 4 6, 3 8, 3 0, 2 2, 1 4, 6
$$

We stop at 6 because it satisfies  $0 \leq 6 < a = 8$ . This tells us  $r = 6$ . We also notice that we subtracted  $a$  from  $b$  seven times, since there are eight terms in our list, with the first one being just  $b - 0 \cdot a$ . Thus, we can write

$$
\underbrace {6 2}_{b} = \underbrace {7}_{k} \cdot \underbrace {8}_{a} + \underbrace {6}_{r}
$$

The main point here is that there exists such a way to find this remainder, and that it is unique. With that result in hand, let's use it to define some relations on  $\mathbb{Z}$ . We will go on to show that these are all equivalence relations and, more specifically, see how useful their equivalence classes are!

## Congruence modulo $n$

Definition 6.5.4. Let  $n \in \mathbb{N}$ . We define a relation  $R_{n}$  on  $\mathbb{Z}$  by saying  $(a, b) \in R_{n}$  if and only if  $a$  and  $b$  have the same remainder upon division by  $n$ .

Equivalently, we say  $(a,b)\in R_n\Longleftrightarrow n\mid a - b$

Notationally, we also write this as

$$
a \equiv b \mod n
$$

and read this as "a and b are congruent modulo n. (Verbally, we usually shorten "modulo" to "mod".)

Remark 6.5.5. We have stated in our definition that saying " $a$  and  $b$  have the same remainder upon division by  $n$ " is equivalent to saying " $n \mid a - b$ ". Why is this the case? It's not by definition; it requires a little proof. We will ask you to do this later, in Exercise 6.7.15.

Remark 6.5.6. In practice (i.e. in solving problems and proving other results), we will use this definition as follows: knowing that  $a \equiv b \mod n$  guarantees that we can express  $a$  as a multiple of  $n$  plus  $b$ .

Let's see why that works. Let's say their shared remainder is  $r$ . This means there exist  $k, \ell \in \mathbb{Z}$  such that

$$
a = k n + r \quad \text{an d} \quad b = \ell n + r
$$

(They have the same remainder, but they might not have the same multiple of  $n$ .) Subtracting to solve for  $r$  and then setting them equal, we find

$$
a - k n = b - \ell n
$$

and then adding and factoring tells us

$$
a = (k - \ell) n + b
$$

Look at that! The term  $(k - \ell)n$  is a multiple of  $n$ , and the second term is just  $b$  itself. This tells us  $a$  is a multiple of  $n$  plus  $b$ .

In general,  $b$  might not be the remainder of  $a$  upon division by  $n$ , itself; in particular, this happens when  $b$  does not satisfy the requirement  $0 \leq r \leq a - 1$  that we ask of remainders.

Let's sum up this remark by writing down the form of this definition that we will invoke in the future. This is the statement we will be refer to when we use the definition of congruence modulo  $n$  in a proof or an example:

$$
a \equiv b \mod n \Longleftrightarrow \exists m \in \mathbb {Z}. a = m n + b
$$

Example 6.5.7. Let's figure out what these relations "look like" by considering some small values of  $n$ .

- Let  $n = 1$ . What does the relation  $R_1$  look like? This is actually a somewhat silly question because the remainder when any integer is divided by 1 is 0, so every integer is related to every other integer. That is,  $\forall x, y \in \mathbb{Z}$ .  $(x, y) \in R_1$ . Because this is relatively uninteresting, mathematicians would hardly ever speak of "mod 1".
- Let  $n = 2$ . The relation  $R_2$  is precisely the "parity relation" we defined before. Think about why this is true. When we divide any integer  $a$  by 2, the only possible remainders are 0 and 1. If  $a$  and  $b$  share a remainder of 0 upon division by 2, then they are both even; if they share a remainder of 1, they are both odd. (Think about how this corresponds to our definition way back in Chapter 3, where odd and even were defined in terms of existence claims: e.g.  $x$  is even if and only if  $\exists k \in \mathbb{Z}$  such that  $x = 2k$ . This is exactly what the division algorithm results says here:  $x$  is even if and only if its remainder upon division by 2 is 0, because we can find an integer such that  $x = 2k$ .)

Now, think about the equivalent formulation of congruence. If two integers are even, what can we say about their difference? That's right, it's also even! Here, this means  $a \equiv b \mod 2 \Longleftrightarrow a - b \mid 2$ ; i.e.  $a$  and  $b$  are both even (or both odd) if and only if their difference is also even. (Note: we haven't yet proven that this other formulation is truly equivalent to the definition in terms of remainders. We will do that immediately after this example.)

- Let  $n = 3$ . Then, for example,  $0 \equiv 9 \mod 3$  and  $-1 \equiv 2 \mod 3$  and  $4 \equiv 28 \mod 3$ . In general, we can also string together several statements of congruence, as long as we tack on "mod 3" (or what have you) at the end of the line. When we do this, it is understood that the entire preceding line is considered only modulo 3. For instance, the following line is valid, notationally, and true, mathematically:

$$
- 1 0 0 \equiv - 1 \equiv 8 \equiv 3 1 1 \equiv - 2 8 9 \equiv 4 1 \mod 3
$$

(We're not sure why you'd have to write such a statement, but we're just pointing out that it's perfectly okay to do so!)

- Let  $n = 10$ . The remainder of a natural number divided by 10 is just its last digit, its ones digit! This helps us compare two numbers modulo 10 easily. For instance,  $12 \equiv 32 \equiv 448237402 \mod 10$  but  $37457 \not\equiv 38201 \mod 10$ .

This is different when we consider negative numbers, though. The reason is that we defined remainders by taking the largest multiple without going over. Then, for example,  $-1 \equiv 9 \mod 10$ ; this is because  $-1 = (-1) \cdot 10 + 9$  and  $9 = (0) \cdot 10 + 9$ . They share a remainder of 9 that needs to be added on to some multiple of 10. Think about the details behind the following True statements:

$$
- 3 \equiv 1 7 \equiv - 3 3 \equiv 1 0 7 \mod 1 0
$$

## Notation

One important comment about notation: in mathematics, mod is a relation, not an operator or function. In computer science and programming, you might see something like "5 mod 3 = 2" to say that "the remainder when we divide

5 by 3 is 2". (In many languages, this might be expressed as  $5\% 3 = 2$ .) You won't see us write anything like that here. Rather, we use mod to indicate some kind of equivalence, using  $\equiv$  along the way because the numbers we are talking about are not necessarily equal. If we express a chain of equivalences that makes sense modulo some natural number  $n$ , we will write "mod  $n$ " at the end of the line to indicate that. In this sense, mod is more like a modifier than we write to say "All of the statements made on this line are only meant to be considered in the sense of remainders when dividing by  $n$ ". Thus, we can write something like

$$
1 0 0 \equiv 9 7 \equiv 1 6 \equiv 4 \equiv z \cdot w \equiv 1 \equiv x - y \equiv - 2 \equiv - 8 \mod 3
$$

which says all of those numbers and expressions are equivalent when considered modulo 3. We aren't asserting that they are equal, nor that they are necessarily equivalent modulo anything else. The "mod 3" at the end says, "We are working inside the universe of the integers modulo 3, and nowhere else."

(Question: Can you find  $x, y, z, w \in \mathbb{Z}$  that make the line above True?)

## Three Important Lemmas

Here, we will ask you to prove two important results; namely, you will prove that congruence modulo  $n$  can be thought of equivalently in terms of divisibility, and that these relations are equivalence relations. Work through these corresponding exercises now, while you are reading this section. The following section—where we talk about the equivalence classes under these relations—will make much more sense to you if you have already worked through these details. After these two proofs, we will present one more result and prove it for you. The last example we see before talking about equivalence classes will be an interesting arithmetic problem that is easily solvable using congruences, but not exactly easy if you want to do it "by hand", so to speak.

Lemma 6.5.8. The two formulations of congruence modulo  $n$  given in Definition 6.5.4 are indeed equivalent. That is, for every  $a, b \in \mathbb{Z}$  and for every  $n \in \mathbb{N}$ ,

$a$  and  $b$  have the same remainder upon division by  $n \Longleftrightarrow n \mid a - b$ .

Proof. See Exercise 6.7.15.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/34beefa6b70d1ebb5b48cc76b068d9b47b2e4bcbdd88bad11ad55b76080336d0.jpg)

Lemma 6.5.9. For any  $n \in \mathbb{N}$ ,  $R_{n}$  is an equivalence relation on  $\mathbb{Z}$ .

Proof. See Exercise 6.7.16

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/6319d652ba698774089b561b2338368ebec0bef6c1d0afbb2d9340719755af3d.jpg)

Thank you for proving those Lemmas! ©We now know that congruence modulo  $n$  is an equivalence relation (so we can talk about equivalence classes) and that we can always figure out whether two integers (say  $a$  and  $b$ ) are congruent modulo  $n$  by just determining whether  $a - b$  is a multiple of  $n$ . This will be a convenient way of reading off proposed congruences and assessing whether or not they hold.

The next lemma tells us that we can perform arithmetic—addition and multiplication—in the context of "mod  $n$ " and rest assured that results still work correctly. What if we had two equations, two statements of equality about integers, and we added them together? We know the resulting equality still works, right? That is, if we know  $a + b = c$  and  $d + e = f$ , then we can add them and know that  $a + b + d + e = c + f$ . This lemma says the same thing works with congruence modulo  $n$  instead of equations. Likewise, we can multiply congruences and rest assured they preserve congruence.

The proof of this lemma is not too difficult, but we will prove it for you, since we've been having you do a lot of the work lately.

Lemma 6.5.10 (Modular Arithmetic Lemma, or MAL). Let  $n \in \mathbb{N}$  be given. Let  $a, b, r, s \in \mathbb{Z}$  be arbitrary and fixed. Suppose that  $a \equiv r \mod n$  and  $b \equiv s \mod n$ . Then

$$
\begin{array}{l} a + b \equiv r + s \mod n \\ a \cdot b \equiv r \cdot s \mod n \\ \end{array}
$$

(If you think about it, this Lemma tells us we can just work with remainders. Whatever  $a, b$  we are given, we can just reduce them to their remainders,  $r$  and  $s$ , and work with those instead. The idea is that  $0 \leq r, s \leq n - 1$ , so they are guaranteed to be small, compared to  $a$  and  $b$ . This lets us do arithmetic more quickly, in practice. The following proof guarantees this works, in all cases.)

Proof. Suppose  $a \equiv r \mod n$  and  $b \equiv s \mod n$ . This means  $\exists k, \ell \in \mathbb{Z}$  such that

$$
\begin{array}{l} a = k n + r \\ b = \ell n + s \\ \end{array}
$$

Adding these equations yields

$$
a + b = (k n + r) + (\ell n + s) = (k + \ell) n + (r + s)
$$

Thus,  $a + b \equiv r + s \mod n$ , since we can express  $a + b$  as a multiple of  $n$  plus the remainder  $r + s$ .

Multiplying the two equations yields

$$
a \cdot b = (k n + r) \cdot (\ell n + s) = k \ell n^{2} + (k s + \ell r) n + r \cdot s = n \cdot (k \ell n + k s + \ell r) + r \cdot s
$$

Thus,  $a \cdot b \equiv r \cdot s \mod n$ , since we can express  $a \cdot b$  as a multiple of  $n$  plus the remainder  $r \cdot s$ .

Remark 6.5.11. Notice that we don't mention subtraction or division here, only addition and multiplication. There are two different reasons for this. The first reason is that subtraction is just "adding a negative". Thus, the lemma does actually say we can subtract two congruences by applying two steps: (1) multiply one of the congruences by  $-1$  (invoking the lemma for multiplication),

and (2) add the results (invoking the lemma for addition). Notice how it uses both of the results of the lemma. Neat, right?

The second reason is slightly more complicated. There is really no such thing as "dividing" modulo  $n$ . The main reason is that we are restricting our discussion here to the integers, and division might result in rational numbers that are not integers. For instance, we know  $4 \equiv 7 \mod 3$ , but does that tell us that  $\frac{4}{2} \equiv \frac{7}{2} \mod 3$ ? What does that even mean? How is an integer (namely, 2) possibly congruent to a non-integer (namely,  $7/2$ )? For this reason, mainly, we don't discuss the operation of division in the context of  $\mathbb{Z}$  modulo  $n$ .

There are more subtle details to this "division" issue, too, and we will have occasion to discuss them later in Section 6.5.3, when we talk about multiplicative inverses. For the sake of avoiding confusion now, we will not attempt to discuss those details. Suffice it to say, though, we will develop something that feels "a lot like" division modulo  $n$ , but it will only be possible in particular situations.

In the meantime, to make sure we are only talking about integers, we will stick to addition and multiplication only.

## Two Examples of Usefulness

We're not sure yet whether we've convinced you that any of this modular arithmetic is even useful or helpful. To make sure we've established that these notions of congruence as an equivalence relation are both mathematically interesting and applicable, we are going to consider here two interesting and useful examples. The first is just a simply stated problem that is vastly easier to solve using modular arithmetic than "standard" arithmetic. The second is a handy trick that we're sure you've used before, but you might have never considered how or why it works. We'll prove it!

Example 6.5.12. Consider the following problem:

## Questions:

Does there exist a natural number  $k$  such that  $5^k$  is 1 more than a multiple of 7?

If so, what is the smallest such natural number?

Can you characterize all of the natural numbers with this property?

We might try to answer these questions by just plugging in values for  $k$  and seeing what happens. However, you'll quickly notice that computing large exponential numbers can be cumbersome, and figuring out whether a large number is exactly one more than some multiple of 7 is even harder! Go ahead, try it if you'd like. Use a calculator if you want, even. See if you can solve it!

Here's what we'd rather do, though: let's take advantage of the Modular Arithmetic Lemma (MAL) over and over. Exponentiation is just repeated multiplication, so let's just invoke the multiplication result of the lemma over and over. The idea is that we can keep multiplying by 5 and reduce everything modulo 7 along the way. That is, we only need to find a number that is 1 more than

a multiple of 7—i.e. congruent to 1 modulo 7—and we don't need to know immediately what exactly that number is, only whether or not it has that property. Let's show you what we mean.

We start with  $5^1 \equiv 5 \mod 7$ . We multiply this by 5, yielding

$$
5^{2} \equiv 5 \cdot 5 \equiv 2 5 \equiv 4 \mod 7
$$

We found this by just noticing that  $25 = 21 + 4$ , and knowing 21 is a multiple of 7. (When the numbers are "small" like this, we can often do arithmetic by inspection. That is, we can just look at it for a minute and do some mental arithmetic. Of course, we could always apply the Division Algorithm if we weren't sure, just subtracting 7s from 25 until we were left with a remainder.)

We can then find

$$
5^{3} \equiv 5^{2} \cdot 5 \equiv 4 \cdot 5 \equiv 2 0 \equiv 6 \mod 7
$$

Again, we just found "by inspection" that  $20 = 14 + 6$ . Notice that we now know what  $5^3$  is congruent to modulo 7 but we didn't have to actually compute  $5^3 = 125$  and then reduce it. Because we have been reducing all the numbers modulo 7 along the way, we are saving ourselves a lot of computation. Specifically, we are always reducing to something smaller than 7, so the largest numbers we might even have to look at, in any case, are in the 20s and 30s. How convenient! Let's keep going and see what we get:

$$
5^{4} \equiv 5^{3} \cdot 5 \equiv 6 \cdot 5 \equiv 3 0 \equiv 2 \mod 7
$$

$$
5^{5} \equiv 5^{4} \cdot 5 \equiv 2 \cdot 5 \equiv 1 0 \equiv 3 \mod 7
$$

$$
5^{6} \equiv 5^{5} \cdot 5 \equiv 3 \cdot 5 \equiv 1 5 \equiv 1 \mod 7
$$

That's what we were looking for! We have ascertained that  $5^6$  is 1 more than a multiple of 7. And this was much easier than calculating  $5^6 = 15625$  and figuring out that  $15625 = 7 \cdot 2232 + 1$ , wasn't it?

This has answered the first two questions: we have found that there exists a power of 5 with the desired property, and since we found it iteratively (starting from  $k = 1$ ), we know that this is the smallest such number. We will leave it to you to investigate the third question of characterizing all such numbers. Try continuing our process, multiplying by 5s and reducing. Do you notice a pattern? What is it? Make a conjecture. Try to prove it! (We'll come back to this example later on …)

Example 6.5.13. Consider the number 474. Is it a multiple of 3 or not? Perhaps you just added up its digits— $15 = 4 + 7 + 4$ —and noticed that 15 is a multiple of 3, and then concluded that 474 must also be a multiple of 3. (Of course, you could also have just done the long division to find  $474 = 3 \cdot 158$ .) Why can you do that? Is it because your teachers told you about this in 3rd grade and you took their word for it? That's not good enough for us!

Here, we will formally prove that a natural number  $x$  is divisible by 3 if and only if the sum of its digits is also divisible by 3. (Within the proof, we

have included parenthetical statements that work out the details with a specific example. We've included them to help you understand what we're writing, but we've put them in parentheses to remind you that simply showing an example is not a formal proof. It can help a reader understand the actual proof more easily, but an example alone is not enough to prove this universally-quantified statement.)

Proof. Let  $x \in \mathbb{N}$  be arbitrary and fixed. We can represent this number using its decimal expansion by writing

$$
x = \sum_{k = 0}^{n - 1} x_{k} \cdot 1 0^{k}
$$

where  $n$  is the number of digits in the number  $x$ , and  $x_{k}$  is the digit corresponding to the  $10^{k}$ -th place, so  $0 \leq x_{k} \leq 9$ . (That is,  $x_{k}$  is the  $(k + 1)$ -th digit of  $x$  reading right to left.)

(For example, we can write 47205 as  $47205 = 4 \cdot 10^4 + 7 \cdot 10^3 + 2 \cdot 10^2 + 0 \cdot 10^1 + 5 \cdot 10^0$ . In this case,  $x_0 = 5$  and  $x_1 = 0$  and  $x_3 = 2$  and so on.)

The Divisibility Trick claims that

$$
x \equiv 0 \mod 3 \Longleftrightarrow \sum_{k = 0}^{n - 1} x_{k} \equiv 0 \mod 3
$$

To prove this, we will consider the decimal expansion modulo 3. Notice that  $10 \equiv 1 \mod 3$ , since  $10 = 9 + 1$ . Thus,

$$
\forall k \in \mathbb {N} \cup \{0 \}. 1 0^{k} \equiv 1^{k} \equiv 1 \mod 3
$$

(This follow from the Modular Arithmetic Lemma and the fact that  $1^k = 1$  for any  $k$ . Think about this!)

This allows us to replace the powers of 10 in the decimal expansion with 1s! Therefore,

$$
\begin{array}{l} x \equiv 0 \mod 3 \iff \sum_{k = 0}^{n - 1} x_{k} \cdot 1 0^{k} \equiv 0 \mod 3 \text{Re wr it e} x \text{in de ci ma lf or m} \\ \iff \sum_{k = 0}^{n - 1} x_{k} \cdot 1^{k} \equiv 0 \mod 3 \qquad \text{Si nc e} 1 0 \equiv 1 \mod 3 \\ \Longleftrightarrow \sum_{k = 0}^{n - 1} x_{k} \equiv 0 \mod 3 \\ \end{array}
$$

This proves the claim.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/eb355e6f6226f4b247c62e546f2e34c224b91307f478dd0cc8b8045468c0e3d7.jpg)

(Notice that  $3 \mid 47205$  because  $3 \mid (4 + 7 + 2 + 0 + 5)$ , which is to say  $3 \mid 18$ . In fact,  $15735 \cdot 3 = 47205$ ).

Interestingly enough, we have actually proved a stronger result here. Because the statements above are if and only if statements, we actually know something further: if the sum of the digits of  $x$  is not a multiple of 3, then  $x$  is not a multiple of 3 and has the same remainder. For example,  $3 \nmid 122$  because  $3 \nmid 5$ ; furthermore,  $5 \equiv 2 \mod 3$  and so we know that  $122 \equiv 2 \mod 3$ . (Indeed,  $122 = 3 \cdot 40 + 2$ .)

One can find and prove similar divisibility tricks for 9 and 11 (although the one for 11 is a little trickier). There is even one for 7, but it's difficult to write down. These ideas will be explored in this chapter's exercises.

Remember this result and its proof. It's a good one to whip out at a party. Challenge your friends: do they actually know why this trick works? You do!

# 6.5.2 Equivalence Classes modulo  $n$

You proved (see Lemma 6.5.9) that congruence modulo  $n$  is, indeed, an equivalence relation on the underlying set  $\mathbb{Z}$ . You also proved (see Theorem 6.4.10) that the equivalence classes of an equivalence relation partition the underlying set. Combining these two results, we know that congruence modulo  $n$  yields a partition of  $\mathbb{Z}$ . How convenient! How will we represent those equivalence classes, though? What would be a natural choice as a representative of each class?

Let's start with two simpler questions: (1) How many equivalence classes are there of  $\mathbb{Z}$  modulo  $n$ ? (2) How "big" are the equivalence classes?

## How many equivalence classes?

To answer question (1), we just have to remember how we defined remainders upon division by  $n$ . The Division Algorithm (see Lemma 6.5.2) required a remainder  $r$  to satisfy  $0 \leq r \leq n - 1$ , when we divide some other number by  $n$ . This indicates that there are at most  $n$  possibilities for what a remainder could be: either 0 or 1 or 2 or … or  $n - 1$ . (That is,  $r \in [n - 1] \cup \{0\}$ .) Are we sure that there exist numbers whose remainders are these possibilities? Sure, we can just use those numbers themselves! Certainly  $n - 1$  has remainder  $n - 1$  when we divide it by  $n$  (since  $n - 1 < n$ ). Together, these observations tell us there are exactly  $n$  equivalence classes of  $\mathbb{Z}$  modulo  $n$ .

We can also identify some natural choices for representatives of these equivalence classes via these same observations! Since  $a \equiv b \mod n$  means that  $a$  and  $b$  have the same remainder upon division by  $n$ , why don't we just declare that those two numbers belong to the equivalence class represented by that remainder, whatever it is. That remainder  $r$  must satisfy  $0 \leq r \leq n - 1$ , and we will write  $a, b \in [r]_{\mathrm{mod} n}$  to indicate that  $a$  and  $b$  belong to that equivalence class represented by the remainder  $r$  (with the subscript "mod  $n$ ", as well, to indicate the remainder comes from division by  $n$ ).

## How big are the classes?

Let's think of this by using a particular value, say  $n = 4$ . What does it mean for an integer  $z \in \mathbb{Z}$  to belong to the equivalence class corresponding to 0? That is, if we know  $z \in [0]_{\mathrm{mod} 4}$ , what can we say about  $z$ ?

By the definition of mod, we know this means  $z$  has a remainder of 0 when we divide by 4. Aha! This means  $z$  is a multiple of 4. How many multiples of 4 are there in  $\mathbb{Z}$ ? Infinitely many! We have 4,8,12,16,…, as well as 0,-4,-8,-12,… The set  $[0]_{\mathrm{mod} 4}$  is an infinite set.

What about knowing  $z \in [1]_{\mathrm{mod} 4}$ ? What does this say about  $z$ ? Having a remainder of 1 means  $z$  is expressible as  $4k + 1$ ; that is, there exists such a  $k$  that allows us to write  $z$  in this way. What could that  $k$  be? Well, any choice of  $k \in \mathbb{Z}$  creates such a number  $z$ , so we can consider letting  $k = 0$  and  $k = 1$  and  $k = 2 \ldots$  as well as  $k = -1$  and  $k = -2 \ldots$  and see what happens. We find that this generates the set

$$
\begin{array}{l} [ 1 ]_{\mathrm{mo d} 4} = \{\dots , - 7, - 3, 1, 5, 9, \dots \} \\ = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 4 k + 1 \} = \{4 k + 1 \mid k \in \mathbb {Z} \} \\ \end{array}
$$

Notice that we resorted to "… notation at first to show you the pattern we noticed, and then we rewrote this set using set-builder notation (in two different ways).

This is also an infinite set. We will let you play around with other remainders (upon division by 4, as well as for general  $n$ ), to let you discover that these sets are all infinite. (Also, we have not provided a proper, formal definition of what it means for a set to be infinite yet, but we are relying on our collective intuition for what this means. If you're looking for a good way to think about it, try this: this set is infinite because we can start to list all its elements, and identify a pattern that we are sure will generate all its elements, but this process will not end in a finite amount of time.)

## The Partition of $\mathbb{Z}$ modulo $n$

Let's take these observations we've made about the equivalence classes and use them to make a summary about a canonical (i.e. standard/natural/convenient) representation of the equivalence classes of  $\mathbb{Z}$  modulo  $n$ . We know there are  $n$  equivalence classes, each of them infinitely big. We know that each class corresponds to exactly one of the remainders you might get when dividing an integer by  $n$ . Since that remainder must satisfy  $0 \leq r \leq n - 1$ , we will use the set  $\{0,1,2,\ldots,n - 1\} = [n - 1] \cup \{0\}$  as the set of canonical representatives.

The equivalence class corresponding to remainder  $r$  will collect together all the integers which yield that remainder when divided by  $n$ . Said another way, all of the elements  $z \in [r]_{\mathrm{mod}~n}$  must be exactly  $r$  more than some multiple of  $n$ . This means we can generate all the elements of the equivalence class by starting with  $r$  and adding/subtracting  $n$  over and over and over. (Think about it, and you'll realize this means that any two elements of the same equivalence class differ by a multiple of  $n$ .)

## The equivalence classes of $\mathbb{Z}$ modulo $n$:

Given  $n\in \mathbb{N}$ , there are exactly  $n$  equivalence classes:

$$
[ 0 ]_{\mathrm{mo d} n}, [ 1 ]_{\mathrm{mo d} n}, [ 2 ]_{\mathrm{mo d} n}, \dots , [ n - 1 ]_{\mathrm{mo d} n}
$$

They are characterized by:

$$
\begin{array}{l} [ 0 ]_{\mathrm{mo d} n} = \left\{\dots , - 2 n, - n, 0, n, 2 n, \dots \right\} \\ = \left\{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = k n \right\} \\ \end{array}
$$

$$
\begin{array}{l} [ 1 ]_{\mathrm{mo d} n} = \{\dots , - 2 n + 1, - n + 1, 1, n + 1, 2 n + 1, \dots \} \\ = \left\{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = k n + 1 \right\} \\ \end{array}
$$

$$
\begin{array}{l} [ 2 ]_{\mathrm{mo d} n} = \{\dots , - 2 n + 2, - n + 2, 2, n + 2, 2 n + 2, \dots \} \\ = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = k n + 2 \} \\ \end{array}
$$

中

$$
\begin{array}{l} [ n - 1 ]_{\mathrm{mo d} n} = \{\dots , - n - 1, - 1, n - 1, 2 n - 1, 3 n - 1, \dots \} \\ = \left\{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = k n + (n - 1) \right\} \\ = \left\{z \in \mathbb {Z} \mid \exists \ell \in \mathbb {Z}. z = \ell n - 1 \right\} \\ \end{array}
$$

This summarizes all of our observations in full generality. Here are a few examples with specific values of  $n$ .

- Consider  $n = 2$ . The equivalence classes are

$$
\begin{array}{l} [ 0 ]_{\text{mo d} 2} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 2 k \} = \{\text{ev en in te ge rs} \} \\ = \{\dots , - 6, - 4, - 2, 0, 2, 4, 6 \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 1 ]_{\mathrm{mo d} 2} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 2 k + 1 \} = \{\text{od di nt eg er s} \} \\ = \{\dots , - 5, - 3, - 1, 1, 3, 5, \dots \} \\ \end{array}
$$

- Consider  $n = 3$ . The equivalence classes are

$$
\begin{array}{l} [ 0 ]_{\mathrm{mo d} 3} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 3 k \} = \{\text{mu lt ip le s} 3 \} \\ = \{\dots , - 9, - 6, - 3, 0, 3, 6, 9, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 1 ]_{\mathrm{mo d} 3} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 3 k + 1 \} = \{\text{mu lt ip le so f} 3, \text{pl us} 1 \} \\ = \{\dots , - 8, - 5, - 2, 1, 4, 7, 1 0, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 2 ]_{\mathrm{mo d} 3} = \left\{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 3 k + 2 \right\} = \{\text{mu lt ip le so f} 3, \text{pl us} 2 \} \\ = \{\dots , - 7, - 4, - 1, 2, 5, 8, 1 1 \dots \} \\ \end{array}
$$

- Consider  $n = 4$ . The equivalence classes are

$$
\begin{array}{l} [ 0 ]_{\mathrm{mo d} 4} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 4 k \} = \{\text{mu lt ip le s} 4 \} \\ = \{\dots , - 1 2, - 8, - 4, 0, 4, 8, 1 2, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 1 ]_{\mathrm{mo d} 4} = \left\{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 4 k + 1 \right\} = \{\text{mu lt ip le s} 4, \text{pl us} 1 \} \\ = \{\dots , - 1 1, - 7, - 3, 1, 5, 9, 1 3, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 2 ]_{\mathrm{mo d} 4} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 4 k + 2 \} = \{\text{mu lt ip le so f} 4, \text{pl us} 2 \} \\ = \{\dots , - 1 0, - 6, - 2, 2, 4, 6, 1 0, 1 4, \dots \} \\ \end{array}
$$

$$
\begin{array}{l} [ 3 ]_{\mathrm{mo d} 4} = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = 4 k + 3 \} = \{\text{mu lt ip le so f} 4, \text{pl us} 3 \} \\ = \{\dots , - 9, - 5, - 1, 3, 7, 1 1, 1 5, \dots \} \\ \end{array}
$$

## Using the Equivalence Classes

Why is this helpful? Why have we bothered to take you through this development of the set of integers modulo a particular equivalence relation?

The fact that  $\mathbb{Z}$  is partitioned by these equivalence classes is extremely important. Because of this, whenever we do arithmetic in the context of  $\mathbb{Z}$  modulo  $n$ , we only need to consider the equivalence classes, the remainders. We can reduce everything to just the numbers  $\{0,1,2,\ldots,n-1\}$  along the way because they represent all the integers. We don't need to do a bunch of arithmetic with large numbers and then find remainders; we can just work with the remainders alone. Let's see a couple of examples to show you how this partition is, indeed, useful.

Example 6.5.14. Consider the following claim:

$$
\forall n \in \mathbb {N}. 6 \mid n^{3} + 5 n
$$

We asked you to prove this by induction on  $n$  previously! (See Problem 5.7.15 in Section 5.7.) Here, we will take advantage of equivalence classes to prove this instead!

Consider  $\mathbb{Z}$  modulo 6. Since  $\mathbb{N} \subseteq \mathbb{Z}$ , we know that every  $n \in \mathbb{N}$  must fall into exactly one of the equivalence classes— $[0]_{\mathrm{mod} 6}$ ,  $[1]_{\mathrm{mod} 6}$ ,  $[2]_{\mathrm{mod} 6}$ ,  $[3]_{\mathrm{mod} 6}$ ,  $[4]_{\mathrm{mod} 6}$ ,  $[5]_{\mathrm{mod} 6}$ —based on its remainder upon division by 6.

We can examine each case separately. Supposing  $n$  belongs to a particular equivalence class allows us to compute what equivalence class  $n^3 + 5n$  must belong to. In each case, to multiply (and exponentiate, which is repeated multiplication) and add, we are applying the Modular Arithmetic Lemma 6.5.10.

(1)  $n\equiv 0\bmod 6\quad \Longrightarrow \quad n^3 +5n\equiv 0^3 +5\cdot 0\equiv 0\bmod 6$  
(1)  $n \equiv 1 \mod 6 \Rightarrow n^3 + 5n \equiv 1^3 + 5 \cdot 1 \equiv 6 \equiv 0 \mod 6$  
(1)  $n \equiv 2 \mod 6 \Rightarrow n^3 + 5n \equiv 2^3 + 5 \cdot 2 \equiv 18 \equiv 0 \mod 6$  
(1)  $n\equiv 3\bmod 6\quad \Longrightarrow \quad n^3 +5n\equiv 3^3 +5\cdot 3\equiv 42\equiv 0\bmod 6$

(1)  $n \equiv 4 \bmod 6 \quad \Longrightarrow \quad n^3 + 5n \equiv 4^3 + 5 \cdot 4 \equiv 84 \equiv 0 \bmod 6$  
(1)  $n \equiv 5 \mod 6 \Rightarrow n^3 + 5n \equiv 5^3 + 5 \cdot 5 \equiv 150 \equiv 0 \mod 6$

In each case, we find that  $n^3 + 5n$  is a multiple of 6 (since it has a remainder of 0 when divided by 6). This tells us that  $6 \mid n^3 + 5n$ , no matter what  $n$  is. This proves the claim holds for all  $n \in \mathbb{N}$ , without using any inductive argument!

## Example 6.5.15. Quadratic Residues:

In this example, we will investigate perfect squares. Specifically, we will look at what remainders perfect squares yield when divided by various numbers. This example will be interesting because you will notice some different patterns appear, depending on what number we are dividing by, and you might be tempted to go off and explore these patterns on your own. (If so, wonderful!) But this example will also be helpful in that some of our investigations will lead us to other results, proven in this text and in the exercises. Particularly, these investigations of perfect squares can be helpful when exploring Pythagorean Triples; these are triplets of integers  $(a,b,c) \in \mathbb{N}^3$  that satisfy  $a^2 + b^2 = c^2$ . Knowing information about perfect squares can help us prove some interesting facts about these triples!

For each of the following cases, we will fix a particular  $n \in \mathbb{N}$  and then investigate what  $x^2$  reduces to modulo  $n$ , for every  $x \in \mathbb{Z}$ . Knowing the partition of  $\mathbb{Z}$  modulo  $n$ , we can simply look at all of the  $n$  possible remainders modulo  $n$  and square them, and then reduce. These possible remainders are called the quadratic residues (quadratic because we use perfect squares, and residues because we find remainders). After each case, we will summarize with a list of these possible quadratic residues.

$\mathbf{n} = \mathbf{2}$ : We know that a perfect square is even if and only if the base is even, and that a perfect square is odd if and only if the base is odd. We investigated these claims back in Chapter 4 when we discussed biconditional statements and quantifiers and proof techniques. There's no need to go back and reprove those claims formally now; we can see these results easily using modular arithmetic!

Let  $x\in \mathbb{Z}$  be arbitrary and fixed.

- First, suppose  $x \equiv 0 \mod 2$  (i.e.  $x$  is even). Then applying the MAL tells us  $x^2 \equiv 0^2 \equiv 0 \mod 2$  (i.e.  $x^2$  is even).  
- Second, suppose  $x \equiv 1 \mod 2$  (i.e.  $x$  is odd). Then applying the MAL tells us  $x^2 \equiv 1^2 \equiv 1 \mod 2$  (i.e.  $x^2$  is odd).

That's it! The partition of  $\mathbb{Z}$  modulo 2 tells us these are the only cases that need consideration.

Quadratic residues modulo 2:  $\{0,1\}$

$\mathbf{n} = \mathbf{3}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 3 \implies x^2 \equiv 0^2 \equiv 0 \mod 3$  
- $x \equiv 1 \mod 2 \implies x^2 \equiv 1^2 \equiv 1 \mod 3$  
- $x \equiv 2 \mod 3 \Rightarrow x^2 \equiv 2^2 \equiv 4 \equiv 1 \mod 3$

Quadratic residues modulo 3:  $\{0,1\}$

$\mathbf{n} = \mathbf{4}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 4 \implies x^2 \equiv 0^2 \equiv 0 \mod 4$  
- $x \equiv 1 \mod 4 \implies x^2 \equiv 1^2 \equiv 1 \mod 4$  
- $x \equiv 2 \mod 4 \Rightarrow x^2 \equiv 2^2 \equiv 4 \equiv 0 \mod 4$  
- $x \equiv 3 \mod 4 \implies x^2 \equiv 3^2 \equiv 9 \equiv 1 \mod 4$

Quadratic residues modulo 4:  $\{0,1\}$

$\mathbf{n} = \mathbf{5}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 5 \implies x^2 \equiv 0^2 \equiv 0 \mod 3$  
- $x \equiv 1 \mod 5 \Rightarrow x^2 \equiv 1^2 \equiv 1 \mod 3$  
- $x \equiv 2 \mod 5 \implies x^2 \equiv 2^2 \equiv 4 \mod 5$  
- $x \equiv 3 \mod 5 \Rightarrow x^2 \equiv 3^2 \equiv 9 \equiv 4 \mod 5$  
- $x \equiv 4 \mod 5 \Rightarrow x^2 \equiv 4^2 \equiv 16 \equiv 1 \mod 5$

Quadratic residues modulo 5:  $\{0,1,4\}$

$\mathbf{n} = \mathbf{6}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 6 \implies x^2 \equiv 0^2 \equiv 0 \mod 6$  
- $x \equiv 1 \mod 6 \Rightarrow x^2 \equiv 1^2 \equiv 1 \mod 6$  
- $x \equiv 2 \mod 6 \Rightarrow x^2 \equiv 2^2 \equiv 4 \mod 6$  
- $x \equiv 3 \mod 6 \implies x^2 \equiv 3^2 \equiv 9 \equiv 3 \mod 6$  
- $x \equiv 4 \mod 6 \Rightarrow x^2 \equiv 4^2 \equiv 16 \equiv 4 \mod 6$  
- $x \equiv 5 \mod 6 \Rightarrow x^2 \equiv 5^2 \equiv 25 \equiv 1 \mod 6$

Quadratic residues modulo 6:  $\{0,1,3,4\}$

$\mathbf{n} = \mathbf{7}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 7 \implies x^2 \equiv 0^2 \equiv 0 \mod 7$  
- $x \equiv 1 \mod 7 \Rightarrow x^2 \equiv 1^2 \equiv 1 \mod 7$  
- $x \equiv 2 \mod 7 \Rightarrow x^2 \equiv 2^2 \equiv 4 \mod 7$  
- $x \equiv 3 \mod 7 \Rightarrow x^2 \equiv 3^2 \equiv 9 \equiv 2 \mod 7$  
- $x \equiv 4 \mod 7 \Rightarrow x^2 \equiv 4^2 \equiv 16 \equiv 2 \mod 7$
- $x \equiv 5 \mod 7 \Rightarrow x^2 \equiv 5^2 \equiv 25 \equiv 4 \mod 7$  
- $x \equiv 6 \mod 7 \Rightarrow x^2 \equiv 6^2 \equiv 36 \equiv 1 \mod 7$

Quadratic residues modulo 7:  $\{0,1,2,4\}$

$\mathbf{n} = \mathbf{8}$ : Let  $x \in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $x \equiv 0 \mod 8 \Rightarrow x^2 \equiv 0^2 \equiv 0 \mod 8$  
- $x \equiv 1 \mod 8 \Rightarrow x^2 \equiv 1^2 \equiv 1 \mod 8$  
- $x \equiv 2 \mod 8 \Rightarrow x^2 \equiv 2^2 \equiv 4 \mod 8$  
- $x \equiv 3 \mod 8 \Rightarrow x^2 \equiv 3^2 \equiv 9 \equiv 1 \mod 8$  
- $x \equiv 4 \mod 8 \Rightarrow x^2 \equiv 4^2 \equiv 16 \equiv 0 \mod 8$  
- $x \equiv 5 \mod 8 \Rightarrow x^2 \equiv 5^2 \equiv 25 \equiv 1 \mod 8$  
- $x \equiv 6 \mod 8 \Rightarrow x^2 \equiv 6^2 \equiv 36 \equiv 4 \mod 8$  
- $x \equiv 7 \mod 8 \Rightarrow x^2 \equiv 7^2 \equiv 49 \equiv 1 \mod 8$

Quadratic residues modulo 8:  $\{0,1,4\}$

We will let you go on and investigate other quadratic residues. You could even try to write a computer program that will generate these lists for you. Do you notice any patterns? Given  $n \in \mathbb{N}$ , how many quadratic residues are there modulo  $n$ ? What are they? Can you guarantee certain numbers that do and do not appear in any given list? Try and explore!

Example 6.5.16. Let's generalize the idea of the previous example and look at some cubic residues, as applied to a particular situation.

Suppose  $x,y,z\in \mathbb{Z}$  satisfy  $x^{3} + y^{3} = z^{3}$

Prove that at least one of the values  $\{x,y,z\}$  is a multiple of 7.

Restating our goal, we want to prove that

$$
x \equiv 0 \mod 7 \vee y \equiv 0 \mod 7 \vee z \equiv 0 \mod 7
$$

To do this, let's examine what the cubic residues are modulo 7.

Let  $z\in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $z \equiv 0 \mod 7 \implies z^3 \equiv 0^3 \equiv 0 \mod 7$  
- $z \equiv 1 \mod 7 \implies z^3 \equiv 1^3 \equiv 1 \mod 7$  
- $z \equiv 2 \mod 7 \implies z^3 \equiv 2^3 \equiv 8 \equiv 1 \mod 7$  
- $z \equiv 3 \mod 7 \implies z^3 \equiv 3^3 \equiv 9 \cdot 3 \equiv 2 \cdot 3 \equiv 6 \mod 7$  
- $z \equiv 4 \mod 7 \implies z^3 \equiv 4^3 \equiv 16 \cdot 4 \equiv 2 \cdot 4 \equiv 8 \equiv 1 \mod 7$
- $z \equiv 5 \mod 7 \implies z^3 \equiv 5^3 \equiv 25 \cdot 5 \equiv 4 \cdot 5 \equiv 20 \equiv 6 \mod 7$  
- $z \equiv 6 \bmod 7 \implies z^3 \equiv 6^3 \equiv (-1)^3 \equiv -1 \equiv 6 \bmod 7$

(Notice that we conveniently chose to write 6 as  $-1$  modulo 7 to make the calculations easier.)

We see that the only possibilities are  $\{0,1,6\}$ .

Now, suppose we have a solution to the equation, i.e. we have  $x, y, z \in \mathbb{Z}$  that satisfy  $x^3 + y^3 = z^3$ . Each term— $x^3, y^3, z^3$ —is congruent to either 0 or 1 or 6 modulo 7. Let's look at some cases.

- Suppose  $x^3 \equiv 0 \mod 7$ . Then  $y^3$  can satisfy any of the other possibilities—i.e.  $y^3$  can be congruent to 0 or 1 or 6 modulo 7—and we just require  $z^3$  to fall into the same equivalence class.

No matter what, in this case we have  $x^3 \equiv 0 \mod 7$ .

- Suppose  $y^3 \equiv 0 \mod 7$ . The same argument we just used applies to  $x^3$  and  $z^3$ , but no matter what, we have  $y^3 \equiv 0 \mod 7$ .  
Suppose  $x^3\equiv 1$  mod 7.

AFSOC  $y^3 \equiv 1 \mod 7$ . Then  $x^3 + y^3 \equiv 1 + 1 \equiv 2 \mod 7$ , but this is not possible because 2 is not a cubic residue modulo 7.

However, we see that  $y^3 \equiv 0 \mod 7$  is a possibility, because we could have  $x^3 + y^3 \equiv 1 + 0 \equiv 1 \mod 7$ .

Also, we see that  $y^3 \equiv 6 \mod 7$  is a possibility, because we could have  $x^3 + y^3 \equiv 1 + 6 \equiv 7 \equiv 0 \mod 7$ .

No matter what, in this case we have at least one of the cubes—either  $y^3$  or  $z^3$ —congruent to 0 modulo 7.

- Suppose  $y^3 \equiv 1 \mod 7$ . The same argument we just used applies to  $x^3$  and  $z^3$ , so we find that, no matter what, at least one of the cubes is congruent to 0 modulo 7.  
- Suppose that  $x \equiv 6 \mod 7$ .

AFSOC  $y^3 \equiv 6 \mod 7$ . Then  $x^3 + y^3 \equiv 6 + 6 \equiv 12 \equiv 5 \mod 7$ , but this is not possible because 5 is not a cubic residue modulo 7.

However, we see that  $y^3 \equiv 0 \mod 7$  is a possibility, because we could have  $x^3 + y^3 \equiv 6 + 0 \equiv 6 \mod 7$ .

Also, we see that  $y^3 \equiv 1 \mod 7$  is a possibility, because we could have  $x^3 + y^3 \equiv 6 + 1 \equiv 7 \equiv 0 \mod 7$ .

No matter what, in this case we have at least one of the cubes—either  $y^3$  or  $z^3$ —congruent to 0 modulo 7.

- Again, supposing  $y^3 \equiv 6 \mod 7$ , the same argument applies to  $x^3$  and  $z^3$ .

We have now seen that, no matter what situation applies, there is at least one cube that is congruent to 0 modulo 7. The cube which has this property depends on the situation (and in some cases, more than one cube has this property), but there is always at least one.

This is fruitful for us, because we can look back at our list of cubic residues and notice something: the only base whose cube is congruent to 0 modulo 7 is 0 itself! Said another way,

$$
\forall z \in \mathbb {Z}. z^{3} \equiv 0 \mod 7 \Longrightarrow z \equiv 0 \mod 7
$$

This means that, in every situation outlined above, we have at least one of the cubes being congruent to 0 modulo 7, which means further that we have at least one of the base variables congruent to 0 modulo 7. By listing the possibilities and then analyzing a few cases, we have now proved a property about all possible solutions to this equation without having to find any solutions!

Now, with all of that work already done, we have some unfortunate news: the only solution to the original equation is the trivial one, where  $x = y = z = 0$ . That's it! You can try to find other solutions, but your efforts will be in vain. This fact is a particular instance of the conclusion of Fermat's Last Theorem, which says that non-trivial integral solutions (i.e. where  $x, y, z \in \mathbb{Z}$ ) exist to the equation  $x^{k} + y^{k} = z^{k}$  (where  $k \in \mathbb{N}$ ) if and only if  $k = 1$  or  $k = 2$ ; that is, the only solution when  $k \in \mathbb{N} - \{1, 2\}$  is  $x = y = z = 0$ .

This fact was stated by Fermat himself when he was alive, but he never published a proof. He claimed—in the margins of one of his notebooks—to have a short proof that would not fit inside those margins, but we have come to realize that this was probably not true. Although Fermat worked in the 1600s, this theorem was only proven in the 1990s! Furthermore, the proof involved a lot of powerful mathematics that was developed over the time between Fermat's statement and the eventual proof.

If we know this theorem, then we can prove the statement in this example quite easily! If the only solution is  $x = y = z = 0$ , then obviously at least one of the values is a multiple of 7; they all are! This is no fun, though, and does not give us any practice working with modular arithmetic and equivalence classes.

Example 6.5.17. Here is another problem that deals with cubic residues:

Suppose  $x, y, z \in \mathbb{Z}$  satisfy  $x^3 + y^3 + z^3 = 3$ .

Prove that  $x^{3}\equiv y^{3}\equiv z^{3}$  mod 9.

This problem concerns a particular Diophantine Equation. This is a general term for these types of equations that involve polynomials with multiple variables and coefficients that are integers. A solution to such a Diophantine Equation is a selection of values for the variables that are integers that satisfy the equation. Here, we are saying that any solution to this equation must make all of the terms— $x^3$  and  $y^3$  and  $z^3$ —congruent modulo 9.

To start off, try finding a couple of solutions to this equation, just to see some examples. We'll give you a few easy ones to get you started: we might

have  $(x,y,z)$  equal to  $(1,1,1)$  or  $(4,4,-5)$ . Do you see that these solutions have the specified property? Can you find any other solutions? (This is a difficult problem, so don't try too hard.)

Interestingly enough, we can prove this claim without even trying to identify what all of the solutions "look like" or trying to find them. All we have to do is find what the cubic residues are modulo 9:

Let  $z\in \mathbb{Z}$  be arbitrary and fixed. Applying MAL tells us:

- $z \equiv 0 \mod 9 \Rightarrow z^3 \equiv 0^3 \equiv 0 \mod 9$  
- $z \equiv 1 \mod 9 \Rightarrow z^3 \equiv 1^3 \equiv 1 \mod 9$  
- $z \equiv 2 \mod 9 \Rightarrow z^3 \equiv 2^3 \equiv 8 \mod 9$  
- $z \equiv 3 \mod 9 \Rightarrow z^3 \equiv 3^3 \equiv 9 \cdot 3 \equiv 0 \mod 9$  
- $z \equiv 4 \mod 9 \implies z^3 \equiv 4^3 \equiv 16 \cdot 4 \equiv (-2) \cdot 4 \equiv -8 \equiv 1 \mod 9$  
- $z \equiv 5 \mod 9 \implies z^3 \equiv 5^3 \equiv 25 \cdot 5 \equiv (-2) \cdot 5 \equiv -10 \equiv 8 \mod 9$  
- $z \equiv 6 \mod 9 \implies z^3 \equiv 6^3 \equiv 36 \cdot 6 \equiv 0 \cdot 6 \equiv 0 \mod 9$  
- $z \equiv 7 \mod 9 \implies z^3 \equiv 7^3 \equiv 49 \cdot 7 \equiv 4 \cdot (-2) \equiv -8 \equiv 1 \mod 9$  
- $z \equiv 8 \mod 9 \implies z^3 \equiv 8^3 \equiv (-1)^3 \cdot -1 \equiv 8 \mod 9$

Notice that, in some cases, we used negative numbers to make the calculations easier. This is totally fine, and can be helpful for you! For instance, rather than computing  $4^3 = 64$  and then trying to reduce modulo 9, we can replace 16 with  $-2$  to keep the numbers small. We can always add or subtract a multiple of 9 from any term, so we might as well try to do this along the way, instead of finding a large number and then reducing it modulo 9. (Of course, this point may seem totally moot because 64 isn't that large of a number; however, this is far more relevant when you have to work with bigger numbers. Furthermore, doing this reduction to single digits, whenever possible, can count down on the prevalence of mental arithmetic errors!) Notice that we only saw three possibilities on the far right-hand sides; the cubic residues modulo 9 are  $\{0,1,8\}$ . That's it!

Certainly, to make  $x^{3} + y^{3} + z^{3} = 3$  an equality—we definitely need  $x^{3} + y^{3} + z^{3} \equiv 3 \mod 9$ , since  $3 \equiv 3 \mod 9$ . But looking at the sums of the possible cubic residues—0 and 1 and 8—we see that  $1 + 1 + 1$  is the only sum that yields 3. Try the others:  $0 + 1 + 8 \equiv 9 \equiv 0 \mod 9$  and  $8 + 8 + 8 \equiv 24 \equiv 6 \mod 3$  and so on. This means that we require  $x^{3} \equiv y^{3} \equiv z^{3} \equiv 1 \mod 9$  for  $(x,y,z)$  to be a solution.

In solving this, we have proven a slightly strongly result. Not only do we now know that  $x^3, y^3, z^3$  must be congruent modulo 9, they must be congruent to 1 modulo 9. This is a little bit more information than was required of us.

Now, it turns out that something even stronger is true about this problem. It happens to be the case that  $x \equiv y \equiv z \mod 9$ . That is, not only are the cubes congruent modulo 9, the bases are, as well. (Notice this doesn't say the bases

are congruent to 1 modulo 9; in fact, our other example of  $(4,4,-5)$  shows this doesn't have to be the case.) Unfortunately, proving this fact delves into a lot of higher mathematics, and falls far outside the scope of this book. This should give you some appreciation, though, for the idea that such "simple" problems (easily stated, small numbers, integers) require incredibly complex and deep mathematics to be solved. Rather than see this as a discouragement, though, think of it as an inspiration: with only a bit of mathematical knowledge, we could scrape the surface of this problem which hints further at very profound and intricate underpinnings.

(If you are curious, here is a paper that solves the full result, proving that  $x \equiv y \equiv z \mod 9$ , necessarily:

http://www.ams.org/journals/mcom/1985-44-169/S0025-5718-1985-0771049-4/S0025-5718-1985-0771049-4.pdf

You will have to look up some definitions to read even the first two paragraphs. This will also require you to learn the corresponding mathematics, which will probably take, oh … a few months or years, perhaps, depending on your interest. Keep it in mind, and bo back to it later on in your mathematical career!)

# 6.5.3 Multiplicative Inverses

We mentioned before—when we proved the MAL, Lemma 6.5.10—that we weren't going to talk about "division" in the context of  $\mathbb{Z}$  modulo  $n$ . In this section, we will revisit that idea and explain why (and how) there are some "nice" situations in which "division" makes sense. However, we want to stress that we are actually appealing to a more general idea of multiplicative inverses, and that we should not actually be thinking of this in terms of "division". We will explain this first with a couple of motivating examples, and then we will state and prove a result about exactly what these "nice" situations are.

## The General Concept

Given a particular mathematical objects, its multiplicative inverse is another object such that when we "multiply" the two objects together, we get "1". We are using scare quotes here because the notions of "multiply" and "1" depend greatly on the context!

Example 6.5.18. Let's consider a familiar example first. Suppose our context is the set of real numbers  $\mathbb{R}$  with the usual multiplication. Let's take the number 2. What is its multiplicative inverse? That is, is there another real number  $x$  such that  $2 \cdot x = 1$ , and if so, what is it? Certainly,  $x = \frac{1}{2}$  works! Notice that  $2 \cdot \frac{1}{2} = 1$ . For this reason, we write

$$
2^{- 1} = \frac{1}{2} \quad \mathrm{in th ec on te xt of \mathbb{R}}
$$

When we "divide both sides of an equation by 2", we are actually multiplying both sides by the multiplicative inverse of 2.

Example 6.5.19. Let's consider a perhaps less familiar example now. Consider a wall clock, with notches for the 12 hours equally spaced around its rim. We will consider rotating the clock around, so let's declare that the standard placement—with 12 at the top—is our "1". That is, this is the usual representation with no extra rotation, so let's call this our identity, our unit element. In essence, our "1" is the clock after the  $0^{\circ}$  rotation.

Now, let's say that "multiplying" two rotations together is simply doing one rotation after the other. For example, let's say we rotate the clock around (clockwise, of course) by  $45^{\circ}$ , and then we rotate the clock even further (clockwise) by another  $90^{\circ}$ . In our context, we have just multiplied the objects "45° rotation" and "90° rotation". This has produced another object, the "135° rotation".

The point of establishing these conventions—what our context is, what the objects are, what "multiply" means, and what "1" means—is that we can identify the multiplicative inverse of any rotation. If you think about it for a minute, you'll see that if we take the object "θ (in degrees) rotation" and multiply it by the "360 - θ (in degrees) rotation", then we have rotated the clock completely around by  $360^{\circ}$  and arrived with the standard placement, our "1" in this context. This means

$$
\left(\theta (\text{in de gr ee s}) \text{ro ta ti on}\right)^{- 1} = 3 6 0 - \theta (\text{in de gr ee s}) \text{ro ta ti on}
$$

in our current context.

These two examples are meant to show you that the idea of an inverse is a general idea, and is not tied to any standard context of dividing numbers. In fact, we will see another example of this idea later on, when we talk about the inverse of a function. (In that context, "multiplication" is the composition of functions, and "1" is the identity function. You'll see what we mean later on in the next chapter, but we wanted to point this out now, in case you are already familiar with these concepts.)

## Relatively Prime Integers

You might be familiar with the following definition. We will use it in the forthcoming result that declares when multiplicative inverses exist (in the context of  $\mathbb{Z}$  modulo  $n$ ), so we want to reiterate it for you now and show you some examples.

Definition 6.5.20. Given  $x, y \in \mathbb{Z}$ , we say  $x$  and  $y$  are relatively prime if and only if they have no common factors (divisors), other than 1.

(Note: The phrase "relatively prime" means  $x$  and  $y$  are relatively prime to each other. It does not say that  $x$  is "kinda prime-like" or anything like that.)

Example 6.5.21. For example, 12 and 35 are relatively prime, because  $12 = 2^2 \cdot 3$  and  $35 = 5 \cdot 7$ , so we can see that they don't have any common factors.

It helps, in general, to write out these prime factorizations because we are really wondering whether two numbers have any prime factors in common (which

would imply they have  $a$  factor in common.)

For a non-example, 12 and 33 are not relatively prime, because  $3 \mid 12$  and  $3 \mid 33$ .

Example 6.5.22. This example will be helpful to have in hand later on, after the result stated below.

Claim: If  $p$  is a prime and  $a$  is an integer that is not a multiple of  $p$ , then  $p$  and  $a$  are relatively prime.

(That is, if  $p$  is prime and  $p \nmid a$ , then  $p$  and  $a$  are relatively prime.)

Let's see why this is true!

Proof. Let  $p$  be a prime and let  $a \in \mathbb{Z}$ . Suppose  $p \nmid a$ .

Since  $p \nmid a$ , then none of the prime factors of  $a$  are  $p$ . Since  $p$  is prime itself, then none of those prime factors of  $a$  divide  $p$ , either. This means that  $a$  and  $p$  don't share any prime factors, so they are relatively prime.

This is convenient! In particular, we now know that whenever  $p$  is a prime, all of the numbers  $1, 2, 3, \ldots, p - 1$  are relatively prime to  $p$ .

## Definition and Examples

Let's talk about what multiplicative inverse means in the context of  $\mathbb{Z}$  modulo  $n$ . Here, "multiply" means the usual multiplication, but everything is reduced modulo  $n$ . Also, "1" really means the equivalence class corresponding to 1. In this sense, we will say that for any  $x \in \mathbb{Z}$ , its multiplicative inverse—written as  $x^{-1}$ —is equal to  $y$  if and only if  $xy \equiv 1 \mod n$ . That is,

$$
\forall x \in \mathbb {Z}. \forall y \in \mathbb {Z}. y \equiv x^{- 1} \mod n \Longleftrightarrow x y \equiv 1 \mod n
$$

Notice that all of these claims are made in the context of  $\mathbb{Z}$  modulo  $n$ , so we don't write " $y = x^{-1}$ ". The number  $x$  represents an entire equivalence class, as does  $x^{-1}$ .

Let's practice finding these multiplicative inverses, or determining when they don't exist. The key observation to make here is the following:

$$
\text{If} x \cdot y \equiv 1 \bmod n, \text{th en} x \cdot (y + k n) \equiv 1 \bmod n \text{fo re ve ry} k \in \mathbb {Z}.
$$

To see why, we can just distribute the  $x$  in the expression on the right:

$$
x \cdot (y + k n) \equiv x y + x k n \equiv x y + n (x k) \equiv x y + 0 \equiv x y \equiv 1 \mod n
$$

That is, adding a multiple of  $n$  to  $y$  will just yield a multiple of  $n$  in the expansion, and we can "throw it away" when we reduce everything modulo  $n$ .

The consequence of this fact is this: If  $x$  has a multiplicative inverse modulo  $n$ , then (a) there are infinitely many such inverses and they all belong to the same equivalence class modulo  $n$ , but (b) we can find exactly one such inverse in the set  $\{1, 2, 3, \ldots, n - 1\}$ .

These facts are helpful and interesting. In particular, this tells us that we don't have to make some crazy or complicated existence argument to try and find multiplicative inverses: we can simply check the cases one by one until we find one. If we don't, then none exist. Put another way, we don't have to "intuit" the answer or randomly guess-and-check; we have a more methodical guess-and-check algorithm.

Let's see this in practice with the following examples.

Example 6.5.23. Throughout this example, we will provide an  $n \in \mathbb{N}$  and an  $x \in \mathbb{Z}$ , and we will seek a  $y$  that satisfies  $y \equiv x^{-1} \mod n$ . If no such inverse exists, we will show why.

- $\mathbf{n} = 3$  and  $\mathbf{x} = 2$ :

We know we just need to check  $y = 1$  and  $y = 2$ . Notice that  $2 \cdot 2 \equiv 4 \equiv 1 \mod 3$ , so

$$
2^{- 1} \equiv 2 \mod 3
$$

- $\mathrm{n} = 4$  and  $\mathrm{x} = 3$ :

We know we just need to check  $y = 1$  and  $y = 2$  and  $y = 3$ . Notice that  $3 \cdot 3 \equiv 4 \equiv 1 \mod 3$ , so

$$
3^{- 1} \equiv 3 \mod 4
$$

- $\mathrm{n} = 4$  and  $\mathrm{x} = 2$ :

We know we just need to check  $y = 1$  and  $y = 2$  and  $y = 3$ . However, notice that  $x$  is even, so any multiple of  $x$  is also even, yet any number  $y \equiv 1 \mod 4$  must be odd. Thus, 2 has no multiplicative inverse modulo 4.

- $\mathbf{n} = 10$  and  $\mathbf{x} = 3$ :

We can just check the cases here:

$$
\begin{array}{l} 3 \cdot 1 \equiv 3 \mod 1 0 \\ 3 \cdot 2 \equiv 6 \mod 1 0 \\ 3 \cdot 3 \equiv 9 \mod 1 0 \\ 3 \cdot 4 \equiv 1 2 \equiv 2 \mod 1 0 \\ 3 \cdot 5 \equiv 1 5 \equiv 5 \mod 1 0 \\ 3 \cdot 6 \equiv 1 8 \equiv 8 \mod 1 0 \\ 3 \cdot 7 \equiv 2 1 \equiv 1 \mod 1 0 \\ \end{array}
$$

Aha! This means

$$
3^{- 1} \equiv 7 \mod 1 0
$$

Notice that this also shows

$$
7^{- 1} \equiv 3 \mod 1 0
$$

because multiplication is commutative (i.e. the order does not matter).

This observation leads us to the following fact:

$(a^{-1})^{-1}\equiv a\bmod n$  , assuming  $a^{-1}$  exists in the first place.

- $\mathbf{n} = 15$  and  $\mathbf{x} = \mathbf{7}$ :

If we start checking all the multiples of 7, we find that when we get to 13, we've succeeded:

$$
7 \cdot 1 3 \equiv 9 1 \equiv 6 \cdot 1 5 + 1 \equiv 1 \mod 1 5
$$

so

$$
7^{- 1} \equiv 1 3 \mathrm{mo d} 1 5
$$

We will also leave it to you to verify that, for example, 6 has no multiplicative inverse modulo 15.

## When Do Multiplicative Inverses Exist?

Now that we've played around with a few examples, we should settle down and characterize all of the situations wherein multiplicative inverses exist. The following lemma does exactly this.

Lemma 6.5.24 (Multiplicative Inverses when Relatively Prime, or the MIRP Lemma). Suppose  $n \in \mathbb{N}$  and  $a \in \mathbb{Z}$ , and that  $a$  and  $n$  are relatively prime. Consider the congruence  $a \cdot x \equiv 1 \mod n$ . Then there exists a solution  $x \in \mathbb{Z}$  to this congruence.

In fact, there are infinitely-many solutions to this congruence, and they are all congruent modulo  $n$ . This implies there is exactly one solution in the set  $[n - 1] = \{1,2,\ldots ,n - 1\}$ .

We use  $a^{-1}$  to denote the equivalence class corresponding to the solutions of this congruence, and we call this the multiplicative inverse of a modulo  $n$ .

Furthermore, this is an if and only if statement; that is, if  $a$  and  $n$  are not relatively prime, then there is no solution  $x \in \mathbb{Z}$  to the congruence  $a \cdot x \equiv 1 \mod n$ .

This Lemma completely characterizes when multiplicative inverses exist and when they do not. We can use it to take a congruence like

$$
1 5 x \equiv 1 \mod 3 3
$$

and declare immediately that there is no solution  $x \in \mathbb{Z}$  because 3 | 15 and 3 | 33 so they are not relatively prime. Likewise, we can take a congruence like

$$
4 0 x \equiv 1 \mod 5 1
$$

and know that there must be a solution  $x \in \mathbb{Z}$  because  $40 = 2^3 \cdot 5$  and  $51 = 3 \cdot 17$  are relatively prime. (Notice that the Lemma only goes so far in helping us

find the solution; it just guarantees we can find it amongst the elements of  $\{1,2,\ldots ,n - 1\}$ .)

To prove this lemma, we will split it into two parts, since it is a biconditional. We will prove one of the directions for you; namely, we will show that whenever  $a$  and  $n$  are relatively prime,  $a^{-1}$  exists modulo  $n$ . We will guide you through a proof of the other direction (if  $a$  and  $n$  share a common factor, then  $a^{-1}$  does not exist modulo  $n$ ) in Problem 6.7.21. (Try to prove it now!)

We will need the following helpful lemma in our proof.

Lemma 6.5.25 (Euclid's Lemma). Let  $a, b, c \in \mathbb{Z}$  be given. Suppose  $a \mid bc$ , and suppose  $a$  and  $b$  are relatively prime. Then  $a \mid c$ .

We are going to hold off on proving this particular lemma until after we see the proof of the MIRP Lemma. We think that working through all the details of this proof will temporarily distract us from the main goal of this section. Also, we think that this result, Euclid's Lemma, is believable enough on its own that we can just assume it's validity for the moment and use it in the proof of the MIRP Lemma. Just look at some examples:

- We know  $3 \mid 30$ , and  $30 = 5 \cdot 6$ . Since 3 and 5 are relatively prime, we deduce that  $3 \mid 6$ , and it certainly does.  
- Suppose  $3 \mid 5x$ , for some integer  $x$ . What can we say about  $x$ ? Again, 3 and 5 are relatively prime, so for the product  $5x$  to be a multiple of 3, it has to be the case that  $x$  "contains" a factor of 3. That is,  $3 \mid x$  is a necessity.

Now, we realize this is not good enough! We are not saying that we should just accept this statement without proof; we just want to wait a few minutes before diving into it. In the meantime, you might want to try and prove it on your own! See what you can come up with.

Instead, let's stride ahead and prove the MIRP Lemma now (assuming the result of Euclid's Lemma, which will be used exactly once, somewhere in the middle).

Proof. Let  $n \in \mathbb{N}$  and  $a \in \mathbb{Z}$ . Suppose that  $a$  and  $n$  are relatively prime.

WWTS  $\exists x\in \mathbb{Z}$ $ax\equiv 1\bmod n$

Consider the set of the first  $n$  multiples of  $a$ ; that is, define the set  $N$  to be

$$
\begin{array}{l} N = \{0, a, 2 a, 3 a, \dots , (n - 1) a \} \\ = \{z \in \mathbb {Z} \mid \exists k \in [ n - 1 ] \cup \{0 \}. z = k a \} \\ \end{array}
$$

Notice that there are  $n$  elements in the set  $N$ .

Claim: The elements of  $N$  all yield distinct remainders modulo  $n$ ; that is,

$$
\forall i, j \in [ n - 1 ] \cup \{0 \}. i \neq j \Longrightarrow a i \not \equiv a j \mod n
$$

Let's prove this claim. To do so, we AFSOC the claim is False.

This means  $\exists i, j \in [n - 1] \cup \{0\}$ .  $ai \equiv aj \mod n$ . Let such  $i, j$  be given.

Subtracting and factoring tells us  $ai - aj \equiv a(i - j) \equiv 0 \mod n$ .

This means  $n \mid a(i - j)$ . We know  $n$  and  $a$  are relatively prime. By Lemma 6.5.25 above, we can deduce that  $n \mid i - j$ .

Now, we claim that this implies  $i = j$ . Remember that  $i, j \in [n - 1] \cup \{0\}$ , so we know that  $0 \leq i, j \leq n - 1$  and, thus, also  $-(n - 1) \leq -j, ij \leq 0$ .

Adding these inequalities for  $i$  and  $-j$ , we find that

$$
- (n - 1) + 0 = n - 1 \leq i + (- j) = i - j \leq n - 1 = (n - 1) + 0
$$

That is,  $-(n - 1) \leq i - j \leq n - 1$ . We also know already that  $n \mid i - j$ , i.e.  $i - j$  is a multiple of  $n$ . Notice, though, that the only multiple of  $n$  that lies between  $-(n - 1)$  and  $+(n - 1)$  is  $0$ .

Thus,  $i - j = 0$ , and so  $i = j$ . This proves the current claim.

We now know that the elements of  $N$  yield distinct remainders modulo  $n$ . We also know already that those possible remainders are  $\{0, 1, 2, \ldots, n - 1\} = [n - 1] \cup \{0\}$ . Notice that there are  $n$  distinct elements of  $N$ , and there are  $n$  distinct remainders (i.e. equivalence classes) modulo  $n$ . This means that every remainder modulo  $n$  is represented exactly once in the set  $N$ .

This tells us there is exactly one element of  $N$  (i.e. exactly one multiple of  $a$ ) that corresponds to a remainder of 1 modulo  $n$ . This element of  $N$  is of the form  $ax$ , for some  $x \in [n - 1] \cup \{0\}$ . Let such an  $x$  be given. This is the solution to the congruence stated in the claim of the lemma.

Phew! It took a bit of work, but now we're here. Since you have proven the claim in Problem 6.7.21 (you have, right?  $\odot$ ), we now know exactly when multiplicative inverses exist in the context of  $\mathbb{Z}$  modulo  $n$ . We also know a reasonable way of finding them: we just need to check the first  $n - 1$  multiples of  $a$ , looking for one that yields 1 modulo  $n$ .

Now that we have accomplished this, let's step back and prove Euclid's Lemma. This needs to be done, since the important MIRP Lemma's proof depends on this result. Notice that there is a tricky induction argument in this proof. Specifically, we have two variables  $a$  and  $b$  and we want to prove a certain statement holds for every such  $a$  and  $b$ . To do this,

Proof. Let  $a, b, c \in \mathbb{Z}$ . Suppose  $a \mid bc$ , and that  $a$  and  $b$  are relatively prime.

WWTS that  $a \mid c$ , necessarily. We will accomplish this by first proving:

Claim: If  $a, b \in \mathbb{N}$  and  $a$  and  $b$  are relatively prime, then  $\exists x, y \in \mathbb{Z} \cdot ax + by = 1$ .

From this claim, the result will follow quite easily. We have outlined the proof of this claim in a box, for ease of reading. After the box, you will find how we

use this result to prove the original statement of the lemma.

(Before working through this proof, try working with examples to "convince" yourself this claim is True. Take two relatively prime numbers—like 5 and 11, or 15 and 22, or 10 and 23—and try to construct these linear combinations that yield 1. Then, take some numbers that share a common divisor—like 5 and 10, or 6 and 15, or 21 and 27—and try to realize why you cannot find such a combination.)

Proof of claim: We will prove this by induction on the sum  $a + b$ . Before starting this, let us observe a few facts:

- If  $a = 1$  or  $a = -1$ , then  $b$  must be 0 or 1 for them to be relatively prime.

In either case, we can use  $x = a$  and  $y = 0$  to write

$$
a x + b y = a^{2} + 0 = 1
$$

The same argument applies for the case when  $b = 1$  or  $b = -1$  (i.e.  $a$  must be 0 or 1).

- If  $b = 0$ , and  $|a| \geq 2$  (i.e.  $a \neq 1$  and  $a \neq -1$ ), then  $a$  and  $b$  share the common factor of  $a$ , so they are not relatively prime.

The same argument applies for the case when  $a = 0$ .

Together, these observations imply that we don't need to consider either value being 0. That is, we will only consider values that satisfy  $|a| \geq 1$  and  $|b| \geq 1$ .

- Since  $a$  and  $b$  are relatively prime, then  $-a$  and  $-b$  are also relatively prime (as are  $-a$  and  $b$ , and as are  $a$  and  $-b$ ). This is because negating an integer does not affect what its divisors are, only its sign.  
- If we already know that  $\exists x, y \in \mathbb{Z}$ .  $ax + by = 1$ , then certainly

$$
(- a) (- x) + (- b) (- y) = a x + b y = 1
$$

Since  $-x, -y \in \mathbb{Z}$ , as well, this shows that  $-a$  and  $-b$  have such a representation.

Together, these observations imply that we only need to consider values of  $a$  and  $b$  that are positive. (That is, if either or both are negative, we can just negate them.)

Combining this with the previous deduction, we deduce that we only need to consider  $a, b \in \mathbb{N}$ . Proving the result for these values will imply the full result, when combined with the observations we have just made.

Now, we may proceed with our proof by (strong) induction on the sum  $a + b$ . Since  $a, b \in \mathbb{N}$ , we have  $a + b \geq 2$ . We considered the base case  $a + b = 2$  above, but we will restate it again here for completeness.

Given  $a, b \in \mathbb{N}$ , define  $P(a, b)$  to be the statement

$$
“ a \text{an d} b \text{ar er el at iv el yp ri me} \Rightarrow \exists x, y \in \mathbb {Z}. a x + b y = 1 ”
$$

BC: Consider  $P(2)$ , i.e. assume  $a, b \in \mathbb{N}$ ,  $a$  and  $b$  are relatively prime, and  $a + b = 2$ . This means  $a = b = 1$ , and so we can choose  $x = 1$  and  $y = 0$ , yielding

$$
a x + b y = 1 + 0 = 1
$$

Thus,  $P(2)$  holds.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $P(2) \wedge P(3) \wedge \dots \wedge P(k)$  holds. (That is, suppose that whenever two relatively prime numbers add up to 2 or 3 or … or  $k$ , we know we can find a linear combination of them that makes 1.)

IS: WWTS that  $P(k + 1)$  holds. That is, let  $a, b \in \mathbb{N}$  be given with  $a + b = k + 1$ , and suppose  $a$  and  $b$  are relatively prime; WWTS that  $\exists x, y \in \mathbb{Z}$ .  $ax + by = 1$ .

First, we may assume that  $a \geq b$ , by symmetry. (That is, we are given these values  $a$  and  $b$ . Whatever they are, we can just "rename" them, because one of them must be at least as large as the other; whichever one is larger, we will label it as  $a$ .) In fact, since  $a$  and  $a$  are not relatively prime (when  $a \geq 2$ ), we may even assume that  $a > b$ .

Now, we want to appeal to the fact that  $b$  and  $a - b$  are also relatively prime. To see why this is true, we need to show that  $b$  and  $a - b$  have no common divisors except 1.

Let  $d$  be a common divisor of  $b$  and  $a - b$ , i.e.  $d \mid b$  and  $d \mid a - b$ . We know that this implies  $d \mid b + (a - b)$ , i.e.  $d \mid a$ . We already knew  $d \mid b$ , as well, so  $d$  is actually a common divisor of  $a$  and  $b$ , so it must be 1. Thus,  $b$  and  $a - b$  are relatively prime.

(What we just proved there is:

$$
\left(d \mid b \wedge d \mid a - b\right) \Longrightarrow \left(d \mid a \wedge d \mid b\right)
$$

This claim is also an  $\Longleftrightarrow$  statement, and we encourage you to think about that for a minute and see why the  $\Longleftarrow$  direction also holds.)

What we now have is  $b, a - b \in \mathbb{N}$  (since  $b < a$ ) that are relatively prime. Notice, as well, that  $b + (a - b) = a < a + b = k + 1$ , since  $b \in \mathbb{N}$  (so  $b \geq 1$ ). This means that  $a + b \leq k$ , and so the Inductive Hypothesis  $P(a + b)$  applies!

(Notice that  $P(a + b)$  is not necessarily  $P(k)$ , so we needed to use Strong Induction here!)

That statement  $P(a + b)$  —i.e.  $P(b + (a - b))$ , as we will use it—tells us there is a linear combination of  $b$  and  $a - b$  that yields 1; that is,

$$
\exists u, v \in \mathbb {Z}. u b + v (a - b) = 1
$$

We now want to manipulate this into a linear combination of  $a$  and  $b$  that yields 1. To do this, we will just rewrite the above equation and relabel the coefficients:

$$
u b + v (a - b) = 1 \Longleftrightarrow \underbrace {v}_{x} a + b \underbrace {(u - v)}_{y} = 1
$$

That is, we can now define  $x = v$  and  $y = u - v$ , so that  $x, y \in \mathbb{Z}$  and  $ax + by = 1$ .

We have now shown that  $P(a + b)$  (i.e.  $P(k + 1)$ ) holds. By Strong Induction, we deduce that  $P(n)$  holds for every  $n \in \mathbb{N}$  with  $n \geq 2$ .

What the proof of this claim has accomplished, to remind you, is that we now know any relatively prime numbers can be put into a linear combination of 1.

Let's return to the original statement of the lemma. We are given  $a, b, c \in \mathbb{N}$ , and we supposed  $a$  and  $b$  are relatively prime and  $a \mid bc$ .

That first assumption tells us  $\exists x, y \in \mathbb{Z}$ .  $ax + by = 1$ . Let such  $x, y$  be given.

That second assumption tells us  $\exists k\in \mathbb{Z}$ $bc = ak$  . Let such a  $k$  be given.

We will multiply through that first assumption's equation by  $c$ , and then apply the second assumption:

$$
a x + b y = 1 \Rightarrow a c x + (b c) y = 1 \Rightarrow a c x + (a k) y = c \Rightarrow c = a \underbrace {(c x + k y)}_{\ell}
$$

That is, knowing  $ax + by = 1$  lets us deduce that  $c = a\ell$ , where  $\ell \in \mathbb{Z}$  is defined in terms of other integers.

By definition, this means  $a \mid c$ . This proves the original statement.

Wow! There was a lot going on in that proof. Make sure you read through it a few times, following along each line and making notes. Do you see why every claim follows from what we already know? Do you see how the induction worked? We had two variables to work with, but we were inducting on one variable, defined as the sum of the other two. We realize this is a tricky proof, which is why we put it here, after the more important result of this section, the MIRP Lemma.

Let's take this result we now have—knowing precisely when a multiplicative inverse exists—and use it to solve some problems!

## Using Multiplicative Inverses

How is this useful? You might consider this answer to be a little cheeky, but it is certainly valid: multiplicative inverses are useful in solving congruences using modular arithmetic. Now, that might seem like we developed some mathematical tools to solve the very problems they arose from, but that's not quite the case. In fact, as you will see from the forthcoming examples, in trying to solve these problems, you would likely have to innovate the very techniques we will apply. That is to say, you could try to solve these problems without having studied multiplicative inverses before, but in doing so and considering more general problems, you would wind up rediscovering the results we have worked through with you!

Alright, enough preamble. Let's pose and solve a couple of problems. These are all of the form: "Here is a proposed congruence; identify all the integral solutions, or prove that there are no solutions."

Example 6.5.26. Find all integers  $x, y \in \mathbb{Z}$  that satisfy

$$
3 x - 7 y = 1 1
$$

We claim that there are infinitely many pairs  $(x,y)\in \mathbb{Z}\times \mathbb{Z}$  that satisfy this equation. Furthermore, we can state the form of all solutions; we will do so by defining the set of all such solutions.

By rewriting the given equation, we see that we want to find all  $x, y \in \mathbb{Z}$  such that

$$
3 x = 7 y + 1 1
$$

Put even another way, we want to find all  $x \in \mathbb{Z}$  such that

$$
3 x \equiv 1 1 \mod 7
$$

Assuming we can find all of these integers  $x \in \mathbb{Z}$ , we can easily find the corresponding  $y \in \mathbb{Z}$  by rearranging the equation above:  $y = \frac{3x - 11}{7}$ .

Notice that  $3^{-1} \equiv 5 \mod 7$ , since  $3 \cdot 5 \equiv 15 \equiv 2 \cdot 7 + 1 \equiv 1 \mod 7$ . Thus, by the MAL, we can multiply both sides of a congruence by  $3^{-1}$ , yielding

$$
\begin{array}{l} \forall x \in \mathbb {Z}. 3 x \equiv 1 1 \mod 7 \Longleftrightarrow 3^{- 1} \cdot 3 \cdot x \equiv 3^{- 1} \cdot 1 1 \mod 7 \\ \Longleftrightarrow 1 \cdot x \equiv 5 \cdot 4 \mod 7 \\ \iff x \equiv 2 0 \equiv 6 \mod 7 \\ \end{array}
$$

Since we know that  $3^{-1}$  characterizes all of the solutions to this congruence (i.e. it represents the equivalence class of the multiplicative inverse of 3 modulo 7), then we can deduce that

$$
\forall x \in \mathbb {Z}. 3 x \equiv 1 1 \mod 7 \Longleftrightarrow x \equiv 6 \mod 7 \Longleftrightarrow \exists k \in \mathbb {Z}. x = 7 k + 6
$$

This characterizes all of the possible values of  $x \in \mathbb{Z}$  for a solution to the given equation.

Now, we use this to identify the corresponding values of  $y \in \mathbb{Z}$  for a solution. Suppose we have been given  $k \in \mathbb{Z}$  with  $x = 7k + 6$ . Then we substitute and find that

$$
y = \frac{3 x - 1 1}{7} = \frac{3 (7 k + 6) - 1 1}{7} = \frac{2 1 k + 7}{7} = 3 k + 1
$$

Now, we have a form that represents all possible solutions to the given equation. We know that any  $k \in \mathbb{Z}$  yields a corresponding  $x$ , which yields a corresponding  $y$ . Furthermore, since our derivation uses  $\iff$  statements, we know that this characterizes all the solutions.

We can state the set of solutions  $S$  to the given equation by setting

$$
S = \{(x, y) \in \mathbb {Z} \times \mathbb {Z} \mid \exists k \in \mathbb {Z}. (x, y) = (7 k + 6, 3 k + 1) \}
$$

## Interesting Fact:

In this example, we solved a Linear Diophantine Equation and established all of its solutions. By linear, we mean that the variables  $x$  and  $y$  are both only raised to the first power. There are no squares or cubes or what have you.

Using the technique we applied in this example, you can go off and solve any such Linear Diophantine Equation, or determine easily whether it has any solutions. In fact, we will prove a result about when such an equation has no solutions (see Bézout's Identity, Theorem 6.5.31) and the method used here applies whenever there are solutions.

In the next example we will look at a Quadratic Diophantine Equation, where the variables are squared (we will have an  $x^2$  and  $y^2$  term). We will talk about the possibility of solving those types of equations after that example.

Example 6.5.27. Let's now see an example that uses a similar procedure as the previous example (using multiplicative inverses to simplify) but also uses quadratic residues.

Claim: There are no integral solutions  $x, y \in \mathbb{Z}$  to

$$
3 x^{2} - 5 y^{2} = 1
$$

Let  $x,y\in \mathbb{Z}$  be given. WWTS that  $3x^{2} - 5y^{2} = 1$  is impossible.

We start by rewriting the given equation as

$$
3 x^{2} = 5 y^{2} + 1
$$

This means, in particular, that

$$
3 x^{2} \equiv 1 \mod 5
$$

since  $5y^{2} \equiv 0 \mod 5$ . Notice that  $3^{-1} \equiv 2 \mod 5$ , since  $3 \cdot 2 = 6 = 5 + 1$ . We can thus multiply both sides by  $3^{-1}$  and simplify:

$$
3 x^{2} \equiv 1 \mod 5 \Longleftrightarrow 3^{- 1} \cdot 3 x^{2} \equiv 3^{- 1} \cdot 1 \mod 5 \Longleftrightarrow x^{2} \equiv 2 \mod 5
$$

However, look back at Example 6.5.15 where we examined quadratic residues. We saw that the set of quadratic residues modulo 5 is  $\{0,1,4\}$ . That is, it is not possible to have an integer  $x$  satisfy  $x^2 \equiv 2 \mod 5$ . This means no integral solutions exist to the given equation.

## Interesting Fact:

We stated above that we know exactly when Linear Diophantine Equations are solvable, and how to solve them. Unfortunately, we are not so lucky regarding these Quadratic Diophantine Equations. It's quite difficult to look at one and determine whether it is solvable or not. Even then, knowing it is solvable, it is quite difficult to actually solve it, too!

In fact, we are extremely unlucky with these Quadratic Diophantine Equations. It is known that there is no possible computer algorithm that can input any Diophantine Equation with variables raised to the 1st and 2nd powers and output whether or not that equation has any solutions. This fact doesn't even touch upon the idea of how to solve such an equation, just whether or not it has a solution. Wow! This fact is a form of Hilbert's Tenth Problem.

Rest assured, the Diophantine Equations we will give you here in the examples and the exercises will be ones you can analyze with the techniques we've provided. This fact we mentioned here is a broader statement about the class of all such equations, in generality.

## A Little Bit of Group Theory

In this small section, we want to just point out that there are some powerful and profound principles of mathematics underlying the current topic. Alas, we don't have the time and space required to devote ourselves to developing these topics fully. In lieu of doing so, we will state a few ideas and facts here and illustrate them with examples.

The main idea we want to convey is that something special happens when we consider  $\mathbb{Z}$  modulo  $p$ , where  $p$  is a prime. In that case, every number smaller than  $p$  is relatively prime to  $p$ , since  $p$  has no divisors except 1. This means that all of the numbers in  $\{1,2,\ldots,p-1\}$  must have multiplicative inverses modulo  $p$ . How convenient! This means that every equivalence class (except  $[0]_{\mathrm{mod} p}$

has a corresponding class of multiplicative inverses.

For example, consider  $p = 5$ . Notice that

$$
1^{- 1} \equiv 1 \mod 5
$$

$$
2^{- 1} \equiv 3 \mod 5
$$

$$
3^{- 1} \equiv 2 \mod 5
$$

$$
4^{- 1} \equiv 4 \mod 5
$$

As another example, consider  $p = 7$ . Notice that

$$
1^{- 1} \equiv 1 \mod 7
$$

$$
2^{- 1} \equiv 4 \mod 7
$$

$$
3^{- 1} \equiv 5 \mod 7
$$

$$
4^{- 1} \equiv 2 \mod 7
$$

$$
5^{- 1} \equiv 3 \mod 7
$$

$$
6^{- 1} \equiv 6 \mod 7
$$

Notice that all of the elements have a multiplicative inverse.

(Also, notice that these inverses are just a permutation of the numbers 1 through  $p - 1$ . This is not a coincidence! Try to prove that this happens! Try to prove that there are two elements that are their own inverses— $1^{-1} \equiv 1 \mod p$  and  $(p - 1)^{-1} \equiv p - 1 \mod p$ —but each other element cannot be its own inverse.)

This is certainly not the case when we consider  $\mathbb{Z}$  modulo  $n$ , where  $n$  is composite. In that case, we know there is some factorization of  $n$ ; let's say we can write  $n = ab$ , for some  $a, b \in \mathbb{N} - \{1\}$ . Then  $1 < a < n$  but  $a$  is not relatively prime to  $n$  (they share the common factor  $a$ ), so  $a$  has no multiplicative inverse modulo  $n$ . In fact, all of the divisors of  $n$  (and their multiples) will have no multiplicative inverse modulo  $n$ .

For example, consider  $n = 6$ . Then,

$$
\begin{array}{l} 1^{- 1} \equiv 1 \mod 6 \\ 2^{- 1} \quad \text{Do es No tE xi st} \mod 6 \\ 3^{- 1} \text{Do es No tE xi st} \mod 6 \\ 4^{- 1} \text{Do es No tE xi st} \mod 6 \\ 5^{- 1} \equiv 5 \mod 6 \\ \end{array}
$$

Because of this distinction, the mathematical "structure" of  $\mathbb{Z}$  modulo  $p$  stands out. It has some "nice" properties, and "behaves well" in some sense. These are vague terms we are using, of course, but the main idea is this: having inverses for all of its elements makes  $\mathbb{Z}$  modulo  $p$  special. In fact,  $\mathbb{Z}$  modulo  $p$  forms a kind of mathematical structure known as a group.

In general, heuristic terms, a group is a set of objects that can be "multiplied" together so that the multiplication is (a) commutative and (b) associative, and that all elements have multiplicative inverses. We already know that standard multiplication of integers (even in  $\mathbb{Z}$  modulo  $n$ , for any  $n$ ) is commutative and associative, and working  $\mathbb{Z}$  modulo  $p$  (for prime  $p$ ) tells us that every element has an inverse.

If you are interested in exploring these ideas further, we have included some exercises at the end of this chapter that address some of these properties. You might also look up an introductory textbook on Abstract Algebra or Modern Algebra or Group Theory or something like that. There is a lot of powerful and profound mathematical ideas out there, and groups are relevant and applicable in many areas!

# 6.5.4 Some Helpful Theorems

In this section, we will explore some theorems in number theory that appeal to modular arithmetic and are useful and interesting in their own rights. We will state and prove the theorems (sometimes, with your help via some exercises!) and then demonstrate their usefulness with examples.

## Chinese Remainder Theorem

To motivate this theorem, we will first describe its usefulness by a story:

General Sun Tzu has many soldiers in his regiment, and after a battle, he wants to count how many he has remaining. It would take a little too long to count them individually, so he wants to be more efficient. Conveniently, the soldiers have been trained well and can form themselves into equal-sized groups quite easily.

General Sun Tzu orders the soldiers into two long rows of equal length, and finds there is one soldier left over.

He then orders them to make three rings of equal size, but finds there is again one soldier left over.

Finally, he orders them to make five flanks of equal size, but finds there are two soldiers left over.

At this point, he thinks he has enough information. After the recent battle, he can declare that there are somewhere between 250 and 300 soldiers, in total, in this regiment. Using this piece of information, he knows exactly how many soldiers there are.

Can you determine this number? How many soldiers are there?

We will let you play around with this and see if you can figure it out. Read on for our solution, a theorem statement, and a description of a technique to solve these kinds of problems.

Read the story again. Letting  $x$  be the number of soldiers in General Sun Tzu's regiment, then the story tells us that  $x$  must satisfy the following three congruences and the following inequality:

$$
x \equiv 1 \mod 2
$$

$$
x \equiv 1 \mod 3
$$

$$
x \equiv 2 \mod 5
$$

$$
2 5 0 \leq x \leq 3 0 0
$$

(Do you see where these came from, based on the story?)

There are two things to consider now: (1) Must there exist an  $x$  that satisfies all three congruences? (2) Are there several such  $x$  values? Are we guaranteed that one such  $x$  also satisfies the inequality?

The Chinese Remainder Theorem, as stated below, will guarantee (1) the existence of infinitely-many solutions to the congruences, and (2) the existence of (at least) one solution that satisfies the given inequality. Before we state and prove the theorem, though, let's try to solve this initial problem. We will break this into a few observations and steps:

- The first congruence requires a solution  $x$  to be odd. This eliminates all even numbers as potential solutions. A list of potential solutions:

$$
1, 2, 3, 4, 5, 6, 7, 8, 9, \mathcal {H}, 1 1, \mathcal {H}, 1 3, \mathcal {H}, 1 5, \mathcal {H}, 1 7, \mathcal {H}, 1 9, \mathcal {H}, 2 0, 2 1, 2 2, 2 3, \dots
$$

- The second congruence requires a solution to be 1 more than a multiple of 3. This eliminates any number congruent to 0 or 2 modulo 3. A list of potential solutions:

$$
1, 2, \beta , 4, \beta , 6, 7, \beta , 9, 1 0, 1 1, 1 2, 1 3, 1 4, 1 5, 1 6, 1 7, 1 8, 1 9, 2 0, 2 1, 2 2, 2 3, \dots
$$

- The third congruence requires a solution to be 2 more than a multiple of 5. This eliminates any number congruent to 0 or 1 or 3 or 4 modulo 5. A list of potential solutions:

$$
1, 2, 3, 4, 5, 6, \left(7\right), 8, 9, 1 0, 1 1, 1 2, 1 3, 1 4, 1 5, 1 6, 1 7, 1 8, 1 9, 2 0, 2 1, 2 2, 2 3, \dots
$$

It looks like 7 is the only solution in sight, but how do we know there aren't others? We only looked at the first 23 potential solutions … Can we be guaranteed there are no others? We will leave it to you to investigate this question right now. Try some larger numbers. Can you find any other solutions? Can you guess a pattern? Is 7 the only solution?

Now, let's be a little more clever about solving these congruences. Specifically, let's pretend we have a solution  $x$  (that satisfies all three congruences)

and see if we can deduce any more information about it. By the end of this derivation, we will have established a fact about all possible solutions to these congruences.

By the definition of modulo, we know there exist  $k,\ell ,m\in \mathbb{Z}$  such that

$$
x = 2 k + 1
$$

$$
x = 3 \ell + 1
$$

$$
x = 5 m + 2
$$

Let such  $k,\ell ,m$  be given.

Consider the first two equations. Let's try to combine them into one equation about  $x$ . Specifically, let's multiply the first one by 3 and the second by 2; this creates a  $6k$  and  $6\ell$  term, respectively, so if we subtract the equations, we can factor appropriately. That is, we first find

$$
3 x = 6 k + 3
$$

$$
2 x = 6 \ell + 2
$$

and then

$$
(3 x - 2 x) = (6 k + 3) - (6 \ell + 2) \Longrightarrow x = 6 (k - \ell) + 1
$$

Since  $k, \ell \in \mathbb{Z}$  were given to us, let's just define  $u = k - \ell$ , so  $u \in \mathbb{Z}$ . Notice that this now tells us  $x = 6u + 1$  or, in other words,

$$
x \equiv 1 \mod 6
$$

Now, we obtained this new congruence by combining the first two congruences, and it is not a coincidence that this congruence is written modulo 6, and that  $6 = 2 \cdot 3$ . You will see how this happens later on when we guide you through a proof of the forthcoming theorem!

Moving on, let's try to combine this new congruence with the third one given above. We'll employ a similar method: we'll multiply the one we just derived by 5 and the one given above by 6, so that when we subtract, we can factor out a 30. (This also shows you why the new congruence we will be deriving will be written modulo 30.) We get

$$
5 x = 3 0 u + 5
$$

$$
6 x = 3 0 m + 1 2
$$

and then

$$
(6 x - 5 x) = (3 0 m + 1 2) - (3 0 u + 5) \Longrightarrow x = 3 0 (m - u) + 7
$$

Again, since  $m, u$  were given to us, let's just define  $v = m - u$ , so  $v \in \mathbb{Z}$ . This now tells us  $x = 30v + 7$  or, in other words,

$$
x \equiv 7 \mod 3 0
$$

This final congruence was derived by combining each of the given congruences into each other, so it represents all of the information that those three congruences provided. We claim that this now tells us all of the solutions!

Firstly, this newly-derived congruence tells us that any solution must be congruent to 7 modulo 30. Said another way, any number with a remainder other than 7, when divided by 30, cannot possibly be a solution. Essentially, this combines all of our work in the three observations made above—where we crossed out potential solutions—into one statement.

Secondly, we can explain that, in fact, any number that is congruent to 7 modulo 30 will indeed be a solution. Let's see why. Let there be  $n \in \mathbb{Z}$  and define  $y = 30n + 7$  (i.e. we are choosing an arbitrary  $y \in \mathbb{Z}$  that satisfies  $y \equiv 7 \mod 30$ ). Notice that  $y$  satisfies:

- the first congruence, because  $y = 30n + 7 = 2(15n + 3) + 1$ , and so  $y \equiv 1 \mod 2$ ;  
- the second congruence, because  $y = 30n + 7 = 3(10n + 2) + 1$ , and so  $y \equiv 1 \mod 3$ ;  
- the third congruence, because  $y = 30n + 7 = 5(6n + 1) + 2$ , and so  $y \equiv 2 \mod 5$ .

That's it! We now know that (1) any solution  $x$  must satisfy  $x \equiv 7 \mod 30$ , and (2) any such  $x$  actually is a solution. Together, these statements form an  $\iff$  statement, namely

$$
x \text{is as ol ut io nt oa ll th re ec on gr ue nc es} \Longleftrightarrow x \equiv 7 \mod 3 0
$$

and therefore the set  $S$  of all solutions is given by

$$
S = \{x \in \mathbb {Z} \mid x \equiv 7 \mod 3 0 \} = \{3 0 n + 7 \mid n \in \mathbb {Z} \}
$$

Returning to the original problem statement, we just now need to factor in the given inequality. Is there a number  $x$  that satisfies  $x \equiv 7 \mod 30$  and  $250 \leq x \leq 300$ ? Why, yes, there is! We can find it by just starting with 7 and adding on multiples of 30, or guessing close to 300 and adjusting, or something reasonable like that. However you do it, you'll find that  $\mathbf{x} = \mathbf{277}$  is the solution we sought all along. That is how many soldiers General Sun Tzu has in his regiment.

Now, for the sake of comparison, consider the following system of congruences that might have come from a similar problem statement:

$$
\begin{array}{l} x \equiv 3 \mod 4 \\ x \equiv 2 \mod 6 \\ \end{array}
$$

Are there any solutions to this system of congruences? Does the method we used above apply here? If you play around with it—trying the "cross out bad candidates" method, or the "combine congruences" method—you'll find that

nothing works. Looking back at the system, you'll notice that this makes sense. The first congruence requires  $x$  to be 3 more than a multiple of 4; since a multiple of 4 is even, we are asking  $x$  to be odd. However, the second congruence requires  $x$  to be 2 more than a multiple of 6; since a multiple of 6 is also even, we are asking  $x$  to be even. How can a solution be both odd and even at the same time?! This is clearly not possible.

The Chinese Remainder Theorem tells us when there are guaranteed to be solutions to a system of congruences. It applies to the first problem we solved above, and it in fact tells us the ultimate result we found: that there are infinitely-many solutions and that they are all congruent modulo 30. However, it does not tell us there are no solutions to the second problem we just solved. This theorem is a guarantee that applies to certain situations. When we face those situations, we can make a valid statement about solutions. When we are facing a different situation, though, the theorem makes no claim about the existence of solutions. Let's see the statement now, then discuss it a little further, and then get your help to prove it (in two different ways!).

Theorem 6.5.28. Suppose we are given a system of  $r$ -many different congruences. That is, suppose  $r \in \mathbb{N}$  and we have  $r$  natural numbers,  $n_1, n_2, \ldots, n_r \in \mathbb{N}$ , and we also have  $r$  integers,  $a_1, a_2, \ldots, a_r \in \mathbb{Z}$ , and the system of congruences is given by

$$
x \equiv a_{1} \mod n_{1}
$$

$$
x \equiv a_{2} \mod n_{2}
$$

：

$$
x \equiv a_{r} \mod n_{r}
$$

(Put another way, the system asks for  $x \in \mathbb{Z}$  such that  $\forall i \in [r]$ .  $x \equiv a_i \mod n_i$ .)

If the moduli  $n_i$  are pair-wise relatively prime—that is, no two of the numbers  $n_i$  share any common factors, besides 1—then the system of congruences has a solution.

Furthermore, in this case, there are in fact infinitely-many solutions, and they are all congruent modulo  $N$ , where  $N$  is defined as the product of the moduli:

$$
N = \prod_{i \in [ r ]} n_{i}
$$

Notice that the main conclusion is the "If…then…" statement. Remember what we said about conditional statements like this? This theorem is offering no statement about what happens when two of the moduli are not relatively prime. Anything could happen in that case! The example we saw above had non-relatively prime moduli: one congruence was given modulo 4 and the other modulo 6, and 4 and 6 share the common factor of 2. However, the theorem does not say there are no solutions; we had to figure that out for ourselves. What if

we had changed the numbers slightly and posed the following congruences:

$$
x \equiv 3 \mod 4
$$

$$
x \equiv 5 \mod 6
$$

There are solutions to this system. Can you find them?

One proof of the Chinese Remainder Theorem follows the method we used to solve the problem above. Given any number of congruences in a system, we can iteratively combine one into the other, eventually ending up with one congruence whose modulus is the product of all the other moduli. How do you think one would prove that this method works? An iterative process … aha, induction! Yes indeed, you can prove the Chinese Remainder Theorem by inducting on  $r$ , the number of congruences in the given system. This proof is outlined in Exercise 6.7.26. We like this proof because it also provides you with a technique for solving these types of problems, in practice.

Another proof is constructive. That is, it takes the information in the theorem statement and combines it to define a number  $X$  that is a solution (and proves this, of course). This proof is outlined in Exercise 6.7.27. We like this proof because it is, indeed, constructive; rather than proving an existence result by arguing for why a certain object exists, it actually produces it for you. However, the solution it constructs is not the same solution you would find by performing the "cross out bad candidates" or "combine congruences" methods. It's actually a somewhat "unnatural" method to use, but it does indeed work without having to do any inductive process. For the sake of comparison, we encourage you to work through both proofs of this theorem. However, if we had to recommend only one, we would suggest the induction proof.

## Bezout's Identity

This theorem hearkens back to our discussion of Linear Diophantine Equations. In Example 6.5.26, we solved a particular such equation, by prudently applying multiplicative inverses. In addition to showing you that method, we pointed out that there is a simple way of verifying whether such an equation even has a solution. This theorem characterizes precisely when a linear diophantine equation of two variables has a solution. It is known as Bézout's Identity, named after the 18th-century French mathematician Étienne Bézout.

Before stating the theorem, we need to provide one definition. You are likely familiar with it already, but it plays a starring role in this theorem, so we want to share it here and provide some illustrative examples.

Definition 6.5.29. Let  $a, b \in \mathbb{Z}$  be given. The greatest common divisor of  $a$  and  $b$  is denoted by  $\gcd(a, b)$  and is defined to be the largest integer that divides both  $a$  and  $b$ . That is,

$$
\operatorname * {g c d} (a, b) \mid a \wedge \operatorname * {g c d} (a, b) \mid b
$$

and

$$
\forall d \in \mathbb {Z}. (d \mid a \wedge d \mid b) \Rightarrow d \leq \operatorname * {g c d} (a, b)
$$

We will assume some familiarity with this idea, or at least some intuition for it. The forthcoming theorem, and its proof, will not depend too heavily on a thorough understanding of this concept. Furthermore, any exercises that refer to this definition or theorem will not ask you to have great computational powers, or presume any knowledge of this idea. Rather, consider this a component of your continuing practice with absorbing new definitions of mathematical concepts, of your ability to take these abstract notions and invoke them and apply them to prove further facts and develop examples and non-examples. This is an important skill! Before moving on to state and prove the theorem, let's just quickly look at some examples of this notion at work.

Example 6.5.30. In some of these cases, we will take two numbers and state their greatest common divisor. Usually, a reasonable way to actually find such a gcd is to find the prime factorization of both numbers, and combine them appropriately. That is to say,  $\gcd(a, b)$  is the product of the prime factors that  $a$  and  $b$  have in common, so considering what those factors are tells us the gcd rather easily.

In some of these cases, we will make some claim about the gcd in general, and prove it (or perhaps ask you to prove it!). These will only rely on the definition we just provided above.

- Let  $a = 15$  and  $b = 6$ . Since  $a = 3 \cdot 5$  and  $b = 2 \cdot 3$ , we see that they share only the factor 3. Thus,

$$
\operatorname * {g c d} (6, 1 5) = 3
$$

- Let  $a = 30$  and  $b = 40$ . Since  $a = 2 \cdot 3 \cdot 5$  and  $b = 2^3 \cdot 5$ , we see that they share one factor of 2 and one factor of 5. Thus,

$$
\operatorname * {g c d} (3 0, 4 0) = 1 0
$$

In general,

$$
\operatorname * {g c d} (a, b) = \operatorname * {g c d} (b, a)
$$

This is clearly True because any common divisor of  $a$  and  $b$  is also a common divisor of  $b$  and  $a$ .

- Let  $a = 77$  and  $b = 72$ . Since  $a = 7 \cdot 11$  and  $b = 2^3 \cdot 3^2$ , we see that they have no common prime factors. Thus,

$$
\operatorname * {g c d} (7 2, 7 7) = 1
$$

- Let  $a = 13$  and let  $b \in \mathbb{N}$  such that  $a \nmid b$ . Since  $a$  is prime, and  $b$  is not a multiple of 13, then  $b$  cannot have 13 as a prime factor, and therefore,

$$
\operatorname * {g c d} (1 3, b) = 1
$$

This means that  $a$  and  $b$  are relatively prime. This is a general fact:

$$
a \text{an d} b \text{ar er el at iv el yp ri me} \Longleftrightarrow \operatorname * {g c d} (a, b) = 1
$$

Furthermore,

$$
\forall a, b \in \mathbb {N}. a \text{pr im e} \Longrightarrow (\operatorname * {g c d} (a, b) = 1 \Longleftrightarrow a \nmid b)
$$

Now, we feel ready to state and prove Bézout's Identity!

Theorem 6.5.31 (Bézout's Identity). Let  $a, b \in \mathbb{Z}$  be given. Define  $L$  to be the set of all linear combinations of  $a$  and  $b$ ; that is, define

$$
L = \{z \in \mathbb {Z} \mid \exists x, y \in \mathbb {Z}. a x + b y = z \} = \{a x + b y \mid x, y \in \mathbb {Z} \}
$$

Also, define  $M$  to be the set of all multiplied of  $\gcd(a, b)$ ; that is, define

$$
M = \{z \in \mathbb {Z} \mid \exists k \in \mathbb {Z}. z = k \cdot \operatorname{gc d} (a, b) \} = \{k \cdot \operatorname{gc d} (a, b) \mid k \in \mathbb {Z} \}
$$

Then,

$$
L = M
$$

That is, the Linear Diophantine Equation  $ax + by = c$  has a solution if and only if  $c$  is a multiple of  $\gcd(a, b)$ .

How convenient! Notice that this theorem tells us precisely when a Linear Diophantine Equation— $ax + by = c$ , given  $a, b, c \in \mathbb{Z}$ —has a solution. We only need to find  $\gcd(a, b)$  and make sure  $\gcd(a, b) \mid c$ .

To prove this theorem, we need to prove a set equality, so we will use a double-containment argument, a strategy we have seen many times before. We will prove one of the containments for you here, and the other left as an exercise.

Proof. Let  $a, b \in \mathbb{Z}$  be given. Define  $L$  and  $M$  as in the theorem statement.

First, we will prove  $L \subseteq M$ . Let  $z \in L$  be arbitrary and fixed.

By the definition of  $L$ , we know  $\exists x, y \in \mathbb{Z}$ .  $ax + by = z$ . Let such  $x, y$  be given.

Since  $\gcd(a, b)$  divides both  $a$  and  $b$ , we know  $\exists k, \ell \in \mathbb{Z}$  such that  $a = k \cdot \gcd(a, b)$  and  $b = \ell \cdot \gcd(a, b)$ . Let such  $k, \ell$  be given.

We take these expressions for  $a$  and  $b$  and replace them in the equation above:

$$
z = a x + b y = k \cdot \operatorname * {g c d} (a, b) \cdot x + \ell \cdot \operatorname * {g c d} (a, b) \cdot y = \operatorname * {g c d} (a, b) \cdot \underbrace {\left(k x + \ell y\right)}_{m}
$$

Define  $m = kx + \ell y$ . Since  $m \in \mathbb{Z}$ , this shows that  $z$  is a multiple of  $\gcd(a, b)$ .

Therefore,  $z \in M$ . This shows that  $L \subseteq M$ .

Second, we must prove  $M \subseteq L$ .

This is left for the reader as Exercise 6.7.12

With this result now completed and proved, we know whether a Linear Diophantine Equation of two variables has a solution. Several exercises will ask you to determine whether such an equation has a solution. To do this, just cite

this result. If you are further asked to find all solutions, apply the techniques we showed you in Example 6.5.26

Challenge Question: What do you think can be said about Linear Diophantine Equations of more than two variables? For example, consider

$$
6 x + 8 y + 1 5 z = 1 0
$$

Does this equation have any solutions? How many? As another example, consider

$$
3 x + 6 y + 9 z = 2
$$

Does this equation have any solutions? Why or why not?

Try to state and prove a result about this. Can you generalize it to any number of variables?

# 6.5.5 Questions & Exercises

## Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) Why is  $\mathbb{Z}$  partitioned into several sets when we consider  $\mathbb{Z}$  modulo  $n$ ?  
(2) What are the equivalence classes of  $\mathbb{Z}$  modulo  $n$ ?  
(3) How can you determine whether two integers  $x, y \in \mathbb{Z}$  belong to the same equivalence class of  $\mathbb{Z}$  modulo  $n$ ?  
(4) What does the Modular Arithmetic Lemma say? Why is it helpful? How can we use it to manipulate congruences algebraically?  
(5) What does the general concept of multiplicative inverse mean? Given  $a \in \mathbb{Z}$  and  $n \in \mathbb{N}$ , how can you determine whether the multiplicative inverse of  $a$  exists, in the context of  $\mathbb{Z}$  modulo  $n$ ?  
(6) What is special about the set of equivalence classes of  $\mathbb{Z}$  modulo  $p$  when  $p$  is a prime?  
(7) Is the following system of congruences guaranteed to have a solution by the Chinese Remainder Theorem? Why or why not?

$$
\begin{array}{l} x \equiv 2 \mod 6 \\ x \equiv 5 \mod 9 \\ \end{array}
$$

Can you identify a solution to the system? (Hint: Yes, you can!)

## Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) State and prove a divisibility trick for determining whether a natural number  $x \in \mathbb{N}$  is a multiple of 9.

(Hint: See Example 6.5.13 for a similar problem.)

(2) Let  $n\in \mathbb{N}$  and let  $a\in \mathbb{Z}$ . Show that  $(n - a)^2\equiv a^2\bmod n$  
(3) Let  $n \in \mathbb{N} - \{1\}$ . Show that  $(n - 1)^{-1} \equiv n - 1 \bmod n$ .  
(4) Given each of the pairs of values  $(a, n)$ , find the multiplicative inverse of  $a$  modulo  $n$ , or else say that it does not exist.

(a)  $a = 5$  and  $n = 12$  
(b)  $a = 7$  and  $n = 11$  
(c)  $a = 6$  and  $n = 27$  
(d)  $a = 11$  and  $n = 18$  
(e)  $a = 70$  and  $n = 84$  
(f)  $a = 8$  and  $n = 17$

(5) Characterize all integral solutions  $x, y \in \mathbb{Z}$  of the equation

$$
4 x - 7 y = 1 8
$$

(6) Identify all solutions to the following system of congruences:

$$
\begin{array}{l} x \equiv 3 \mod 5 \\ x \equiv 4 \mod 7 \\ \end{array}
$$

# 6.6 Summary

As part of our ongoing buildup to formalizing functions, we have thoroughly discussed binary relations. We defined a relation as just a set of ordered pairs, and we talked about several properties that relations might have. In particular, the combination of reflexivity, symmetry, and transitivity yield a particularly powerful relationship known as an equivalence relation. We saw a helpful theorem about such relations, which says that an equivalence relation corresponds precisely with a partition. With the particular equivalence relations "modulo  $n$ " defined on  $\mathbb{Z}$ , we were able to take advantage of these partitions and state and prove several interesting results about the integers! Many of the exercises below address our work with abstract relations, while many of them also address our work in the area of number theory and the integers.

# 6.7 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them. Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 6.7.1.  $\triangleright$  Consider the set  $A = \{1,2,3,4\}$ . For each of the following relations, defined on  $A$  or  $\mathcal{P}(A)$  as specified, decide whether it is (i) reflexive, (ii) symmetric, (iii) transitive, (iv) anti-symmetric.

(a)  $R_{a}$  on  $A$  defined by  $R_{a} = \{(1,2),(2,2),(3,1),(4,2),(3,3)\}$  
(b)  $R_{b}$  on  $A$  defined by  $R_{b} = \{(1,1),(2,2),(3,3),(3,4),(4,3),(4,4)\}$  
(c)  $R_{c}$  on  $\mathcal{P}(A)$  defined by  $\forall S,T\in \mathcal{P}(A)$  .  $(S,T)\in R_{c}\iff S - T\subseteq \{1\}$  
(d)  $R_{d}$  on  $\mathcal{P}(A)$  defined by  $\forall S,T\in \mathcal{P}(A).(S,T)\in R_d\iff S\cap T\subseteq \{1\}$

Problem 6.7.2. Define the relation  $\sim$  on  $\mathbb{R}$  by setting

$$
\forall a, b \in \mathbb{R}. a \sim b \Longleftrightarrow \forall x \in \mathbb{R}. x > 0 \Longrightarrow a x^{2} + b x > 0
$$

For each of the four properties of relations—(i) reflexive, (ii) symmetric, (iii) transitive, (iv) anti-symmetric—either prove that  $\sim$  has that property, or else disprove it by finding a counterexample.

Problem 6.7.3. Define the relation  $\approx$  on  $\mathcal{P}(\mathbb{R})$  by setting

$$
\forall X, Y \in \mathcal {P} (\mathbb{R}). X \approx Y \Longleftrightarrow X - Y \subseteq \mathbb {N}
$$

For each of the four properties of relations—(i) reflexive, (ii) symmetric, (iii) transitive, (iv) anti-symmetric—either prove that  $\sim$  has that property, or else disprove it by finding a counterexample.

Problem 6.7.4. Define the relation  $\#$  on  $\mathbb{Z} \times \mathbb{N} - \{0\}$  by setting

$$
\forall (a, b), (c, d) \in \mathbb {Z} \times \mathbb {N} - \{0 \}. (a, b) \# (c, d) \Longleftrightarrow a d = b c
$$

(a) Prove that  $\#$  is an equivalence relation.

(b) Identify the elements in the equivalence class  $[(0,3)]$ . Prove your claim.  
(c) Identify the elements in the equivalence class  $[(2,3)]$ . Prove your claim.  
(d) Identify the elements in the equivalence class  $[(−2,2)]$ . Prove your claim.  
(e) How many equivalence classes are there in  $(\mathbb{Z}\times \mathbb{N} - \{0\}) / \# ?$

Problem 6.7.5. Let  $p \in \mathbb{N}$  be an odd prime (i.e.  $p \neq 2$ ). Prove that  $p^2 \equiv 1 \mod 24$ .

Problem 6.7.6. Use Euclid's Lemma (see Lemma 6.5.25) to prove that prime factorizations of natural numbers are unique.

(Note: We proved previously, in Example 5.4.3, that prime factorizations exist, but we did not prove their uniqueness.)

Problem 6.7.7. Define the relation  $T$  on  $\mathbb{R}$  by setting

$$
\forall x, y \in \mathbb{R}. (x, y) \in T \iff \left(\frac{y}{x} \in \mathbb{R} \wedge \frac{y}{x} \geq 0\right)
$$

(a) For every  $x\in \mathbb{R}$ , let the set  $S(x)$  be

$$
S (x) = \{y \in \mathbb{R} \mid (x, y) \in T \}
$$

Write down what the sets  $S(-1)$ ,  $S(0)$ , and  $S(1)$  are.

(b) Use the three sets from part (a) to deduce that  $T$  is not an equivalence relation.  
(c) Verify this result by showing that  $T$  is not reflexive and not symmetric.  
(d) Is  $T$  transitive or not? Prove your claim.

Problem 6.7.8. Consider the following spoof. Identify which claim in the argument is incorrect. Then, provide an explanation (including an example) as to why the conclusion of the argument is also incorrect.

Let  $n \in \mathbb{N}$  and let  $a, b, x \in \mathbb{Z}$ . Suppose that  $ax \equiv bx \mod n$ . We claim that we can "cancel" and deduce that  $a \equiv b \mod n$ .

Since  $ax \equiv bx \mod n$  then, by definition,  $n \mid ax - bx$ . Thus,  $n \mid x(a - b)$ , and so  $n \mid a - b$ . By definition, then,  $a \equiv b \mod n$ .

Problem 6.7.9. Consider the system of congruences given by:

$$
\begin{array}{l} x \equiv 1 \mod 2 \\ x \equiv 2 \mod 6 \\ \end{array}
$$

Does the Chinese Remainder Theorem guarantee the existence of a solution  $X$ ? Can you find a solution?

Problem 6.7.10. In Definition 6.5.29, we defined the greatest common divisor of two integers to be the largest integer that divides both of them.

Here, we want you to prove that the following definition of gcd is equivalent to the one we provided. First, read the definition:

Definition: Let  $a, b \in \mathbb{Z}$  be given. Define  $G(a, b)$  to be a common divisor of  $a$  and  $b$  such that all common divisors of  $a$  and  $b$  divide it. That is,

$$
G (a, b) \mid a \wedge G (a, b)
$$

and

$$
\forall d \in \mathbb {Z}. (d \mid a \wedge d \mid b) \Longrightarrow d \mid G (a, b)
$$

Now, prove that this definition is equivalent. That is, prove that

$$
\forall a, b \in \mathbb {Z}. \operatorname * {g c d} (a, b) = G (a, b)
$$

Problem 6.7.11. Consider the following False (obviously!) claim:

Claim: 1 is a multiple of 3.

What is wrong with the following "spoof" of the claim:

WWTS  $1\equiv 0$  mod 3. Observe that

$$
\begin{array}{l} 1 \equiv 4 \Longrightarrow 2^{1} \equiv 2^{4} \equiv 2 \equiv 1 6 \Longrightarrow 2 \equiv 1 \\ \Longrightarrow 2 - 1 \equiv 1 - 1 \Longrightarrow 1 \equiv 0 \\ \end{array}
$$

Problem 6.7.12. Complete the proof of Bézout's Identity (Theorem 6.5.31) by proving that  $M \subseteq L$ . (These sets are defined in the theorem statement.)

Problem 6.7.13. In this problem, you will prove the converse of Theorem 6.4.12. Namely, you will prove the following: Theorem: Let  $S \neq \emptyset$  be a set and let  $R$  be an equivalence relation on  $S$ . The set of equivalence classes  $S / R$  forms a partition of  $S$ .

Remember that we use the notation  $[x]_R$  to mean the equivalence class corresponding to  $x$ , and it is the set of all elements of  $S$  that are related to  $x$ ; that is,

$$
[ x ]_{R} = \{y \in S \mid (x, y) \in R \}
$$

Throughout the parts of this problem, we are assuming that  $S$  is a set and  $R$  is an equivalence relation on  $S$ , so that  $R$  is reflexive, symmetric, and transitive.

(a) Let  $x \in S$ . Show that  $x \in [x]_R$ .  
(b) Let  $x, y \in S$ . Suppose  $x \neq y$ , and suppose that  $(x, y) \in R$ . Show that  $[x]_R = [y]_R$ .

(Hint: Use transitivity. You'll need it twice.)

(c) Let  $x, y \in S$ . Suppose  $x \neq y$ , and suppose that  $(x, y) \notin R$ . Show that  $[x]_R \cap [y]_R = \emptyset$ .

(Hint: Use a contradiction argument.)

(d) Explain why this has proven the stated Theorem.

Problem 6.7.14. In this problem, you will prove the Division Algorithm, stated in Lemma 6.5.2. That is, you will prove that

$$
\forall a, b \in \mathbb {Z}. \exists ! k, r \in \mathbb {Z}. a k + r = b \wedge 0 \leq r \leq a - 1
$$

1. Let  $M = \{\ell \in \mathbb{Z} \mid \ell a \leq b\}$ . Prove that  $M$  has a maximum element.  
2. Let  $k \in M$  be that maximum element. Define  $r = b - ka$ . Prove that  $0 \leq r \leq a - 1$ .  
3. Suppose  $K, R \in \mathbb{Z}$  also satisfy  $aK + R = b$  and  $0 \leq R \leq a - 1$ . Prove that  $K = k$  and  $R = r$ , thereby showing  $k, r$  are unique.

Problem 6.7.15. Prove Lemma 6.5.8, that  $n \mid a - b \Longleftrightarrow a$  and  $b$  have the same remainder upon divisio by  $n$

Problem 6.7.16. Prove Lemma 6.5.9. That is, prove that congruence modulo  $n$  is indeed an equivalence relation on  $\mathbb{Z}$ .

(Hint: Just prove it is (1) reflexive, (2) symmetric, and (3) transitive.)

Problem 6.7.17. This problem asks you to prove/disprove some statements about Pythagorean Triples, which are triplets  $(x,y,z) \in \mathbb{N}^3$  that satisfy  $x^{2} + y^{2} = z^{2}$ .

In each case, determine whether the property must necessarily hold. If so, prove it. Otherwise, find a counterexample.

(a) Is it necessarily true that at least one of  $\{x,y,z\}$  is even?  
(b) Is it necessarily true that at least one of  $\{x,y,z\}$  is a multiple of 3?  
(c) Is it necessarily true that at least one of  $\{x,y,z\}$  is a multiple of 4?  
(d) Is it necessarily true that at least one of  $\{x,y,z\}$  is a multiple of 5?

Problem 6.7.18. State and prove a divisibility trick for determining whether a natural number  $x \in \mathbb{N}$  is a multiple of 11.

(Hint: See Example 6.5.13 for a similar problem.)

Problem 6.7.19. Notice that there are several "small" primes that are congruent to 3 modulo 4; for instance  $3, 7, 11, 19, 23, 31 \equiv 3 \mod 4$ . In this problem, you will prove that there are, in fact, infinitely many primes of this form!

(You might notice that the steps of this proof closely mimic our proof that there are infinitely many prime numbers!)

(a) Suppose  $n \in \mathbb{N}$  and  $n \equiv 3 \mod 4$ . Prove that there must exist a prime  $p$  that satisfies  $p \equiv 3 \mod 4$  and  $p \mid n$ .

(Hint:  $3 \equiv -1 \mod 4$ .)

(b) Now, AFSOC there are only finitely many primes that satisfy  $p \equiv 3 \mod 4$ . Let's define the set of these particular primes to be  $P = \{p_1, p_2, \ldots, p_k\}$ , where  $p_k$  is the largest such prime.

Define the new number  $N = p_{1} \cdot p_{2} \cdot p_{3} \cdot \dots \cdot p_{k}$ .

Explain why  $N$  must be odd, and why  $N$  is strictly larger than all of the primes in the particular set  $P$ .

(c) Define  $M$  to be the next largest number, after  $N$ , that is congruent to 3 modulo 4. Explain why  $M - N$  is either 2 or 4.  
(d) Explain why, in either case ( $M - N = 2$  or  $M - N = 4$ ), it follows that none of the prime factors of  $N$  can be a prime factor of  $M$ .

(Hint: Recall that  $a\mid b\wedge a\mid c\Longrightarrow a\mid (b\pm c).$

(e) Use what you have proven so far to explain why  $M$  must be prime.  
(f) What is the contradiction at which we have arrived? Make a conclusion.

Problem 6.7.20. Mimic the details of the previous Problem 6.7.19 to prove that there are also infinitely many primes that are congruent to 5 modulo 6.

Problem 6.7.21. In this problem, you will prove the second conclusion of the MIRP Lemma 6.5.24. Specifically, you will prove the following claim:

Let  $a \in \mathbb{Z}$  and  $n \in \mathbb{N}$  be given, and suppose  $a$  and  $n$  are not relatively prime. Then there are no solutions  $x \in \mathbb{Z}$  to the congruence  $ax \equiv 1 \mod n$ .

(a) We have supposed that  $a$  and  $n$  are not relatively prime. What does this imply?  
(b) AFSOC that  $\exists x\in \mathbb{Z}$ $ax\equiv 1$  mod  $n$  and let such an  $x$  be given. Use this to write an equation (not a congruence) involving  $a,x,n$  
(c)Invoke your knowledge from part (a) and rewrite the equation.  
(d) What contradiction have you found?

Problem 6.7.22. For each of the following claims, determine whether it is True or False. If it is True, prove it; if it is False, find a counterexample.

(a)  $\forall x,y\in \mathbb{Z}$  .  $(x + y)^2\equiv x^2 +y^2\bmod 2$  
(b)  $\forall x,y\in \mathbb{Z}$ $(x + y)^{3}\equiv x^{3} + y^{3}\mathrm{mod}3$

(c)  $\forall x,y\in \mathbb{Z}$  .  $(x + y)^4\equiv x^4 +y^4\bmod 4$  
(d)  $\forall x,y\in \mathbb{Z}$  .  $(x + y)^{5}\equiv x^{5} + y^{5}\mathrm{mod} 5$  
(e)  $\forall x,y\in \mathbb{Z}$  .  $(x + y)^6\equiv x^6 +y^6\bmod 6$

Challenge: Can you make a conjecture about which values of  $n$  make the following statement True?

$$
\forall x, y \in \mathbb {Z}. (x + y)^{n} \equiv x^{n} + y^{n} \mod n
$$

Can you prove it? Can you also characterize what values of  $n$  make the statement False?

Problem 6.7.23. Determine whether or not there are any integral solutions  $x, y \in \mathbb{Z}$  to the equation

$$
3 x^{2} - 5 y^{2} = 2
$$

(Hint: Use multiplicative inverses and quadratic residues.)

Problem 6.7.24. Prove that there are no integral solutions  $x, y \in \mathbb{Z}$  to the equation

$$
3 x^{2} - 5 y^{2} = 1 5
$$

Problem 6.7.25. For each of the following equations, identify the set of all integral solutions  $x, y \in \mathbb{Z}$ , or else explain why no such solutions exist.

(a)  $2x + 4y = 9$  
(b)  $18x - 15y = 21$  
(c)  $6x - 15y = 17$  
(d)  $6x - 15y = 33$

Problem 6.7.26. In this problem, you will prove the Chinese Remainder Theorem (Theorem 6.5.28) by induction. Then, you will apply the iterative method developed in the proof to solve a particular system of congruences.

(a) Suppose we have two congruences to solve simultaneously

$$
\begin{array}{l} x \equiv a_{1} \mod n_{1} \\ x \equiv a_{2} \mod n_{2} \\ \end{array}
$$

where  $n_1, n_2$  are relatively prime.

Use the definition of "modulo" to write two equations from these congruences. Combine these equations algebraically to deduce one congruence, that is written modulo  $n_1n_2$ .

(b) Use the assumption that  $n_1, n_2$  are relatively prime to deduce that  $n_2 - n_1, n_1n_2$  are also relatively prime.

(Hint: You will need Euclid's Lemma 6.5.25.)

(c) Deduce that you can write a single congruence  $X \equiv \mod n_1n_2$ .

This has proven the base case: that we can combine two congruences into one.

(d) Now, prove the inductive step:

Suppose  $r \in \mathbb{N} - \{1\}$  and we have  $r$  natural numbers,  $n_1, n_2, \ldots, n_r \in \mathbb{N}$ , that are pair-wise relatively prime. (That is, no two of the numbers have any common factors, besides 1.) Suppose we also have  $r$  integers,  $a_1, a_2, \ldots, a_r \in \mathbb{Z}$ .

We will have you prove

$$
\exists X \in \mathbb {Z}. \forall i \in [ r ]. X \equiv a_{i} \mod n_{i}
$$

by induction on  $r$ , the number of congruences given.

Use what you proved already in this problem to rewrite this as a system of  $r - 1$  congruences.

(e) Explain why this has proven the Chinese Remainder Theorem by induction.  
(f) Now, consider the following system of congruences:

$$
\begin{array}{l} x \equiv 2 \mod 3 \\ x \equiv 2 \mod 5 \\ x \equiv 4 \mod 7 \\ \end{array}
$$

Apply the iterative method that is generated by the above proof to solve the system.

Problem 6.7.27. In this problem, you will prove the Chinese Remainder Theorem (Theorem 6.5.28) by a constructive method. Then, you will apply this constructive method to solve a particular system of congruences.

Suppose  $r \in \mathbb{N}$  and we have  $r$  natural numbers,  $n_1, n_2, \ldots, n_r \in \mathbb{N}$ , that are pair-wise relatively prime. (That is, no two of the numbers have any common factors, besides 1.) Suppose we also have  $r$  integers,  $a_1, a_2, \ldots, a_r \in \mathbb{Z}$ .

We will have you prove

$$
\exists X \in \mathbb {Z}. \forall i \in [ r ]. X \equiv a_{i} \mod n_{i}
$$

by helping you to define such an  $X$  and then proving it does indeed satisfy all of the congruences.

Throughout this problem, we use  $N$  as given by the definition in the theorem statement:

$$
N = \prod_{i \in [ r ]} n_{i}
$$

(a) For every  $i \in [r]$ , define  $N_{i} = \frac{N}{n_{i}}$ . Explain why  $n_{i}$  and  $N_{i}$  are relatively prime.

(b) Cite a result that guarantees (for every  $i \in [r]$ ) the existence of an integer  $y_{i}$  that satisfies  $y_{i}N_{i} \equiv 1 \mod n_{i}$ .

(c) Define

$$
X = \sum_{j = 1}^{r} a_{j} N_{j} y_{j}
$$

Our goal now is to prove that  $X \equiv a_{i} \mod n_{i}$  for every  $i \in [r]$ .

Let  $i \in [r]$  be arbitrary and fixed. Show that for every  $j \neq i$ , the corresponding term in the sum above is congruent to 0 modulo  $n_i$ ; that is, show

$$
\forall j \in [ r ] \cdot j \neq i \Longrightarrow a_{j} N_{j} y_{j} \equiv 0 \bmod n_{i}
$$

(d) Take  $i$  to be the same fixed value as in the last part. Now, show that when  $j = i$ , the corresponding term in the sum above that defines  $X$  is congruent to  $a_i$  modulo  $n_i$ ; that is, show

$$
a_{i} N_{i} y_{i} \equiv a_{i} \mod n_{i}
$$

(e) Use what you have just proven to explain why  $X$  satisfies all of the  $r$ -many congruences.

Bonus Prove the second conclusion of the CRT, that all solutions are congruent modulo  $N$ .

(f) Now, consider the following system of congruences:

$$
\begin{array}{l} x \equiv 2 \mod 3 \\ x \equiv 2 \mod 5 \\ x \equiv 4 \mod 7 \\ \end{array}
$$

That is,  $n_1 = 3$ ,  $n_2 = 5$ ,  $n_3 = 7$ , and  $a_1 = 2$ ,  $a_2 = 2$ ,  $a_3 = 4$ .

Following the definitions in the steps above, find  $N$  and  $N_{i}$  and  $y_{i}$  (for every  $i \in [3]$ ) and use these to find a solution  $X$ .

(g) Use the other conclusion of the CRT to write down the set of all solutions to the given system in the previous part using set-builder notation, and use this to find the smallest natural number that is a solution.

Problem 6.7.28. The following puzzle was posed by the Indian mathematician Brahmagupta in the 7th century. (It just goes to show that people have been thinking about these kinds of problems for thousands of years!)

Read it and use the story to state a system of congruences.

Then, solve the problem!

(Hint: We suggest some kind of iterative method, since the Chinese Remainder Theorem does not apply here, as the problem is stated. [Why not?] Could you perhaps be clever about the first steps of your method so that the Chinese Remainder Theorem does then apply?)

A woman was returning from the market, carrying a basket of eggs. All of a sudden, a man walking by bumped into her, splilling the basket of eggs onto the ground. All of them broke!

"I am so sorry!" said the man. "Please allow me to walk to the market and buy you more eggs to replace these. How many did you have?"

The woman looked at the ground, only to find a muddled mess of shells, yelks, and mud. There would be no hope of simply counting them here.

"I can't recall precisely," she said to the man, "but I do remember these facts:

I first tried to count the eggs in pairs, but there was one left over. Then I counted them by threes, and there were two left over. Then I counted them by fours, and there were three left over. Then I counted them by fives, and there were four left over. Then I counted them by sixes, and there were five left over. Lastly, when I counted them by sevens, they divided evenly, so I stacked them in my basket that way. Alas, I don't recall how many groups of seven there were!"

"No matter," replied the man, grinning knowingly. "You have already told me enough. I know how many eggs you had, and I shall return in a few minutes with an equal number, plus a sweetbread for your troubles." He smiled at the woman, turned around, and walked off to market.

The woman stood there for a few minutes waiting, and in that time, she figured out how many eggs she had bought, as well.

How many eggs were there?

Problem 6.7.29. Challenge: Investigating Equivalence Relations

(a) Suppose  $R$  and  $S$  are equivalence relations on the set  $A$ . Suppose that  $A / R = A / S$  (i.e. the set of equivalence classes under each equivalence relation are the same). Prove that, in fact,  $R = S$ .

(b) Suppose  $R$  and  $S$  are equivalence relations on the set  $A$ . Must  $R \cap S$  be an equivalence relation?  
(c) Suppose  $R$  and  $S$  are equivalence relations on the set  $A$ . Must  $R \cup S$  be an equivalence relation?  
(d) Suppose  $R$  and  $S$  are equivalence relations on the set  $A$ . Define the composition of the relations to be

$$
S \circ R = \{(x, z) \in A \times A \mid \exists y \in A. (x, y) \in R \wedge (y, z) \in S \}
$$

Must  $S \circ R$  be an equivalence relation?

(e) Suppose  $R$  and  $S$  are equivalence relations on the set  $A$ . Recall that  $A / R$  and  $A / S$  are partitions of  $A$ .

We say that a partition  $\mathcal{F}$  refines a partition  $\mathcal{G}$  if and only if

$$
\forall X \in \mathcal {F}. \exists Y \in \mathcal {G}. X \subseteq Y
$$

Prove that

$$
R \subseteq S \iff A / R \text{re fi ne s} A / S
$$

# 6.8 Lookahead

We are now prepared to formally discuss functions. We have developed the requisite background knowledge, terminology, and notation to not only mathematically define functions, but also discuss their varied properties and prove some powerful theorems. Although it might seem like our foray into equivalence relations and number theory was purely out of intrigue and not usefulness, this is far from true! Some of the number-theoretic results we discussed will be useful in the next few chapters as we discuss some further properties of the integers and other sets. Also, we will be able to talk about functions on sets of equivalence classes, for example. Essentially, don't feel like anything we've done is a standalone result. As we are realizing, all of mathematics is connected somehow! For one, we are about to see that a function is just a special kind of relation …