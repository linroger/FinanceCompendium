---
title: "Functions and Cardinality: Inputs, Outputs, and The Sizes of Sets"
parent_directory: "Everything You Always Wanted to Know About Mathematics"
formatted: 2025-12-21 11:03:25 AM
formatter_model: grok-code-fast-1
cli_tool: opencode
primary_tags:
- functions and relations
- bijective functions
- set cardinality
- infinite sets
- function composition
- inverse functions
secondary_tags:
- function properties
- image and preimage
- cardinality comparison
- countable sets
- uncountable sets
- mathematical proofs
cssclasses: academia
---

# Functions and Cardinality: Inputs, Outputs, and The Sizes of Sets

## 7.1 Introduction

We are continuing our two-chapter development of functions. In this chapter, we will formally define a function. Specifically, we will see that a function is really a particular kind of relation with certain properties. That's why we took the time to explore relations to begin with—besides the fact that they are interesting and useful in their own right, of course. After defining a function, we will explore what kinds of properties functions might have through many examples and proofs. The definitions and theorems and proofs we see in this exploration will make use of all of the concepts we have developed so far, especially the proof techniques from Section 4.9.

Later in this chapter, we will use the concept of a bijective function—essentially, a "pairing up" of elements of two sets—to talk about the "sizes" of sets and how to compare them. This topic, cardinality, will show us some rather remarkable and counterintuitive facts about infinite sets. It will also provide us an inroad into the next chapter, where we restrict our focus to finite sets and how to count them.

## 7.1.1 Objectives

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

## 7.1.2 Segue from previous chapter

## 7.1.3 Motivation

## 7.1.4 Goals and Warnings for the Reader

We want to make the same warnings and recommendations we did in the last chapter, as well. We are continuing to explore some abstract areas of mathematics. This chapter, in particular, will take a concept you might be familiar with visually and intuitively and place it on a more rigorous standing. Whenever possible, we will appeal to our collective intuitions, but there will be no way to avoid the kind of abstract thinking and problem-solving we have been developing, either. In particular, we won't always be able to associate a function with its graph, which is a standard (and helpful, mind you) way of learning about graphs early on in our mathematical careers. Furthermore, some of the results presented in our discussion of cardinality will laugh wholeheartedly in the face of your intuitions. Seriously! We will see some strange, counter-intuitive facts, and it will help to keep an open mind about them.

## 7.2 Definition and Examples

## 7.2.1 Definition

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

## 7.2.2 Examples

### The word "Range"

### "Well-defined" Functions

### The Identity Function

### Non-Examples

## 7.2.3 Equality of Functions

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

## 7.2.4 Schematics

## 7.2.5 Questions & Exercises

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

## 7.3 Images and Pre-images

## 7.3.1 Image: Definition and Examples

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

## 7.3.2 Proofs about Images

## 7.3.3 Pre-Image: Definition and Examples

## 7.3.4 Proofs about Pre-Images

## 7.3.5 Questions & Exercises

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

## 7.4 Properties of Functions

## 7.4.1 Surjective (Onto) Functions

## 7.4.2 Injective (1-to-1) Functions

## 7.4.3 Proof Techniques for Jections

## 7.4.4 Properties of Functions

## 7.4.5 Bijections

## 7.4.6 Questions & Exercises

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

## 7.5 Compositions and Inverses

## 7.5.1 Composition of Functions

## 7.5.2 Inverses

## 7.5.3 Bijective $\iff$ Invertible

## 7.5.4 Questions & Exercises

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

## 7.6 Cardinality

## 7.6.1 Motivation and Definition

## 7.6.2 Finite Sets

## 7.6.3 Countably Infinite Sets

## 7.6.4 Uncountable Sets

## 7.6.5 Questions & Exercises

## 7.7 Summary

## 7.7.1 Summary

## 7.8 Chapter Exercises

## 7.9 Lookahead

In the next chapter, we will study combinatorics, the mathematical branch of "counting things". We saw in the section on cardinality that many results about finite sets seemed rather intuitive. When we study combinatorics, we will be describing the elements of a set by characterizing what properties they have, rather than simply stating them all or listing them. This will actually make it quite interesting (and sometimes very difficult!) to determine just how many elements we have described. Combinatorics is the study of techniques to determine the number of elements of a set with certain properties. We will state and prove some fundamental principles of counting (appealing to results from this chapter, in fact) and use them to build more advanced techniques and solve some interesting problems.