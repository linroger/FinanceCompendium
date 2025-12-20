---
aliases: null
tags: null
key_concepts: null
parent_directory: null
cssclasses: academia
title: Chapter 7
linter-yaml-title-alias: Chapter 7
primary_tags:
- two types
- proof techniques
- bijective functions
- some examples
- any number
- all elements
- infinite sets
secondary_tags:
- specific cardinalities
- chapter development
- such a function
- same cardinality
- one final example
- few examples
- specific example
- other examples
- third version
- previous proof
- formal definitions
- one such comparison
- relevant techniques
- output values
- another set
- similar manner
- underlying relation
- identify function
- following theorem
tags_extracted: '2025-12-18T17:57:14.798485'
tags_method: max_quality_v1
---

# Chapter 7

# Functions and Cardinality: Inputs, Outputs, and The Sizes of Sets

# 7.1 Introduction

We are continuing our two-chapter development of functions. In this chapter, we will formally define a function. Specifically, we will see that a function is really a particular kind of relation with certain properties. That's why we took the time to explore relations to begin with—besides the fact that they are interesting and useful in their own right, of course. After defining a function, we will explore what kinds of properties functions might have through many examples and proofs. The definitions and theorems and proofs we see in this exploration will make use of all of the concepts we have developed so far, especially the proof techniques from Section 4.9.

Later in this chapter, we will use the concept of a bijective function—essentially, a "pairing up" of elements of two sets—to talk about the "sizes" of sets and how to compare them. This topic, cardinality, will show us some rather remarkable and counterintuitive facts about infinite sets. It will also provide us an inroad into the next chapter, where we restrict our focus to finite sets and how to count them.

# 7.1.1 Objectives

The following short sections in this introduction will show you how this chapter fits into the scheme of the book. They will describe how our previous work will be helpful, they will motivate why we would care to investigate the topics that appear in this chapter, and they will tell you our goals and what you should keep in mind while reading along to achieve those goals. Right now, we will summarize the main objectives of this chapter for you via a series of

statements. These describe the skills and knowledge you should have gained by the conclusion of this chapter. The following sections will reiterate these ideas in more detail, but this will provide you with a brief list for future reference. When you finish working through this chapter, return to this list and see if you understand all of these objectives. Do you see why we outlined them here as being important? Can you define all the terminology we use? Can you apply the techniques we describe?

# By the end of this chapter, you should be able to …

- State the definition of a function, and provide many examples.  
- Take informal descriptions and visual diagrams of functions and use them to construct formal arguments about examples (and non-examples) of functions and their properties.  
- Define images and pre-images of sets, in the context of a function, and prove various properties of these operations.  
- State several properties of functions, as well as apply relevant techniques to determine and prove whether or not a given function has these properties.  
- Find the composition of two functions, recognize how this can be used to create new functions, and identify and prove what consequences composition has on the properties of the functions of involved.  
- Describe the relationship between bijective functions and inverses, and use this to solve problems and prove claims.  
- Use bijections to define the cardinalities of sets and prove claims about these cardinalities.  
- State the difference between finite, countably infinite, and uncountably infinite sets, and provide several examples of each type.

# 7.1.2 Segue from previous chapter

The important idea from the previous chapter that will be helpful in this one is that of a relation. As we mentioned already, we will see that a function is just a particular kind of relation. This will come up in our formal definition of what a function is.

The other ideas explored in the previous chapter—equivalence relations, and results in number theory—will not appear so explicitly in this chapter. That is to say, the examples of functions we explore here, and their properties, do not depend on the other ideas explored in the last chapter. Rather, we will use those ideas to create interesting examples and exercises here.

# 7.1.3 Motivation

As we mentioned in the last chapter, it's quite likely that you have an intuitive understanding of what a function is and how to work with it. This might come from previous work in other mathematics courses, or perhaps some computer programming. As we have been stressing all along, we want to properly, formally, and mathematically define the concepts we work with. Functions are no exception! By accomplishing this, we will also be better able to talk about some of the qualitative properties of functions you may have seen before but been unable to express. As mentioned above, as well, particular properties of functions will allow us to talk about the cardinalities of sets. Rest assured, we would be unable to have a proper discussion of this topic without exploring functions first!

# 7.1.4 Goals andWarnings for the Reader

We want to make the same warnings and recommendations we did in the last chapter, as well. We are continuing to explore some abstract areas of mathematics. This chapter, in particular, will take a concept you might be familiar with visually and intuitively and place it on a more rigorous standing. Whenever possible, we will appeal to our collective intuitions, but there will be no way to avoid the kind of abstract thinking and problem-solving we have been developing, either. In particular, we won't always be able to associate a function with its graph, which is a standard (and helpful, mind you) way of learning about graphs early on in our mathematical careers. Furthermore, some of the results presented in our discussion of cardinality will laugh wholeheartedly in the face of your intuitions. Seriously! We will see some strange, counter-intuitive facts, and it will help to keep an open mind about them.

# 7.2 Definition and Examples

How do you usually think of a function? What's your intuitive sense for what it is? How would you actually define it in terms of mathematical objects? Have you even tried to do so before? Do it! Think about the concepts and tools we have seen already. Is there a way you can get across the way you usually think of a function using just those concepts? Seriously, try it! Read the next couple of paragraphs first, as we build up to the definition, and then try to come up with one on your own.

The way we usually think of a function is that it is some kind of rule or map that tells us how to assign output values to any given input value. For example, let's take the function on  $\mathbb{R}$  that says  $f(x) = x^2$ . This function "takes in" a real number and "spits out" the real number that is the square of the input. In a way, the function  $f$  is a "machine" that turns a number into its square; saying that the function is "on  $\mathbb{R}$ " means that we are only allowed to put real numbers into the machine. How do we know what's allowed to come out of the machine, though? Already, we have found a flaw in our usual interpretation of a function. Ideally, we would like to convey all essential information about a function when

we define it: what the inputs can be, what the outputs can be (not what all of them are, necessarily, but what types of objects they could be), and what the "rule" is. If you're thinking of a function as a map, then it's like a description of how to navigate from one set of numbers (in this case,  $\mathbb{R}$ ) to another set of numbers (also  $\mathbb{R}$ , in this case) by following a certain "road" between the sets (in this case, taking the square of the first number). In this interpretation, we still want to convey all of the information we mentioned a moment ago, but we're just pointing out that there are other ways to think about it, too.

Let's throw one wrench into the mix before we get to our definition. Think about the "rule" that inputs a person in this class and outputs the color of their eyes. How would you write that down in the form  $f(x) = \ldots$ ? It's hard! You'll essentially just have to rewrite the previous sentence in full as the definition of the "rule". What are the allowable inputs and outputs? They're not real numbers or integers or anything like that. They're something else entirely. Yet, this function is a perfectly reasonable one and we'd like to have it covered by our definition. Think about how this situation is (or isn't, really) different from something like  $f(x) = x^2$  on  $\mathbb{R}$ . (You might even object here that this isn't a function at all! What about a person who has two different-colored eyes? What is the output of this "map" then? Oh boy!)

Okay, well, now it's your turn. Try to make a definition of a function using the concepts, terms, and mathematical objects we have discussed in these first few chapters.

# 7.2.1 Definition

Here's what we will use. Perhaps it's close to what your definition was, maybe they're identical, maybe our wordings are slightly different. Ultimately, though, this definition perfectly encapsulates the intuitive notion of a function that we had before (thinking of it as a rule of assignments), but it casts it in the language of sets and logic that we have been developing. This serves a few purposes: (a) it puts functions on a rigorous footing and allows us to confidently use them in a mathematical sense; (b) it allows us to discuss properties of functions and prove such things using mathematical terminology and concepts; and (c) it allows us to generalize the notion of a function and apply it in more abstract settings than just the standard sets of numbers we are familiar with. Alright, enough explanation, let's get to the definition.

Definition 7.2.1. Let  $A, B$  be sets. Let  $f$  be a relation between  $A$  and  $B$ , so  $f \subseteq A \times B$ . Also, assume that  $f$  has the property that

$$
\forall a \in A \bullet \exists ! b \in B \bullet (a, b) \in f
$$

(Recall that " $\exists!$ " means "there exists a unique …", i.e. "there is one and only one …")

Such a relation is called a function from  $A$  to  $B$ .

We call  $A$  the domain of the function and  $B$  the codomain of the function.

We write

$$
f: A \to B
$$

to mean  $f$  is a function from  $A$  to  $B$ .

If  $(a,b)\in f$  , then we write

$$
f (a) = b
$$

knowing that  $b$  is the unique element that satisfies that property for the given  $a$ .

That's it! It might be strange now to think about a function as a relation, which is actually a particular type of set, but that's what it is. Formulating functions in these terms allows us to talk about them in the language of sets and relations, but notice that we will still be able to use some familiar notation. Knowing that for every "input"  $a$  (i.e. every element of the domain), there is a unique "output"  $b$  (i.e. an element of the codomain), we can write  $f(a) = b$  and know that the "==" is, actually, an equality. There is no other element of  $B$  that could satisfy this relationship, because that  $b$  is unique.

Part of this definition incorporates the idea we mentioned above: we want to know what type of object a function will "output". This is what specifying the codomain accomplishes. For example, it wouldn't make sense to define the function  $f: \mathbb{R} \to \mathbb{R}$  by  $f(x) = \sqrt{x}$ ; there are some elements (namely, negative numbers) of the domain where the "output" would be undefined. (Technically, the output would be a complex number, which is not an element of the codomain  $\mathbb{R}$ ; in the context of  $\mathbb{R}$ , though, we would think of a complex number as being "undefined".) When a function is defined properly, and the domain and codomain are specified, and the related pairs do belong to the Cartesian product of the sets, we say the function is well-defined. Sometimes, we will present you with a relation on two sets and ask you to decide whether or not it is a well-defined function. In that case, we are really just asking whether the relation corresponds to a proper function.

# The word "Range"

The word codomain might be new to you. In fact, you might be more accustomed to using the word range to refer to the set of potential "outputs" of a function. We want to completely avoid using the word "range" in this context because of a potential ambiguity. Some authors and teachers use the word "range" to mean what we mean here by "codomain": the set of potential "outputs" of a function. However, some authors and teachers use the word to mean what we mean here by "image". As you will see when we define this term properly in Section 7.3, this is the set of actually-achieved "outputs" of the function. In general, the image is a subset of the codomain, but it might be a proper subset. When someone uses the word "range", they might be thinking of one of these interpretations, but you might be thinking of the other one! To avoid this confusion, we will only use the words codomain and image.

# 7.2.2 Examples

Let's see some examples (and non-examples) of functions, using our new definition. While working with these examples, we will describe proper notation for defining functions and working with them, and we will describe how to "visualize" some functions and appeal to our intuitions.

# Notation

There are several ways of properly defining a function. The following are all acceptable ways of defining "the squaring function on the real numbers":

Let  $f\subseteq \mathbb{R}\times \mathbb{R}$  be the function defined by  $(x,y)\in f\Longleftrightarrow y = x^{2}$

Let  $f: \mathbb{R} \to \mathbb{R}$  be the function defined by  $f = \left\{(x, x^2) \mid x \in \mathbb{R}\right\}$ .

Let  $f:\mathbb{R}\to \mathbb{R}$  be the function defined by  $\forall x\in \mathbb{R}$ $f(x) = x^{2}$

Think about how each of these appeals to the definition of a function we saw above. The first appeals directly to the idea that a function is a type of set, namely a relation from  $\mathbb{R}$  to  $\mathbb{R}$ . The second uses the same idea but expresses  $f$  via set-builder notation instead of an if and only if statement. The third appeals to the idea that every "input" of  $f$  has a unique "output", so we can simply declare what that "output" is for all  $x \in \mathbb{R}$ .

We will usually stick to the third notation style because it easier to understand, and appeals more directly to our intuitions about functions. Sometimes, we will use the other notation styles; we might be trying to emphasize the underlying structure of a function, or it might just be easier to write, depending on the context. In general, though, when defining a function, we need to specify all the important components for the reader: the domain, the codomain, the letter name, and either a rule or a set that assigns the ordered pairs.

If you're wondering why it's so important to specify the codomain when defining a function, think of it in terms of writing computer code. If you define a function, you usually have to declare the object type of the output variable. (This depends on the language, of course.) For instance, in Java, you might write

```txt
public int PlusOne (int x) { return x+1; }
```

This defines a function that inputs an integer, adds one, and outputs another integer. Notice that you had to tell the program what type of object was going in and what type would be coming out.

Example 7.2.2. Consider the function that takes a natural number and outputs its binary representation. Let's use  $B$  to represent this function. Doing some calculating, we see that we want  $B(1) = 1$  and  $B(2) = 10$  and  $B(10) = 1010$ , for instance. What is the domain of this function? What is the codomain? Can

you write down the "rule" that defines it rigorously? Doesn't it seem better to just leave it the way we stated it, in words?

We would define this function in the following way. Let  $S$  be the set of all finite binary strings, i.e. sequences of 0s and 1s. Then we let  $B: \mathbb{N} \to S$  be the function defined by

$$
B = \{(n, s) \mid n \in \mathbb{N} \text{ and } s \text{ isthebinaryrepresentationof } n \}
$$

Example 7.2.3. Consider the "squaring function" again: Let  $f: \mathbb{R} \to \mathbb{R}$  be defined by  $\forall x \in \mathbb{R}$ .  $f(x) = x^2$ . Is this function any different from the following functions?

- Let  $g: \mathbb{R} \to \mathbb{C}$  be the function defined by

$$
\forall x \in \mathbb{R}. g(x) = x^2
$$

- Let  $h: \mathbb{Z} \to \mathbb{R}$  be the function defined by

$$
\forall x \in \mathbb{Z}. h(x) = x^2
$$

The function  $g$  has a different codomain but, in fact,  $\mathbb{R} \subseteq \mathbb{C}$ . All of the ordered pairs  $(x, x^2) \in g$  still satisfy  $x \in \mathbb{R}$  and  $x^2 \in \mathbb{R}$ . In this sense,  $f$  and  $g$  are the same function, and we would write  $f = g$ . We will see later on precisely what it means for two functions to be equal. For now, it suffices to say that the underlying relations corresponding to  $f$  and  $g$  have the same ordered pairs of real numbers as elements. The function  $g$  theoretically allows for complex numbers in the second coordinate, but the way the domain and the "rule" are established, this doesn't actually happen.

The function  $h$  has a different domain, and  $\mathbb{Z} \subset \mathbb{R}$  (a proper subset). Thus, there are many ordered pairs in the relation corresponding to the function  $f$  that don't belong to the relation corresponding to the function  $h$ . For instance,  $(1/2, 1/4) \in f$  but  $(1/2, 1/4) \notin h$ . Said another way,  $f(1/2) = 1/4$ , but the concept of  $h(1/2)$  is not well-defined;  $1/2$  does not belong to the domain of  $h$ .

Example 7.2.4. We can define a function piece-wise, as well. For instance, consider the absolute value function, defined on  $\mathbb{R}$ :

Let  $a:\mathbb{R}\to \mathbb{R}$  be the function defined by

$$
\forall x \in \mathbb{R}. \quad a(x) = \left\{ \begin{array}{ll} x & \text{if } x \geq 0 \\ -x & \text{if } x < 0 \end{array} \right.
$$

Every domain element falls into exactly one of the cases, so there is no ambiguity.

# "Well-defined" Functions

It is not always clear that a defined relation is actually a function. Given a proposed domain, codomain, and a "rule" or set, how can we check that these represent a function? This is what the next definition (based entirely on the definition of function we saw above) addresses:

Definition 7.2.5. Given a domain  $A$ , a codomain  $B$ , and a proposed "rule" for  $f$ , then we say  $f$  is a well-defined function if and only if (1) the rule is defined on all elements of  $A$ , and (2) for every  $a \in A$ , the rule outputs a unique element of the set  $B$ .

Let's use this in an example here. Later in this section, we will see some non-examples of functions, and we will again appeal to this definition of well-defined.

Example 7.2.6. Let  $f: \mathbb{Z} \to \mathbb{N}$  be the function defined by

$$
\forall z \in \mathbb {Z}. f (z) = | 2 z + 1 |
$$

Wait, how can we be so sure that  $|2z + 1|$  will be a natural number, for any integer  $z$ ? It's not immediately obvious, but we can figure it out.

Suppose  $z \in \mathbb{Z}$  satisfies  $z \geq 1$ . Then certainly  $2z + 1 \in \mathbb{Z}$  and  $|2z + 1| = 2z + 1 \geq 3$ . Thus,  $f(z) \in \mathbb{N}$ .

Suppose  $z \in \mathbb{Z}$  satisfies  $z \leq -1$ . Then  $2z + 1 \in \mathbb{Z}$  and  $2z + 1 \leq -1$ . Thus,  $f(z) = |2z + 1| \geq 1$ , so  $f(z) \in \mathbb{N}$ .

Suppose  $z = 0$ . Then  $f(z) = |2 \cdot 0 + 1| = 1$ , so  $f(z) \in \mathbb{N}$ .

In any case, we see that the "rule" that defines  $f$  does indeed yield a natural number, an element of the codomain. Furthermore, it yields exactly one such number. Therefore, this is a well-defined function.

Example 7.2.7. Let  $P$  be the set of all people in the world. Let  $b: P \to \mathbb{N} \cup \{0\}$  be the function defined by

$$
b = \{(p, n) \mid p \in P \wedge \text{ person } p \text{ has } n \text{ sisters} \}
$$

(Notice that we have used one of the sets-emphasizing notation styles here, for practice. Also, it might look funny to combine math symbols and words, as in "  $b(p) =$  the number of sisters person  $p$  has".)

Is this a well-defined function? We would say so. Walk up to someone (i.e. an element  $p \in P$ ) and ask them how many sisters they have (i.e. what  $b(p)$  is). They will tell you a non-negative integer in return. Also, they wouldn't possibly tell you two different numbers.

Now, you could point out that in today's society of divorces and remarriages, plenty of people have half-sisters, and  $\frac{1}{2} \notin \mathbb{N} \cup \{0\}$ . Fine. Fair point. But with the "simplifying assumption" that everyone has some whole number of sisters, this function is well-defined.

# The Identity Function

Example 7.2.8. Let  $S$  be any set. Must there exist a function from  $S$  to  $S$ ? Certainly, we can think of tons of functions from  $\mathbb{R}$  to  $\mathbb{R}$ , but what if  $S$  is just some arbitrary set? Can we guarantee there is a function from  $S$  to  $S$ ? It turns

out that … yes, we can! Think back to a similar question we considered when talking about relations. (See Example 6.2.9.) We know that we can always define the equality relation on the set  $S$ ; that is, we can define  $R$  on  $S$  by  $(x, y) \in R \iff x = y$ . This relation consists of all ordered pairs of the form  $(x, x)$ , for every  $x \in S$ . Does this relation represent a function? We only need to check the definitional property: does every input have exactly one output? Sure looks like it! Any element of a set is only equal to itself, and nothing else. Thus,  $R$  does represent a function. This is a special enough function that we give it its own name.

Definition 7.2.9. Let  $S$  be a set. The identity function on  $S$  is defined to be the function  $\operatorname{Id}: S \to S$  given by

$$
\forall x \in S. \operatorname{Id} (x) = x
$$

That is, the identity function "outputs exactly what it inputs". (Thinking of a function as a machine, this is a lazy machine that does nothing, and just spits out whatever came in.)

Sometimes, we wish to refer to the identity functions as defined on different sets. To avoid confusion in that case, we will write  $\mathrm{Id}_S$  to mean "the identity function on the set  $S$ ".

# Non-Examples

Sometimes, in the context of solving a problem, we might write down a proposed "rule" between two sets and wonder whether it is a function. Perhaps we need it to be a function to help us work something out. How could this fail? That is, what could we be looking for to show that a proposed rule is not a function? Look back at the definition of well-defined function (see Definition 7.2.5). Three different things could go wrong:

- There might be an element of the domain for which no "output" is defined.  
- There might be an element of the domain for which more than one "output" is defined.  
- There might be an element of the domain for which exactly one "output" is defined, but it is not an element of the codomain.

The following examples illustrate these possibilities.

Example 7.2.10. Let  $G: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  be defined by

$$
\forall (a, b) \in \mathbb {N} \times \mathbb {N}. G (a, b) = a - b
$$

This is not a well-defined function because there are many domain elements whose "output" is not an element of the codomain. For instance,  $(5,10) \in \mathbb{N} \times \mathbb{N}$  and  $G(5,10) = -5$ , but  $-5 \notin \mathbb{N}$ .

Example 7.2.11. Let  $W$  be the set of words in the English language. Let  $A: W \to W$  be defined by taking in a word and outputting an anagram of that word that is not the original word. This is not well-defined for several reasons. For example,  $A(\mathrm{HI})$  does not exist; the same goes for  $A(\mathrm{FUNCTION})$ . Also, notice that, for instance,  $A(\mathrm{INTEGRAL})$  has multiple (i.e. non-unique) outputs: TRIANGLE, ALERTING, ALTERING, …

# 7.2.3 Equality of Functions

It is sometimes the case that two functions are defined by different "rules" or formulas, but they correspond to the same underlying relation! In that sense, the two functions are equal. We would like to describe what this means in terms of function notation, first, and then we will prove this idea we've come up with using the underlying relation and set notation.

How might two functions be equal? Certainly their domains must be the same. If not, then one of the domain sets contains an element that doesn't belong to the other domain set, and this is a problem. (Think about it: one of the functions would be defined on an element for which the other function is undefined, so there's no way they can be equal). So, let's say we have two sets,  $A$  and  $B$ , and two functions,  $f: A \to B$  and  $g: A \to B$ . What do we require of  $f$  and  $g$  for them to be equal? The defining characteristic of the functions is that for any input, say  $x \in A$ , there is a unique output  $f(x)$  and a unique output  $g(x)$ . If  $f$  and  $g$  are to be the same function, we better have  $f(x) = g(x)!$ . This lets us state the following theorem.

Theorem 7.2.12. Let  $A, B$  be sets, and let  $f: A \to B$  and  $g: A \to B$  be functions. Suppose that

$$
\forall x \in A \cdot f (x) = g (x)
$$

Then we say  $f$  and  $g$  are equal as functions, and we write  $f = g$ .

This is indeed a theorem. The idea is very intuitive, but it is not explicitly part of the definition of a function. Thus, we have to prove this idea. To complete this proof, we will consider the ordered pairs that belong to the relations  $f$  and  $g$ . By showing that these ordered pairs are the same, we can conclude  $f = g$  in the sense of sets. Notice that we are making a double-containment argument!

Proof. Let  $A, B$  be sets, and let  $f: A \to B$  and  $g: A \to B$  be functions. Suppose that

$$
\forall x \in A. f (x) = g (x)
$$

First, we prove  $f \subseteq g$ . Let  $(a,b) \in f$  be given. Since  $f$  is a function, this means  $f(a) = b$ . By the main assumption,  $f(a) = g(a)$ , and so  $g(a) = b$ , as well. Thus,  $(a,b) \in g$ . This shows that

$$
(a, b) \in f \Longrightarrow (a, b) \in g
$$

and, therefore,  $f\subseteq g$

Second, we prove  $g \subseteq f$  in a similar manner. Let  $(c,d) \in g$  be given. Since  $g$  is a function, this means  $g(c) = d$ . By the main assumption,  $f(c) = g(c)$ , and so,  $f(c) = d$ , as well. Thus,  $(c,d) \in f$ . This shows that

$$
(c, d) \in g \Rightarrow (c, d) \in f
$$

and, therefore,  $g \subseteq f$ .

Since we have shown  $f \subseteq g$  and  $g \subseteq f$ , we may conclude  $f = g$ .

This provides us with a handy way of showing that two functions are equal without having to delve into the underlying relation/set structure. Instead, we just have to show that every element of the domain produces the same output under both functions. Let's see how this works in a couple of examples.

Example 7.2.13. Let  $A = \{-1,0,1\}$ . Define the functions  $f_{1}:A\to \mathbb{Z}$  and  $f_{2}:A\to \mathbb{Z}$  by

$$
\forall x \in A. f_1(x) = x \wedge f_2(x) = x^3
$$

Let's prove that  $f_{1} = f_{2}$ . Since the domain only contains three elements, we can verify these outputs one by one. Notice that

$$
f_1(-1) = -1 = (-1)^3 = f_2(-1)
$$

$$
f_1(0) = 0 = 0^3 = f_2(0)
$$

$$
f_1(1) = 1 = 1^3 = f_2(1)
$$

Thus, for every allowable input (i.e.  $\forall x\in A$ ) the functions  $f_{1}$  and  $f_{2}$  have the same output (i.e.  $f_{1}(x) = f_{2}(x)$ ). Therefore,  $f_{1} = f_{2}$ .

Example 7.2.14. Let  $B = \{1,2,3\}$ . Define the functions  $g_1: B \to \mathbb{Z}$  and  $g_2: B \to \mathbb{Z}$  by

$$
\forall n \in B. g_1(n) = n^3 - n^2 - 6 \wedge g_2(n) = 5n^2 - 11n
$$

Let's prove that  $g_{1} = g_{2}$ . Again, we only have three elements to consider, so we can just verify all of the equalities by hand:

$$
g_1(1) = 1^3 - 1^2 - 6 = 1 - 1 - 6 = -6
$$

$$
g_2(1) = 5 \cdot 1^2 - 11 \cdot 1 = 5 - 11 = -6
$$

$$
g_1(2) = 2^3 - 2^2 - 6 = 8 - 4 - 6 = -2
$$

$$
g_2(2) = 5 \cdot 2^2 - 11 \cdot 2 = 20 - 22 = -2
$$

$$
g_1(3) = 3^3 - 3^2 - 6 = 27 - 9 - 6 = 12
$$

$$
g_2(3) = 5 \cdot 3^2 - 11 \cdot 3 = 45 - 33 = 12
$$

Thus,  $\forall n\in B$ .  $g_{1}(n) = g_{2}(n)$ , and so  $g_{1} = g_{2}$ .

Since the domains in these two examples were "small", we were able to examine every element one-by-one. This is not always the case, though. Sometimes, we must consider an arbitrary element of the domain (since the desired property we are proving begins with a "V" quantifier) and work with it. As it turns out, there is an interesting way of doing that with this example, so let's show you that now to get an idea of how it works.

Let  $n \in B$  be given. Since  $g_{1}(n), g_{2}(n) \in \mathbb{Z}$ , we can consider their difference. Specifically, we see that

$$
\begin{array}{l} g_1(n) - g_2(n) = \left(n^3 - n^2 - 6\right) - \left(5n^2 - 11n\right) \\ = n^3 - 6n^2 - 11n - 6 \\ = (n - 1)(n - 2)(n - 3) \\ \end{array}
$$

(Note: the reader can verify the last equality by simply expanding the product of the three terms.)

Since  $n \in B$ , we know  $n = 1$  or  $n = 2$  or  $n = 3$ . In each case, one of the terms—either  $n - 1$  or  $n - 2$  or  $n - 3$ —must be zero. Thus,

$$
g_1(n) - g_2(n) = (n - 1)(n - 2)(n - 3) = 0
$$

Accordingly, by adding to both sides, we find  $g_{1}(n) = g_{2}(n)$ . Since this holds for arbitrary  $n \in B$ , we conclude that  $g_{1} = g_{2}$ .

We will remark that this is certainly trickier than the "check all the cases" approach in this specific example. How did we know to look at the difference? How did we know that it would factor like that?! This is why mathematics is so interesting! We might have the ingenuity to check something like that by thinking about how to approach a more general problem, where the domain is too large to consider every case one by one. We might recognize the factorization, or think to guess at it from the fact that  $B = \{1,2,3\}$ . And if you think about it carefully enough, you might realize how we came up with this example!

Let's look at one final example of equality of functions which is a bit more complicated. It involves some ideas that we haven't assumed any familiarity with, and we won't discuss them again, but we found it interesting and illustrative enough to include it here.

Example 7.2.15. We will define two functions here and argue why they are equal. Let the domain and codomain of each function be  $\mathbb{R}^2$ , the real plane. Now, let's define two functions,  $F_{1}$  and  $F_{2}$  by describing their actions geometrically (i.e. visually). We want  $F_{1}$  to input a point on the plane—let's call it  $p$  and output the point achieved by rotating  $p$  counterclockwise by  $90^\circ$  around the origin and then reflecting through the origin. We want  $F_{2}$  to input  $p$  and output the point achieved by rotating  $p$  clockwise by  $90^\circ$ . To get a better idea of what this means, look at the following pictorial representations of  $F_{1}$  and  $F_{2}$  applied to a particular point.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/6f3bb2cff1d38b67b20acf25dea62a47ff6036f164fcad473aa5d15113956e4f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/26a650f6a2ae28b1f085c168b19c4c83a6db1f6cb6458ee9f3f659214b3ef797.jpg)

We claim that  $F_{1} = F_{2}$ , in the sense of functions. By playing around with several examples, we can see that this might be true; that is, we can't come up with counterexamples, and we might even begin to "see" why it's true. But none of this is a rigorous proof. It's just an intuitive way of understanding something. To rigorously prove this fact, we'll need to use some mathematical machinery outside the scope of this class. For that reason, we'll really only "sketch" this proof, and leave some of the technical details to be explored by interested readers.

The main idea is this: we can represent points in the plane by vectors, the functions by matrices, and the action of a function on a point by matrix multiplication. Do not worry if you have no knowledge of matrices or vectors; you can just skip this example and you won't be missing anything essential! If you'd like to follow along, though, we'll say this: matrices are just arrays of real numbers, and vectors are matrices with just one column. The point  $(1,1)$  in the real plane is represented by the vector  $\left[ \begin{array}{l}1\\ 1 \end{array} \right]$ , for instance. The action of rotation of a vector can be represented by a rotation matrix. (You might see this in an intermediate physics course, like electromagnetics or mechanics.) For example, the action of rotation counterclockwise by  $90^{\circ}$  can be represented by the matrix

$$
\left[ \begin{array}{c c} 0 & - 1 \\ 1 & 0 \end{array} \right]
$$

Rotating the point  $(a,b)$  counterclockwise by  $90^{\circ}$  amounts to multiplying the corresponding vector by this matrix, following the usual matrix multiplication rules (where we multiply a row on the left by a column on the right, entry by entry, and add). As an example, let's rotate the point  $(1,1)$ :

$$
\left[ \begin{array}{c c} 0 & - 1 \\ 1 & 0 \end{array} \right] \left[ \begin{array}{c} 1 \\ 1 \end{array} \right] = \left[ \begin{array}{c} 0 + (- 1) \\ 1 + 0 \end{array} \right] = \left[ \begin{array}{c} - 1 \\ 1 \end{array} \right]
$$

Look at that, it matches up with what we'd expect! Check out the picture above to see this rotation in action.

Similarly, we can represent clockwise rotation by  $90^{\circ}$  by this matrix:

$$
\left[ \begin{array}{c c} 0 & 1 \\ - 1 & 0 \end{array} \right]
$$

(Note the similarities in the entries, even. There's a reason for that, which we'll leave you to discover via some Googling. Or Binging, we suppose.)

Reflection through the origin can also be represented by matrix multiplication, but there's an even easier way to think about it: just negate both of the coordinates. For instance, the reflection of  $(-1, 1)$  through the origin is  $(1, -1)$ .

This allows us to fully represent the actions of  $F_{1}$  and  $F_{2}$ . Since  $F_{1}$  says "rotate counterclockwise by  $90^{\circ}$  and negate both entries", we can write

$$
F_1\left(\left[ \begin{array}{c} a \\ b \end{array} \right]\right) = -\left[ \begin{array}{cc} 0 & -1 \\ 1 & 0 \end{array} \right] \left[ \begin{array}{c} a \\ b \end{array} \right] = \left[ \begin{array}{c} b \\ -a \end{array} \right]
$$

(where the - sign out front accomplishes the negation), and since  $F_{2}$  says "rotate clockwise by  $90^{\circ}$ ", we can write

$$
F_2\left(\left[ \begin{array}{c} a \\ b \end{array} \right]\right) = \left[ \begin{array}{cc} 0 & 1 \\ -1 & 0 \end{array} \right] \left[ \begin{array}{c} a \\ b \end{array} \right] = \left[ \begin{array}{c} b \\ -a \end{array} \right]
$$

By following the rules of matrix and vector multiplication, we can easily see that these two expressions are equal, for any  $a$  and  $b$ . So, assuming some knowledge about rotation matrices, this proves  $F_{1} = F_{2}!$

# 7.2.4 Schematics

Before we move on to talking about some more abstract properties of functions and how to prove them, we will describe one helpful way of representing functions. We want to emphasize that this method is not rigorous in a mathematical sense, and using these representations in a proof is probably not the best idea. (On a graded homework problem, say, you might not receive full credit, despite "having the right idea".) However, this method does provide some intuitive insight into how functions work, and can guide you into discovering something and figuring out how to prove it more rigorously. In particular, this method will be quite helpful in constructing counterexamples to particular claims about function properties.

The idea of a schematic diagram is similar to how we used venn diagrams to represent sets. A set is a collection of elements, not a shaded circle on a piece of paper, but these shaded circles and their overlaps can help us figure out and describe something about sets. Likewise, a function is a relation on two sets with a particular property, not something like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/d60c08bebe7e780222d5e96fda31ffffe0e55137f434660bfbdf4e7610421db4.jpg)

However, this does somehow represent the idea of a function. In this picture, we have represented the domain  $A$  by an oval, and the same with the codomain  $B$ . The elements of  $A$  and  $B$  are represented by dots inside those ovals (and they are labeled), and we have drawn arrows between those dots based on what the function  $g: A \to B$  does.

Mostly, this method is used to explore a certain property of a function and perhaps construct a counterexample to a claim. By drawing some dots and arrows and playing around with how they connect, we can perhaps develop the underlying structure of an example; then, we can go back and assign some names and formulas to the parts of the diagram and make the picture more rigorous.

We will use some schematic diagrams to illustrate some properties and concepts as we proceed, but these will always be accompanied by a more rigorous statement or description. We encourage you to employ a similar method.

# 7.2.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) Write down the definition of a function, without looking it up. Then, compare to our definition. Does yours convey the same information? If not, what did you miss?  
(2) What is the difference between the domain and the codomain of a function?  
(3) What does it mean for a function to be well-defined?

(4) What is the identity function and how is it defined?  
(5) How can we prove that two functions are equal?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Use proper notation to define a function that inputs an integer and outputs the square root of its absolute value.

What is the domain of this function? What is its codomain?

(2) Use proper notation to define a function that inputs a pair of natural numbers and outputs their average (arithmetic mean).

What is the domain of this function? What is its codomain?

(3) Let  $A = \{-2, -1, 0, 1, 2\}$ . Let  $g: A \to A$  be defined by  $\forall x \in A$ .  $g(x) = x^2 - 3$ . Draw a schematic diagram to determine whether  $g$  is well-defined or not. Is it?  
(4) Let  $X$  be any set. Use proper notation to define a function that inputs a subset of  $X$  and outputs that set's complement (in the context of  $X$ ).

What is the domain of this function? What is its codomain?

(5) Let  $B = \{-1,0,1\}$ . Let  $h: B \to B$  be defined by  $\forall b \in B$ .  $h(b) = b^3$ . What special function is this equal to?  
(6) Let  $f: \mathbb{Z} \times \mathbb{Z} \to \mathbb{N}$  be defined by  $\forall (x, y) \in \mathbb{Z} \times \mathbb{Z}$ .  $f(x, y) = \frac{1}{2} |x + 1| \cdot |y|$ . Is this a well-defined function? Why or why not?

# 7.3 Images and Pre-images

# 7.3.1 Image: Definition and Examples

Think back to the definition of a function. We required that every input have a unique output. This ensures that a function is defined everywhere on its domain. What about the codomain, though? All we required there was that all of the outputs belong to the codomain. We never said anything about "how much" of the codomain is "covered". The idea of the image of a function is to capture exactly this notion. As we will see from some examples, it is not always easy to determine precisely what the image of a function is, even when we know what the codomain is. It is for this reason that we defined a function and its codomain first, before introducing the image; so don't think we were trying to fool you or anything!

# Definition

Definition 7.3.1. Let  $A, B$  be sets and let  $f: A \to B$  be a function. Let  $X \subseteq A$ .

The image of  $X$  under the function  $f$  is written and defined as

$$
\operatorname{Im}_f(X) = \{b \in B \mid \exists a \in X. f(a) = b \}
$$

That is, the image of  $X$  under  $f$  is the set of all "outputs" that come from "inputs" in the set  $X$ .

An equivalent way of writing this is

$$
\operatorname{Im}_f(X) = \{f(a) \mid a \in X \}
$$

(We will sometimes abbreviate the notation as just  $\operatorname{Im}(X)$ , when the function is clearly identified and unambiguous, and consequently refer to the set as just "the image of  $X$ ", instead of "the image of  $X$  under  $f$ ).)

When we say the image of  $f$ , we mean the image of the entire domain, i.e.  $\operatorname{Im}_f(A)$ .

Notice that this is defined for any subset of the domain,  $X \subseteq A$ , so we can talk about the image of any "piece" of the domain, or all of it. We will see some examples now—and exercises later—that consider strict subsets  $X \subset A$ , as well as  $A$  itself.

# One Observation

Notice that

$$
\operatorname{Im}_f(A) \subseteq B
$$

no matter what  $f$  and  $A$  and  $B$  are. This follows by definition, since we used set-builder notation to define the image via elements of  $B$ . In the next section, we will explore what happens when  $\operatorname{Im}_f(A) = B$ .

For now, let's practice identifying the images of certain functions. In some cases, we will be provided with a function and its image and asked to verify this claim, but in other cases, we will need to develop some techniques to figure out what the image is in the first place!

# Examples

Example 7.3.2. Define a function  $g: A \to B$  by setting  $A = \{a, b, c, d, e\}$  and  $B = \{1, 2, 3, 4, 5, 6\}$  and

$$
g = \{(a, 2), (b, 3) (c, 3), (d, 1), (e, 6) \}
$$

Define  $X_{1} = \{a,b,c\}$  and  $X_{2} = \{a,c,e\}$  and  $X_{3} = \{c,d,e\}$ .

You might notice that this is the same function we defined in the schematic diagram in the last section! Let's see that diagram again, because it can help us identify the images in the following list.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/8a19b55f356dab23f45ae9b205a1ed36bd18255136b757c363969a29a626c09d.jpg)

(1)  $\operatorname{Im}_g(\{a\}) = \{2\}$

This is because  $g(a) = 2$ .

Notice the use of set brackets. We always find the image of a set, so writing  $\operatorname{Im}_g(a)$  would be incorrect.

(2)  $\operatorname{Im}_g(\{b, c\}) = \{3\}$

This is because  $g(b) = g(c) = 3$ .

(3)  $\operatorname{Im}_g(X_1) = \{2, 3\}$

This is because  $g(b) = g(c) = 3$  and  $g(a) = 2$ .

(4)  $\operatorname{Im}_g(X_2) = \{2, 3, 6\}$

This is because  $g(a) = 2$  and  $g(c) = 3$  and  $g(e) = 6$ .

(5)  $\operatorname{Im}_g(X_3) = \{1, 3, 6\}$

This is because  $g(c) = 3$  and  $g(d) = 1$  and  $g(e) = 6$ .

(6)  $\operatorname{Im}_g(A) = \{1, 2, 3, 6\}$

Looking at the set  $B$  in the schematic diagram, we see that these are the only values that are "hit" by the function. Notice  $4,5\in B$  but  $4,5\notin \operatorname{Im}_g(A)$ , so  $\operatorname{Im}_g(A)\subset B$  (a proper subset).

Example 7.3.3. Consider the temperatures (in degrees Celsius) where water is in its liquid state. Specifically, define the set

$$
C = \{x \in \mathbb {R} \mid 0 <   x <   1 0 0 \}
$$

and define the function  $F:C\to \mathbb{R}$  by

$$
\forall c \in C. F(c) = \frac{9}{5}c + 32
$$

What is  $\operatorname{Im}_F(C)$ ? What does it represent?

To approach questions like these, we must (a) identify a claim for what  $\operatorname{Im}_F(C)$  is by defining a set, and then (b) prove that the set we defined is actually equal

to  $\operatorname{Im}_F(C)$ , in the sense of sets. This means we will use a double-containment argument!

Solution: Define  $S = \{y \in \mathbb{R} \mid 32 < y < 212\}$ . (Notice that this represents the set of temperatures (in degrees Fahrenheit) where water is in its liquid state.) We claim  $S = \operatorname{Im}_F(C)$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/628320f4373aeca60a4f8da4cce1cd13fcbba00b97f4deea824cbe9fbc537661.jpg)

It is hard to give advice about how to come up with claims like this, in general. Most often, this relies on some playing around with the function and testing some values, and perhaps some insight about some other properties of the function. In this specific case, we notice that this function is increasing; that is, if we have two input values with  $c_{1} < c_{2}$ , then we know that  $F(c_{1}) < F(c_{2})$ . We can glean this information from the graph of the function (see above) and/or recognizing it is a linear polynomial. Accordingly, to identify the image, we just have to consider the smallest and largest inputs and identify their outputs. (Again, we can glean this information from a graph.) We find that

$$
F (0) = 0 + 3 2 = 3 2 \quad \mathrm{an d} \quad F (1 0 0) = \frac{9 0 0}{5} + 3 2 = 2 1 2
$$

From this, we defined the set  $S$ . (Also, notice that we had to use "<" in the inequality because, in fact,  $0 \notin C$ , the domain!) We also give this set a name so that we can refer to it later without implicitly claiming, already, that it is the image. This is a somewhat subtle distinction, but an important one! Now, let's prove our claim.

Proof. First, we'll prove  $\operatorname{Im}_F(C) \subseteq S$ . (In other words, we'll prove that every output of the function  $F$  actually satisfies the inequality in the definition of  $S$ .)

(To do this we will start with an arbitrary element of  $\operatorname{Im}_F(C)$ , and appeal to the definition of image to bring an element of the domain into play.)

Let  $y \in \operatorname{Im}_F(C)$  be arbitrary and fixed. By the definition of image, this means  $\exists x \in C$  such that  $F(x) = y$ . Let such an  $x$  be given.

By the definition of  $C$ , we know  $0 < x < 100$ . By the definition of  $F$ , we know

$F(x) = \frac{9}{5} x + 32$ . Since multiplying by a positive number and adding to both sides preserves inequalities, we can deduce that

$$
\frac{9}{5} \cdot 0 + 3 2 <   F (x) <   \frac{9}{5} \cdot 1 0 0 + 3 2
$$

and, simplifying, this tells u

$$
3 2 <   F (x) <   2 1 2
$$

Thus,  $F(x) \in S$ , i.e.  $y \in S$ . Therefore,  $\operatorname{Im}_F(C) \subseteq S$ .

Second, we'll prove  $S \subseteq \operatorname{Im}_F(C)$ . (In other words, we'll prove that every element of  $S$  is actually "achieved" by the function  $F$  somehow. This amounts to proving an existential claim, i.e. that some element of the domain exists.)

Let  $s \in S$  be arbitrary and fixed. By the definition of  $S$ , we know that  $s \in \mathbb{R}$  and  $32 < s < 212$ . We need to prove that  $\exists c \in C \cdot F(c) = s$ .

(By doing some scratch work on the side, that you can work through on your own, we came up with the following idea. Just set an expression equal to  $s$  and solve for  $c \ldots$ )

Define  $c = \frac{5}{9} (s - 32)$

Let's show  $c \in C$ . By using the information we have about  $s$  and manipulating the inequalities, we observe that

$$
\begin{array}{l} 3 2 <   s <   2 1 2 \Longrightarrow 0 <   s - 3 2 <   1 8 0 \\ \Longrightarrow 0 <   \frac{5}{9} (s - 3 2) <   \frac{5}{9} \cdot 1 8 0 = 1 0 0 \\ \Longrightarrow 0 <   c <   1 0 0 \\ \end{array}
$$

Since  $c\in \mathbb{R}$ , certainly, this shows that  $c\in C$

Next, let's show that  $F(c) = s$ . We observe that

$$
\begin{array}{l} F (c) = \frac{9}{5} c + 3 2 = \frac{9}{5} \left(\frac{5}{9} (s - 3 2)\right) + 3 2 \\ = (s - 3 2) + 3 2 = s \\ \end{array}
$$

Together, this shows that  $s \in \operatorname{Im}_F(C)$ , as well. Thus,  $S \subseteq \operatorname{Im}_F(C)$ .

Overall, by a double-containment argument, we conclude that  $S = \operatorname{Im}_F(C)$ .

The second half of our proof is certainly the harder part, and this is generally true of proofs like this. In coming up with a candidate  $c$ , we essentially have to "undo" the process that the function  $F$  does and find an input  $c$  for our given output  $s$ . In a case like this, where the function is a numerical/arithmetical operation on real numbers, the best route is to set up the desired equality, like

$$
\frac{9}{5} c + 3 2 = s
$$

and solve the equality for  $c$ . This function is linear, so this process only produces one such  $s$  but, in general, we might expect multiple values of  $s$  to work. Ultimately, we only need one working value to complete this part of the proof, so we can just select any one that works and use that as our claim. Sometimes, though, this makes it harder to find such a value. It all depends on the example at hand. Other times, we might be working with functions that aren't defined on sets of numbers, and we have to use some more abstract insight to come up with a candidate element. Again, this all depends on the given situation, and with practice, you'll become much better at it!

Oh right, we asked what this image represents! Since the domain represented the temperatures, in degrees Celsius, at which water is a liquid, the image represents the temperatures, in degrees Fahrenheit, at which water is a liquid.

Let's look at another example of proving the image of a function is a particular set.

Example 7.3.4. Define  $f:\mathbb{R}\to \mathbb{R}$  by

$$
\forall x \in \mathbb {R}. f (x) = \frac{x^{2}}{1 + x^{2}}
$$

Let's determine the image,  $\operatorname{Im}_f(\mathbb{R})$ , and prove our claim!

Here, again, we must use some outside strategies and intuition to identify the image first. Using some techniques from calculus or algebra, we could plot the graph of this function and try to guess the image. Try that if you'd like. You'll end up with this graph:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/f7336c44661fa9f19bbe1d3d64682b5368902c0f6d3a3a3a4f2027f3ba9b1825.jpg)

We can also recognize that the denominator is greater than the numerator and so, as  $x$  gets larger and larger, those two quantities get closer and closer together, relatively speaking. (That is, their ratio approaches 1.) Also, both terms are noneffective, since they involve squares, so their ratio is at least 0. In any event, we can piece our observations together and make the following claim:

Define the set

$$
T = \{y \in \mathbb {R} \mid 0 \leq y <   1 \}
$$

We claim that  $T = \operatorname{Im}_f(\mathbb{R})$ .

We now follow the same type of strategy we employed in the previous example. Before we do so, let's remember that the second part of that proof—showing the claimed set is a subset of the image—was the harder part, and try to anticipate what will happen there.

In that part, we will be working with an arbitrary element  $y \in T$  and we will want to find an element  $x \in \mathbb{R}$  that satisfies  $f(x) = y$ . To find such an  $x$ , let's set up the equality and try to solve for  $x$ :

$$
\begin{array}{l} y = \frac{x^{2}}{1 + x^{2}} \iff (1 + x^{2}) y = x^{2} \\ \Longleftrightarrow y + y x^{2} - x^{2} = 0 \\ \Longleftrightarrow (y - 1) x^{2} = - y \\ \Longleftrightarrow x^{2} = \frac{y}{1 - y} \\ \end{array}
$$

Now what? Can we be assured  $\frac{y}{1 - y} \in \mathbb{R}$ , even? Can we be assured it's nonnegative, so that there exists such an  $x$ ? What about the fact that there might be two roots? Think about these potential issues and try to write your own version of this proof before reading on for ours!

Proof. First, let's prove  $\operatorname{Im}_f(\mathbb{R}) \subseteq T$ .

Let  $y \in \operatorname{Im}_f(\mathbb{R})$  be arbitrary and fixed. By the definition of image, we know  $\exists x \in \mathbb{R}$  such that  $f(x) = y$ . Let such an  $x$  be given.

Since  $x \in \mathbb{R}$ , we know  $x^2 \geq 0$  and  $0 < x^2 + 1$ . We can then deduce that  $0 < \frac{1}{x^2 + 1}$ .

By multiplying the previous two inequalities—which we can do since all the terms are non-negative—we may deduce that  $0 \leq \frac{x^2}{1 + x^2}$ .

Next, we know that  $0 \leq x^{2} < x^{2} + 1$ , so  $\frac{x^2}{1 + x^2} < 1$ , as well. (Note: why was it important to point out that  $x^{2} \geq 0$ ? What can go wrong there?)

This shows that  $0 \leq \frac{x^2}{1 + x^2} < 1$ . Since  $y = f(x) = \frac{x^2}{1 + x^2}$ , this is equivalent to saying  $0 \leq y < 1$ .

Thus,  $y \in T$ , and so  $\operatorname{Im}_f(\mathbb{R}) \subseteq T$ .

Second, let's prove  $T \subseteq \operatorname{Im}_f(\mathbb{R})$ .

Let  $y \in T$  be arbitrary and fixed. This means  $y \in \mathbb{R}$  and  $0 \leq y < 1$ .

To show  $y \in \mathrm{Im}_f(\mathbb{R})$ , as well, we must produce an  $x$  such that  $f(x) = y$ .

We claim that  $x = \sqrt{\frac{y}{1 - y}}$  works.

Notice that  $y \geq 0$ , and  $y < 1$  implies  $-y > -1$  so  $1 - y > 0$ . Thus,  $\frac{y}{1 - y} \geq 0$  and so  $x \in \mathbb{R}$  is well-defined as a square root, and  $x$  belongs to the domain  $\mathbb{R}$ .

Next, notice that  $x^{2} = \frac{y}{1 - y}$ , and so

$$
f (x) = \frac{x^{2}}{1 + x^{2}} = \frac{\frac{y}{1 - y}}{1 + \frac{y}{1 - y}} = \frac{\frac{y}{1 - y}}{\frac{(1 - y) + y}{1 - y}} = \frac{\frac{y}{1 - y}}{\frac{1}{1 - y}} = \frac{y}{1 - y} \cdot \frac{1 - y}{1} = \frac{y}{1} = y
$$

This shows that  $y \in \operatorname{Im}_f(\mathbb{R})$ , and so  $T \subseteq \operatorname{Im}_f(\mathbb{R})$ .

Overall, by a double-containment proof, we conclude that  $T = \operatorname{Im}_f(\mathbb{R})$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/1cf212b9f88d63309bb1761cce9ef5741933d92117ea51407fc2192ddcf611e4.jpg)

Notice how we addressed the issues discussed before the proof. Yes, two potential  $x$  values existed that would work (namely, the + and - square roots) but we only needed one, so we just picked one (the positive one) and ran with it.

(Questions: What if this function was defined only on the nonnegative real numbers? What about just the negative real numbers? How might that restriction affect our choice?)

Example 7.3.5. Consider the function  $p:\mathbb{N}\times \mathbb{N}\to \mathbb{N}$  defined by

$$
\forall (a, b) \in \mathbb {N} \times \mathbb {N}. p (a, b) = a b + a
$$

What is  $\operatorname{Im}_p(\mathbb{N} \times \mathbb{N})$ ?

This example might feel a little trickier because the domain is a Cartesian product of sets; that is,  $p$  inputs an ordered pair of natural numbers and outputs a single natural number. A good approach in a situation like this is to just start plugging in some values and seeing what happens. Consider the following table of values as a way to get started, where the left column indicates values of  $a$ , the top row indicates values of  $b$ , and the table entries are the values of  $p(a, b)$ .

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td></tr><tr><td>2</td><td>4</td><td>6</td><td>8</td><td>10</td><td>12</td></tr><tr><td>3</td><td>6</td><td>9</td><td>12</td><td>15</td><td>18</td></tr><tr><td>4</td><td>8</td><td>12</td><td>16</td><td>20</td><td>24</td></tr><tr><td>5</td><td>10</td><td>15</td><td>20</td><td>25</td><td>30</td></tr></table>

It looks like every natural number is "achieved" by the function  $p$ , except for 1. Specifically, look at the top row of the array of values: there are all the natural numbers except 1. Let's use this insight in the following proof.

Proof. Let  $V = \mathbb{N} - \{1\}$ . We claim  $V = \operatorname{Im}_p(\mathbb{N} \times \mathbb{N})$ .

First, we prove  $\operatorname{Im}_p(\mathbb{N} \times \mathbb{N}) \subseteq V$ . Let  $n \in \operatorname{Im}_p(\mathbb{N} \times \mathbb{N})$  be arbitrary and fixed.

This means  $n \in \mathbb{N}$  and  $\exists (a, b) \in \mathbb{N} \times \mathbb{N}$  such that  $p(a, b) = n$ . Let such  $(a, b)$  be

given.

This means  $n = ab + a$ . Since  $a, b \geq 1$ , then  $ab \geq 1$  and so  $n = ab + a \geq 2$ . By the definition of  $V$ , this shows that  $n \in V$ .

Thus,  $\operatorname{Im}_p(\mathbb{N} \times \mathbb{N}) \subseteq V$ .

(Try to write the next half of the proof before reading on and seeing ours!)

Second, we prove  $V \subseteq \operatorname{Im}_p(\mathbb{N} \times \mathbb{N})$ . Let  $v \in V$  be arbitrary and fixed.

This means  $v \in \mathbb{N}$  and  $v \geq 2$ . Define  $(a, b) = (v - 1, 1)$ .

Notice that  $v - 1 \geq 1$ , so  $v - 1 \in \mathbb{N}$  and thus  $(a, b) \in \mathbb{N} \times \mathbb{N}$ .

Also, notice that

$$
p (a, b) = p (v - 1, 1) = (v - 1) \cdot 1 + 1 = v - 1 + 1 = v
$$

Thus,  $p(a,b) = v$ , and so  $(a,b)\in \mathrm{Im}_p(N\times \mathbb{N})$ . Therefore,  $V\subseteq \operatorname{Im}_p(\mathbb{N}\times \mathbb{N})$

By a double-containment proof, we have shown  $V = \operatorname{Im}_p(\mathbb{N} \times \mathbb{N})$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/03289f235e7385eed8076c2cdf2d790fc8ca21cd34c8920c7edbf0eaeec3a44f.jpg)

# 7.3.2 Proofs about Images

You might have observed the following fact by playing around with some of the examples we have seen. Either way, we can make state and prove this claim by working with the definition of image. Notice that it is a claim about an arbitrary function; it holds no matter what  $f$  is!

Proposition 7.3.6. Let  $A, B$  be sets. Let  $f: A \to B$  be a function. Let  $S, T \subseteq A$ . Then,

$$
\operatorname{Im}_{f} (S \cap T) \subseteq \operatorname{Im}_{f} (S) \cap \operatorname{Im}_{f} (T)
$$

Proof. Let  $z \in \operatorname{Im}_f(S \cap T)$  be arbitrary and fixed. This means  $\exists a \in S \cap T$  such that  $f(a) = z$ . Let such an  $a$  be given.

Since  $a \in S \cap T$ , we know  $a \in S$  and  $a \in T$ .

Thus,  $z \in \operatorname{Im}_f(S)$  and  $z \in \operatorname{Im}_f(T)$ , by the definition of image.

We deduce that  $z \in \operatorname{Im}_f(S) \cap \operatorname{Im}_f(T)$ , by the definition of intersection.

This shows the desired set containment.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/5a217fd38a883366501b5e60644d7826c7bf57f7868139319bd1fbde871861f6.jpg)

Why didn't we claim an equality here? It turns out that equality need not hold, in fact! That is, there exists at least one function such that the reverse containment—namely,  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T) \subseteq \operatorname{Im}_f(S \cap T)$ —is False. We will provide an example of such a function below.

(You should try to come up with an example of a function where this reverse containment does hold. Together, we will have shown that one cannot make a conclusion that necessarily holds about this containment!)

We will use a schematic diagram to come up with an example with the desired properties. We will then use this to formally define a function and state its properties, pointing out how they match what will be established in our claim.

We want to point out that employing this technique is perfectly valid, as long as you go back and write down a formal definition afterwards. Turning in just a schematic diagram as a "proof" is not rigorous enough, but this can certainly help guide your intuition into producing fruitful ideas for a proof!

Furthermore, keep in mind that there is no need to construct the most complicated or interesting counterexample in situations like this. If you're trying to disprove a universally-quantified statement, you just need one example that works! In particular, don't feel like you need to define a function that works with numbers, using some formula. Sometimes, this will actually make your job much harder! It's typically the case that a counterexample can be made using sets with just a few (i.e. two or three) elements each.

Example 7.3.7. We claim that there exist sets  $A, B, S, T$  and a function  $f: A \to B$  such that  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T) \not\subseteq \operatorname{Im}_f(S \cap T)$ . Let's figure out how to construct such an example. Based on our comment above, we are going to try to make an example where the sets involve three or so elements. Let's get the process started by taking  $A$  to be  $\{1, 2, 3\}$  and defining  $f(1)$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/9388c812342415daa23437b5010cd2b202dcb51cd2a7843e8cd7a74b49122dd4.jpg)

Now, just to have a definition in hand, let's choose  $S = \{1,2\}$ . It seems like it will be more reasonable to work with 2 elements in  $S$ , so we'll make that choice. Also, it seems like we should make  $f(1) \neq f(2)$ . Otherwise,  $\operatorname{Im}_f(S)$  would contain only one element, and there would have been no point in making  $S$  have two elements. So let's define  $f(2)$ , as well:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/5a643ee946fee36d33152c9edf9adbb8182c3335b85533c9c24b6e46990540b0.jpg)

Now, we need to choose  $T$ . It will be interesting to have  $S \cap T \neq \emptyset$ , but it would be hard to handle (perhaps) if  $T \supseteq S$ . So, let's say  $T = \{2,3\}$ . Then, we just need to choose  $f(3)$ . In considering each of these cases, look at the schematic diagram above, and imagine drawing an arrow to represent  $f(3)$ .

- What if  $f(3) = f(2) = \square$ ?

In this case,  $\operatorname{Im}_f(T) = \{\square\}$ , so  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T) = \{\square\}$ . But  $\operatorname{Im}_f(S \cap T) = \{\square\}$ , as well! This doesn't work.

- What if  $f(3)$  is something else, like  $f(3) = \odot$ ?

This doesn't work either! We will have  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T) = \{\square\} = \operatorname{Im}_f(S \cap T)$ .

- What if  $f(3) = f(1) = \star$ ?

It looks like this works!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/3117dc4b953f56bb1784003341c116112081e38e7f9c86fbc516091a4dd6863c.jpg)

We have made it so that  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T)$  is a strict superset of  $\operatorname{Im}_f(S \cap T)$ .

Look back over our construction, and see if you understand our thought process. What were the restrictions we had to conform to? Where did we have freedom of choice? What did we decide to do?

We want to point out that this is absolutely not the only such example, though! Try to come up with others!

Right now, all we have left to do is take the final diagram we constructed and use it to define an example and then prove it works. Here we go!

Proof. Define  $A = \{1,2,3\}$  and  $B = \{\star ,\square \}$

Define  $f: A \to B$  by setting  $f(1) = \star$ , and  $f(2) = \square$ , and  $f(3) = \star$ .

Define  $S = \{1,2\}$  and  $T = \{2,3\}$ .

Observe that  $S \cap T = \{2\}$ , so  $\operatorname{Im}_f(S \cap T) = \{f(2)\} = \{\square\}$ .

However, observe that  $\operatorname{Im}_f(S) = \operatorname{Im}_f(T) = B$ , so  $\operatorname{Im}_f(S) \cap \operatorname{Im}_f(T) \neq \{\square\}$ .

Since  $\star \in \operatorname{Im}_f(S) \cap \operatorname{Im}_f(T)$  but  $\star \notin \operatorname{Im}_f(S \cap T)$ , this proves our claim.

We have now seen an example of how to prove a claim about arbitrary functions and images, as well as how to construct a specific counterexample to disprove a claim. In the exercises, you will be asked to solve similar problems. Sometimes, you will need to figure out whether a claim is True or not. (Here, we told you which claim was valid beforehand.) We recommend trying one of two things: (1) Try to prove the claim, and see if it breaks down somewhere, or (2) Try to construct a counterexample, and see if you have trouble doing so. If you complete either task … well, hey, you figured it out! But if you're struggling, it might help you figure out what's really going on.

Specifically, you will be asked to examine the claim we discussed above, but with " $\cup$ " instead of " $\cap$ ". What do you think will happen? Go ahead and try it!

# 7.3.3 Pre-Image: Definition and Examples

A natural question you might have now is: What about going the other way? Can we take a subset of the codomain and identify the elements whose outputs "land" in that set? Of course! This next definition provides us a term for this notion, and you'll notice many similarities with the definition of image.

# Definition

Definition 7.3.8. Let  $A, B$  be sets and let  $f: A \to B$  be a function. Let  $Y \subseteq B$ .

The pre-image of  $Y$  under the function  $f$  is written and defined as

$$
\operatorname{Pr eI m}_{f} (Y) = \left\{a \in A \mid f (a) \in Y \right\}
$$

That is, the pre-image of  $Y$  under  $f$  is the set of all "inputs" that produce an "output" in  $Y$ .

(We will sometimes abbreviate the notation as just  $\operatorname{PreIm}(Y)$ , when the function is clearly identified and unambiguous, and consequently refer to the set as just "the pre-image of  $Y$ ", instead of "the pre-image of  $Y$  under  $f$ ).)

Think about this first: What is  $\operatorname{PreIm}_f(B)$ , where  $B$  is the entire codomain? Look back at the definition: this is the set of all inputs (in  $A$ ) whose outputs "land" in  $B$ . That's all of  $A$ , of course, since  $f$  is a well-defined function! Accordingly, we will really only be working with sets  $Y \subset B$ , since those cases are more interesting.

# Examples

Example 7.3.9. This first example uses the same function we defined in the last section when we discussed images. We'll show you the schematic diagram again, but spare you from re-defining all the details of the function. (See Example 7.3.2 for the details.)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/9fade92f609351fb13ecc4156cf20ce71163222fbc8e1a24ec3b50387ed65284.jpg)

Define  $Z_{1} = \{1,2,3\}$  and  $Z_{2} = \{2,3,4\}$  and  $Z_{3} = \{4,5,6\}$ .

Let's identify the following pre-images and explain them.

(1)  $\operatorname{PreIm}_g(\{1\}) = d$

This is because  $g(d) = 1$  and no other  $x \in A$  satisfies  $g(x) = 1$ .

(Note: We need to use set brackets here. "PreIm $_g$  (1)" would make no sense.)

(2)  $\operatorname{PreIm}_g(\{4\}) = \emptyset$

This is because no  $x \in A$  satisfies  $g(x) = 4$ .

(3)  $\operatorname{PreIm}_g(Z_1) = \{a, b, c, d\}$

This is because  $g(a) = 2$ ,  $g(b) = g(c) = 3$ , and  $g(d) = 1$ , but no other  $x \in A$  satisfies  $g(x) \in Z_1$ .

(4)  $\operatorname{PreIm}_g(Z_2) = \{a, b, c\}$

This is because  $g(a) = 2$  and  $g(b) = g(c) = 3$ , but no other  $x \in A$  satisfies  $g(x) \in Z_2$ .

(5)  $\operatorname{PreIm}_g(Z_3) = \{e\}$

This is because  $g(e) = 6$ , but no other  $x \in A$  satisfies  $g(x) \in Z_3$ .

(6)  $\operatorname{PreIm}_g(\{5\}) = \varnothing$

This is because  $\forall x\in A,g(x)\neq 5$

Example 7.3.10. Let  $f: \mathbb{R} \to \mathbb{R}$  be the function defined by  $\forall x \in \mathbb{R}$ .  $f(x) = x^2$ .

Let's identify a few pre-images with this function. We will let you figure out why our claims are valid, as well as how to explain and prove them, this time!

(1)  $\operatorname{PreIm}_f(\{1\}) = \{-1, 1\}$  
(2)  $\operatorname{PreIm}_f(\{y \in \mathbb{R} \mid y < 0\}) = \varnothing$  
(3)  $\operatorname{PreIm}(\{y\in \mathbb{R}|y\geq 0\}) = \mathbb{R}$  
(4)  $\operatorname{PreIm}(\{y \in \mathbb{R} | 0 < y < 1\}) = \{x \in \mathbb{R} | -1 < x < 1\}$

# 7.3.4 Proofs about Pre-Images

Notice that the following claim is one of equality. Compare this to Proposition 7.3.6, which has a similar statement about images but it is only a set containment. Interesting, right?

Proposition 7.3.11. Let  $A, B$  be sets. Let  $f: A \to B$  be a function. Let  $X, Y \subseteq B$ . Then,

$$
\operatorname{Pr eI m}_{f} (X \cap Y) = \operatorname{Pr eI m}_{f} (X) \cap \operatorname{Pr eI m}_{f} (Y)
$$

Notice how the proof below appeals directly to the formal definition of preimages. We will jump right in and prove both parts. The exercises will ask you to investigate this claim with " $\cup$ " instead of " $\cap$ ".

Proof. Let  $x \in \operatorname{PreIm}_f(X \cap Y)$  be arbitrary and fixed.

By the definition of pre-image, this means  $f(x) \in X \cap Y$ . Accordingly,  $f(x) \in X$  and  $f(x) \in Y$ .

Since  $f(x) \in X$ , this means that  $x \in \operatorname{PreIm}_f(X)$  (by the definition of preimage). Similarly, since  $f(x) \in Y$ , this means that  $x \in \operatorname{PreIm}_f(Y)$ .

Thus, by the definition of intersection, we can deduce that  $x \in \operatorname{PreIm}(X) \cap \operatorname{PreIm}(Y)$ .

This shows  $\operatorname{PreIm}(X \cap Y) \subseteq \operatorname{PreIm}(X) \cap \operatorname{PreIm}(Y)$ .

Next, let  $y \in \operatorname{PreIm}(X) \cap \operatorname{PreIm}(Y)$  be arbitrary and fixed.

By the definition of pre-image, this means  $y \in \operatorname{PreIm}_f(X)$  and  $y \in \operatorname{PreIm}_f(Y)$ .

Since  $y \in \operatorname{PreIm}_f(X)$ , we can deduce that  $f(y) \in X$ , by the definition of preimage. Similarly, since  $y \in \operatorname{PreIm}_f(Y)$ , we can deduce that  $f(y) \in Y$ .

By the definition of intersection, this tells us  $f(y) \in X \cap Y$ . Then, by the definition of pre-image, this tells us  $y \in \operatorname{PreIm}(X \cap Y)$ .

This shows  $\operatorname{PreIm}(X \cap Y) \supseteq \operatorname{PreIm}(X) \cap \operatorname{PreIm}(Y)$ .

By a double-containment proof, we have proven the claim.

You might read through this and think, "How does one come up with a proof like this?" Well, there isn't a whole lot of ingenuity behind a result like this. All we did was appeal directly to definitions. Everything fell into place from there.

If you find yourself stuck while working on a problem, or you're just unsure of where to start …just write down the relevant definitions. Try to apply them to the statement you're trying to prove. See what happens!

# A Proof with Pre-Images and Images

Let's work on one result that involves both of the concepts we have introduced in this section. We will prove one containment and ask you to disprove the other one in the exercises.

Proposition 7.3.12. Let  $A, B$  be sets. Let  $f: A \to B$  be a function. Let  $Y \subseteq B$ . Then,

$$
\operatorname{Im}_{f} \big (\operatorname{Pr e} \operatorname{Im}_{f} (Y) \big) \subseteq Y
$$

Proof. Let  $b \in \mathrm{Im}_f\big(\mathrm{Pre}\mathrm{Im}_f(Y)\big)$  be arbitrary and fixed.

By the definition of image, this means  $\exists a \in \operatorname{PreIm}_f(Y)$ .  $f(a) = b$ . Let such an  $a$  be given.

Since  $a \in \operatorname{PreIm}_f(Y)$ , this means  $f(a) \in Y$ , by the definition of pre-image.

Since  $b = f(a)$  and  $f(a) \in Y$ , this means  $b \in Y$ .

This proves the claim.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/fcd5665ce7cbee9379f4632944da013bb2ccd929c1dbd4bb3a377c8ffb4a8b36.jpg)

# 7.3.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What are the differences between image and pre-image?  
(2) Suppose  $f: A \to B$  is a function. What is  $\operatorname{PreIm}_f(B)$ ?  
(3) Suppose  $g: \mathbb{R} \to \mathbb{R}$  is a function. Why is the expression  $\operatorname{Im}_g(0)$  not a proper statement? What do you think the writer of such an expression meant?  
(4) Say  $f: A \to B$  is a function and  $Y \subseteq B$ . What does it mean if  $\operatorname{PreIm}_f(B) = \varnothing$ ? Is this possible?  
(5) Say  $f: A \to B$  is a function and  $X \subseteq A$ . What does it mean if  $\operatorname{Im}_f(A) = \varnothing$ ? Is this possible?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Let  $h: \mathbb{R} - \{-1\} \to \mathbb{R}$  be defined by  $\forall x \in \mathbb{R} - \{-1\}$ .  $h(x) = \frac{x}{1 + x}$ .

Prove that  $\operatorname{Im}_h(\mathbb{R} - \{-1\}) = \mathbb{R} - \{1\}$ .

Then, define  $P = \{y\in \mathbb{R}\mid y > 1\}$  and  $U = \{y\in \mathbb{R}\mid y > - 1\}$

Prove that  $\operatorname{PreIm}_h(P) = U$ .

(2) Let  $f: A \to B$  be a function. Let  $S, T \subseteq A$ . For each of the following claims, prove it must hold, or disprove it by finding a counterexample.

(a)  $\operatorname{Im}_f(S \cup T) \subseteq \operatorname{Im}_f(S) \cup \operatorname{Im}_f(T)$  
(b)  $\operatorname{Im}_f(S \cup T) \supseteq \operatorname{Im}_f(S) \cup \operatorname{Im}_f(T)$

(3) Let  $f: A \to B$  be a function. Let  $Y, Z \subseteq B$ . For each of the following claims, prove it must hold, or disprove it by finding a counterexample.

(a)  $\operatorname{PreIm}_f(Y \cup Z) \subseteq \operatorname{PreIm}_f(Y) \cup \operatorname{PreIm}_f(Z)$  
(b)  $\operatorname{PreIm}_f(Y \cup Z) \supseteq \operatorname{PreIm}_f(Y) \cup \operatorname{PreIm}_f(Z)$

(4) Look back at Proposition 7.3.12. Consider the reverse containment:

$$
\operatorname{Im}_{f} \left(\operatorname{Pr e} \operatorname{Im}_{f} (Y)\right) \supseteq Y
$$

Disprove the claim that this holds for any function  $f: A \to B$  and any  $Y \subseteq B$  by constructing a specific counterexample and proving that it works.

# 7.4 Properties of Functions

# 7.4.1 Surjective (Onto) Functions

You might be wondering something by now … If we can identify the image of the domain under a given function, why bother with a codomain that's any "larger" than that set? Sure  $f: \mathbb{R} \to \mathbb{R}$  defined by  $f(x) = x^2$  is a fine function, but changing the codomain to just the noneffective real numbers doesn't really affect anything. It might even make it better, because nothing in the codomain is "missed" by the function! If you're thinking this way, then you have anticipated our next definition, which encapsulates precisely this property of a function: when the codomain and the image of the domain are the same set.

# Definition

Definition 7.4.1. Let  $A, B$  be sets and let  $f: A \to B$  be a function. We say  $f$  is a surjective function if and only if  $\operatorname{Im}_f(A) = B$ .

Equivalently, we just say "  $f$  is surjective" (adjunctival form), or that "  $f$  is a surjection" (nounal form).

(The word "onto" is a fairly commonly used synonym for this term, so we will mention it here but won't use it again. This is just in case you've seen this word somewhere else.)

Referring back to the definition of image, we can state this property equivalently in the form of a quantified statement:

$$
f \text{is} \quad \text{su rj ec ti ve} \Longleftrightarrow \forall b \in B. \exists a \in A. f (a) = b
$$

That is,  $f$  is surjective if and only if every output has at least one corresponding input.

Think for a minute about why the second form of this definition is really the same as the first one. The property that  $\operatorname{Im}_f(A) = B$  is a statement about sets. We already know that, by definition,  $\operatorname{Im}_f(A) \subseteq B$  (nothing in the image can fall "outside" of the codomain), so this further property means that  $B \subseteq \operatorname{Im}_f(A)$ , as well. This is precisely what the second form of the definition says: every element of the codomain satisfies the defining property of being an element of the image.

Also, notice that nothing about the definition says the  $a$  we find to correspond to a  $b$  must be unique! All this property requires is that, for every  $b \in B$ , we can identify at least one  $a \in A$  that satisfies  $f(a) = b$ . There might be more than one, there might be exactly one. It doesn't matter, as long as there aren't none.

What does the property of being a surjection mean in terms of a schematic diagram? Since every element of the codomain is "hit" by the function, this means that every dot on the right-hand side of the schematic has an incoming arrow. (Remember: this type of heuristic language is fine to keep in mind—we are using it to help describe these concepts, after all—but this does not constitute a proof. Any sentence of this sort that you use in a proof should be accompanied by a more rigorous statement, using mathematical language and/or logical symbols.) Why would we care about such a property? In general, it can be difficult to declare exactly what the image of a function is, and we might (at first) be able to only declare what the codomain is. Proving that, in fact, all of the codomain elements are outputs of the function can be additional, helpful information!

# Negating the Definition

Typically, we will define a function and then ask: is this a surjection or not? If we believe a function is a surjection, we should prove that by showing the

codomain and image are the same set. If we believe it is not a surjection, we should prove that by finding a counterexample. Let's look at the logical negation of the statement that defines a surjective function:

$$
\neg (\forall b \in B. \exists a \in A. f (a) = b) \iff \exists b \in B. \forall a \in A. f (a) \neq b
$$

That is, to prove a function  $f$  is not a surjection, we must find an element of the codomain that is not an element of the image. This involves some scratch work and intuition to identify such a  $b$ . From there, we must somehow show that no possible  $a$  satisfies  $f(a) = b$ . We might argue this directly by taking an arbitrary  $a \in A$  and explaining why  $f(a) \neq b$ . Alternatively, we might argue this by contradiction: assuming that there is an  $a \in A$  such that  $f(a) = b$ , we seek a contradiction. Either of these approaches is reasonable, and they are logically equivalent.

# Examples

Let's see these techniques in action with a few examples. For some of them, we might be able to use some graphical intuition or try a few test cases to figure out a guess, but ultimately we need to settle in and prove some logical statements to validate our claims.

Example 7.4.2. Consider  $p: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  defined by  $p(a, b) = ab$ . Is  $p$  surjective? Yes, it is! It looks like we can just allow  $a$  to be 1, so that the function outputs whatever  $b$  is. Let's make this observation more formal with a proof:

Proof. Let  $n \in \mathbb{N}$  be arbitrary and fixed. Define  $(a, b) = (1, n)$ .

Notice that  $(1,n)\in \mathbb{N}\times \mathbb{N}$  and  $p(1,n) = 1\cdot n = n$

Since  $n$  was arbitrary, this shows  $p$  is surjective.

Example 7.4.3. Let  $C$  be the set of all cars in the United States. Let  $S$  be the set of all strings of letters and digits that are of length at most 7 (i.e. these are the potential strings you might see on a car's license plate).

Let  $f: C \to S$  be defined by inputting a car and outputting its license plate string. Is the function  $f$  a surjection?

No, definitely not! In case you weren't aware, curse words are disallowed on license plates! So certainly, there exist many strings of letters that you will never see on a license plate in the United States. (We'll let you provide some examples on your own …)

Because we have exhibited an element of  $S$  that is not an element of  $\operatorname{Im}_f(C)$  or, at least, you thought of an example—we have shown that  $f$  is not a surjection.

Example 7.4.4. Let  $d:\mathbb{N}\times \mathbb{N}\to \mathbb{Z}$  be the function defined by

$$
\forall (a, b) \in \mathbb {N} \times \mathbb {N}. d (a, b) = a - b
$$

Let's determine whether  $d$  is a surjection and prove our claim. We might start by trying some "small values" for the input variables  $a$  and  $b$ . In the table below, the left column is  $a$  and the top row is  $b$ , and the entries are  $d(a, b) = a - b$ :

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>1</td><td>0</td><td>-1</td><td>-2</td><td>-3</td><td>-4</td></tr><tr><td>2</td><td>1</td><td>0</td><td>-1</td><td>-2</td><td>-3</td></tr><tr><td>3</td><td>2</td><td>1</td><td>0</td><td>-1</td><td>-2</td></tr><tr><td>4</td><td>3</td><td>2</td><td>1</td><td>0</td><td>-1</td></tr><tr><td>5</td><td>4</td><td>3</td><td>2</td><td>1</td><td>0</td></tr></table>

It looks like all of the integers  $z \in \mathbb{Z}$  will appear in this table. However, they don't all appear in one particular row or column. Rather, it looks like all the non-negative integers appear in the first column, while all the non-positive integers appear in the first row. Let's use these observations to write a proof. We'll take an arbitrary integer  $z \in \mathbb{Z}$  and consider two cases; if  $z \geq 0$ , we will do one thing, and if  $z < 0$ , we will do something else. As long as we succeed in both cases, we will have proven that  $d$  is a surjection.

Proof. We claim  $d$  is a surjection. Let  $z \in \mathbb{Z}$  be arbitrary and fixed. WWTS  $\exists (a, b) \in \mathbb{N} \times \mathbb{N}$ .  $d(a, b) = z$ . To do this, we consider two cases:

(1) Suppose  $z \geq 0$ . Then define  $(a, b) = (z + 1, 1)$ .

Since  $z \geq 0$ , we know  $z + 1 \geq 1$  and so  $z + 1 \in \mathbb{N}$ . This guarantees  $(z + 1, 1) \in \mathbb{N} \times \mathbb{N}$ .

Also, notice that  $d(z + 1,1) = (z + 1) - 1 = z$ .

(2) Suppose  $z < 0$ . Then define  $(a,b) = (1, -z + 1)$ .

Since  $z < 0$ , we know  $-z > 0$  and so  $-z + 1 \geq 2$ , meaning  $-z + 1 \in \mathbb{N}$ . This guarantees  $(1, -z + 1) \in \mathbb{N} \times \mathbb{N}$ .

Also, notice that  $d(1, -z + 1) = 1 - (-z + 1) = z$ .

In either case, we are able to define  $(a,b)\in \mathbb{N}\times \mathbb{N}$ .  $d(a,b) = z$ . Since  $z\in \mathbb{Z}$  was arbitrary, this proves that  $d$  is surjective.

Example 7.4.5. Let  $g: \mathbb{R} - \{-1\} \to \mathbb{R}$  be the function defined by

$$
\forall x \in \mathbb {R}. g (x) = \frac{x}{1 + x}
$$

(Notice why we have removed  $-1$  from the domain. This ensures  $g$  is a well-defined function!)

Let's determine whether  $g$  is a surjection and prove our claim. As mentioned before, we can do some scratch work to figure out our claim: we could try plugging in some values of  $x$ , testing "extreme cases" by letting  $x$  get very close to  $-1$  or letting  $x$  grow larger and larger … All of this can help us plot a graph of the function, or we can just use some graphing software:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/2d678d587a1552987fd52dacaea580455a3a17483ba997742cc44981c139db09.jpg)

Regardless, none of this proves anything! What it does do is help us observe that this function  $g$  is not surjective. There seems to be a horizontal asymptote at  $y = 1$ . That is, the function  $g$  never "reaches" 1, but rather gets infinitely close. In terms of our new definition of surjectivity, this is decidedly a NO answer!

Try to prove this now. How can you show that the element  $-1 \in \mathbb{R}$  is not an element of the image  $\operatorname{Im}_g(\mathbb{R})$ ? Try it! Then read on for our proof.

We will actually present two proofs here, for you to compare and contrast. They both accomplish the same goal—showing  $g$  is not surjective—but one does so by a contradiction method and the other by a direct method (using cases). Which do you think is better? Did you come up with one of these? Which is easier to read? We have no definitive opinion on these questions; they are both equally valid proofs!

Proof 1 (Direct). Let  $x \in \mathbb{R} - \{-1\}$  be arbitrary and fixed. WWTS that  $g(x) \neq 1$ . We consider two cases:

- Suppose  $x > -1$ . This means  $x + 1 > 0$ , and so  $\frac{1}{x + 1} > 0$ . We also know  $x + 1 > x$  (which is true for every  $x \in \mathbb{R}$ ).

By multiplying this inequality by the positive term  $\frac{1}{x + 1}$ , we deduce that  $1 > \frac{x}{x + 1}$ . Certainly, then,  $g(x) = \frac{x}{x + 1} \neq 1$ .

- Suppose  $x < -1$ . This means  $x + 1 < 0$ , and so  $\frac{1}{x + 1} < 0$ . We also know  $x + 1 > x$ .

By multiplying this inequality by the negative term  $\frac{1}{x + 1}$  and switching the sign, we deduce that  $1 < \frac{x}{x + 1}$ . Certainly, then,  $g(x) = \frac{x}{x + 1} \neq 1$ .

In either case  $g(x) \neq 1$ . These cases cover all possibilities because  $x \in \mathbb{R} - \{-1\}$  was arbitrary (and we need not consider  $x = -1$ ). This shows

$$
1 \notin \operatorname{Im}_{g} (\mathbb {R} - \{- 1 \})
$$

so  $g$  is not a surjection.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/4e5486da9cf435ac1f6d2b730b89f8abcaaa83eb5a77c2d6b9eecd263895f387.jpg)

Notice that this first proof proves an interesting qualitative observation about the graph: that the function lies above the horizontal asymptote to the left of  $x = -1$  and above the asymptote to the right of  $x = -1$ .

Proof 2 (Contradiction). AFSOC that  $g$  is surjective. This means

$$
\forall y \in \mathbb {R}. y \in \operatorname{Im}_{g} (\mathbb {R} - \{- 1 \})
$$

In particular, then, we know  $1 \in \operatorname{Im}_g(\mathbb{R} - \{-1\})$ , so  $\exists x \in \mathbb{R} - \{-1\} \cdot g(x) = 1$ . Let such an  $x$  be given.

This means  $g(x) = \frac{x}{x + 1} = 1$ . Multiplying both sides, we find  $x = x + 1$ . Subtracting, we find  $0 = 1$ , clearly a contradiction

Therefore,  $1 \notin \operatorname{Im}_g(\mathbb{R} - \{-1\})$ , so  $g$  is not a surjection.

Notice that this second proof does prove that  $g$  is not a surjection, but it doesn't add any other information about how the function behaves (like the previous proof did).

Let's move on from surjections and talk about a closley related property of functions.

# 7.4.2 Injective (1-to-1) Functions

When trying to prove a function is surjective, we took an arbitrary element of the codomain and had to find at least one element of the domain that corresponded to the original element. Sometimes there is exactly one such element, sometimes there are many, and sometimes there are none. What we will do now is consider those functions that fall into the "exactly one" case. We won't be presuming here that functions are already surjective. Rather, we are imposing this condition: we want there to be no more than one input for any given output. There might be exactly one or there might be none, but there certainly aren't two or more. These types of functions are special enough that we give them a name.

# Definition

Definition 7.4.6. Let  $A, B$  be sets and let  $f: A \to B$  be a function. We say  $f$  is an injective function if and only if it has the property that

$$
\forall a_{1}, a_{2} \in A. a_{1} \neq a_{2} \Rightarrow f (a_{1}) \neq f (a_{2})
$$

Equivalently, we just say "  $f$  is injective" (adjunctival form), or that "  $f$  is an injection" (nounal form).

(The term "1-to-1"—sometimes written "1-1"—is a fairly commonly used synonym for this word, so we will mention it here but won't use it again. This is just in case you've seen this term somewhere else.)

In other words, this defining property requires that "distinct inputs yield distinct

outputs". Also, remembering that the contrapositive of a statement is logically equivalent, we can express this property as

$$
\forall a_{1}, a_{2} \in A. f (a_{1}) = f (a_{2}) \Rightarrow a_{1} = a_{2}
$$

This expresses the equivalent notion that "if two outputs are equal, they must come from the same input".

Think about how this definition conveys the notion we described above. Say we have an injective function  $f: A \to B$ , and let's say we are given an element  $b \in B$ . Does this definition say that there is at most one element  $x \in A$  such that  $f(x) = b$ ? What possibilities does the definition allow?

# Motivation

Let's motivate this by a particular application of functions. Think of a function as a code-word machine for you to send and receive secret messages with a friend. Your friend writes down a secret message, puts it in the encoder, and out pops a scrambled code that he sends to you. Later, you receive this scrambled code. You would really like to know that this code only came from at most one input phrase. What if you try to decode it and it comes out with both I HATE YOU and I LOVE YOU? What are you supposed to think then? Did your friend mean to sedn you both messages? What a terrible code system you've designed if both of those conflicting messages are encoded as the same scrambled message! In this context, it would be much nicer to have an encoding function where two distinct inputs can't possibly give the same output. This is presicely the defining property of being an injection.

# Negating the Definition

It might be helpful to think about the property of being an injection in terms of a schematic diagram, and in terms of the negation of the definition. Let's find that negation first:

$$
\begin{array}{l} \neg \left(\forall a_{1}, a_{2} \in A. a_{1} \neq a_{2} \Rightarrow f (a_{1}) \neq f (a_{2})\right) \\ \Longleftrightarrow \left(\exists a_{1}, a_{2} \in A. a_{1} \neq a_{2} \wedge f (a_{1}) = f (a_{2})\right) \\ \end{array}
$$

(Remember that the negation of  $P \Rightarrow Q$  is  $P \land \neg Q!$ )

This says a function is not injective if and only if we can find two distinct domain elements that output the same codomain element.

With that in mind, here are canonical examples of an injective and non-injective function:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/e9a9a09c4c732ae150d370bb03f840789ad44286b84c0694454c3b9970287042.jpg)  
injective

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/7e9f0706bd292ebe76209df458c453235db475dcd4c6f51582cc37c3ad25dc6e.jpg)  
NOT injective

The non-injective function has two distinct domain elements that output the same codomain element, whereas the injective function avoids this situation. It might feel a little odd to phrase a property in this kind of negative sense—a function is only injective if it doesn't have …—but this is actually somewhat common in mathematics. (We will even see this idea later on when we talk about infinite sets, which are just … sets that are not finite!) This negative formulation is easy enough to remember, and we can always relate it to another, positive formulation: an injective function has only 0 or 1 inputs corresponding to any given output.

# Examples

Let's think about how to prove/disprove the injectivity of functions. As you might guess, the first two versions of the definition given above are useful when trying to show a function is injective: take two distinct elements of the domain and show their outputs are different, or take two equal outputs and show they came from equal inputs. The negation can also be used to show a function is injective via a proof by contradiction. Also, the third version is useful when proving a function is not injective: a counterexample amounts to finding two distinct inputs with the same output.

Let's see these techniques in action with a few examples. In fact, we will use some of the same examples we looked at in the previous section about surjections!

Example 7.4.7. Consider  $p: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  defined by  $p(a, b) = ab$ . Is  $p$  injective?

By trying some particular values of  $(a,b)$ , we can see that  $p$  is definitely not an injection. Pick any number that has two different factorizations, like  $12 = 3 \cdot 4 = 2 \cdot 6$ . By letting  $(a,b) = (3,4)$  and  $(c,d) = (2,6)$ , we can easily prove this claim. But we can do this even more easily, by noting that the order of the coordinates of an element like  $(a,b)$  matters!

Proof. This function is not injective. Let  $(a,b) = (1,2)$  and  $(c,d) = (2,1)$ . Notice that  $(a,b) \neq (c,d)$  because  $1 \neq 2$ . Also, notice that  $p(a,b) = 1 \cdot 2 = 2$  and  $p(c,d) = 2 \cdot 1 = 2$ . Thus,  $p(a,b) = p(c,d)$ . This shows that  $p$  is not injective.

Example 7.4.8. Let  $C$  be the set of all cars in the United States. Let  $S$  be the set of all strings of letters and digits that are of length at most 7 (i.e. these are the potential strings you might see on a car's license plate).

Let  $f: C \to S$  be defined by inputting a car and outputting its license plate string. Is the function  $f$  an injection?

No, we don't think so! The same license plate string could appear on different cars that are registered in different states. Now, we don't have any examples of this on hand, so this isn't a totally formal proof, but hopefully you see the idea.

Could we amend the function definition to make it an injection? Sure, we could try! Consider also defining  $S$  to be the set of U.S. states. Let the function  $g: C \to L \times S$  be defined by inputting a car and outputting the order pair of that car's license plate string and home state. This will be an injection, because no two cars in the same state can have the same plate. (Again, this is not really a formal proof; we are just trying to illustrate the concept of injectivity with a non-numerical example.)

Example 7.4.9. Let  $d: \mathbb{N} \times \mathbb{N} \to \mathbb{Z}$  be the function defined by  $d(a, b) = a - b$ . Determine whether  $d$  is an injection and prove your claim.

It turns out  $d$  is not an injection! Notice that  $a - b = (a + 1) - (b + 1)$ . We can use this to find a counterexample:

Consider the pairs  $(2,1) \in \mathbb{N} \times \mathbb{N}$  and  $(3,2) \in \mathbb{N} \times \mathbb{N}$ . Notice that  $d(2,1) = 1$  and  $d(3,2) = 1$ . Since  $(2,1) \neq (3,2)$  and yet  $d(2,1) = d(3,2)$ , we conclude that  $d$  is not an injection.

Example 7.4.10. Let  $F:\mathcal{P}(\mathbb{N})\to \mathcal{P}(\mathbb{Z})$  be defined by

$$
\forall X \in \mathcal {P} (\mathbb {N}). F (X) = \bigcup_{a \in X} \{a, - a \}
$$

Do you see what this function does? (Can you explain why it's even a well-defined function?)

Let's show you a few examples to give you an idea:

$$
\begin{array}{l} F \big (\{1 \} \big) = \bigcup_{a \in \{1 \}} \{a, - a \} = \{- 1, 1 \} \\ F\big(\{1,3,5\} \big) = \bigcup_{a \in \{1,3,5 \}} \{a, - a \} = \{- 1,1 \} \cup \{- 3,3 \} \cup \{- 5,5 \} \\ = \{- 5, - 3, - 1, 1, 3, 5 \} \\ \end{array}
$$

$$
F (\varnothing) = \bigcup_{a \in \varnothing} \{- a, a \} = \varnothing
$$

$$
F (\mathbb {N}) = \mathbb {Z} - \{0 \}
$$

We claim that  $F$  is an injection. Think about how to prove this before reading our proof. In particular, think about the different strategies we might employ here, based on the formal definition of injectivity. Might one strategy be more fruitful than another?

Proof. WWTS  $F$  is an injection. Let  $X, Y \in \mathcal{P}(\mathbb{N})$ .

Suppose that  $X \neq Y$ . WWTS  $F(X) \neq F(Y)$ .

Since  $X \neq Y$ , we have two cases: either  $X \nsubseteq Y$  or  $Y \nsubseteq X$  (or both).

Suppose  $X \not\subseteq Y$ . This means  $\exists n \in X, n \notin Y$ . Let such an  $n$  be given.

Since  $n \in \{-n, n\}$  and  $n \in X$ , we see that  $n \in F(X)$ , by the definition of  $F$ .

However, since  $n \notin Y$ , we see that  $\forall a \in Y$ .  $n \notin \{-a, a\}$ . This follows because  $n \notin Y$ , as well as the fact that  $n \in \mathbb{N}$  and  $Y \subseteq \mathbb{N}$ , so  $\forall a \in Y$ .  $n \neq -a \in \mathbb{Z}$ .

Accordingly,  $n \notin F(Y)$ . This shows that  $F(X) \neq F(Y)$ .

In the other case, where  $Y \not\subseteq X$ , we can follow the exact same argument with the roles reversed (i.e. switching  $X$  and  $Y$  in every step). This shows that  $F(Y) \neq F(X)$ .

Together, we have shown that  $\forall X,Y\in \mathcal{P}(\mathbb{N})$  .  $X\neq Y\Rightarrow F(X)\neq F(Y).$  This shows  $F$  is an injection.

Think about how this proof might go if we used a different technique. Say we started by assuming  $X, Y \in \mathcal{P}(\mathbb{N})$  and that  $F(X) = F(Y)$ . Can we deduce that  $X = Y$ ?

# 7.4.3 Proof Techniques for Jections

Let's summarize the concepts of this section so far by presenting some proof templates. These can be used when you are trying to prove/disprove that a function is injective/surjective. We like using the shorthand "Jections" to refer to these two function properties together.

# Prove that  $f$  is surjective.

1. Let  $b \in B$  be arbitrary and fixed.  
2. Define  $a =$  
3. Show that  $a \in A$ .  
4. Show that  $f(a) = b$ .  
5. This shows that  $b \in \operatorname{Im}_f(A)$ . Thus,  $\operatorname{Im}_f(A) = B$ , so  $f$  is surjective.

# Prove that  $f$  is not surjective.

1.Define  $b =$  
2. Show that  $b \in B$ .  
3. Let  $a \in A$  be arbitrary and fixed.

# 7.4. PROPERTIES OF FUNCTIONS

4. Show that  $f(a) \neq b$ .

(Alternatively, suppose  $f(a) = b$  and find a contradiction.)

5. This shows that  $\exists b\in B.b\notin \operatorname{Im}_f(A)$ , so  $f$  is not surjective.

# Prove that  $f$  is injective.

1. Let  $x, y \in A$  be arbitrary and fixed.  
2. Suppose that  $f(x) = f(y)$ .  
3. Deduce that  $x = y$

# Alternatively:

1. Let  $x, y \in A$  be arbitrary and fixed.  
2. Suppose that  $x \neq y$ .  
3. Deduce that  $f(x) \neq f(y)$ .

# Prove that  $f$  is not injective.

1. Define  $x =$  ________ and define  $y =$  ________.  
2. Show that  $x \in A$  and  $y \in A$ .  
3. Show that  $x \neq y$ .  
4. Show that  $f(x) = f(y)$ .

# Prove that  $f$  is bijective.

1. Prove that  $f$  is injective.  
2. Prove that  $f$  is surjective.

# 7.4.4 Bijections

You might have guessed what we have been building towards here. Think about the two main properties of functions we just studied: surjectivity and injectivity. What happens when a function has both of these properties? What if a function has the property that, for every element of the codomain, there is at least one corresponding element in the domain (surjectivity) and there is also at most one such element (injectivity)? That's right: for every output, there is exactly one input! This is an incredibly nice property to have, and will be the foundation for our forthcoming discussion of cardinality (i.e. the size of a set). Let's make a definition and then discuss some examples.

# Definition

Definition 7.4.11. Let  $A, B$  be sets and let  $f: A \to B$  be a function. We say  $f$  is a bijective function if and only if  $f$  is both injective and surjective.

Equivalently, we just say "  $f$  is bijective" (adjunctival form), or that "  $f$  is a bijection" (nounal form).

We will sometimes say that  $f$  is a bijection between the sets  $A$  and  $B$ , instead of saying "from  $A$  to  $B$ ". (The reason for this will become clear in the next section!)

Notice that this definition is, logically speaking, an AND statement. For the moment, anyway, the only technique we have to prove a function is bijective is to just prove it is surjective and prove it is injective. Similarly, to prove a function is not bijective, we need to prove it is either not surjective or not injective. (It might be that both properties fail, but one such proof is sufficient to show a function is not bijective.) Rather than go over these same techniques (which are nicely summarized right before this section), we will just point out whether some of the examples we have seen thus far are bijections are not.

Example 7.4.12.

(a) Let  $p:\mathbb{N}\times \mathbb{N}\to \mathbb{N}$  be the function defined by  $p(a,b) = ab$

We proved that  $p$  is surjective but not injective, so it is not a bijection.

(b) Let  $d:\mathbb{N}\times \mathbb{N}\to \mathbb{Z}$  be the function defined by  $d(a,b) = a - b$

We proved that  $d$  is surjective but not injective, so it is not a bijection.

(c) Let  $g:\mathbb{R} - \{-1\} \to \mathbb{R}$  be the function defined by

$$
\forall x \in \mathbb {R}. g (x) = \frac{x}{1 + x}
$$

We proved that  $g$  is not surjective. (Specifically, we showed  $1 \notin \operatorname{Im}_g(\mathbb{R} - \{-1\})$ .) We will ask you in this section's exercises to prove that  $g$  is an injection, though. Together this means  $g$  is not a bijection.

However, consider defining  $h: \mathbb{R} - \{-1\} \to \mathbb{R} - \{1\}$  by the same "rule" as  $g$ , i.e.  $\forall x \in \mathbb{R} - \{1\}$ .  $h(x) = \frac{x}{1 + x}$ .

We asked you to prove in the exercises of Section 7.3.5 that this function satisfies  $\operatorname{Im}_h(\mathbb{R} - \{-1\}) = \mathbb{R} - \{1\}$ . This shows that  $h$  is a surjection.

Furthermore, we will ask you to prove in this section's exercises that a function defined in this way—by taking an injection, using the same "rule", and redefining the codomain to be the image—produces a bijection.

Together, all of this proves that  $h$  is a bijection from  $\mathbb{R} - \{-1\}$  to  $\mathbb{R} - \{1\}$ .

Example 7.4.13. Let's look at one new example, specifically chosen to preview some of the main ideas coming up ahead. Define  $E \subseteq \mathbb{N}$  to be the set of all even

natural numbers; that is,

$$
E = \{e \in \mathbb {N} \mid \exists k \in \mathbb {N}. e = 2 k \}
$$

Define the function  $d: \mathbb{N} \to E$  by  $d(n) = 2n$ . We claim  $d$  is a bijection.

Proof. First, let's prove  $d$  is a surjection. Let  $e \in E$  be given.

By the definition of  $E$ ,  $\exists k \in \mathbb{N}$  such that  $e = 2k$ . Let such a  $k$  be given.

This tells us  $d(k) = 2k = e$ . Since  $e$  was arbitrary, we conclude that  $d$  is a surjection.

Second, let's prove  $d$  is an injection. Let  $m, n \in \mathbb{N}$  and assume  $d(m) = d(n)$ .

This means  $2m = 2n$ . Canceling the 2s from both sides, we find that  $m = n$ . Thus,  $d$  is an injection.

Together, this proves that  $d$  is a bijection.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/5575cd702f4da8a5fbf4f9039485646d63dda08950d31df46d9198e143c0241a.jpg)

We'll motivate some future considerations by posing some questions: Does it seem a little strange to you that there is a bijection between  $\mathbb{N}$  and  $E$ , a set that is a proper subset of  $\mathbb{N}$ ? Is it always possible to find a bijection between a set and a subset of itself? Have we seen other examples of this situation before?

# Motivation

The main idea behind a bijection  $f: A \to B$  is that we can pair up the elements of  $A$  and  $B$  and identify them with each other, one by one. This idea follows from the definitions of both surjectivity and injectivity: every output has exactly one corresponding input. Furthermore, think more carefully about what we show in the proofs of such properties. In proving  $f$  is surjective, we show we can "move" from the codomain back to the domain in at least one way, and then in proving  $f$  is injective, we show that this is the only way to do it. In a sense, we are showing how to "undo" the function  $f$  and reverse its action. In fact, we are implicitly defining a new function from  $B$  back to  $A$ . Have you previously talked about the inverse of a function? That is precisely what we are rediscovering now! To make this notion of "moving back from the codomain to the domain" rigorous enough, we need to have a brief discussion about how to "combine" functions appropriately. Right after that, we will be able to give a precise definition of what we mean by the inverse of a function, and relate this to bijections. All of this happens in the next section.

# 7.4.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you

can confidently answer these before moving on will help your understanding and memory!

(1) Write down a definition of surjective in terms of an image. Then, write down a definition of surjective in terms of quantifiers.  
(2) Describe two different ways of proving that a function is injective.  
(3) Can a function be both injective and surjective? If so, give an example.  
(4) Can a function be neither injective nor surjective? If so, give an example.  
(5) Consider the following schematic diagrams. For each one, declare whether or not it is a function; and, if it is, declare whether or not it is (a) an injection and (b) a surjection.

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Suppose  $f: \mathbb{R} \to \mathbb{R}$  is an increasing function; that is, suppose

$$
\forall x, y \in \mathbb {R}. x <   y \Rightarrow f (x) <   f (y)
$$

Prove that  $f$  must be injective.

Then, prove that  $f$  need not be surjective by defining an increasing function that is not surjective.

(2) Let  $g: \mathbb{R} - \{-1\} \to \mathbb{R}$  be the function defined by

$$
\forall x \in \mathbb {R}. g (x) = \frac{x}{1 + x}
$$

Is  $g$  injective or not? Prove your claim.

(3) Give an example of a function  $f: \mathcal{P}(\mathbb{N}) \to \mathbb{N}$  that is surjective. Prove that it is.

(Hint: Be careful about the fact that  $\varnothing \in \mathcal{P}(\mathbb{N})$ . Also, consider looking at Section 5.5.2 for some inspiration …)

(4) Give an example of a function  $F: \mathbb{N} \to \mathcal{P}(\mathbb{N})$  that is injective. Prove that it is.

Then, prove that your function  $F$  is not surjective.

(Note: Yes, we are asking you to prove your function is not surjective without knowing what function you defined. We know we are right! You will learn about our trick later in this chapter …)

(5) Suppose  $f: A \to B$  and  $g: B \to C$  are surjective functions. Prove that  $g \circ f: A \to C$  is also surjective.  
(6) Let  $f: A \to B$  be an injective function. Define  $g: A \to \operatorname{Im}_f(A)$  by setting  $\forall x \in A$ .  $g(x) = f(x)$ . Prove that  $g$  is a bijection.  
(7) Define  $F:\mathbb{R}\times \mathbb{R}\to \mathbb{R}\times \mathbb{R}$  by  $F(x,y) = (x + y,2x - y)$ . Prove  $F$  is bijective.

(Hint: In your scratch work, you should try to solve a system of two equations. See Section 1.3.2 for some suggestions about how to do that.)

(8) Let  $A, B$  be sets. Let  $g: A \to B$  be an injection.

Let  $X \subseteq A$ . Let  $h: X \to B$  be the function defined by  $\forall x \in X$ .  $h(x) = g(x)$ .

(That is,  $h$  is defined by the same "rule" as  $g$ , but on a "restricted domain".)

Prove that  $h$  is also an injection.

# 7.5 Compositions and Inverses

# 7.5.1 Composition of Functions

# Motivation

Let's think about the schematic interpretation of functions for a moment. Imagine that we have a function  $f: A \to B$  and we also have a function  $g: B \to C$ , defined like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/f537fc0ae4308d0875abf0b65b9ed986123d6066429a0a1c1b4ab3cec294526f.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/f2981e80e4bc7e3bc6b99c10329f2e0765ce0c1c9aec1b432c6bf9876f1d58ee.jpg)

In a heuristic sense,  $f$  is like a "map" that gives us a particular route from elements of  $A$  to elements of  $B$ , while  $g$  is like a "map" from elements of  $B$  to elements of  $C$ . What would happen if we were to simply follow the "maps" one after the other? That is, let's combine the two by overlaying them,

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/203ba9319b16cd99ba47521bc6daa3e2b57b76d39661ef9fb0aa9aa88ebb86b1.jpg)

and then simply travel from  $A$  all the way to  $C$ , cutting out the middle man:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/baea9f53f0b318c383b6b0e2f2edca78f4241393ef57e9e38697c4945b268268.jpg)

This seems like a reasonable thing to do, right? Yes, of course it is! Whenever we have mathematical objects at our disposal, we're always curious about how we can reasonably combine them and manipulate them and generalize them. In the case of functions, we call this combination a composition of functions. You might notice that such a composition really only makes sense if the codomain of the "first" function and the domain of the "second" function are the same. This is incorporated in the following definition.

# Definition

Definition 7.5.1. Let  $A, B, C$  be sets, and let  $f: A \to B$  and  $g: B \to C$  be functions. Consider the function  $h: A \to C$  defined by

$$
\forall a \in A. h (a) = g (f (a))
$$

We say that  $h$  is the composition of  $g$  with  $f$  and we write  $h = g \circ f$ .

We also shorten this terminology and say  $h$  is "  $g$  composed with  $f$  ".

This incorporates all the ideas we mentioned above. It requires that the codomain of  $f$  (the "first" function applied) to be the domain of  $g$  (the "second" function applied).

Another intuitive idea is to think of a function as a machine or a black box. Elements of the domain go in and elements of the codomain come out. We don't necessarily know what the machine does; we only see what comes out. Now,

think of hooking up two machines, one for  $f$  and one for  $g$ ; take the output of  $f$ 's machine and plug it into  $g$ 's machine. What comes out is an element of  $C$ . We can take the work of these two machines and think of it as the work of one bigger machine. This is what the composition  $g \circ f$  does; it's one larger machine that takes the operations of two machines and does them in a specified order.

# Notation

Notice the ordering of the notation  $g \circ f$  and how it compares to the order in which we apply the functions:  $f$  comes first, and then  $g$ , i.e.  $g(f(a))$ . In words, we would read " $g(f(a))$ " as " $g$  of  $f$  of  $a$ ". In fact, if you find yourself having trouble remembering this order, here's a recommendation: read the "○" out loud as "after". Thus,  $h = g \circ f$  would mean "  $g$  after  $f$ ", because we take an element of  $a$ , apply  $f$  first, and then apply  $g$ .

It is also important to remember the notation of composed functions and to distinguish the function  $g \circ f$  itself from an application of the function  $g \circ f$  to some element  $x \in A$ . For instance, to write "  $g$  of  $f$  of  $x$ " using the "  $\circ$ " notation, we would write

$$
(g \circ f) (x)
$$

because we are "hitting" the element  $x$  with the function  $g \circ f$ . However, the following notation make no sense because it mixes up the ideas of functions and elements:

$$
g \circ f (x)
$$

Do you see the difference? The object  $f(x)$  is an element of  $B$ , the codomain of  $f$ . But  $g$  is a function. What does it mean to compose a function with an element of a set? This doesn't work. Be careful with this, in general! This distinction will be especially important when we have to compose several functions together, like  $(h \circ (g \circ k) \circ f)(z)$ , where  $z$  is an element of  $f$ 's domain, and  $f, g, h, k$  are functions.

# Examples

Example 7.5.2. Let  $C:\mathbb{R}\to \mathbb{R}$  be defined by

$$
\forall x \in \mathbb {R}. C (x) = x - 2 7 3. 1 5
$$

Let  $F:\mathbb{R}\to \mathbb{R}$  be defined by

$$
\forall x \in \mathbb {R}. F (x) = \frac{9}{5} x + 3 2
$$

The function  $C$  converts a temperature from degrees Kelvin to degrees Celsius. The function  $F$  converts from degrees Celsius to degrees Fahrenheit.

Then the function  $F \circ C$  converts from degrees Kelvin to degrees Fahrenheit

directly. We can compose the "rules" for the functions and find a formula for this direct conversion:

$$
\begin{array}{l} \forall x \in \mathbb {R}. (F \circ C) (x) = F (C (x)) = F (x - 2 7 3. 1 5) \\ = \frac{9}{5} \cdot (x - 2 7 3. 1 5) + 3 2 = \frac{9}{5} x - 4 5 9. 6 7 \\ \end{array}
$$

Example 7.5.3. Let  $f: \mathbb{R} \to \mathbb{Z}$  be the function defined by

$$
\forall x \in \mathbb {R}. f (x) = \lfloor x \rfloor
$$

(Recall that  $\lfloor x\rfloor$  is the floor of  $x$ : it is the largest integer  $z\in \mathbb{Z}$  that satisfies  $z\leq x$ . Let  $g:\mathbb{Z}\to \mathbb{N}$  be the function defined by

$$
\forall z \in \mathbb {Z}. g (z) = \left\{ \begin{array}{l l} - z & \text{if } z <   0 \\ z + 1 & \text{if } z \geq 0 \end{array} \right.
$$

Let's find  $g \circ f$ . Notice that whenever  $x \in \mathbb{R}$  satisfies  $x < 0$ , we will have  $\lfloor x \rfloor x < 0$ , as well. Similarly, whenever  $x \in \mathbb{R}$  satisfies  $x \geq 0$ , we will have  $\lfloor x \rfloor \geq 0$ . This tells us that the composition  $g \circ f$  will also be a piece-wise function:

$$
\forall x \in \mathbb {R}_{\bullet} (g \circ f) (x) = \left\{ \begin{array}{l l} - \lfloor x \rfloor & \text{if } x <   0 \\ \lfloor x \rfloor + 1 & \text{if } x \geq 0 \end{array} \right.
$$

Questions: Is this function injective? Surjective? Try to prove your claims!

Example 7.5.4. Define  $f: \mathbb{N} \to \mathbb{N}$  and  $g: \mathbb{N} \to \mathbb{N}$  and  $h: \mathbb{N} \to \mathbb{N}$  by

$$
\begin{array}{l} \forall n \in \mathbb {N}. f (n) = n + 3 \\ \forall n \in \mathbb {N}. g (n) = n^{2} \\ \forall n \in \mathbb {N}. h (n) = 2 n - 1 \\ \end{array}
$$

(Question: Are you sure these are well-defined functions? Why?)

We can find "rules" for the compositions  $g \circ f$  and  $h \circ f$ :

$$
\begin{array}{l} \forall n \in \mathbb {N}. (g \circ f) (n) = g (f (n)) = g (n + 3) = (n + 3)^{2} = n^{2} + 6 n + 9 \\ \forall n \in \mathbb {N}. (h \circ g) (n) = h (g (n)) = h \left(n^{2}\right) = 2 n^{2} - 1 \\ \end{array}
$$

We can then use these to find a rule for a further composition, like  $h \circ (g \circ f)$ :

$$
\begin{array}{l} \forall n \in \mathbb {N}. (h \circ (g \circ f)) (n) = h ((g \circ f) (n)) = h (n^{2} + 6 n + 9) \\ = 2 \left(n^{2} + 6 n + 9\right) - 1 = 2 n^{2} + 1 2 n + 1 7 \\ \end{array}
$$

Likewise, we can use these to find a rule for  $(h\circ g)\circ f$  ..

$$
\begin{array}{l} \forall n \in \mathbb {N}. \left(\left(h \circ g\right) \circ f\right) (n) = \left(h \circ g\right) (f (n)) = (h \circ g) (n + 3) \\ = 2 (n + 3)^{2} - 1 = 2 \left(n^{2} + 6 n + 9\right) - 1 \\ = 2 n^{2} + 1 2 n + 1 7 \\ \end{array}
$$

Look at that, they're the same rule! That is, we just proved that

$$
(h \circ g) \circ f = h \circ (g \circ f)
$$

in the sense of functions by showing that they yield the same output on every allowable input.

# Composition is Associative

There was nothing particularly special about the functions  $f, g, h$  used in the previous example. The result we obtained is actually true in general. The following theorem and its proof will show this. We are proving that function composition is associative. This means that whenever we have a string of compositions, we can move the parentheses around at will; we know that the order in which we apply the parentheses doesn't matter.

Theorem 7.5.5. Let  $A, B, C, D$  be any sets. Let  $f: A \to B$  and  $g: B \to C$  and  $h: C \to D$  be functions. Then,

$$
h \circ (g \circ f) = (h \circ g) \circ f
$$

Proof. WWTS that the outputs of the two functions  $h \circ (g \circ f)$  and  $(h \circ g) \circ f$  are the same, for every possible input.

Let  $x \in A$  be given. Applying the definition of composition, we see that

$$
\left[ h \circ (g \circ f) \right] (x) = h \big (g \circ f) (x) \big) = h \big (g (f (x)) \big)
$$

and

$$
[ (h \circ g) \circ f ] (x) = (h \circ g) (f (x)) = h (g (f (x)))
$$

□

# Compositions and Jections

Here's something interesting to ponder now: What happens if we take the composition of two functions with a shared property? Does that property "carry over", as well? For instance, if we compose two injections, do we get another injection? Does only one of the composed functions need to be an injection to guarantee the composition is an injection?

Similarly, let's say we have a composition of two functions. If we know the composition is a surjection, can we necessarily deduce that one of the functions we composed is also a surjection? Do they both need to be?

We will state and prove some claims about questions like these in this short section. We will let you prove some related facts (or find appropriate counterexamples, as the case may be) in the exercises, both for this section and at the end of the chapter.

Proposition 7.5.6. Let  $A, B, C$  be sets and let  $f: A \to B$  and  $g: B \to C$  be functions. If  $g \circ f$  is injective, then  $f$  is necessarily injective.

(Notice that this doesn't assume any properties of  $g$ ; it doesn't even have to be injective, necessarily! As an exercise, try to find an example of functions  $f: A \to B$  and  $g: B \to C$  such that  $g \circ f$  is injective and  $g$  is injective, and also an example where  $g \circ f$  is injective but  $g$  is not injective.)

Proof. Let  $x, y \in A$  be given. Suppose  $f(x) = f(y)$ . WWTS  $x = y$ .

Since  $g$  is a well-defined function,  $g(f(x)) = g(f(y))$ .

This means  $(g\circ f)(x) = (g\circ f)(y)$

Since  $g \circ f$  is injective,  $x = y$ . This was our goal, so the claim is proven.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/802ce4cd2d56c851ef834bf5ea58e68a011a27da49080dcf1d8d772f20ebb99a.jpg)

It turns out that the converse of the claim we just proved is False. Since that claim is one about all functions, disproving it requires us to produce a counterexample.

Proposition 7.5.7. Let  $A, B, C$  be sets and let  $f: A \to B$  and  $g: B \to C$  be functions. Suppose  $f$  is injective. Then it is not necessarily the case that  $g \circ f$  is injective.

Try doing some scratch work on your own to come up with a counterexample before reading about ours. Remember that you don't need to find the most interesting or complicated one, nor do you necessarily need one defined by a rule; you just need to be able to define one!

Proof. We will exhibit a counterexample.

Define  $A = \{1,2\}$  and  $B = \{\heartsuit ,\diamondsuit \}$  and  $C = \{\star \}$

Define  $f$  by setting  $f(1) = \heartsuit$  and  $f(2) = \diamondsuit$ .

Notice  $f$  is injective because  $f(1) \neq f(2)$ .

Define  $g$  by setting  $g(1) = g(2) = \star$ .

Notice  $g\circ f$  is defined by  $(g\circ f)(1) = \star$  and  $(g\circ f)(2) = \star$

This shows  $g \circ f$  is not injective, because  $(g \circ f)(1) = (g \circ f)(2)$  but  $1 \neq 2$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/062e6169f6ad7fc4f6de51f6638557ae26fe5a7e58642621b5ce2b390886a2bc.jpg)

# 7.5.2 Inverses

# Motivation

As we said before, a bijection  $f: A \to B$  has a very nice property, in that  $f$  "pairs off" the elements of the two sets,  $A$  and  $B$ . Given an element  $a \in A$ , there is exactly one element  $b \in B$  that satisfies  $f(a) = b$ . This is because  $f$  is a well-defined function. But we also know that  $a$  is the only domain element associated with  $b$  in this way. This is because  $f$  is a bijection. Because of this unique association in both directions, we can think of "reversing" the action of  $f$ . Given an element  $b \in B$ , identify the  $a$  that would produce that  $b$ . This is what an inverse function does. Here, we will define it in terms of function composition and identity functions. This is also the reason we say a bijection

is between two sets as opposed to just from one set to the other; as soon as we have it one way, we know we can have it the other way, too!

Before we see the definition, let's quickly recall the definition of the identity function that we saw before. It plays an important role in the forthcoming definition of inverse.

Definition: Given a set  $X$ , the identity function  $\operatorname{Id}_X : X \to X$  is defined by  $\forall z \in X$ .  $\operatorname{Id}_X(z) = z$ .

# Definition

Notice that this definition doesn't say anything about the functions being bijections. This is purely a formal definition of what an inverse function means. Afterwards, we will have to prove any claims about two inverses and bijections are related.

Definition 7.5.8. Let  $f: A \to B$  be a function. Suppose there is a function  $g: B \to A$  such that  $f \circ g: A \to A$  satisfies  $f \circ g = \operatorname{Id}_A$  and  $g \circ f: B \to B$  satisfies  $g \circ f = \operatorname{Id}_B$ .

Then we say  $g$  is the inverse of  $f$  and write  $g = f^{-1}$ .

(Notice that some conditions are implicitly stated by the assumptions and conclusions in the definition above. Specifically, it must be that  $B = \operatorname{Im}_f(A)$ , to make sure  $g$  is a function. Likewise,  $A = \operatorname{Im}_g(B)$ .)

# Example

Let's look back at a function we saw before when we discussed bijections. With your help in the exercises, we learned that this function is a bijection. Here, we will find its inverse.

Example 7.5.9. Let  $h: \mathbb{R} - \{-1\} \to \mathbb{R} - \{1\}$  be defined by

$$
\forall x \in \mathbb {R} - \{- 1 \}. h (x) = \frac{x}{1 + x}
$$

To find a candidate function that will be the inverse of  $h$ , it usually helps to set the "rule" for  $h$  equal to some new variable, and then solve for  $x$ .

Here, let's say  $h(x) = y$ . How can we "reverse" this process and identify what  $x$  is, in terms of  $y$ ? Observe that we can make some algebraic steps, as follows:

$$
\begin{array}{l} h (x) = y \Longleftrightarrow \frac{x}{1 + x} = y \\ \Longleftrightarrow (1 + x) y = x \\ \Longleftrightarrow x y + y = x \\ \Longleftrightarrow y = x (1 - y) \\ \Longleftrightarrow x = \frac{y}{1 - y} \\ \end{array}
$$

This scratch work has given us a candidate for the inverse of  $h$ . We haven't proven anything with these observations! What we have to do now is make a claim and then demonstrate, for the reader, all of the essential facts. Notice that we took care to define a new function  $H$ , and used it to prove that  $H = h^{-1}$ , in fact. It would be presumptuous and erroneous to define  $h^{-1}$  and then work with it. We are trying to show  $h$  has an inverse, so we can't just declare it has one at the beginning of our proof!

Proof. Define  $S = \mathbb{R} - \{-1\}$  and  $T = \mathbb{R} - \{1\}$  for convenient shorthand, so  $h: S \to T$ .

Let  $H: T \to S$  be the function defined by  $\forall y \in T$ .  $H(y) = \frac{y}{1 - y}$ .

First, let's show that  $H$  is a well-defined function. For every  $y \in T$ , we know  $y \neq 1$ , so  $1 - y \neq 0$ . Thus, the fraction  $\frac{y}{1 - y}$  is a well-defined real number.

Furthermore, we can argue that  $\frac{y}{1 - y} \neq -1$ . AFSOC that  $\frac{y}{1 - y} = -1$ . Then multiplying through by  $1 - y$  tells us  $y = y - 1$ , a clear contradiction.

Second, let's show that  $H \circ h = \operatorname{Id}_S$ . Let  $x \in S$  be given. Observe that

$$
\begin{array}{l} (H \circ h) (x) = H (h (x)) = H \left(\frac{x}{1 + x}\right) \\ = \frac{\frac{x}{1 + x}}{1 - \frac{x}{1 + x}} \cdot \frac{1 + x}{1 + x} = \frac{x}{(1 + x) - x} \\ = \frac{x}{1} = x \\ \end{array}
$$

Third, let's show that  $h \circ H = \operatorname{Id}_T$ . Let  $y \in T$  be given. Observe that

$$
\begin{array}{l} (h \circ H) (y) = h (H (y)) = h \left(\frac{y}{1 - y}\right) \\ = \frac{\frac{y}{1 - y}}{1 + \frac{y}{1 - y}} \cdot \frac{1 - y}{1 - y} = \frac{y}{(1 + y) - y} \\ = \frac{y}{1} = y \\ \end{array}
$$

Therefore, by the definition of inverse,  $H = h^{-1}$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/8e2eed3a4819e0fb704b565bc8f330917646410836f526119c582217894c7ef1.jpg)

# Checking Both Directions

Let's say  $f: A \to B$  is a function, and you have made a claim about  $f$  having an inverse by defining a function  $g: B \to A$ . It is extremely important that you show both compositions yield the identity function; that is, you must show both

$$
f \circ g = \operatorname{Id}_{B} \quad \text{an d} \quad g \circ f = \operatorname{Id}_{A}
$$

You might occasionally forget to do so, or you just might not see why this is necessary. To help you understand this importance, we have included Exercise

2 in Section 7.5.4 below. It asks you to find an example where "one way" yields the identity function but the "other way" does not, so that the proposed function is actually not an inverse. Try to find several examples, if you can. The more striking you make this point, the better!

# 7.5.3 Bijective  $\iff$  Invertible

As we have been hinting at all along, a bijective function has an inverse. This claim's converse holds, as well, so we can state and prove this if and only if statement. The word in the section heading here—invertible—is often used to mean "has an inverse".

Theorem 7.5.10. Let  $A, B$  be any sets. Let  $f: A \to B$  be a function. Then,

$$
f \text{is bi je ct iv e} \iff f \text{ha sa ni nv er se} f^{- 1}: B \to A
$$

Proof. (  $\Rightarrow$  ) Assume  $f$  is bijective. This means  $f$  is surjective and injective.

We need to define an inverse function for  $f$ . Let's define  $g: B \to A$  as follows: Let  $b \in B$  be given. Since  $f$  is surjective, we know  $\exists a \in A$ .  $f(a) = b$ . Let such an  $a$  be given. Since  $f$  is injective, we know that

$$
\forall x \in A. x \neq a \Rightarrow f (x) \neq f (a) = b
$$

That is, we know this  $a$  is the unique element of  $A$  that satisfies  $f(a) = b$ . Let's define  $g(b) = a$ . This is a well-defined function because of these observations.

Next, observe that  $(f\circ g)(b) = f(g(b)) = f(a) = b$  , so  $f\circ g = \mathrm{Id}_B$

Also, observe that  $(g\circ f)(a) = g(f(a)) = g(b) = a$  , so  $g\circ f = \mathrm{Id}_A$

Therefore,  $g = f^{-1}$ , so  $f$  has an inverse.

$(\Longleftarrow)$  Assume  $f$  has an inverse function,  $f^{-1}:B\to A$

First, let's show  $f$  is injective. Let  $a_1, a_2 \in A$  be given. Observe that

$$
\begin{array}{l} f (a_{1}) = f (a_{2}) \Longrightarrow f^{- 1} (f (a_{1})) = f^{- 1} (f (a_{2})) \quad f^{- 1}: B \to A \text{is af un ct io n} \\ \Longrightarrow (f^{- 1} \circ f) (a_{1}) = (f^{- 1} \circ f) (a_{2}) \quad \text{de fi ni ti on of co mp os it io n} \\ \Longrightarrow \operatorname{Id}_{A} (a_{1}) = \operatorname{Id}_{A} (a_{2}) \quad \text{de fi ni ti on of id en ti ty} \\ \Longrightarrow a_{1} = a_{2} \quad \text{de fi ni ti on of id en ti ty} \\ \end{array}
$$

Thus,  $f$  is injective.

Second, let's show  $f$  surjective. Let  $b \in B$  be given. Since  $f^{-1}$  is a function, we know  $\exists a \in A$ .  $f^{-1}(b) = a$ . Let such an  $a$  be given. Then observe that  $f^{-1}(b) =$

a.

$$
\begin{array}{l} f^{- 1} (b) = a \Longrightarrow f \left(f^{- 1} (b)\right) = f (a) \quad f: A \rightarrow B \text{is af un ct io n} \\ \Longrightarrow (f \circ f^{- 1}) (b) = f (a) \quad \text{de fi ni ti on of co mp os it io n} \\ \Longrightarrow \operatorname{Id}_{B} (b) = f (a) \quad \text{de fi ni ti on of id en ti ty} \\ \Rightarrow b = f (a) \quad \text{de fi ni ti on of id en ti ty} \\ \end{array}
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/772795aaec5896b0f227300b677585c05afe23dfb9687ca6e6024079a289e80c.jpg)

# Proving a Function is Bijective

This helpful theorem now provides us with another technique for proving that a given function  $f: A \to B$  is a bijection. Rather than proving  $f$  is an injection and a surjection, we can just define a new function  $g: B \to A$  and prove that it is the inverse of  $f$ , i.e.  $g = f^{-1}$ . Then, this theorem applies and tells us that  $f$  is a bijection! Depending on the context, one or the other of these strategies might be easier to apply, or you might just be more comfortable with one of them. Keep in mind that both strategies are viable, though!

# Inverse of an Inverse

The following corollary follows immediately from the theorem above. We call it a corollary and not its own theorem because it doesn't really assert anything amazingly new; rather, its conclusion comes from applying the theorem above, as you'll see in the proof.

Corollary 7.5.11. Let  $A, B$  be any sets. Let  $f: A \to B$  be a function.

If  $f$  is a bijection, then  $f^{-1}$  exists and it is also a bijection.

Furthermore,  $\left(f^{-1}\right)^{-1} = f$

Proof. Suppose  $f$  has an inverse,  $f^{-1}: B \to A$ . This means  $f \circ f^{-1} = \operatorname{Id}_B$  and  $f^{-1} \circ f = \operatorname{Id}_A$ , by the definition of inverse.

These are precisely the conditions that show  $\left(f^{-1}\right) = f$ , again by the definition of inverse! This shows  $f^{-1}$  has an inverse (namely,  $f$  itself) so the theorem above tells us that  $f^{-1}$  must be a bijection.

# Inverse of a Composition

Before we move on to some exercises and the next section, let's get your help in putting together the main ideas of this chapter so far. Specifically, we are going to state two results here. The proofs are left for you in the chapter exercises. By working through those proofs, you will (a) solidify your understanding of many of the concepts introduced so far—functions, jections, compositions, inverses—and (b) obtain a helpful result about how to define the inverse of a composition of functions!

Proposition 7.5.12. Let  $f: A \to B$  and  $g: B \to C$  be bijective functions. Define  $h: A \to C$  to be  $h = g \circ f$ . Then  $h$  is also bijective.

Proof. Left for the reader as Problem 7.8.9.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/87c1a9aea82800dcdcdf2f153ed6d134b806764f4b693d1e01578753f3ade4cb.jpg)

Proposition 7.5.13. Let  $f: A \to B$  and  $g: B \to C$  be bijective functions. Define  $h: A \to C$  to be  $h = g \circ f$ . Then  $h$  is invertible and  $h^{-1} = f^{-1} \circ g^{-1}$ .

Proof. Left for the reader as Problem 7.8.10

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/4f96ce08c1c6233da4e157d8ee1f6179b03ec67bdd95fa23522bc2bd37b65a1d.jpg)

# 7.5.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) Is the composition of functions associative? (That is, does the order of parentheses matter?) Why or why not?  
(2) Is the composition of functions commutative? (That is, can we reverse the order?) Why or why not?  
(3) Suppose  $f: A \to B$  and  $g: B \to A$  are functions. How do we prove that  $g = f^{-1}$ ?  
(4) Suppose  $f: A \to B$  is a bijection. Is its inverse also a bijection?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Let  $O$  be the set of odd natural numbers and let  $E$  be the set of even natural numbers. Define a function  $f: O \to E$  that is a bijection and prove that it is so by finding its inverse.  
(2) In this problem, we want you to construct an example that shows the importance of verifying both compositions yield the identity function when we're trying to find the inverse of a function.

Define sets  $A, B$  and functions  $f: A \to B$  and  $g: B \to A$  such that

$$
\forall x \in A. g (f (x)) = x
$$

but

$$
\exists y \in B. f (g (y)) \neq y
$$

(Suggestion: You might find an example where  $A$  and  $B$  both only have one or two elements … Or, you might find an example where  $A = B = \mathbb{N}$ .)

(3) Let  $U = \{y \in \mathbb{R} \mid -1 < y < 1\}$  and  $I = \{y \in \mathbb{R} \mid -6 < y < 12\}$ .

Let  $g: U \to I$  be the function defined by  $\forall x \in U$ .  $g(x) = 9x + 3$ .

Prove that  $g$  is a bijection by finding  $g^{-1}$

(4) Define the function  $f: \mathbb{Z} \to \mathbb{N}$  by

$$
\forall z \in \mathbb {Z}. f (z) = \left\{ \begin{array}{l l} - 2 z + 2 & \text{if } z \leq 0 \\ 2 z - 1 & \text{if } z > 0 \end{array} \right.
$$

Prove that  $f$  is a bijection by finding  $f^{-1}$ .

(Hint: Your proposed inverse function will also be piece-wise defined. Be careful about the cases that will then come up in your proof.)

(5) Challenge: Define  $I = \{y \in \mathbb{R} \mid -1 < y < 1\}$ . Find a function  $f: I \to \mathbb{R}$  that is a bijection and prove that it is.

(Hint: You do not need to use any trigonometric functions. Consider using  $|x|$  somewhere in your expression …)

# 7.6 Cardinality

# 7.6.1 Motivation and Definition

One important reason for caring about bijections is that they allow us to compare the sizes of sets! This is a notion for which you have some intuition. For example, it's pretty clear that the set

$$
\{1, 2, 3, 4, 5 \}
$$

has 5 elements. It is finite. However, the set

$$
\mathbb {N} = \{1, 2, 3, 4, 5, \dots \}
$$

is infinite. We also understand that  $\mathbb{Z}$  is an infinite set. So are  $\mathbb{Q}$  and  $\mathbb{R}$ . What are their sizes? Can we even compare them? How could we do so mathematically? What does it really mean to be an infinite set? Are there "different infinities"?

# Bijections "Pair" Elements

Let's say there are 5 pens and 5 books on a table in front of us. But also, let's pretend that we didn't know how to count them. How could we verify that there are just as many pens as there are books? Instead of saying, "There are 5 pens and 5 books, and  $5 = 5$ ", can we somehow show the set of books and the set of pens has the same size, without knowing what that size is?

This is where a bijection comes into play. We can pair off the pens and books one-by-one. We can line them up on the table and draw a line between them, showing a correspondence between them. In the language of sets, we are identifying a bijection between the set of pens and the set of books. This idea is so important, that we want to impress it upon you with a quote:

In the land of Cardinality, the Bjection is King.

Imagine our study of cardinality is a journey through the Kingdom of Cardinality. In this Kingdom, we bow down to King Bijection, for he rules all. Only he can tell us when two sets have the same cardinality, whether they be finite or infinite.

Moreover, we really need to use this set terminology, because we will see some surprising and counter-intuitive results. Using these formal definitions and concepts will allow us to be rigorous and precise. The examples and results we see might blow our minds a little bit (or a lot!), but having them rooted in concepts we've already seen and theorems we've already proven lets us actually believe these results, mathematically speaking!

# Definitions and Notation

First, let's define what it means to be finite.

Definition 7.6.1. Let  $S$  be any set. We say  $S$  is finite if and only if

$$
\exists n \in \mathbb {N} \cup \{0 \} s u c h t h a t t h e r e e x i s t s a b i j e c t i o n f: S \rightarrow [ n ]
$$

In this case, we write  $|S| = n$  to indicate that the size of  $S$  is  $n$ .

Note: The empty set  $S = \varnothing$  is finite, since  $[0] = \varnothing$ . This is why we said  $n \in \mathbb{N} \cup \{0\}$  in the definition, and not just  $n \in \mathbb{N}$ . The function  $f : \varnothing \to \varnothing$  that is a bijection is simply the empty relation. (Remember that a function is a relation!)

By definition, sets of the form  $[n]$  are finite. They are our standard examples of finite sets, with size  $|[n]| = n$ . Thus, to show that a set  $S$  has size  $n$ , we need to find a bijection between  $S$  and  $[n]$ . For example, consider the set  $\{1,3,5\}$ . This clearly looks like it has size 3. We can show this by exhibiting the bijection  $f:\{1,3,5\} \to [3]$  defined by  $f(1) = 1$  and  $f(3) = 2$  and  $f(5) = 3$ .

It's interesting to think about whether a finite set could have two different sizes. The definition technically doesn't preclude this, but we can prove that the size of a finite set is unique. Think about how to do that … We will do so after a few more essential definitions.

Definition 7.6.2. Let  $S$  be any set. We say  $S$  is infinite if and only if  $S$  is not finite.

That is,  $S$  is infinite if  $\forall n \in \mathbb{N} \cup \{0\}$ , every possible function  $f: S \to [n]$  fails to be a bijection.

When  $S$  is infinite, we use  $|S|$  to indicate the cardinality of the set.

It might seem silly to define infinite in this way—not finite—but it certainly reflects the intuitive dichotomy between the two concepts. A set can't be both finite and infinite, so rather than come up with a way to categorize both of them, let's catgeorize one and define the other to be "anything else".

Also, we do not write  $|S| = \infty$  to indicate that a set is infinite. As we will see very shortly, there are actually many different "levels" of infinite sets. This might seem incredibly bizarre to you right now, but you will see what we mean. Yes, there are different "sizes" of infinite sets, and we will use  $|S|$  to indicate the cardinality of  $S$  so that we may compare it to that of other sets. Writing  $|S| = \infty$  would indicate there is only "one infinity", and this is very much incorrect.

Now, that said, we are mostly going to distinguish just two types of infinite sets, for our purposes. We are doing this to show you some striking results about the sets we are already familiar with, namely  $\mathbb{N}$  and  $\mathbb{Z}$  and  $\mathbb{Q}$  and  $\mathbb{R}$ . The following definition tells us what these two types are.

# Definition 7.6.3. Let  $S$  be any set.

We say  $S$  is countably infinite if and only if there exists a bijection  $f: S \to \mathbb{N}$ .

We say  $S$  is uncountably infinite (or just uncountable) if and only if  $S$  is infinite and every function  $f: S \to \mathbb{N}$  fails to be a bijection.

Given an infinite set  $S$ , this definition establishes two possibilities for  $S$ , based on how its cardinality  $|S|$  compares with  $\mathbb{N}$ . We use the term countably infinite because it represents why we intuitively think of  $\mathbb{N}$  as infinite. The set  $\mathbb{N}$  has "a lot" of elements, so many so that if we tried to count them we would never finish; however, the fact that we can even try to count them in this way indicates something special. There is a 1st element of  $\mathbb{N}$ , and a 2nd element, and a 3rd, and … We can't name them all in our lifetime, but we could program a magical, immortal robot to print them out one-by-one. If we thought of a natural number ahead of time, no matter how huge that number is, we know the robot will eventually print out that number.

Perhaps we can't do this with all infinite sets, though. This is what the notion of an uncountably infinite set is meant to convey. Such a set is infinite, so there is no correspondence with a set of the form  $[n]$ , but it is also "so large" that we cannot identify a "1st element" and a "2nd element" and a "3rd element" and … This is what a bijection  $f: S \to \mathbb{N}$  would convey, a way to label all the elements of  $S$  in a way that shows they are paired off with the natural numbers. If we cannot do this, then the set is uncountably infinite. Now, you might not believe that such sets exist! Don't worry, we will show you some. For now, just

be aware of the distinction between countably and uncountably infinite: the difference rests on whether a bijection with  $\mathbb{N}$  exists.

# Comparing Cardinalities

As we mentioned, when  $S$  is infinite, we use  $|S|$  to compare the cardinality of  $S$  to that of other sets. We won't write something like  $|S| = \infty$ . Rather, we will write something like  $|S| = |T|$  to indicate that  $S$  and  $T$  have the same cardinality, whatever that may be. We might also write something like  $|S| < |P|$  to indicate  $P$  has a strictly larger cardinality than  $S$ . The following definition tells us how the comparison of cardinalities is based on functions and, specifically, different kinds ofjections.

Definition 7.6.4. Let  $S, T$  be any sets.

- We write  $|S| = |T|$  if and only if there exists a bijection  $f: S \to T$ . In this case, we say  $S$  has the same cardinality as  $T$ .  
- We write  $|S| \leq |T|$  if and only if there exists an injection  $f: S \to T$ . In this case, we say  $S$  has cardinality at most  $|T|$ .  
- We write  $|S| < |T|$  if and only if  $|S| \leq |T|$  and  $|S| \neq |T|$ . In this case, we say  $S$  has a strictly smaller cardinality than  $T$ .  
- We write  $|S| \geq |T|$  if and only if there exists a surjection  $f: S \to T$ . In this case, we say  $S$  has cardinality at least  $|T|$ .  
- We write  $|S| > |T|$  if and only if  $|S| \geq |T|$  and  $|S| \neq |T|$ . In this case, we say  $S$  has a strictly larger cardinality than  $T$ .

Let's explain the motivation behind these definitions in two different ways:

In general,  $f: A \to B$  being an injection tells us  $|A| \leq |B|$  and  $g: A \to B$  being a surjection tells us  $|A| \geq |B|$ . Think about schematic diagrams for the functions  $f$  and  $g$  to see why this definition makes sense. Having an injection from  $A \to B$  means we can definitely "pair" the elements of  $A$  to elements of  $B$  without overlapping, but perhaps there are "many more" elements of  $B$  left over. Likewise, having a surjection from  $A \to B$  means we can definitely "cover" all of  $B$  with elements of  $A$ , but maybe we had to overlap sometimes to do this, so  $A$  could have "more" elements than  $B$ . Having both of these situations together (i.e., a bijection from  $A$  to  $B$ ) means that  $A$  and  $B$  actually have the same cardinality: we can pair off all their elements. This is an intuitive explanation to motivate these definitions, mind you. These types of explanations are not rigorous proofs. But now that we have made these definitions, we can use them to prove and disprove statements! To compare cardinalities of sets—even infinite ones—we just need to find a function with an appropriate property. All of our work in the rest of this chapter will be quite helpful in our journey through the Kingdom of Cardinality.

Another way to think about these definitions is that "has the same cardinality as" is an "equivalence relation" on the "set of all sets". We have to put quotes around these phrases because, as we explained in detail in Section 3.3.5 about Russell's Paradox, there is no such thing as the "set of all sets". Thus, it doesn't make mathematical sense in our context to talk about an equivalence relation on that "set". In some fuzzy sense, though, this is what's going on:

- Given any set  $S$ , there is certainly a bijection with itself: the identity function,  $\operatorname{Id}_S : S \to S$ . This shows  $|S| = |S|$ , i.e. the "has the same cardinality as" relation is "reflexive".  
- Suppose  $|S| = |T|$ , so there is a bijection  $f: S \to T$ . Is there a bijection  $g: T \to S$ , as well? Why yes, we can use  $g = f^{-1}$ , of course! We know that is also a bijection. This shows  $|T| = |S|$  via a bijection, as well, i.e. the "has the same cardinality as" relation is "symmetric".  
- Suppose  $|S| = |T| = |U|$ , so there are bijections  $f: S \to T$  and  $g: T \to U$ . Does there exist a bijection  $h: S \to U$ , as well? Yes! The composition  $g \circ f$  is also a bijection (this is something you will prove/have proven in the exercises). This shows  $|S| = |U|$  via a bijection, as well, i.e. the "has the same cardinality as" relation is "transitive".

Again, this is not exactly what's going on, but it can really help you sort through these difficult, abstract ideas. We are establishing a way to take any two sets and compare their cardinalities using functions. All of the sets in the universe will be "partitioned" into different "classes" based on their cardinalities. What's truly amazing is what we are about to prove for you: that there are infinitely-many cardinalities.

# Cantor's Theorem

The following result and proof are due to the German mathematician Georg Cantor from the midto late-1800s. By now, mathematicians have fully embraced the result and its consequences. However, at the time, this idea was so controversial that some mathematicians refused to believe him. In time, though, his work and ideas helped lead to the development of formal set theory.

The proof of this particular result is known as Cantor's Diagonalization Argument. We will use an argument like this later on, where we will point out why it is like a "diagonal". For now, we are more interested in the conclusion of this theorem.

Theorem 7.6.5. Let  $S$  be any set. Then  $|S| < |\mathcal{P}(S)|$ .

This says that the power set of a set always has strictly larger cardinality than the set itself. This makes sense for finite sets. You discovered already that the power set of  $[n]$  has  $2^n$  elements, i.e.  $|\mathcal{P}([n])| = 2^n$ . (You will prove this by induction, using results about cardinality, in Problem 7.8.30.) We see, indeed, that  $n < 2^n$  for every  $n \in \mathbb{N}$ . However, this theorem also asserts that

this relationship holds for infinite sets. Wow! Immediately, this tells us that there is a whole chain of infinite sets, each one bigger than the previous one. We can just kept taking the power set of what we had before:

$$
\left. \left| \mathbb {N} \right| <   \left| \mathcal {P} (\mathbb {N}) \right| <   \left| \mathcal {P} \big (\mathcal {P} (\mathbb {N}) \big) \right| <   \left| \mathcal {P} \big (\mathcal {P} \big (\mathcal {P} (\mathbb {N}) \big) \right|\right) <   \dots
$$

Let's prove this theorem. The proof is very short and clever, so don't worry about how to come up with such an argument. Focus on understanding the logical flow.

Proof. Let  $S$  be any set. AFSOC  $|S|\geq |\mathcal{P}(S)|$

This means there exists a function  $g:S\to \mathcal{P}(S)$  that is surjective.

Define  $T = \{X \in S \mid X \notin g(X)\}$ . (This makes sense because, for any  $X \in S$ ,  $g(X) \in \mathcal{P}(S)$ , i.e.  $g(X) \subseteq S$ . Thus, either  $X \in g(X)$  or  $X \notin g(X)$  must hold.)

Notice  $T \subseteq S$ , by a set-builder notation definition. This means  $T \in \mathcal{P}(S)$ .

Since  $g$  is surjective,  $\exists Y \in S$  such that  $g(Y) = T$ . Let such a  $Y$  be given.

Now, is  $Y \in T$ ? We consider both cases:

- If  $Y \in T$ , then the definition of  $T$  says  $Y \notin g(Y)$ . However,  $g(Y) = T$ , so this means  $Y \notin T$ . This is a contradiction  
- If  $Y \notin T$ , then the definition of  $T$  says  $Y \in g(Y)$ . However,  $g(Y) = T$ , so this means  $Y \in T$ . This is a contradiction

In either case, both  $Y \in T$  and  $Y \notin T$  hold. This is a contradiction

Therefore, there exists no such surjection from  $S$  to  $\mathcal{P}(S)$ , i.e.  $|S| < |\mathcal{P}(S)|$ .

Look back at Exercise 4 in Section 7.4.5. Notice that we asked you to define a function from  $\mathbb{N}$  to  $\mathcal{P}(\mathbb{N})$ , and then we asked you to prove it was not surjective. We didn't have to know what your function was! Since we were aware of this theorem, we knew you couldn't possibly have defined a surjection!

# Discussion: Axioms and Definitions

We want to make an admission. We have glossed over some details about what constitutes a definition as opposed to a theorem, a result that needs proven from fundamental assumptions. By definition (at least, in our context) an injection and a surjection from  $A$  to  $B$  (in that direction, mind you) constitute sufficient proof of equal cardinalities, which guarantees a bijection. Likewise, an injection from  $A$  to  $B$  and one from  $B$  to  $A$  is sufficient to guarantee  $|A| = |B|$ , and so there must be a bijection between  $A$  and  $B$ .

It is not totally obvious, though, why these claims should be true. Say we have an injection from  $A$  to  $B$  and one from  $B$  to  $A$ . Does this guarantee a bijection between the two sets? Well, one would hope! But this isn't a proof. This result is actually known as the Cantor-Schroeder-Bernstein Theorem:

Theorem 7.6.6 (Cantor-Schroeder-Bernstein). Suppose  $A, B$  are any sets, and  $f: A \to B$  and  $g: B \to A$  are injections. Then there exists a bijection  $h: A \to B$ .

Yes, that is a theorem; it is not trivial! One of the proofs is, in fact, constructive: it provides an algorithmic method for constructing that bijection  $h: A \to B$ , using the two injections,  $f: A \to B$  and  $g: B \to A$ . For our purposes—and for time and space restrictions—there is no need to separate this out as a theorem, let alone one with a constructive proof. It is sufficient to consider injections and surjections and their consequences vis-à-vis cardinalities as definitions; these results "feel" intuitive and we can accept them. Just realize, though, that we are basing them on rigorous mathematical knowledge. If you are interested in learning about these subtleties and their consequences, consider taking a course or reading a book about set theory.

In essence, the real issue is that we pre-supposed any two sets,  $A$  and  $B$ , can have their cardinalities compared in some meaningful way, mathematically speaking. That is, for any  $A$  and  $B$ , we have pre-supposed that we can somehow declare that  $|A| \leq |B|$  or  $|B| \leq |A|$  makes sense (or both, perhaps, if the sets are of "equal size"). But how can we guarantee one such comparison, or maybe both, will always apply, for any two given sets? It's not a trivial consideration! In the context of this book, one of our axioms is that the cardinalities of any two sets we consider can be compared. In the context of the mathematical universe at large, though, this is something that needs to be proved from more fundamental assumptions.

# 7.6.2 Finite Sets

Before moving into the somewhat bizarre (but fascinating!) world of infinite sets, let's focus on some results about finite sets. These results will be easier to understand, intuitively, and will give us some good practice in working with functions and their properties to prove facts about cardinalities.

# Theorems

For each of these results, we will state a theorem/proposition/lemma, and either prove it or have you help us with the proof via some exercises.

Theorem 7.6.7. Suppose  $A, B$  are disjoint finite sets. Then  $|A \cup B| = |A| + |B|$ .

Play around with some examples to see why this claim is True. Do you see why we need the sets to be disjoint for this to work? Can you prove this claim? Remember that we want to find a bijection between the two sets …

Proof. Let  $A, B$  be finite sets that are disjoint.

We know  $\exists a, b \in \mathbb{N} \cup \{0\}$  and there exist bijections  $f: A \to [a]$  and  $g: B \to [b]$ .

(That is, we suppose  $|A| = a$  and  $|B| = b$ ). Let such  $a, b, f, g$  be given.

WWTS  $|A \cup B| = |A| + |B| = a + b$ ; that is, WWTS there is a bijection  $h: A \cup B \to [a + b]$ .

Define the function  $h: A \cup B \to [a + b]$  by

$$
\forall x \in A \cup B. \quad h (x) = \left\{ \begin{array}{l l} f (x) & \text{if } x \in A \\ g (x) + a & \text{if } x \in B \end{array} \right.
$$

Notice that  $h$  is well-defined because  $A \cap B = \emptyset$ , so every  $x \in A \cup B$  satisfies  $x \in A$  or  $x \in B$  and certainly not both. Also,  $1 \leq h(x) \leq a$  for every  $x \in A$ , and  $a + 1 \leq h(x) \leq a + b$  for every  $x \in B$ , so  $h(x) \in [a + b]$  for every  $x$  in the domain of  $h$ .

We claim that the function  $H:[a + b]\to A\cup B$ , defined by

$$
\forall y \in [ a + b ]. \quad H (y) = \left\{ \begin{array}{l l} f^{- 1} (y) & \text{if } 1 \leq y \leq a \\ g^{- 1} (y - a) & \text{if } a + 1 \leq y \leq a + b \end{array} \right.
$$

is the inverse of  $h$ . If this holds, then we have proven that  $h$  is a bijection.

Let's show that  $H$  is well-defined. Every  $y \in [a + b]$  satisfies exactly one of the two inequalities given in the definition of  $H$ . Also,  $f$  and  $g$  were given to be bijections, so  $f^{-1}$  and  $g^{-1}$  are well-defined functions (that are bijections themselves, even). Furthermore, if  $a + 1 \leq y \leq a + b$  then  $1 \leq y - a \leq b$  so  $y - a \in [b]$  (the domain of  $g^{-1}$ ).

Let's show that  $h \circ H = \operatorname{Id}_{[a + b]}$ . Let  $y \in [a + b]$  be given. We have two cases.

(1) Suppose  $1 \leq y \leq a$ ; that is, suppose  $y \in [a]$ . Then,

$$
(h \circ H) (y) = h (H (y)) = h \left(f^{- 1} (y)\right) = f \left(f^{- 1} (y)\right) = \operatorname{Id}_{[ a ]} (y) = y
$$

where we used the fact  $f^{-1}(y) \in A$ .

(2) Suppose  $a + 1 \leq y \leq b$ ; that is, suppose  $y - a \in [b]$ . Then,

$$
\begin{array}{l} (h \circ H) (y) = h (H (y)) = h (g^{- 1} (y - a)) = g (g^{- 1} (y - a)) + a \\ = \operatorname{Id}_{[ b ]} (y - a) + a = (y - a) + a = y \\ \end{array}
$$

where we used the fact that  $g^{-1}(y - a)\in B$

In either case, we find  $(h\circ H)(y) = y$ , and both cases are disjoint and cover all possibilities.

Next, let's show that  $H \circ h = \operatorname{Id}_{A \cup B}$ . Let  $x \in A \cup B$  be given. We have two cases.

(1) Suppose  $x \in A$ . Then,

$$
(H \circ h) (x) = H (h (x)) = H (f (x)) = f^{- 1} (f (x)) = \operatorname{Id}_{A} (x) = A
$$

where we used the fact that  $f(x) \in [a]$ .

(2) Suppose  $x \in B$ . Then,

$$
\begin{array}{l} (H \circ h) (x) = H (h (x)) = H \big (g (x) + a \big) = g^{- 1} \left(\big (g (x) + a \big) - a\right) \\ = g^{- 1} (g (x)) = \operatorname{Id}_{B} (x) = x \\ \end{array}
$$

where we have used the fact that  $g(x) \in [b]$  so  $a + 1 \leq g(x) + a \leq a + b$ .

In either case, we find  $(H\circ h)(x) = x$ , and both cases are disjoint and cover all possibilities.

Thus,  $H = h^{-1}$ , so  $h$  has an inverse. Therefore,  $h$  is a bijection.

Therefore,  $|A \cup B| = |[a + b]| = a + b = |A| + |B|$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/281ca97d5844737ac8f6d2edfbc13c46e3c1cd902fa0c5f92413d611792a3370.jpg)

Corollary 7.6.8. Suppose  $S, T$  are finite sets and  $S \subseteq T$ . Then,  $|T - S| = |T| - |S|$ .

Proof. Define  $U = T - S$ . Notice that  $U \cap S = \varnothing$ . Apply the above theorem to  $U$  and  $S$  to get

$$
| U | + | S | = | U \cup S | = | T |
$$

then subtract from both sides to get  $|T - S| = |U| = |T| - |S|$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/bfc62714cc724224b8ad1c6c591f9e69d7c8a8f813b9f067348e6a58b77403d9.jpg)

You can use the two results above to prove the following generalization:

Proposition 7.6.9. Suppose  $A, B$  are finite sets. Then  $|A \cup B| = |A| + |B| - |A \cap B|$ .

Proof. Left for the reader as Exercise 1 in Section 7.6.5.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/e39b373462ffe23f96c4d445f9e1028d29996ac1e027088b917ba8d041946c2b.jpg)

Here's another corollary to the theorem above.

Corollary 7.6.10. Suppose  $A_1, A_2, \ldots, A_n$  are finite and pairwise-disjoint (remember this means any two of the sets are disjoint).

Then  $|A_1 \cup \dots \cup A_n| = |A_1| + \dots + |A_n|$ .

Proof. Left for the reader as Exercise 2 in Section 7.6.5.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/be8dad589ebed54fc06af8f279819e4c4cce5cc03349e0d78cfdb240bde9dfa7.jpg)

You should also look at Problem 7.8.32 in this chapter's exercises. There, we guide you through a proof (by induction on two variables!) about the size of the Cartesian product of two finite sets.

# 7.6.3 Countably Infinite Sets

Let's move on to investigate the land of countably infinite sets. We will start by talking about a famous thought experiment, named after the mathematician David Hilbert.

# The Hilbert Hotel

Let's play make-believe. This will help us get a handle on infinite weirdness.

Pretened we own a hotel. There are countably infinitely many rooms in our magical building. They are numbered as Room 1, Room 2, Room 3, … That is to say, our rooms are indexed by the set of natural numbers,  $\mathbb{N}$ .

We want to accommodate as many people as we can (to make lots of money!) and because our hotel is so swanky and accommodating, our guests are totally willing to move to a new room whenever we ask them to. It just takes them a couple of minutes to gather their belongings and walk down the hall to a new room.

We also have a loudspeaker system that allows us to communicate a message to all of the guests at once.

- Suppose all the rooms are full. It's a very busy weekend. One guy walks into the lobby looking for a room. Can we squeeze him in? If not, why? If so, how?

It turns out that we can! We can just shift all the guests down one room and place this new guy into Room 1.

The catch, though, is to take advantage of our loudspeaker system. If we had to go and knock on everyone's door telling them to move down one room, we would never actually finish; we would spend all of eternity knocking on doors and delivering messages.

Instead, we make the following announcement:

Attention guests: If you find yourself in Room  $n$ , please move to Room  $n + 1$ . Thank you!

After five minutes, the guests have all moved, and Room 1 is vacant for our new guest.

Morally speaking, we have just verified that the set  $\mathbb{N}$  and the set  $\mathbb{N} \cup \{\star\}$  have the same cardinality, for any particular object  $\star$ . In particular, say,  $|\mathbb{N}| = |\mathbb{N} \cup \{0\}|$ . Our hotel has only countably many rooms, and we have accommodated one person associated with each natural number, as well as one more person.

- It's the next day. Our rooms are still full. Suppose a Scrabble convention with countably infinitely many people shows up. The people are all wearing nametags with natural numbers on them, so there is Person 1, Person 2, Person 3, ….

Can we accommodate these folks? How can we assign them rooms? How do we move around the guests currently in the hotel?

It turns out that we can! The idea is to free up an infinite set of rooms.

Again, the catch is to do this by making one blanket announcement to all of the guests at once, as opposed to knocking on everyone's door.

We recognize that the set of even-numbered rooms and the set of odd-numbered rooms are both infinite in size, so let's make the current guests in the hotel occupy the even-numbered rooms and assign the new guests from the convention to the odd-numbered rooms. We make the following announcement to the hotel guests via the loudspeaker:

Attention guests: If you find yourself in Room  $n$ , please move to Room  $2n$ . Thank you!

Then, we make the following announcement to the convention folks waiting in the lobby:

Attention convention-goers: If you are wearing nametag number  $n$ , please go to Room  $2n - 1$ . Thank you!

After five minutes, every hotel guest has moved, and after another five minutes, every convention-goer has found their room. Voilá!

Morally speaking, we have just verified that the union of two disjoint countably infinite sets is countably infinite, as well. That is, we took the set  $A$  of current hotel guests (notice  $A$  is countably infinite) and the set  $B$  of convention guests waiting for rooms (notice  $B$  is countably infinite, and notice that  $A \cap B = \emptyset$ ) and found a bijection between  $A \cup B$  and  $\mathbb{N}$ , where  $\mathbb{N}$  represents the set of Rooms.

- Now, suppose another convention shows up. They play Scrabble in a different language, so they don't want to be associated with the other convention. How can we move folks around to get everyone a room?

We can do the exact same thing! It's as if we were facing the same situation as before, with just a full hotel and a countably infinite set of people waiting for rooms.

- Now, suppose countably infinitely many conventions show up, each of them not wanting to be associated with the others. Oh my!

Luckily, the hotel convention organizer has assigned every convention a natural number, and each member within a convention gets a hat with that number on it. Also, within each convention, each person is assigned a natural number, and they wear a badge with that number. Thus, each person has two forms of identification: a hat and a badge. So we have Person 1 from Convention 1, and Person 3 from Convention 7, and Person 12 from Convention 8, and so on and so forth.

How do we rearrange all of these people in the hotel? Can we even do it? How can we do it efficiently?

The catch here is that we cannot apply the same method as the previous two cases over and over. Yes, we can squeeze in Convention 1 using that method. After that's done, we would squeeze in Convention 2. And so on. But never would we get to all of the conventions. It's the same problem we had before where knocking on every individual door would take forever to accomplish; we needed to send a message to everyone at once. Likewise, here, we need to send a message to all of the hotel guests, and then a message to all of the convention-goers waiting outside the door. It needs to be a general "formula" about which room to go to.

If it helps, think of this from the other side of the situation. Pretend you are in Convention  $x$  and you are Person  $y$  in that convention. You are eagerly awaiting a comfortable bed to sleep in for the night. You want to know exactly what room to go to. ASAP. You don't want to wait around and see all of the conventions ahead of you given rooms, one by one. You want to all go in at once and find your corresponding rooms.

Here's one way to do it. Let's take advantage of the structure of the prime numbers. We know there are countably infinitely many primes, and that for any two different primes  $p$  and  $q$  (i.e.  $p \neq q$ ), it is true that  $p^k \neq q^k$  for any natural number  $k$ . With this in mind, we see that assigning individual conventions to the rooms that are powers of a corresponding prime number, we can ensure that no two (potential) guests get assigned to the same room. We make the following announcement to our current hotel guests:

Attention guests: If you find yourself in Room  $n$ , please move to Room  $2^n$ . Thank you!

We then make the following announcement to the conventions waiting outside the door:

Attention convention-goers:

If you are Person number  $k$  from Convention number 1, please go to Room  $3^k$ .

If you are Person number  $k$  from Convention number 2, please go to Room  $5^k$ .

If you are Person number  $k$  from Convention number 3, please go to Room  $7^k$ .

In general, if you are Person number  $k$  from Convention number  $n$ , please go to the Room numbered by the  $(n + 1)$ -th prime number raised to the  $k$ -th power.

Thank you!

(Note: We are assuming that all of our guests and potential guests are math genii, and they can quickly figure out what the  $(n + 1)$ -th prime

number is and raise it to the  $k$ -th power. Otherwise, we wouldn't want them to stay at our luxurious, mathematical hotel in the first place!)

Notice that this guarantees everyone has a room all to themselves. Nobody has to share a room. However, it does leave many rooms empty. Who is in Room 1? Room 6? Room 18? In general, can you characterize the set of rooms that will be empty?

How could we have been more "efficient" about this? Is there a certain announcement we could make so that all the rooms are filled?

Morally speaking, we just verified that  $\mathbb{N}$  and  $\mathbb{N} \times \mathbb{N}$  have the same cardinality. We had countably infinitely many conventions with countably infinitely many people in each, so every person we wanted to accommodate corresponds to an ordered pair of natural numbers, where the first coordinate is their Person number and the second coordinate is their Convention number. Since we were able to match this set of people with the set of rooms (which corresponds to  $\mathbb{N}$ ), then we showed  $\mathbb{N} \times \mathbb{N}$  is countable. (Note: We actually "overdid" it and found a way to embed the set  $\mathbb{N} \times \mathbb{N}$  in a strict subset of  $\mathbb{N}$ !)

This hopefully gives you a flavor for how to think about countable infinities. One important point to keep in mind is that infinity is a cardinality, not a number, in our context here. It's not as if the natural numbers "keep going" and there's some magical number  $\infty$  lying out there past them all. Here, we refer to countably infinite as a cardinality; it represents how "big" something is. It's more like a magnitude than a position.

# Examples

Let's take some of the ideas conveyed by the Hilbert Hotel examples and express them more formally. We'll make use of injections and surjections and bijections. (Oh my!) The following result will be helpful as we go along, so let's prove it now.

Lemma 7.6.11. Let  $S, T$  be any sets. Suppose  $S \subseteq T$ . Then  $|S| \leq |T|$ .

Proof. Define the "identity function"  $f: S \to T$ , given by  $\forall x \in S \cdot f(x) = x$ .

Since  $S \subseteq T$ , this is a well-defined function.

(Note: We couldn't technically define this as the usual identity function  $\mathrm{Id}_S$ , because the domain and codomain might not be equal sets; in essence,  $f$  does the same action as  $\mathrm{Id}_A$  but has a different codomain).

Notice that  $f$  is injective!

(Note: It's not necessarily bijective, because it might be that  $S \neq T$ .)

Since  $f$  is injective, this tells us that  $|A| \leq |B|$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/9c5de7d931735b26979c334025f3a5fd20b47d6f6c179b86427408b268191d0f.jpg)

You might be wondering why we can't conclude  $|A| < |B|$  here. Why is it "  $\leq$ " instead? Certainly,  $\{1,2\} \subseteq \{1,2,3\}$  and  $|\{1,2\}| = 2 < 3 = |\{1,2,3\}$ . This is true for finite sets, but as we shall see in this section, there are infinite sets that have strict subsets of equal cardinality!

Example 7.6.12.  $\mathbb{Z}$  is countably infinite:

We know  $\mathbb{N}$  is countably infinite by definition. The identify function  $\mathrm{Id}_{\mathbb{N}}: \mathbb{N} \to \mathbb{N}$  is obviously a bijection, so  $\mathbb{N}$  is countable.

In this example, we will prove that  $\mathbb{Z}$  is countably infinite! To accomplish this, we need to find a bijection  $f: \mathbb{Z} \to \mathbb{N}$ . We will state one here and then prove it is a bijection by finding its inverse. Before reading on, try to find a bijection on your own! Maybe you'll come up with a different function than ours! If you need a hint for coming up with one, think about this: to prove an infinite set is countably infinite, we want to find a way to start listing the elements one by one. Try to find a pattern that identifies the "1st" integer, and then the "2nd", and then the "3rd", …

Let's define a function  $f: \mathbb{Z} \to \mathbb{N}$  and then prove it is a bijection by identifying  $f^{-1}$ .

Explicit bijection: We choose to define  $f:\mathbb{Z}\to \mathbb{N}$  by setting

$$
\forall z \in \mathbb {Z}. f (z) = \left\{ \begin{array}{l l} - 2 z + 2 & \text{if } z \leq 0 \\ 2 z - 1 & \text{if } z > 0 \end{array} \right.
$$

We chose this function because it "pairs off" the integers with the natural numbers like this:

$$
\begin{array}{c c c c c c c c c} \ldots , & - 3, & - 2, & - 1, & 0, & 1, & 2, & 3, & \ldots \\ & \updownarrow & \updownarrow & \updownarrow & \updownarrow & \updownarrow & \updownarrow & \updownarrow \\ \ldots , & 8, & 6, & 4, & 2, & 1, & 3, & 5, & \ldots \end{array}
$$

(That is, we are pairing off the even natural with the non-positive integers, and the odd natural with the positive integers. Looking at this correspondence, we can see how to "reverse" it. This is how we will find  $f$ 's inverse.)

Next, Define  $F:\mathbb{N}\to \mathbb{Z}$  by

$$
F (n) = \left\{ \begin{array}{l l} - \frac{n}{2} + 1 & \text{if ni se ve n} \\ \frac{n + 1}{2} & \text{if ni so dd} \end{array} \right.
$$

Let's show  $F = f^{-1}$ . Let  $z \in \mathbb{Z}$  be given. We have two cases.

- Suppose  $z \geq 1$ . Then  $f(z) = 2z - 1$ . Notice that  $2z - 1 \in \mathbb{N}$  and  $2z - 1$  is odd. This means

$$
(F \circ f) (z) = F (f (z)) = F (2 z - 1) = \frac{(2 z - 1) + 1}{2} = \frac{2 z}{2} = z
$$

- Suppose  $z \leq 0$ . Then  $f(z) = -2z + 2$ . Notice that  $-2z \geq 0$  so  $-2z + 2 \geq 2$  so  $-2z + 2 \in \mathbb{N}$ . Also,  $-2z + 2$  is even. This means

$$
\begin{array}{l} (F \circ f) (z) = F (f (z)) = F (- 2 z + 2) = - \frac{- 2 z + 2}{2} + 1 \\ = - (- z + 1) + 1 = (z - 1) + 1 = z \\ \end{array}
$$

In either case,  $(F\circ f)(z) = z$  . This shows  $F\circ f = \mathrm{Id}_{\mathbb{Z}}$

Next, let  $n \in \mathbb{N}$ . We have two cases.

Suppose  $n$  is even. Then  $F(n) = -\frac{n}{2} + 1$ . Notice that  $\frac{n}{2} \geq 1$  and so  $-\frac{n}{2} \leq -1 + 1 = 0$ . This means

$$
\begin{array}{l} (f \circ F) (n) = f (F (n)) = f \left(- \frac{n}{2} + 1\right) = - 2 \left(- \frac{n}{2} + 1\right) + 2 \\ = \left(\frac{2 n}{2} - 2\right) + 2 = n \\ \end{array}
$$

- Suppose  $n$  is odd. Then  $F(n) = \frac{n + 1}{2}$ . Notice that  $n + 1 \geq 2$  and so  $\frac{n + 1}{2} \geq 1$ . This means

$$
\begin{array}{l} (f \circ F) (n) = f (F (n)) = f \left(\frac{n + 1}{2}\right) = 2 \left(\frac{n + 1}{2}\right) - 1 = \frac{2 n + 2}{2} - 1 \\ = (n + 1) - 1 = n \\ \end{array}
$$

In either case,  $(f\circ F)(n) = n$ . This shows  $f\circ F = \mathrm{Id}_{\mathbb{N}}$ . Therefore,  $F = f^{-1}$ .

This shows that  $\mathbb{Z}$  and  $\mathbb{N}$  have the same cardinality, that  $|\mathbb{Z}| = |\mathbb{N}|$ . You might feel like there are "twice as many" integers as naturals, but this is where your intuition fails. We can pair up the elements of these two sets one-by-one, so they must be of the same size! This is an example that shows you why the conclusion of Lemma 7.6.11 is the best it can be. Here,  $\mathbb{N} \subset \mathbb{Z}$  (a strict subset) and yet  $|\mathbb{N}| = |\mathbb{Z}|$ . This can only happen when have infinite (not finite) sets, and here is one such example.

(Later in this section, we will in fact prove that this is an equivalent way of characterizing when a set is infinite: whether or not we can find a bijection between the set and a strict subset of itself.)

# Example 7.6.13.  $\mathbb{N} \times \mathbb{N}$  is countably infinite:

With the Hilbert Hotel discussion in the previous section, we essentially argued for the fact that  $\mathbb{N} \times \mathbb{N}$  has the same cardinality as  $\mathbb{N}$ . When we had infinitely-countably-many conventions, each with infinitely-countably-many people in them, we could still fit them all into our hotel with infinitely-countably-many rooms! That was more of an intuitive discussion, though, so let's formally prove this fact here. We will find an explicit bijection between the two sets.

Rather than finding its inverse, though, we will prove it is surjective, and ask for your help in showing that it is injective.

Explicit bijection: Define  $f:\mathbb{N}\times \mathbb{N}\to \mathbb{N}$  by setting

$$
\forall (x, y) \in \mathbb {N} \times \mathbb {N}. \quad f (x, y) = 2^{x - 1} (2 y - 1)
$$

In proving that  $f$  is a bijection, we will be proving this fact:

Every natural number can be written uniquely as a power of 2 times an odd natural number.

Look at the function we defined. It takes a pair of natural numbers and outputs a power of 2 times an odd natural number. Proving this is a bijection shows that it never outputs the same natural twice (injectivity) and every natural number is an output of some pair (surjectivity). You might try playing around with the function, plugging in some values and seeing what happens. Also, you might try working "backwards", trying to figure out what  $f^{-1}$  might possibly do. For instance, take your favorite  $n \in \mathbb{N}$ . Can you express it as a power of 2 times an odd? If  $n$  is odd, this is quite easy, since  $2^0 = 1$ . For instance,

$$
1 1 = 1 \cdot 1 1 = 2^{0} \cdot (2 \cdot 6 - 1) = f (1, 6)
$$

(Notice that we had to use  $x - 1$  and  $2y - 1$  in the definition of  $f$  because we are working with  $\mathbb{N}$ , and  $0 \notin \mathbb{N}$ .)

If  $n$  is even, we can just divide by 2 iteratively until we can't anymore; what's left must be an odd number. For instance:

$$
4 0 = 2 \cdot 2 0 = 4 \cdot 1 0 = 8 \cdot 5 = 2^{3} \cdot (2 \cdot 3 - 1) = f (4, 3)
$$

and

$$
3 2 = 2 \cdot 1 6 = 2^{2} \cdot 8 = 2^{3} \cdot 4 = 2^{4} \cdot 2 = 2^{5} = 2^{5} \cdot (2 \cdot 1 - 1) = f (6, 1)
$$

This observation is crucial in proving that  $f$  is surjective:

$f$  is surjective: We claim  $\forall n\in \mathbb{N}$ $n\in \operatorname{Im}_f(\mathbb{N}\times \mathbb{N})$  . We prove this by a "minimal criminal" argument.

BC: Notice that  $f(1,1) = 2^0 \cdot 1 = 1$ . Thus,  $1 \in \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ .

IH: Suppose we have  $n \in \mathbb{N} - \{1\}$  that has no such representation as a power of 2 times an odd, i.e. suppose  $n \notin \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ .

IS: We have two cases:

- If  $n$  is odd, then … well,  $n \cdot 2^0 = n \cdot 1 = n$  is such a representation. That is, we know  $\frac{n + 1}{2} \in \mathbb{N}$  and we see that

$$
f \left(1, \frac{n + 1}{2}\right) = 2^{0} \cdot \left(2 \cdot \frac{n + 1}{2} - 1\right) = 1 \cdot (n + 1 - 1) = n
$$

so  $n \in \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ . This contradicts our assumption that  $n \notin \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$  so this case is not valid.

- If  $n$  is even, then, consider  $\frac{n}{2}$ . AFSOC we have a representation of  $\frac{n}{2}$  as a power of 2 times an odd, i.e. suppose  $\frac{n}{2} \in \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ . This means  $\exists (x,y) \in \mathbb{N} \times \mathbb{N}$ .  $f(x,y) = \frac{n}{2}$ . Let such  $(x,y)$  be given. Consider, then,  $f(x + 1,y)$  (which is valid since  $x + 1 \in \mathbb{N}$ , as well). We see that

$$
f (x + 1, y) = 2^{x + 1} \cdot (2 y - 1) = 2 \cdot \left(2^{x} \cdot (2 y - 1)\right) = 2 \cdot f (x, y) = 2 \cdot \frac{n}{2} = n
$$

This shows we would have such a representation for  $n$ ; i.e., in fact,  $n \in \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ . Again, this contradicts our assumption that  $n \notin \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ .

Thus,  $\frac{n}{2}$  also has no such representation, i.e.  $\frac{n}{2} \notin \operatorname{Im}_f(\mathbb{N} \times \mathbb{N})$ .

We have shown that, supposing  $n$  is a counterexample to the claim,  $\frac{n}{2}$  is a smaller counterexample to the claim. By a "minimal criminal" argument (since we proved our base case), we conclude that the claim holds for every  $n \in \mathbb{N}$ . This shows  $f$  is surjective.

(Note: You might want to look back at Section 5.5.1 to refresh your memory about how "minimal criminal" arguments work.)

$f$  is injective: You prove this! See Exercise 7.8.21.

Together, we have proven that  $f$  is a bijection, and so  $|\mathbb{N} \times \mathbb{N}| = |\mathbb{N}|$ . That is,  $\mathbb{N} \times \mathbb{N}$ , the set of all ordered pairs of natural numbers, is countably infinite. Does this surprise you at all? Does it seem counter-intuitive? What do you think might be true about the set  $\mathbb{N}^3$  of all ordered triplets of natural numbers? What do you think would happen if we took  $\mathbb{N} \times \mathbb{N} \times \mathbb{N} \cdots$ ? Think about these ideas. Discuss them with your classmates, and try to prove something!

# Example 7.6.14.  $\mathbb{N} \times \mathbb{N}$  as a lattice:

Before moving on to another example, let's show you one more way of thinking about why  $|\mathbb{N} \times \mathbb{N}| = |\mathbb{N}|$ . This will be an intuitive explanation, more like a description of how to define a bijection between the sets without actually making the definition. However, it's a common argument and is well worth seeing.

The idea is to think of  $\mathbb{N} \times \mathbb{N}$  as a lattice of points, like so:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/20ab7f834597e3ef2e99b45acce6797e1842ec8400194ed461d46efb7d48160d.jpg)

To show that this infinite grid of points is countably infinite, we can describe a path that traverses all of the points (surjectivity!) exactly once (injectivity!) and is indexed by the natural numbers (countably infinite!). That is, we can just describe a way to traverse the whole grid in a series of steps; there will be a "1st point" and a "2nd point" and so on.

The key observation to make is that the "northwestern" diagonals of this grid are all finite. Start from the point  $(5,1)$ , for instance, and move upwards and leftwards, diagonally. You will traverse over  $(4,2)$  and  $(3,3)$  and  $(2,4)$  and  $(1,5)$ , and then reach the boundary of the grid. This is true no matter where you start along the bottom row of lattice points.

Let's use this fact to label each lattice points with a natural number based on (a) which diagonal it lies on, and (b) where it lies along that diagonal. We'll treat the diagonal starting at  $(1,1)$  as the 1st diagonal, the one starting at  $(2,1)$  as the 2nd, and so on. This gives us the following labels:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/07ff8d1ea30c2363e49b4ae41d392c0ed13517d2244cc65881ab3438a84d5304.jpg)

We can see that every point in the lattice will lie on exactly one such diagonal. Furthermore, there are countably-infinitely-many such diagonals (they are indexed by  $\mathbb{N}$ ) and there are only finitely-many points on each diagonal. This means (as we will prove below) that the collection of all the points on the diagonals is countably infinite.

You ought to try formalizing this argument by writing down a function that achieves the labeling we've demonstrated. Or, you could at least work with a similar one that also works, i.e. you could move southeastwards instead, or reverse the direction of alternate diagonals …

# Example 7.6.15.  $\mathbb{Q}$  is countably infinite:

This result is one of the more striking examples of our intuition failing with infinite sets and their cardinalities. Think about the elements of  $\mathbb{Q}$  as laid out on the real number line. They're everywhere! In fact, look at Exercise 4.11.26; there, you proved that the rationals are dense, and it is also true that they are dense in  $\mathbb{R}$  (i.e. between any two distinct real numbers lies a rational number). Furthermore, the set of rationals seems so much larger than  $\mathbb{Z}$ : between 0 and 1 alone, there lies infinitely many rational numbers! For these reasons, you might believe that  $\mathbb{Q}$  is uncountably infinite, but this is False.

In this example, we will present several arguments for this fact, especially because we realize it is so strange and striking.

# (1) Intuitive argument:

Consider the following "representation" of  $\mathbb{Q}$  as a union of sets:

$$
\mathbb {Q} “ = ” \quad \mathrm{N} \times \mathrm{N} ” \cup “ - ” (\mathrm{N} \times \mathrm{N}) \cup \{0 \}
$$

In some sense,  $\mathbb{N} \times \mathbb{N}$  corresponds to all the positive rationals. To see why, just consider the function  $f: \mathbb{N} \times \mathbb{N} \to \mathbb{Q}_+$  defined by  $f(x,y) = \frac{x}{y}$ . We definitely output all positive rationals (so  $f$  is a surjection), but  $\frac{4}{2} = \frac{2}{1}$  so this is not an injection. At least, this shows  $|\mathbb{N} \times \mathbb{N}| \geq |\mathbb{Q}|$  because  $f$  is a surjection. Since  $\mathbb{N} \times \mathbb{N}$  is countably infinite, and we certainly expect  $\mathbb{Q}$  to be infinite, this shows the positive rationals are countably infinite.

The set of negative rationals—let's call it  $\mathbb{Q}_{-}$ —must have the same cardinality as the set of positive rationals—let's call it  $\mathbb{Q}_{+}$ . There is a clear bijection between them: define  $g:\mathbb{Q}_{+}\to \mathbb{Q}_{-}$  by setting  $\forall q\in \mathbb{Q}_{+}\cdot g(q) = -q$

All this leaves out is  $0 \in \mathbb{Q}$ . The union of two countably infinite sets is also countably infinite (as we will prove below), and adding on one more element won't change that. Thus,  $\mathbb{Q}$  is countably infinite.

Mind you, this is quite "hand-wavey". All of the "scare quotes" in the "equation" above mean you should take this as just a heuristic argument, and not a proof. However, there are ways to make all of these arguments formal. Try working on this on your own!

# (2) Listing  $\mathbb{Q}$ :

Consider writing a computer program to print out all the positive rational numbers in a list. What algorithm would you use? As long as you can guarantee that your program will "eventually" succeed and print them all, then you have shown  $\mathbb{Q}$  can be enumerated one-by-one, so it must be countably infinite. (Remember, this is why we use  $\mathbb{N}$  as the canonical countably infinite set: we can enumerate its elements one-by-one, we can count them.)

Here's one way that we might write such a program: Follow the same "path through the lattice" argument that we used with  $\mathbb{N} \times \mathbb{N}$  in the previous example. This time, though, just "skip over" any rational you have already printed.

That is, we would print the pair  $(1,1) \leftrightarrow 1$  and then  $(2,1) \leftrightarrow 2$  and then  $(1,2) \leftrightarrow \frac{1}{2}$  and then  $(3,1) \leftrightarrow 3$  and then …

Aha! We have to omit writing  $(2,2) \leftrightarrow 1$ . How did we know that? We see that we already printed 1. How did we know that? We just looked over the list of rationals we had already printed and checked to see if what we were about to print has already appeared. If so, we move on; if not, we print it and then move on.

In terms of the enumeration process, this just means that for every point in the lattice we pass through, we have to check finitely-many things; namely, we have to look over the finitely-large set of rationals we have already printed. This means the printing process at any individual step will take "a little longer" but not infinitely-longer. Thus, our program will eventually print out every rational number; no matter which one you have in mind, we will get to it in finite time.

(3)  $\mathbb{Q}$  is at most countably infinite:

Here's another argument about  $\mathbb{Q}$  being countable. (If this feels like overkill, that's fine, just move on. We just know that this is a surprising result and having a few ways of thinking about it might help!)

Consider this: We can definitely agree a priori that  $|\mathbb{Q}| \geq |\mathbb{N}|$ . This follows from the fact that  $\mathbb{Q} \supseteq \mathbb{N}$ . Now, the only question is whether or not these cardinalities are equal. To reach that conclusion, we would need to find either (a) an injection from  $\mathbb{Q}$  to a countable set, or (b) a surjection from a countable set to  $\mathbb{Q}$ .

We will prove below that that  $\mathbb{Z} \times \mathbb{N}$  is countable. (That is, we will prove generally that the Cartesian product of any two countably infinite sets is also countably infinite.) We can then define the function  $f: \mathbb{Z} \times \mathbb{N} \to \mathbb{Q}$  by

$$
\forall (z, n) \in \mathbb {Z} \times \mathbb {N}. f (z, n) = \frac{z}{n}
$$

This is a surjection onto  $\mathbb{Q}$ . It is definitely not injective (why not?) but we don't care. It shows that  $|\mathbb{Z} \times \mathbb{N}| = |\mathbb{Q}|$ . Once we have proven that  $|\mathbb{Z} \times \mathbb{N}| = |\mathbb{N}|$ , this will have shown that  $|\mathbb{N}| = |\mathbb{Q}|$ .

# (4) Stern-Brocot Tree:

There are other visual representations of  $\mathbb{Q}$ , too! The Stern-Brocot Tree is particularly enlightening. This idea was, in fact, first introduced and developed by a French watchmaker named Achille Brocot who was looking for ways to approximate the measurements of gears he needed to make while building watches. Around the same time (the 1850s and 1860s), the German mathematician Moritz Stern developed the idea. It's amazing to think that a non-mathematician would independently develop this fascinating idea to solve a real-world problem he was facing!

(Do not worry too much about the terminology of graphs and trees here. We will not have occasion to talk about these much further, and are only introducing this as a helpful way to represent  $\mathbb{Q}$  and demonstrate it is countably infinite.)

The root of this tree is 1. (This is the number at the very top of the diagram.) The parent-child relation (the way to generate what lies below a point in the tree) is defined in terms of continued fractions. (We won't describe here what that means; instead, we describe below how to construct the tree.)

What happens with this setup is that any path through the tree from the root to another node yields a sequence of rational numbers that are better and better approximations to the ultimate node; furthermore, each successive rational in the sequence has a larger denominator than the previous one. This is the property that motivated Monsieur Brocot. He needed to determine how big to make two gears inside a watch so that the ratio of their sizes was very close to a particular number. By working downwards through this tree, he could find better approximate ratios to the number he needed! Pretty cool, right?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/d73ca80698f57ce6774a80d4ff88fd31eaebd6a9cd703f0994fd31e65400d19b.jpg)

To actually construct the tree, we find mediants. Given two rationals  $\frac{a}{b}$  and  $\frac{c}{d}$ , the mediant of those two is defined as  $\frac{a + b}{c + d}$ . (Notice that this is a special

object, the mediant; it is not the correct way to add two fractions!)

Each level of the tree consists of all the mediants made from consecutive pairs of rationals in the level above; we don't "count" the directly vertical elements; they are just carried over for ease of reading and construction. Also, notice that the fractions  $\frac{0}{1}$  and  $\frac{1}{0}$  (which is undefined, even!) are included in the outside columns to help generate the elements on the outside of each level.

(Play around with the properties of this tree, and read more about. It is an interesting mathematical object!)

We won't prove here that this tree contains all the rational numbers, but we think you can see why this is believable. Also, we think you can see why the set of all nodes in this tree is countably infinite. Each level has only finitely many nodes, and there are countably-infinitely-many levels.

# Theorems

Now we know that three of our standard sets of numbers— $\mathbb{N}$  and  $\mathbb{Z}$  and  $\mathbb{Q}$ —are all countably infinite, as well as the set  $\mathbb{N} \times \mathbb{N}$ . With the following theorems, we will show you some ways to generate more countably infinite sets from existing ones.

Let's get you warmed up with one helpful result. It says that we can take a countably infinite set and "tack on" finitely-many extra elements, and this keeps the result contably infinite, as well.

Lemma 7.6.16. If  $A$  is countably infinite and  $B$  is finite and  $A \cap B = \emptyset$ , then  $A \cup B$  is countably infinite.

Proof. Left for the reader as Exercise 7.8.19.

Hint: Try using a similar idea to our proof of Theorem 7.6.7.

Remark 7.6.17. Note: The assumption that  $A \cap B = \varnothing$  is not essential in this Lemma, but it makes the proof easier.

When  $A \cap B \neq \emptyset$ , we can apply the result just proven to the set  $A - B$  (which is countably infinite) and the set  $B - A$  (which is finite) to get the countably infinite set  $(A - B) \cup (B - A)$  (since they're disjoint). We can then apply the above result again to that set— $(A - B) \cup (B - A)$ —and  $A \cap B$  to get the countably infinite set

$$
A \cup B = (A - B) \cup (B - A) \cup (A \cap B)
$$

The next result says that this works with  $A, B$  both countably infinite, as well.

Lemma 7.6.18. If  $A$  and  $B$  are countably infinite and  $A \cap B = \varnothing$ , then  $A \cup B$  is countably infinite.

Proof. Since  $A$  and  $B$  are countably infinite, there exist bijections  $f: A \to \mathbb{N}$  and  $g: B \to \mathbb{N}$ . Let such functions be given. We will use them to find a bijection  $h: A \cup B \to \mathbb{N}$ .

First, define the function  $p:\mathbb{N}\to \mathbb{Z} - \mathbb{N}$  by setting  $\forall n\in \mathbb{N}$ .  $p(n) = -n + 1$

This is a bijection because  $p^{-1} : \mathbb{Z} - \mathbb{N} \to \mathbb{N}$  is given by  $p^{-1}(z) = -z + 1$ . (Check this for yourself!)

Since  $p$  and  $g$  are bijections, we know  $p \circ g : B \to \mathbb{Z} - \mathbb{N}$  is a bijection, as well.

Next, we define the piece-wise function  $q:A\cup B\to \mathbb{Z}$  by setting

$$
\forall x \in A \cup B. \qquad q (x) = \left\{ \begin{array}{l l} f (x) & \text{if } x \in A \\ p (g (x)) & \text{if } x \in B \end{array} \right.
$$

This is well-defined because  $A \cap B = \varnothing$ . Furthermore, this is a bijection because it is a bijection on each of the pieces is a bijection. (Again, check this for yourself to make sure it makes sense. Also, see Exercise 7.8.31 which proves this, in generality.)

From previous work, we know how to find a bijection  $r: \mathbb{Z} \to \mathbb{N}$ . (Remember how we did that? Look back at Example 7.6.12!)

Finally, define  $h: A \cup B \to \mathbb{N}$  by  $h = r \circ q$ . This is a composition of bijections, so it is a bijection. This proves  $|A \cup B| = |\mathbb{N}|$ , i.e.  $A \cup B$  is countably infinite.

The next corollary says that we did not, in fact, need to assume that  $A \cap B = \varnothing$ . It made the proof easier. We will ask you to prove this corollary.

Corollary 7.6.19. If  $A$  and  $B$  are countably infinite, then  $A \cup B$  is countably infinite.

Proof. Left for the reader as Exercise 7.8.20.

(Hint: Apply Lemma 7.6.18 to appropriately-chosen sets…

This proves several cases about finding the union of sets. Let's prove a result about taking a Cartesian product.

Theorem 7.6.20. If  $A$  and  $B$  are countably infinite, then  $A \times B$  is countably infinite.

This one is actually easy to prove, but only because we've already proven a result about a canonical set that is a Cartesian product and is countably infinite, itself. Look at how we use  $\mathbb{N} \times \mathbb{N}$  in the proof:

Proof. Suppose  $A, B$  are countably infinite. Then there exist bijections  $f: A \to \mathbb{N}$  and  $g: B \to \mathbb{N}$ . Let such functions be given.

Define the function  $h:A\times B\to \mathbb{N}\times \mathbb{N}$  by

$$
\forall (x, y) \in A \times B. \quad h (x, y) = (f (x), g (y))
$$

We claim this is a bijection. Since  $f, g$  are invertible, we claim that  $H: \mathbb{N} \times \mathbb{N} \to A \times B$  given by

$$
\forall (k, \ell) \in \mathbb {N} \times \mathbb {N}. \quad H (k, \ell) = \left(f^{- 1} (k), g^{- 1} (\ell)\right)
$$

satisfies  $H = h^{-1}$

To see why, notice that

$$
\begin{array}{l} \forall (x, y) \in A \times B. \quad (H \circ h) (x, y) = H (h (x, y)) = H (f (x), g (y)) \\ = \left(f^{- 1} (f (x)), g^{- 1} (g (y))\right) = (x, y) \\ \end{array}
$$

and

$$
\begin{array}{l} \forall (k, \ell) \in \mathbb {N} \times \mathbb {N}. \quad (h \circ H) (k, \ell) = h (H (k, \ell)) = h (f^{- 1} (k), g^{- 1} (\ell)) \\ = \left(f (f^{- 1} (k)), g (g^{- 1} (\ell))\right) = (k, \ell) \\ \end{array}
$$

so  $H\circ h = \mathrm{Id}_{A\times B}$  and  $h\circ H = \mathrm{Id}_{\mathbb{N}\times \mathbb{N}}$  . This shows  $H = h^{-1}$

Therefore,  $h$  is a bijection, and so  $|A \times B| = |\mathbb{N} \times \mathbb{N}| = |\mathbb{N}|$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/5245da8381b4a1357cf93c235bc7231bf58696c6d579aba2a93b09742a137e42.jpg)

By applying induction to the two previous results, we can prove the following:

Corollary 7.6.21. Suppose  $A_1, \ldots, A_n$  are countable (where  $n \in \mathbb{N}$ , so we only have finitely many sets).

Then  $A_{1} \cup \dots \cup A_{n}$  and  $A_{1} \times \dots \times A_{n}$  are countably infinite.

Proof. Left for the reader as Exercise 7.8.22

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/ecbf1fa0-5400-4650-b5f0-4ac2f3f54595/8e2e22634105685ca719fffc8d6f712de1753d55e2b4e1e2a9c6a48f1ffcf7b0.jpg)

# A Countable Union of Countable Sets is Countable

You might wonder now what happens when we take a union or product of a countably-infinite number of sets, each of which is countably infinite … Let's tackle the union case here. This result is so fundamental and important, that we've even reiterated it in the section title here!

Theorem 7.6.22. Suppose we have, for each  $n \in \mathbb{N}$ , a countably infinite set  $A_{n}$ . Then the set

$$
A = \bigcup_{n \in \mathbb {N}} A_{n} = A_{1} \cup A_{2} \cup A_{3} \cup \dots
$$

is also countably infinite.

We will prove this in the case that the sets are pairwise-disjoint, and leave the rest of the details to you.

Proof. Suppose we have, for each  $n \in \mathbb{N}$ , a countably infinite set  $A_{n}$ . Furthermore, suppose  $\forall i, j \in \mathbb{N}$ .  $i \neq j \Rightarrow A_{i} \cap A_{j} = \emptyset$ . Define

$$
A = \bigcup_{n \in \mathbb {N}} A_{n}
$$

We claim  $A$  is countably infinite.

Since each  $A_{n}$  is countably infinite, we know there exists a bijection  $f_{n}:A_{n}\to \mathbb{N}$ , for every  $n\in \mathbb{N}$ . This lets us "number" the elements of every set  $A_{n}$ , based on what the bijections  $f_{n}$  do. Furthermore, we have a number on the  $A_{n}$  sets (they are indexed by  $\mathbb{N}$ ). In essence, then, we have a "numbering" of the elements of  $A$  that corresponds to  $\mathbb{N}\times \mathbb{N}$ . Let's formally define this correspondence.

Let's define a function  $F: A \to \mathbb{N} \times \mathbb{N}$ . Given any  $x \in A$ , we know  $\exists n \in \mathbb{N}$ .  $x \in A_n$  and that this  $n$  is unique. (This follows because the given sets were pairwise-disjoint). Set  $F(x) = (n, f_n(x))$ .

We claim that  $F$  is a bijection. To see why, consider the function  $G:\mathbb{N}\times \mathbb{N}\to A$  defined by

$$
\forall (a, b) \in \mathbb {N} \times \mathbb {N}. G (a, b) = f_{a}^{- 1} (b)
$$

That is,  $G$  uses the first coordinate  $a$  to identify the set  $A_{a}$ , and then uses the function  $f_{a}$  to identify the element of  $A_{a}$  that produced  $b \in \mathbb{N}$  as an output.

(We will leave it to the reader to verify that, indeed,  $G = F^{-1}$ .)

This shows that  $|A| = |\mathbb{N} \times \mathbb{N}| = |\mathbb{N}|$ , so  $A$  is countably infinite.

In the case where the  $A_{n}$  sets are not necessarily pairwise-disjoint … we leave this as Exercise 7.8.37.

Corollary 7.6.23. Suppose we have, for every  $n \in \mathbb{N}$ , a finite set  $A_{n}$ . Furthermore, suppose that these sets are pairwise-disjoint. Define

$$
A = \bigcup_{n \in \mathbb {N}} A_{n}
$$

Then  $A$  is countably infinite.

Proof. Left for the reader as Exercise 7.8.36

This result is very powerful. Let's see it applied to two examples.

# Example 7.6.24. The set of all powers of primes:

Recall the Hilbert Hotel discussion, where we accommodated infinitely many conventions of people that were each infinitely large. We sent people to rooms corresponding to powers of primes. For every  $n \in \mathbb{N}$ , define  $p_n$  to be the  $n$ -th prime number. Then, for every  $n \in \mathbb{N}$ , define

$$
A_{n} = \{p_{n}^{k} \mid k \in \mathbb {N} \}
$$

which is the set of all powers of the  $n$ -th prime. The theorem above says that

$$
\bigcup_{n \in \mathbb {N}} A_{n} = \{\text{al lp ow er so fp ri me s} \}
$$

is countably infinite, as well. Indeed, we should have expected that because that union is just a subset of the natural numbers, which is countably infinite itself!

Example 7.6.25. The set of all finite binary strings:

A binary string is defined to be an ordered list of 0s and 1s. A finite binary string is one that is of finite length.

For example, the following are all finite binary strings:

$$
\begin{array}{c c c c c} 0, & 1, & 1 0 1 0 1 0, & 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 \end{array}
$$

For every  $n \in \mathbb{N}$ , let's define  $F_{n}$  to be the set of all binary strings of length  $n$ . For instance,

$$
\begin{array}{l} F_{1} = \left\{ \begin{array}{c} 0, 1 \end{array} \right\} \\ F_{2} = \{0 0, 0 1, 1 0, 1 1 \} \\ F_{3} = \{0 0 0, 0 0 1, 0 1 0, 1 0 0, 0 1 1, 1 0 1, 1 1 0, 1 1 1 \} \\ \end{array}
$$

and so on. (Notice that  $|F_n| = 2^n$ . Try to prove that!) Then, define the set of all finite binary strings by

$$
F = \bigcup_{n \in \mathbb {N}} F_{n}
$$

An element of  $F$  must have come from some set in the big union; this means that an arbitrary element  $x \in F$  is some binary string with some finite length. That length could be a huuuuuuuuge number, but it is finite. (This points out the distinction between allowing something to be "arbitrarily large (but finite)" and allowing something to be "infinite".)

The point of this example is that  $F$  is countably infinite, according to the theorem above! (Well, it follows from the corollary stated right after, actually.) Contrast this with the set  $S$  of all infinite binary strings, which is—as we will prove shortly—uncountably infinite. We will use these sets of binary strings fairly often as examples!

# Passing Off To A "Limit"

We proved above that if  $A$  and  $B$  are countably infinite, then so are  $A \cup B$  and  $A \times B$ . We also encouraged you to prove (by induction on the number of sets in the union/product) that

$$
A_{1} \cup A_{2} \cup \dots \cup A_{n} = \bigcup_{i \in [ n ]} A_{i} \qquad \text{an d} \qquad \prod_{i \in [ n ]} A_{i} = A_{1} \times A_{2} \times \dots \times A_{n}
$$

are both countably infinite, as well, for any  $n\in \mathbb{N}$

What do these results tell us, if anything, about

$$
A_{1} \cup A_{2} \cup A_{3} \cup \dots = \bigcup_{k \in \mathbb {N}} A_{k}
$$

and

$$
A_{1} \times A_{2} \times A_{3} \dots = \prod_{k \in \mathbb {N}} A_{k}
$$

That is, what happens when we try to "jump to the limit" from having a finite union/product (of arbitrarily large size, but still finite) to having an infinite union/product? Can we make necessary conclusions? Can we find counterexamples?

The main idea is that "passing to a limit" does create some mathematical object, but we can't necessarily pre-suppose that this object has the exact same properties as all of the objects in the sequence that defines that object.

Think about the finite sets  $[n]$ , for every  $n$ . Each of them is finite, but "in the limit" we get  $\mathbb{N}$  which is not finite. So yes, we do get some object (another set), but it doesn't have to have the same properties.

The important theorem above shows that passing to the limit in the union definitely preserves countability. As we will see below in the next section, the product definitely does not preserve countability. (In fact, even an infinite product of finite sets is uncountable. Yikes!)

A similar notion appears in calculus. We promised we would not use calculus, but there is such a natural relationship between these ideas, so we feel compelled to mention an easy example. If you don't get anything out of this, no worries; if you do, though, try to remember this connection and think about how it might fundamentally change your view of everything you learned in calculus.)

Consider a limit, something like

$$
\lim_{x \to \infty} \frac{1}{x} = 0
$$

In what sense is this limit equal to 0? Why would we, as mathematicians over the years, choose to define limits in this way? Formally, this limit makes sense because of the quantified definition of a limit. Let  $P$  be the set of positive real numbers. Then the definition of limit (applied to this example) says

$$
\forall \varepsilon \in P. \exists M \in \mathbb {N}. \forall n \in \mathbb {N}. (n > M \Rightarrow \left| \frac{1}{x} \right| <   \varepsilon)
$$

That is, for any small positive threshold  $(\varepsilon > 0)$ , we can find a specific cutoff point (a large natural number  $M$  that depends on  $\varepsilon$  somehow) such that, for every point after  $M$ , the function  $\frac{1}{x}$  falls within that  $\varepsilon$ -threshold of the limit point, zero.

Notice that this is very different than saying some nonsense like " $\frac{1}{\infty} = 0$ " That's not what's going on. We never actually get to "plug in" the end of the limit and evaluate it. The limit is defined in terms of quantifications, some things that are happening for arbitrarily large values, but not for an infinite value.

# 7.6.4 Uncountable Sets

To start our discussion of uncountable sets, let's prove a result we've mentioned already. Specifically, we will prove that a countably infinite Cartesian product of sets is uncountably infinite. Notice that we don't even need to have the sets be infinite: we can make them all finite with size 2! We will use this result in the next part to demonstrate some examples of uncountable sets, including a familiar set we already know …

# An Uncountable Cartesian Product

Theorem 7.6.26. A countably infinite Cartesian product of sets with just two elements is uncountably infinite. That is,

$$
\{0, 1 \}^{\mathbb {N}} = \{0, 1 \} \times \{0, 1 \} \times \{0, 1 \} \times \dots
$$

is uncountably infinite.

Proof. AFSOC that this set  $\{0,1\}^{\mathbb{N}}$  is actually countably infinite. This means we can find a bijection between this set and  $\mathbb{N}$ ; that is, we can identify a correspondence between all the elements of this set and all of the natural numbers. Thus, there is a  $1st$  element of this set, the element that corresponds to 1; there is a  $2nd$  element of this set, the element that corresponds to 2; and so on.

We don't know exactly what these elements are, we are just guaranteed that this correspondence exists. Still, we can write out all the elements  $y_{i}$  of  $\{0,1\}^{\mathbb{N}}$  in a list. Each  $y_{i}$  is an ordered, infinite list of 0s and 1s, so we can write them like this:

$$
1 \quad \leftrightarrow \quad (a_{1, 1}, a_{1, 2}, a_{1, 3}, a_{1, 4}, a_{1, 5}, \ldots) = y_{1}
$$

$$
2 \quad \leftrightarrow \quad \left(a_{2, 1}, a_{2, 2}, a_{2, 3}, a_{2, 4}, a_{2, 5}, \ldots\right) = y_{2}
$$

$$
3 \quad \leftrightarrow \quad \left(a_{3, 1}, a_{3, 2}, a_{3, 3}, a_{3, 4}, a_{3, 5}, \dots\right) = y_{3}
$$

$$
4 \quad \leftrightarrow \quad \left(a_{4, 1}, a_{4, 2}, a_{4, 3}, a_{4, 4}, a_{4, 5}, \dots\right) = y_{4}
$$

$$
5 \quad \leftrightarrow \quad \left(a_{5, 1}, a_{5, 2}, a_{5, 3}, a_{5, 4}, a_{5, 5}, \dots\right) = y_{5}
$$

.

Every value  $a_{i,j}$  is either 0 or 1. The  $i$  tells us which natural number we correspond to (i.e. the vertical position in the list) and the  $j$  tells us which coordinate we are in (i.e. the horizontal position in the list).

Since we have assumed the correspondence is a bijection, we know that this list contains all of the elements of  $\{0,1\}^{\mathbb{N}}$ . To complete the contradiction argument, we will construct an element of  $\{0,1\}^{\mathbb{N}}$  that is guaranteed to not appear in this list! (This is a version of Cantor's Diagonalization Argument.)

Let's define the object  $x = (x_{1},x_{2},x_{3},\ldots)$  by saying

$$
x_{i} = \left\{ \begin{array}{l l} 0 & \text{if } a_{i, i} = 1 \\ 1 & \text{if } a_{i, i} = 0 \end{array} \right.
$$

That is, we are constructing  $x$  by going down the main diagonal of the grid of elements (so we see all of the elements  $a_{i,i}$ ) and switching the value from a 1 to a 0, or vice-versa.

The following diagram is a specific example of how to do this, and is not part of this more general proof. However, we are including it for the sake of illustration:

$$
\begin{array}{l} 1 \quad \leftrightarrow \quad (\bigoplus , 1, 0, 0, 1, \dots) = y_{1} \\ 2 \quad \leftrightarrow \quad (1, \widehat {0}, 0, 0, 1, \dots) = y_{2} \\ 3 \quad \leftrightarrow \quad (0, 0, \bigoplus_{1}, 1, 0, \dots) = y_{3} \\ 4 \quad \leftrightarrow \quad (1, 1, 0, (\underline {{1}}), 1, \dots) = y_{4} \\ 5 \quad \leftrightarrow \quad (0, 1, 1, 1, \widehat {(0)}, \dots) = y_{5} \\ \begin{array}{l} \vdots \\ = \left(\bigcirc , \bigcirc , \bigcirc , \bigcirc , \bigcirc , \bigcirc , \dots\right) \end{array} \\ \end{array}
$$

Why would we choose to do this? Well, think about whether or not the object  $x$  could possibly belong to the list of elements above.

- Is  $x = y_1$ ? No, because  $x$  is different from  $y_1$  in their first coordinates. (In our example  $x_1 = 0$  because  $y_{1,1} = 1$ .)  
- Is  $x = y_{2}$ ? No, because  $x$  is different from  $y_{2}$  in their second coordinates. (In our example,  $x_{2} = 1$  because  $y_{2,2} = 0$ .)  
- Is  $x = y_{3}$ ? No, because  $x$  is different from  $y_{3}$  in their third coordinates. (In our example,  $x_{3} = 0$  because  $y_{3,3} = 1$ .)

In general, for an arbitrary  $i \in \mathbb{N}$ , we can guarantee that  $x$  and  $y_i$  differ in the  $i$ -th coordinate. Accordingly, none of the  $y_i$  objects can be equal to this new object  $x$ . That is,

$$
\left(\forall i \in \mathbb {N}. x_{i} \neq y_{i, i}\right) \Rightarrow \left(\forall i \in \mathbb {N}. x \neq y_{i}\right)
$$

But the way we defined  $x$ , it is just an ordered, infinite list of 0s and 1s, so it is definitely an element of  $\{0,1\}^{\mathbb{N}}$ , itself.

This is a contradiction. We assumed we could list all the elements of our set, but we then used this ordering to construct an element of our set that definitely does not appear in the list.  $\text{※}$

Therefore,  $\{0,1\}^{\mathbb{N}}$  is uncountably infinite.

Note: This is a very slick argument. It's one of my favorite proofs in all of mathematics. Cantor was a genius for coming up with it and, what's even more interesting, it's actually fairly simple and memorable, as well. We believe that you won't forget this "go down the main diagonal and switch the values" argument. The fact that we could even sumamrize the whole proof in nine words

like that is further indication of its brilliance.

Corollary: A countably infinite product of any sets with at least two elements each is uncountably infinite.

(Note: We really only need to say that none of the sets in the product are empty and that only finitely many of them are allowed to have exactly one element.)

# Examples

You might be wondering now: what types of sets are uncountably infinite? Do we know any? Sure we do! Here are some examples.

# Example 7.6.27. The set of all infinite binary strings:

You may have noticed that the set we used in the proof above—namely  $\{0,1\}^{\mathbb{N}}$  — is "essentially" the set  $S$  of infinite binary strings! An element of  $\{0,1\}^{\mathbb{N}}$  is an infinitely-long ordered list of coordinates, each of which is 0 or 1. An element of  $S$  is an infinitely-long ordered list of 0s and 1s, but just without the parentheses and commas. As such, there is a very natural bijection between the two (just drop the parentheses and commas, or throw them back in), so we will identify these two sets as the same.

We saw above in Example 7.6.25 that the set of all finite binary strings is countably infinite. This latest result shows that the set of all infinite binary strings is uncountably infinite. An alternate proof of this fact involves finding a bijection between  $S$  and  $\mathcal{P}(\mathbb{N})$ , and then applying Cantor's Theorem that says  $|\mathbb{N}| < |\mathcal{P}(\mathbb{N})|$ . (See Exercise 7.8.33 for these details.)

# Example 7.6.28.  $\mathbb{R}$  is uncountably infinite:

This is our first example of a standard set of numbers that is uncountably infinite. We can use the above result to prove this fact.

This claim makes some intuitive sense, since it "looks like" the real number line is "so much bigger" than just  $\mathbb{N}$  or  $\mathbb{Z}$ . But we also saw that  $\mathbb{Q}$  is countably infinite, and there are tons of rational numbers scattered across the real number line; in fact, between any two real numbers there lies infinitely many rationals!

What we will see now is that, yes, it is true that  $\mathbb{R}$  is uncountably infinite. Furthermore, we will even show that  $\mathbb{R}$  and  $\mathcal{P}(\mathbb{N})$  are of the same "size" of infinity; that is, we will show  $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})|$ . (Remember that this is way more informative than just saying both sets are uncountable; there are many levels of uncountably infinite sets, we are just choosing not to talk about them too much so we don't hurt our brains.)

Morally speaking, the idea behind showing  $\mathbb{R}$  is uncountably infinite, first of all, is to relate  $\mathbb{R}$  to the set  $\{0,1,2,3,4,5,6,7,8,9\}^{\mathbb{N}}$ . Every real number can be expressed in decimal notation, which is just some ordered list of countably infinite many digits. There's a decimal point in there somewhere, and there are

issues like  $0.999999 \cdots = 1$ , but those aren't huge deals. Since we already saw that even a "small" set like  $\{0,1\}$  yields an uncountable set when we take its product infinitely many times, then certainly a "bigger" set, like  $\{0,1,\ldots,9\}$  will also give an uncountable set, even factoring in those issues. This is the intuitive argument you can carry around in your head and use to explain the result to your friends. (In fact, this is the argument you will find in most textbooks, as well.)

More formally, we can just prove that  $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})|$ . This stronger result implies that  $\mathbb{R}$  is uncountably infinite (because Cantor's Theorem tells us  $|\mathbb{N}| < |\mathcal{P}(\mathbb{N})|$ ). To do this, we will consider the set

$$
I = \{y \in \mathbb {R} \mid 0 \leq y \leq 1 \}
$$

which is the interval  $[0,1]\subseteq \mathbb{R}$ . We will show that

$$
| \{0, 1 \}^{\mathbb {N}} | = | \mathcal {P} (\mathbb {N}) | = | I |
$$

and then apply some results about bijections between intervals and  $\mathbb{R}$ .

Consider the function  $f_{1}:\{0,1\}^{\mathbb{N}} \to I$  that takes in an infinite binary string, puts a decimal point in front of all the 0s and 1s, and says, "Evaluate this number as a decimal expansion".

As an example, consider the element that is  $(1,1,0,0,1,0,\ldots)$  where the rest are 0s. Then

$$
f_{1} (1, 1, 0, 0, 1, 0, \dots) = 0. 1 1 0 0 1 0 \dots_{\mathrm{DE C}} = \frac{1}{1 0^{1}} + \frac{1}{1 0^{2}} + \frac{1}{1 0^{5}} = \frac{1 1 0 0 1}{1 0 0 0 0 0}
$$

Notice that this is a function because any output is definitely a real number (since it has a decimal expansion; we just provided it) and it is somewhere between 0 and 1, since we put the decimal point in front. Furthermore, notice that  $f_{1}$  is an injection; two different infinite binary strings must be different in some coordinate, so they yield two decimal expansions that differ somewhere and, thus, cannot be the same real number. This shows that  $|\{0,1\}^{\mathbb{N}}| \leq |I|$ .

Consider the function  $f_{2}:\{0,1\}^{\mathbb{N}} \to I$  that takes in an infinite binary string, puts a decimal point in front of all the 0s and 1s, and says, "Evaluate this number as a binary expansion".

As an example, consider the same element as above. Then

$$
f_{2} (1, 1, 0, 0, 1, 0, \dots) = 0. 1 1 0 0 1 0 \dots_{\mathrm{BI N}} = \frac{1}{2^{1}} + \frac{1}{2^{2}} + \frac{1}{2^{5}} = \frac{2 5}{3 2}
$$

Notice that this is a function because any output is definitely a real number; just evaluate the resulting sum of fractions and it yields a real number between 0 and 1 (and even if the series is infinite, it is guaranteed to converge). For example, the input of all 0s yields 0 as an output, and the input of all 1s yields 1 as an output since

$$
\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \dots = \sum_{k \in \mathbb {N}} \frac{1}{2^{k}} = 1
$$

Furthermore, notice that  $f_{2}$  is a surjection. This fact hinges on some external knowledge about rational/irrational numbers; specifically, it is true that any irrational number can be approximated by a sequence of dyadic rational numbers (rationals whose denominators are powers of 2). We won't state or prove these results, but we think that by playing around with some examples, you'll start to see why this works. In fact, do some Googling for binary expansions of irrational numbers and you'll find some interesting results.

Since  $f_{2}$  is a surjection, this shows  $|\{0,1\}^{\mathbb{N}}| \geq |I|$ . Accordingly, we conclude that  $|\{0,1\}^{\mathbb{N}}| = I$ . We also know  $|\mathcal{P}(\mathbb{N})| = |\{0,1\}^{\mathbb{N}}|$  (see Exercise 7.8.33), so we now know that  $|I| = |\mathcal{P}(\mathbb{N})|$ .

The last step is to prove that  $|I| = |\mathbb{R}|$ . Look at Exercise 5 in Section 7.5.4. There, you found a bijection between the set  $J = \{y \in \mathbb{R} \mid -1 < y < 1\}$  and  $\mathbb{R}$ . It is easy to find a bijection between  $J$  and the set  $K = \{y \in \mathbb{R} \mid 0 < y < 1\}$  (try it now!). This shows that  $|\mathbb{R}| = |J| = |K|$ . Furthermore,  $K \subseteq I$  and they differ by only two elements, 0 and 1, so  $|K| = |I|$ . Finally, this shows that  $|I| = |\mathbb{R}|$ , so we conclude that

$$
| \mathbb {R} | = | \mathcal {P} (\mathbb {N}) |
$$

Look at the two arguments we mentioned:

- Considering the set  $\{0,1,2,3,4,5,6,7,8,9\}^{\mathbb{N}}$ , and  
- Considering the set  $\{0,1\}^{\mathbb{N}}$

Both arguments involved some knowledge about decimal expansions (and binary expansions). It seems there is no easy way around this, so we hope that the results above are still convincing. In particular, you might want to play around with the idea that  $f_{2}$  in the discussion above is a surjection but not an injection. Can you convince yourself of these claims? Can you convince someone else?

# Theorems

Let's see one results about uncountable sets. Then, we will state a final theorem about infinite sets, in general, before moving onwards!

Lemma 7.6.29. Suppose  $A$  is uncountably infinite and  $B$  is countably infinite, and  $B \subseteq A$ . Then  $A - B$  is uncountably infinite.

(Note: We don't need to assume that  $B \subseteq A$  here. If this were not the case, we would just consider  $A$  and  $B \cap A$  as the sets, instead.)

Proof. Left for the reader as Exercise 5 in Section 7.6.5.

(Hint: Use a contradiction argument …

# Characterizing a Set as Infinite

To define infinite sets, we first defined finite sets, and then declared any set to be infinite if it is not finite. The following theorem shows us that we could have defined infinite in a different way. Namely, we can say a set is infinite if and only if we can find a bijection to a proper subset of itself. First, let's state and prove this helpful lemma; we will need it in the proof of the theorem below.

Lemma 7.6.30. Let  $A$  be any set. Then,  $A$  is infinite  $\iff$  there exists  $B \subset A$  such that  $B$  is countably infinite.

Proof. The  $\Leftarrow$  direction is obvious. If  $A$  is bigger than some infinite set, it is also infinite.

The  $\Rightarrow$  direction is more interesting. Suppose  $A$  is infinite. Let  $\star \in A$  be some special element. We will take it out of consideration and construct a set  $B$  that is countably infinite and does not contain  $\star$  as an element. This will guarantee  $B \subset A$ , with  $B \neq A$ .

Consider  $A_1 = A - \{\star\}$ . This set is also infinite, so we can choose some element  $b_1 \in A_1$ .

Consider  $A_2 = A_1 - \{b_1\} = A - \{\star, b_1\}$ . This set is also infinite, so we can choose some element  $b_2 \in A_2$ .

Consider  $A_3 = A_2 - \{b_2\} = A - \{\star, b_1, b_2\}$ . This set is also infinite, so we can choose some element  $b_3 \in A_3$ .

We can continue this process forever. Define  $B = \{b_{1}, b_{2}, b_{3}, \ldots\}$ . (Note: we are "passing to a limit" here, but this is acceptable because we are not using this to "preserve" any properties of  $B$ . We are merely constructing the object  $B$ .)

Notice that  $B$  is countably infinite because there is an obvious bijection with  $\mathbb{N}$ .

With this lemma in hand, we can state and prove the next result:

Theorem 7.6.31. Let  $A$  be any set. Then,  $A$  is infinite  $\iff$  there exists  $B \subset A$  such that there exists  $f: A \to B$  that is bijective.

Proof.  $(\Rightarrow)$  Suppose  $A$  is infinite. We must identify a proper subset  $B \subset A$  and a bijection  $f: A \to B$ .

Since  $A \neq \emptyset$ , take any  $x \in A$ . Consider  $B = A - \{x\}$ . Notice  $B \subset A$ .

We want to show there is a bijection  $f: A \to B$ .

By Lemma 7.6.30 above, we know we can find a countably infinite strict subset  $C \subset B$ . (Note:  $A$  is infinite, so  $B = A - \{x\}$  is also infinite, since we only removed one element. If you need more convincing, AFSOC  $B$  is finite, so it has some size; what, then, is the size of  $A$ ?)

Since  $C$  is countably infinite, we can list the elements of  $C$  as  $\{y_1, y_2, y_3, \ldots\}$ .

(Note: The idea is that there exists some bijection  $g: \mathbb{N} \to C$ , so we can let  $y_1 = g(1)$  and  $y_2 = g(2)$  and so on.)

Define  $f:A\to B$  by

$$
\forall y \in A. \quad f (y) = \left\{ \begin{array}{l l} y & \text{if } y \neq y_{i} \text{fo ra ll} i \in \mathbb {N} \text{an d} y \neq x \\ y_{1} & \text{if } y = x \\ y_{i + 1} & \text{if } y = y_{i} \text{fo rs om e} i \in \mathbb {N} \end{array} \right.
$$

This is a bijection because we can identify its inverse function  $F: B \to A$ , which is

$$
\forall z \in B. \quad F (z) = \left\{ \begin{array}{l l} z & \text{if } z \neq y_{i} \text{fo re ve ry} i \in \mathbb {N} \\ x & \text{if } z = y_{1} \\ y_{i - 1} & \text{if } z = y_{i} \text{fo rs om e} i \in \mathbb {N} - \{1 \} \end{array} \right.
$$

We will leave it as an exercise for the reader to verify that  $F = f^{-1}$ . (Draw a picture to intuitively convince yourself, at the very least.)

$(\Leftarrow)$  This direction claims that infinite sets are the only sets that have this property. We will prove this claim by contrapositive. That is, we will show that any finite set cannot have a bijection to a proper subset.

Suppose  $A$  is finite. This means it has a (unique) size, say  $n \in \mathbb{N}$ . Consider an arbitrary proper subset  $B \subset A$ . WWTS there cannot exist a bijection from  $A$  to  $B$ .

AFSOC there is such a bijection  $f: A \to B$ . Since  $B$  is finite and  $B \subset A$ ,  $B$  has some size  $m < n$ . Thus, there is a bijection  $g: B \to [m]$ . Composing these bijections, we get a bijection  $h: A \to [m]$ . Thus,  $|A| = n$  and  $|A| = m$ , so  $m = n$ . However, we also know  $m < n$ . This is a contradiction.

(Note: we can also make this argument via the Pigeonhole Principle, which we haven't yet discussed but will soon. Essentially, we can't have a bijection  $p:[n]\to [m]$  when  $n > m$  because there are "too few boxes" in which to stuff  $n$  "pigeons".)

In the context of solving a problem, perhaps you'll want to argue that some set is infinite. Rather than proving that you cannot possibly find a bijection to any finite set, considering using this theorem! If you can identify a proper subset and a bijection, then you have accomplished your goal, with the help of this result.

# 7.6.5 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) When is a set finite?  
(2) What are two ways to characterize when a set is infinite?  
(3) What is the difference between countably and uncountably infinite? Give two examples of each type.  
(4) Given two countably infinite sets,  $A$  and  $B$ , what set operations can we perform on them that are guaranteed to yield a countably infinite set? Might any set operations on them yield a finite set?  
(5) Is  $\mathbb{R} \times \mathbb{N}$  countably or uncountably infinite? What about  $\mathbb{R} - \mathbb{N}$ ?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Prove Proposition 7.6.9. That is, prove: If  $A$  and  $B$  are finite sets, then

$$
| A \cup B | = | A | + | B | - | A \cap B |
$$

(2) Prove Corollary 7.6.10. That is, prove:

If  $A_{1},\ldots ,A_{n}$  are finite and pairwise-disjoint, then

$$
\left| A_{1} \cup \dots \cup A_{n} \right| = \left| A_{1} \right| + \dots + \left| A_{n} \right|
$$

(3) Find the flaw in the following "spoof" that  $\mathbb{R}$  is countably infinite:

Let  $S\subseteq \mathbb{R}$  be the set defined by  $S = \{y\in \mathbb{R}\mid 0\leq y < 1\}$ .

For every  $x \in S$ , define the set  $A_x = \{x + z \mid z \in \mathbb{Z}\}$ .

(For example,  $A_{1/2} = \{\ldots, -\frac{3}{2}, -\frac{1}{2}, \frac{1}{2}, \frac{3}{2}, \ldots\}$ .)

Since  $\mathbb{Z}$  is countably infinite, each set  $A_{x}$  is countably infinite.

Also, notice that

$$
\mathbb {R} = \bigcup_{x \in S} A_{x}
$$

This is a union of countably infinite sets, so  $\mathbb{R}$  is also countably infinite.

Be sure to point out any particular step that is incorrect, as well as why that step is incorrect. Ideally, you should point out why the ultimate conclusion of the spoof is incorrect, but without just explicitly stating "R is uncountable because we proved that". Why is the incorrect step a misuse of a result, and why is the conclusion of that particular step invalid?

# 7.7. SUMMARY

(4) For each of the following desired situations, provide an example or state that it is impossible.

For example, if the situation were "Finite sets  $A$  and  $B$  such that  $A \cup B$  has size 4", an answer might be "Consider  $A = \{1,2\}$  and  $B = \{3,4\}$ ." If the situation were, "For every  $x \in \mathbb{N}$ , an infinite set  $S_x$ , such that  $\bigcup_{x \in \mathbb{N}} S_x$  is finite", the answer would be " Impossible".

There is no need to prove your answers here; a good example should suffice.

(a) An uncountably infinite set  $A$  and a countably infinite set  $B$  such that  $A \cap B$  is finite.  
(b) Uncountably infinite sets  $C$  and  $D$  such that  $C - D$  is countably infinite.  
(c) Uncountably infinite sets  $E$  and  $F$  such that  $E - F$  is uncountably infinite.  
(d) For every  $x \in \mathbb{N}$ , a countably infinite set  $S_x$ , such that  $\bigcup_{x \in \mathbb{N}} S_x$  is uncountably infinite.  
(e) For every  $y \in \mathbb{R}$ , a countably infinite set  $T_y$ , such that  $\bigcup_{y \in \mathbb{R}} T_y$  is countably infinite.

(5) Prove Lemma 7.6.29. That is, suppose  $A$  is uncountably infinite and  $B \subseteq A$  is countably infinite; prove that  $A - B$  is uncountably infinite.

Use this result to explain why the set of irrational real numbers is uncountably infinite.

# 7.7 Summary

Now, we have fully explored functions and their related properties! We saw that a function is just a relation with a particular property. This desired property corresponds to how we usually think of a function as having an "output" for every possible "input". We formalized these notions mathematically by defining terminology like domain, codomain, and image. Further properties of functions include injectivity and surjectivity. We saw many examples and non-examples of functions with these properties, and discussed how to prove/disprove these properties, relating back to our logical proof techniques.

The notion of a bijection has been particularly helpful and powerful. We related this to the notion of an inverse function. Specifically, we saw and proved that a function is bijective if and only if it has an inverse! This made for an important result later on when we discussed cardinality, where "the bijection is king". The notion of "pairing off elements" helped us make sense of some of the more wild and counter-intuitive results about the "sizes of sets".

We characterized infinite sets as either countably infinite or uncountably infinite. However, we also proved the historically significant result that is Cantor's

Theorem, which shows that there are, in fact, infinitely-many cardinalities! For our purposes here, it was sufficient to distinguish these two types of infinite sets. We saw several examples of each, and proved some theorems about how to create sets of specific cardinalities from others. Ultimately, we find these results intriguing and mathematically instructive. From now on, though, we will be focusing on finite sets only.

# 7.8 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them. Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 7.8.1. For each of the following "rules" and proposed domains and codomains, determine whether the "rule" defines a well-defined function. Explain your answer using examples, if necessary.

(a) Let  $a:\mathbb{Z} - \{1\} \to \mathbb{R}$  be defined by  $a(x) = \frac{x^2}{x - 1}$ .  
(b) Let  $b:\mathbb{Q}\to \mathbb{Q}$  be defined by  $b(x) = \sqrt{|x|}$  
(c) Let  $c: \mathbb{Z} \to \mathbb{Z}$  be defined on every input  $x \in \mathbb{Z}$  by outputting an  $s \in \mathbb{Z}$  such that  $x \equiv s \bmod 3$ .  
(d) Let  $d:\mathbb{N}\to \mathbb{N}$  be defined by  $d(x) = \left\lfloor \frac{x}{10}\right\rfloor$  
(e) Let  $e: \mathcal{P}(\mathbb{N}) \to \mathcal{P}(\mathbb{Z})$  be defined by taking in a set of natural numbers and outputting the set of all integer multiples of the least element of that set.

Problem 7.8.2. Consider the sets  $\mathbb{R}^3 = \{(x,y,z) \mid x,y,z \in \mathbb{R}\}$  and  $\mathbb{R}^2 = \{(a,b) \mid a,b \in \mathbb{R}\}$ .

Consider the function  $f: \mathbb{R}^3 \to \mathbb{R}^2$  defined by  $f(x, y, z) = (xz, yz)$ . Is  $f$  injective? Surjective? Prove your claims.

Problem 7.8.3. Define  $f: \mathbb{R} \to \mathbb{R}$  and  $g: \mathbb{R} \to \mathbb{R}$  by  $f(x) = x + 1$  and  $g(x) = x^2 + x$ .

Find formulas for the compositions  $f \circ g$  and  $g \circ f$ . (Notice that they are different.)

Prove that neither of those compositions is injective.

Problem 7.8.4. Let  $f: \mathbb{Z} \to \mathbb{Z}$  be given by  $f(x) = 2x - 3$ . Let  $g: \mathbb{Z} \to \mathbb{N}$  be given by  $g(z) = |z| + 4$ .

What is the domain of  $g \circ f$ ? What is the codomain?

Write down a rule that defines  $g \circ f$ . Is this function injective? Surjective?

What is  $\operatorname{Im}_{g\circ f}(\mathbb{Z})$ ?

Prove your claims.

Problem 7.8.5. Each of the following rules defines a function from  $\mathbb{N} \times \mathbb{N} \to \mathbb{Z}$ . For each, determine whether the resulting function is injective or surjective, or both, or neither. Prove your claims.

(a)  $f_{1}(a,b) = a - b$  
(b)  $f_{2}(a,b) = 2a + 3b$  
(c)  $f_{3}(a,b) = a$  
(d)  $f_{4}(a,b) = a^{2} - b^{2}$  
(e)  $f_{5}(a,b) = 2^{a}\cdot 3^{b}$

Problem 7.8.6. Define functions  $f_{1}, f_{2}, f_{3}, f_{4}$  with domain  $\mathbb{N}$  and codomain  $\mathcal{P}(\mathbb{N})$  with the following properties, or else explain why the desired properties are not possible to achieve.

- $f_{1}$  is injective and not surjective  
- $f_{2}$  is neither injective nor surjective  
- $f_{3}$  is surjective and not injective  
$f_{4}$  is bijective

Problem 7.8.7. Consider the function  $f: \mathbb{Z} \times \mathbb{Z} \to \mathbb{Z} \times \mathbb{Z}$  defined by

$$
\forall (x, y) \in \mathbb {Z} \times \mathbb {Z}. \quad f (x, y) = (y + 1, 3 - x)
$$

Find a function  $F$  that is the inverse of  $f$ , and prove that it is. What does this tell you about the function  $f$ ?

Problem 7.8.8. Define the set  $S = \{x \in \mathbb{R} \mid 0 < x < 1\}$ . Define the function  $g: S \to \mathbb{R}$  by

$$
g (x) = \frac{2 x - 1}{2 x (1 - x)}
$$

Prove that  $\operatorname{Im}_g(S) = \mathbb{R}$ .

(Hint: You'll need to use the Quadratic Formula.)

Problem 7.8.9. Suppose  $f: A \to B$  and  $g: B \to C$  are functions.

(a) Suppose  $f, g$  are surjections. Prove that  $g \circ f: A \to C$  is also a surjection.  
(b) Suppose  $f, g$  are injections. Prove that  $g \circ f: A \to C$  is also an injection.  
(c) Suppose  $f, g$  are bijections. Prove that  $g \circ f: A \to C$  is also a bijection.

Problem 7.8.10. Suppose  $f: A \to B$  and  $g: B \to C$  are bijections. Define  $h: A \to C$  to be  $h = g \circ f$ .

Prove that  $h$  is invertible and that  $h^{-1} = f^{-1} \circ g^{-1}$ .

(Hint: Use the Associativity of Function Composition.)

Problem 7.8.11. Let  $f: A \to B$  and  $g: B \to C$  be functions. Let  $X \subseteq A$ . Prove that  $\operatorname{Im}_{g \circ f}(X) = \operatorname{Im}_g(\operatorname{Im}_f(X))$ .

Problem 7.8.12. Let  $f: A \to B$  be a bijection, so  $f^{-1}: B \to A$  is a function. Let  $X \subseteq A$ . Prove that  $\operatorname{Im}_f(X) = \operatorname{Pre}\operatorname{Im}_{f^{-1}}(X)$ .

Problem 7.8.13. Let  $A, B$  be sets and let  $f: A \to B$  be a function. Suppose  $X, Y \subseteq A$ .

(a) Is it necessarily true that the following equality holds?

$$
\operatorname{Im}_{f} (X \cup Y) = \operatorname{Im}_{f} (X) \cup \operatorname{Im}_{f} (Y)
$$

State your claim and prove it.

(b) Is it necessarily true that the following equality holds?

$$
\operatorname{Im}_{f} (X \cap Y) = \operatorname{Im}_{f} (X) \cap \operatorname{Im}_{f} (Y)
$$

State your claim and prove it.

Problem 7.8.14. Let  $f: A \to B$  be a function. Define the relation  $\sim$  on  $B$  by saying, for any  $x, y \in B$ ,

$$
x \sim y \iff \operatorname{Pr eI m}_{f} (\{x \}) = \operatorname{Pr eI m}_{f} (\{y \})
$$

Explain why  $\sim$  is an equivalence relation.

What are the equivalence classes?

Supposing that  $f$  is surjective, what are the equivalence classes?

Problem 7.8.15. Let  $f: A \to B$  be a function. Define the relation  $\approx$  on  $A$  by saying, for any  $x, y \in A$ ,

$$
x \approx y \iff f (x) = f (y)
$$

Is  $\approx$  an equivalence relation? If so, prove it, and describe the equivalence classes. If not, provide a counterexample.

Now, suppose that  $f$  is an injection. Is  $\approx$  an equivalence relation? If so, prove it, and describe the equivalence classes. If not, provide a counterexample.

Problem 7.8.16. Let  $f: A \to B$  be a function, and let  $X, Y \subseteq A$ . Consider the claim that  $\operatorname{Im}_f(X) \cap \operatorname{Im}_f(Y) \subseteq \operatorname{Im}_f(X \cap Y)$ . What is wrong with the following "spoof" of that claim?

Let  $z \in \operatorname{Im}_f(X) \cap \operatorname{Im}_f(Y)$ . Since  $z \in \operatorname{Im}_f(X)$ , this means  $\exists a \in X$  such that  $f(a) = z$ . Since  $z \in \operatorname{Im}_f(Y)$ , this means  $\exists a \in Y$  such that  $f(a) = z$ . Since  $a \in X$  and  $a \in Y$ , we this means  $a \in X \cap Y$ . Since  $f(a) = z$ , this means  $z \in \operatorname{Im}_f(X \cap Y)$ .

Provide a counterexample to show that the claim is, in fact, False.

Problem 7.8.17. Prove/disprove whether  $\mathcal{P}(\mathbb{N})$  and  $\mathcal{P}(\mathbb{Z})$  have the same cardinality.

Problem 7.8.18. Fix an arbitrary  $n \in \mathbb{N}$ . Consider the set  $[n] = \{1,2,3,\dots,n\}$ .

Let  $E$  be the set of subsets of  $[n]$  that have an even number of elements (like  $\varnothing$  or  $\{1,4\}$ ), and let  $O$  be the set of subsets of  $[n]$  that have an odd number of elements (like  $\{5\}$  or  $\{1,2,3\}$ ).

Define a function  $p: E \to O$  that is a bijection, and prove that it is a bijection.

(Hint: Write out some small cases, where  $n = 1$  and  $n = 2$  and  $n = 3$ . Then try to generalize.)

Problem 7.8.19. Prove Lemma 7.6.16.

Hint: Try using a similar idea to our proof of Theorem 7.6.7: use the size of  $B$  to "bump up" the bijection between  $A$  and  $\mathbb{N}$  by a certain amount.

Problem 7.8.20. Prove Corollary 7.6.19. That is, suppose  $A$  and  $B$  are countably infinite sets; prove that  $A \cup B$  is countably infinite by applying Lemma 7.6.18 to appropriately-chosen sets.

Problem 7.8.21. Look back at Example 7.6.13. There, we defined  $f: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  by setting

$$
\forall (x, y) \in \mathbb {N} \times \mathbb {N}. \quad f (x, y) = 2^{x - 1} (2 y - 1)
$$

Prove that  $f$  is injective.

Problem 7.8.22. Prove Corollary 7.6.21. That is, suppose we have finitely-many sets— $A_1, A_2, \ldots, A_n$ —where each set is countably infinite; prove that

$$
A_{1} \cup A_{2} \cup \dots \cup A_{n}
$$

and

$$
A_{1} \times A_{2} \times \dots \times A_{n}
$$

are both also countably infinite.

Problem 7.8.23. Consider the set  $A$ , defined by

$$
A = \{(a, b) \in \mathbb {N} \times \mathbb {N} \mid a \leq b \}
$$

Prove that  $A$  is countably infinite in two ways:

(1) By writing  $A$  as a union of sets and citing a result.  
(2) By finding an explicit bijection between  $A$  and a countable set of your choosing.

Problem 7.8.24. Define  $g: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  by setting

$$
g: \mathbb {N} \times \mathbb {N} \rightarrow \mathbb {N} \quad \forall (x, y) \in \mathbb {N} \times \mathbb {N}. \quad g (x, y) = (x + y)^{2} + x
$$

Prove that  $g$  is (a) injective and (b) not surjective.

Problem 7.8.25. Let  $A, B, C$  be sets. Let  $f: A \to B$  and  $g: B \to C$  and  $h: B \to C$  be functions.

(a) Suppose  $g = h$ . Is it necessarily True that  $g \circ f = h \circ f$ ? Prove or disprove this claim.  
(b) Suppose  $g \circ f = h \circ f$ . Is it necessarily True that  $g = h$ ? Prove or disprove this claim.

Problem 7.8.26. Let  $A, B$  be finite sets, with  $|A| = |B| = n$ . Suppose  $f: A \to B$  is a function. Prove that

$$
f \text{is in je ct iv e} \Longleftrightarrow f \text{is su rj ec ti ve}
$$

Problem 7.8.27. Consider the following claim:

Suppose \( f: A \to B \) and \( g: B \to C \) are functions. Suppose \( g \circ f:

$A\to C$  is injective.

Then  $g$  is also injective.

What is wrong with the following "spoof" of this claim?

Suppose  $g \circ f$  is an injection. We want to show  $g$  is an injection.

Let  $x, y \in B$  be given. Suppose  $g(x) = g(y)$ .

We know  $\exists a, b \in A$  such that  $f(a) = x$  and  $f(b) = y$ .

Since  $g$  is a well-defined function, this means  $g(f(a)) = g(x)$  and  $g(f(b)) = g(y)$ .

Since  $g \circ f$  is injective and  $g(f(a)) = g(f(b))$ , this means  $a = b$ .

Since  $f$  is a well-defined function, then  $f(a) = f(b)$ .

This means  $x = y$ . Thus,  $g$  is injective.

Also, find a counterexample that shows the claim's conclusion is incorrect.

Problem 7.8.28. Let  $a, b \in \mathbb{R}$  be arbitrary and fixed. Suppose  $a^2 + b^2 \neq 0$ .

Consider the function  $f:\mathbb{R}\times \mathbb{R}\to \mathbb{R}\times \mathbb{R}$  defined by

$$
\forall (x, y) \in \mathbb {R} \times \mathbb {R}. \quad f (x, y) = (a x - b y, b x + a y)
$$

Prove that  $f$  is a bijection by finding its inverse and proving that inverse is correct.

Problem 7.8.29. Let  $A$  and  $B$  be finite sets and suppose  $|A| = |B|$ .

Suppose  $f:A\to B$  is a function that is injective.

Prove that  $f$  must also necessarily be surjective by showing  $\operatorname{im}_f(A) = B$ .

Problem 7.8.30. Let  $k \in \mathbb{N} - \{1\}$  be given. Define

$$
S_{1} = \{X \in \mathcal {P} ([ k ]) \mid k \notin X \}
$$

and

$$
S_{2} = \left\{X \in \mathcal {P} ([ k ]) \mid k \in X \right\}
$$

(a) Prove that the sets  $S_{1}$  and  $S_{2}$  form a partition of  $\mathcal{P}([k])$  
(b) Define a function  $f_{1}: S_{1} \to \mathcal{P}([k - 1])$  that is a bijection and prove that it is.  
(c) Define a function  $f_{2}: S_{2} \to \mathcal{P}([k - 1])$  that is a bijection and prove that it is.  
(d) Use what you proved in (a) and (b) and (c) to write an induction proof that  $\mathcal{P}([n])$  has  $2^n$  elements, for every  $n \in \mathbb{N}$ .

Note: Because of the restriction  $k \geq 2$  above, make  $n = 1$  your base case, use  $n = k \geq 1$  in your Induction Hypothesis, and prove the claim for  $n = k + 1$  in the Induction Step.

Problem 7.8.31. Let  $A, B, C, D$  be sets, and suppose  $A \cap B = C \cap D = \varnothing$ .

Suppose  $f: A \to B$  and  $g: C \to D$  are bijections.

Define the piece-wise function  $h:A\cup B\to C\cup D$  by setting

$$
\forall x \in A \cup B. h (x) = \left\{ \begin{array}{l l} f (x) & \text{if } x \in A \\ g (x) & \text{if } x \in B) \end{array} \right.
$$

Explain why  $h$  is a well-defined function. Then, prove it is a bijection.

Problem 7.8.32. In this problem, you will prove that whenever  $A$  and  $B$  are finite with  $|A| = a$  and  $|B| = b$ , it follows that  $|A \times B| = ab$ . This will be structured as a "double induction" proof on the two variables  $a, b \in \mathbb{N}$ .

(a) Show that  $|[1] \times [1]| = 1$ . (This is very, very easy, but necessary.)

(b) Suppose  $n \in \mathbb{N}$  and  $|[1] \times [n]| = n$ . Show that  $|[1] \times [n + 1]| = n + 1$ .  
(c) Explain why (a) and (b) have shown that  $\forall n\in \mathbb{N}$  .  $\left|\left[1\right]\times \left[n\right]\right| = n$  
(d) Suppose  $k \in \mathbb{N}$  and suppose  $\forall n \in \mathbb{N}$ .  $|[k] \times [n]| = kn$ . Show that  $\forall n \in \mathbb{N}$ .  $|[k + 1] \times [n]| = (k + 1)n$ .  
(e) Explain why (c) and (d) have shown that  $\forall k, n \in \mathbb{N}$ .  $\left|\left[k\right] \times \left[n\right]\right| = kn$ .  
(f) Explain why (e) proves the result stated in the problem description above.

Problem 7.8.33. Let  $S$  be the set of all infinite binary strings. (That is, elements of  $S$  are infinitely-long strings of 0s and 1s.)

Find a bijection between  $S$  and  $\mathcal{P}(\mathbb{N})$ . Use this to prove that  $S$  is uncountably infinite.

Problem 7.8.34. For each of the following sets, you are given its cardinality. Prove that the given cardinality is correct by finding a bijection to a relevant set and/or citing a result.

(Hint: If you don't use some kind of inductive argument, your proof might not be rigorous enough …)

(a)  $A$  is the set of all functions from  $\mathbb{N}$  to  $\mathbb{N}$ . Show that  $A$  is uncountably infinite.

(Hint: Compare  $A$  with the set  $S$  of all functions from  $\mathbb{N}$  to  $\{1,2\}$ . Can you explain why  $S$  is uncountably infinite? What does this say about  $A$ ? …)

(b)  $B$  is the set of all functions from  $\mathbb{N}$  to  $\mathbb{N}$  with the additional property that

$$
\forall x \in \mathbb {N}. f (x + 1) = f (x) + 1
$$

Show that  $B$  is countably infinite.

(c)  $C$  is the set of all functions from  $\mathbb{N}$  to  $\mathbb{N}$  with the additional properties that

$$
\forall x \in \mathbb {N}. f (x + 1) = f (x) + 1
$$

$$
f (1) = 4 2
$$

Show that  $C$  is finite, and has only one element.

Problem 7.8.35. Look back at Example 7.6.14 where we argued (informally) that  $\mathbb{N} \times \mathbb{N}$  is countably infinite by depicting the set as a lattice of points and describing a countably infinite path that covers all its points.

Formalize this argument by defining a function  $f: \mathbb{N} \times \mathbb{N} \to \mathbb{N}$  (or vice-versa) that achieves the path we described (or a similar one) and proving it is a bijection.

Problem 7.8.36. Prove Corollary 7.6.23. That is prove, that a countably infinite union of finite sets that are pairwise-disjoint is countably infinite.

Problem 7.8.37. Consider Theorem 7.6.22, which states that a countably infinite union of countably infinite sets is also countably infinite. In our proof, we only considered the case where the given sets were pairwise-disjoint. In this problem, you should prove the general case, where the sets are not necessarily pairwise-disjoint.

(Hint: Consider the functions we used in our proof. Can you adapt them to find a surjection from  $\mathbb{N} \times \mathbb{N}$  to the union of the sets?)

Problem 7.8.38. Consider the set  $S$  of all infinite binary strings. We proved that  $S$  is uncountably infinite before.

Consider the set  $T \subseteq S$  that is the set of all infinite binary strings with only finitely many 1s.

In this problem, you will prove that  $T$  is, in fact, countably infinite!

(a) Consider the set  $\mathbb{N}^k$  of all ordered  $k$ -tuples of natural numbers. (Note:  $\mathbb{N}^1 = \mathbb{N}$  and  $\mathbb{N}^2 = \mathbb{N} \times \mathbb{N}$ .)

Provide an inductive argument that shows that  $\mathbb{N}^k$  is countably infinite for every  $k\in \mathbb{N}$ .

(Hint: This should be a pretty short proof. You should appeal to a result proven in lecture about Cartesian products of countably infinite sets.)

(b) For every  $k \in \mathbb{N}$ , let  $T_k \subseteq T$  be the set of all infinite binary strings with exactly  $k$  1s.

Find a bijective (or, at least, injective) function from  $T_{k}$  to  $\mathbb{N}^{k}$ . Explain why your function is well-defined and is a bijection (or injection).

(c) Use (b) to deduce that  $T_{k}$  is countably infinite. (Careful: If you found only an injection, you should also explain why  $T_{k}$  is not finite.)  
(d) Express  $T$  as a union of sets and deduce that  $T$  is countably infinite.

(Hint: You'll need to apply an important Theorem from lecture.)

(Side note: Think about the consequences of this result. With a simple bijection, you can deduce that the set of all infinite binary strings with only finitely many 0s is also countably infinite. This means that the reason  $S$ , the set of all infinite binary strings, is uncountably infinite is completely tied to the set of strings with both infinitely many 1s and 0s. That set alone is big enough to make  $S$  uncountable!)

Problem 7.8.39. (a) Let  $n \in \mathbb{N}$ . Consider the set

$$
S = \{f: [ n ] \to [ n ] \mid f \text{is ab ij ec ti on} \}
$$

Show that  $S$  is closed under composition; that is, prove that

$$
\forall f, g \in S. f \circ g \in S
$$

(Hint: Cite a problem from this section of chapter exercises.)

(b) Consider the set

$$
T = \left\{f: \mathbb {N} \to \mathbb {N} \mid f \text{is ab ij ec ti on an d} \{i \in \mathbb {N} \mid f (i) \neq i \} \text{is fi ni te} \right\}
$$

Show that  $T$  is also closed under composition.

(c) Show that  $T$  is closed under inverses; that is, prove that

$$
\forall f \in T. f^{- 1} \text{ex is ts} \wedge f^{- 1} \in T
$$

(d) Consider the set

$$
U = \left\{f: \mathbb {N} \to \mathbb {N} \mid f \text{is ab ij ec ti on} \right\}
$$

Prove that  $U$  is closed under inverses.

(e) Prove that

$$
\forall f \in T. \forall g \in U - T. (f \circ g \notin T \land g \circ f \notin T)
$$

(f) Find a counterexample to show that  $U - T$  is not closed under composition.

(g) Furthermore, given  $A \subseteq \mathbb{N}$  with  $A$  finite, find functions  $f, g \in U - T$  such that

$$
\{i \in \mathbb {N} \mid (f \circ g) (i) \neq i \} = A
$$

(h) What are the cardinalities of  $S, T, U$ ? If your answer is "finite", also state the size. If your answer is "infinite", also state whether it is countable or uncountable and prove your claim by finding a bijection to an appropriate set or citing a relevant result.

# 7.9 Lookahead

In the next chapter, we will study combinatorics, the mathematical branch of "counting things". We saw in the section on cardinality that many results about finite sets seemed rather intuitive. When we study combinatorics, we will be describing the elements of a set by characterizing what properties they have, rather than simply stating them all or listing them. This will actually make it quite interesting (and sometimes very difficult!) to determine just how many elements we have described. Combinatorics is the study of techniques to determine the number of elements of a set with certain properties. We will state and prove some fundamental principles of counting (appealing to results from this chapter, in fact) and use them to build more advanced techniques and solve some interesting problems.