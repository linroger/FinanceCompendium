---
title: Chapter 5 Rigorous Mathematical Induction A Formal Restatement
parent_directory: Everything You Always Wanted to Know About Mathematics
formatted: 2025-12-21 09:40:00 AM
formatter_model: claude-sonnet-4-5-20251001
cli-tool: claude-code
primary_tags:
- rigorous mathematical induction
- principle of mathematical induction
- strong induction proof
- well-ordering principle
- inductive proof techniques
secondary_tags:
- mathematical induction formal restatement
- domino analogy induction
- regular vs strong induction
- induction variants
- minimal criminal arguments
- fibonacci sequence closed form
- prime factorization existence
- generalized de morgan law
- induction proof template
- backwards induction
- induction on odds evens
cssclasses: academia
---

# Chapter 5 Rigorous Mathematical Induction: A Formal Restatement

# 5.1 Introduction

It might seem like we're being redundant by including this chapter after having already discussed mathematical induction. Our goals are many, though, and you will see afterwards why we have turned our eye backwards a bit to discuss this material once more.

First, we feel a little uncomfortable with how informal (mathematically speaking) we were with our initial treatment of induction. Second, we left a few lingering questions back in Chapter 2. What was different about some of the later examples we saw, like the Takeaway game and the Tower of Hanoi? Didn't they seem to use "more assumptions" in their inductive arguments than the other examples, like our proof that  $\sum_{k\in [n]}k = \frac{n(n + 1)}{2}$ ? We think so, and we will address those differences here. Third, there are plenty of examples left to be seen that are interesting and useful facts in their own right, and working through them will help to develop our understanding of the mathematical language we are beginning to speak with each other. Fourth, the final theorem stated and proved (with your help!) in this chapter will be a striking example of equivalence; specifically, we will show that three theorems are all connected by biconditional statements! (This will be the first great example of a "The following are equivalent…"-style theorem, like we pointed out in the proof strategy for biconditional statements, in Section 4.9.6.)

# 5.1.1 Objectives

Since we have discussed induction before and are just returning to this topic, we will forego the usual introductory matter at the beginning of this chapter.

Instead, we will summarize the main objectives of this chapter here via a series of statements.

By the end of this chapter, you should be able to …

- State the Principle of Mathematical Induction and describe how its proof is related to the set of natural numbers.  
- State the Principle of Strong Mathematical Induction, compare and contrast this with the previous principle, and describe how it can be proven.  
- Use inductive arguments to prove claims and, in particular, identify when a strong inductive argument is required.  
- Understand and explain some variants of mathematical induction, and identify problems where these variants might be useful.  
- State the Well-Ordering Principle and explain its relationship to mathematical induction.

# 5.2 Regular Induction

This first section concerns the kind of inductive arguments we have seen before. You will see why, in the next section, we would choose to refer to this as "Regular" Induction.

# 5.2.1 Theorem Statement and Proof

Here, let's recall the statement of the Principle of Mathematical Induction that we gave in Chapter 3. Think about how it follows the Domino Analogy, or whichever analogy works best to help you understand an inductive process. You might have missed this Theorem statement if you didn't complete the Optional Reading about Defining  $\mathbb{N}$ , in Section 3.8, but that's okay. We're confident you can still read this and formulate it in a way that corresponds to an inductive process.

Theorem 5.2.1 (Principle of Mathematical Induction). Let  $P(n)$  be some "fact" or "observation" that depends on the natural number  $n$ . Assume that

1. $P(1)$  is a true statement.  
2. Given any  $k \in \mathbb{N}$ , if  $P(k)$  is true, then we can conclude necessarily that  $P(k + 1)$  is true.

Then the statement  $P(n)$  must be true for every natural number  $n \in \mathbb{N}$ .

Look at all of these wordy sentences and phrases and hand-wavey terms. Some "fact" that depends on a natural number? Sounds like a variable proposition, right? "If … then we can conclude necessarily …" Sounds like a conditional statement, doesn't it? All of this language is meant to express some logical underpinnings, and we can restate the whole theorem now, using the concepts and notation developed in the previous chapter. Try your hand at doing this first, before looking at our version. While you're at it, try remembering how we proved that theorem. (Again, you might have missed this if you skipped this optional reading, and that's fine.) Look back to Section 3.8.2 and remind yourself, because we will follow that same proof here, but we'll use the logical symbols and tools that we now have in hand. Ready? Here we go!

Theorem 5.2.2 (Principle of Mathematical Induction). Let  $P(n)$  be a variable proposition. Suppose that

(1)  $P(1)$  holds True, and  
(2)  $\forall k\in \mathbb{N}.P(k)\Rightarrow P(k + 1)$  holds True

Then  $\forall n\in \mathbb{N}$ $P(n)$  holds True.

That's all there is to it! This encapsulates all the same ideas—that some initial fact holds, and that every fact implies the next one, making all the facts hold—but it does so using logical symbols and language. Do you see how they say the same thing? Make sure you do before reading on!

Our goal now is to prove this theorem. Yes, we will prove that mathematical induction is a valid proof technique! Why shouldn't we? We proved (via a truth table) that a conditional statement is logically equivalent to its contrapositive, which gave us a proof strategy. Why shouldn't we prove this one, as well?

Before we show the proof, though, we want you to read the section on defining the natural numbers, Section 3.8. It contains the following key definitions, which we will make use of in the forthcoming proof. In that section, we defined what it means to be an inductive set and then stated that  $\mathbb{N}$  is the "smallest" inductive set, in the sense that  $\mathbb{N}$  is a subset of all the inductive sets in the universe. This is the property we wanted  $\mathbb{N}$  to have, and these definitions made it so. We will give you those important definitions right here—rewritten slightly, using logical notation and foregoing some set theoretic concepts—but we also suggest that you read that section to grasp the full extent of the discussion.

Definition 5.2.3. Let  $I$  be a set. If the following conditions hold:

1. $1 \in I$ , and  
2. For any element  $k$ , the implication  $k \in I \Rightarrow k + 1 \in I$  holds;

then  $I$  is called an inductive set.

Definition 5.2.4. The set of all natural numbers is the set

$$
\mathbb{N} := \{x \mid \text{every inductive set } I, x \in I \}
$$

Put another way,  $\mathbb{N}$  is the smallest inductive set:

$$
\mathbb{N} = \bigcap_{I\in \{S | S \text{ is inductive}\}}I
$$

Okay, now we're ready for the proof!

Proof. Let  $P(n)$  be a variable proposition, defined for every natural number  $n$ . Suppose that the two conditions given in the theorem do hold, namely

(1)  $P(1)$  holds True, and  
(2)  $\forall k\in \mathbb{N}$ $P(k)\Rightarrow P(k + 1)$  holds True

Let  $S$  be the set of instances for which  $P(n)$  is True. That is, define

$$
S = \{n \in \mathbb{N} \mid P(n) \text{ isTrue} \}
$$

By definition (using set-builder notation),  $S \subseteq \mathbb{N}$ .

Condition (1) above guarantees that  $1 \in S$ .

Condition (2) above guarantees that  $\forall k\in \mathbb{N}.k\in S\Rightarrow k + 1\in S$

Together, these two conditions guarantee that  $S$  is an inductive set. By the definition of  $\mathbb{N}$  above, we therefore know that  $\mathbb{N} \subseteq S$ .

Thus, by a double-containment argument  $S = \mathbb{N}$ . This means that the statement  $P(n)$  holds for every natural number  $n$ , i.e.  $\forall n \in \mathbb{N}$ .  $P(n)$  is True!

Understanding the set-theoretic mechanics behind this proof are not essential to being able to use induction and write inductive proofs. However, we believe that thinking about these logical underpinnings can only help your understanding, or spark some curiosity in mathematical logic and set theory, or possibly both!

The important thing that we have accomplished here, by restating the PMI, is that we now have a clear way of determining whether an inductive argument has succeeded. The entire crux of a "proof by induction" lies in verifying conditions (1) and (2) in the statement of the theorem (i.e. verifying that the "truth set" for the proposition  $P(n)$  is an inductive set).

# 5.2.2 Using Induction: Proof Template

Taking the observation above, we can develop a proof template for a proper "proof by induction". (This can be added to the list of proof strategies from the last chapter, as well, thereby broadening our mathematical toolkit!) Notice that all of the steps in this template are motivated by making our proof readable, orderly, and logically correct:

- We must define a proposition $P(n)$ to show our reader what we aim to prove.

- We must verify the Base Case (BC) to show that condition (1) in the PMI is satisfied.  
- We must verify the conditional statement  $\forall k \in \mathbb{N}$ .  $P(k) \Rightarrow P(k + 1)$  to show that condition (2) in the PMI is satisfied. To do this, we will apply the direct proof strategy for proving conditional statements; this has two parts:
- First, we make an Inductive Hypothesis (IH), which introduces an arbitrary and fixed natural number  $k$  and supposes  $P(k)$  holds.  
- Second, we go through the Inductive Step (IS), which takes that assumption and deduces that  $P(k + 1)$ , also holds.
- Between these steps—the BC, the IH, and the IS—we have verified the conditions of PMI, and we can deduce its conclusion:  $\forall n \in \mathbb{N} \cdot P(n)$ .

Finally, we make this conclusion to remind our reader of what we have accomplished.

# Template for a "Proof by Induction"

Goal: Prove that  $\forall n\in \mathbb{N}$ $P(n)$

Proof.

Let  $P(n)$  be the proposition

We will prove  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$

Base Case: Observe that  $P(1)$  holds because

Induction Hypothesis: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $P(k)$  holds.

Induction Step: Deduce that  $P(k + 1)$  also holds.

By PMI, it follows that  $\forall n\in \mathbb{N}$ $P(n)$

# Comments and Common Pitfalls

What follows are some recommendations and suggestions. These are based on what we feel constitutes a good, well-written inductive argument, and also some mistakes that we see students consistently make over the years.

- Be sure to define a proposition.

Sometimes the claim is defined for you in the statement of a problem or exercise. However, it is not always defined explicitly as  $P(n)$ . In that case, referring to a proposition  $P(n)$  later on has no meaning. So, be sure to define a statement if you want to refer to it!

To be concise, you might say something like "Let  $P(n)$  be the claim defined

above." (However, make sure that  $n$  is, indeed, the variable letter used in the claim above, for consistency's sake!)

- Explicitly state that you are using mathematical induction and state the variable to which you are applying induction.

In the future, you might have an induction proof where multiple variable letters are floating around. Also, just because your overall proof follows some kind of inductive structure, do not necessarily expect a reader to just understand you are using induction. Telling them this information up front saves them a lot of trouble.

- Be as explicit and thorough as possible in the Base Case.

Do not just write out what  $P(1)$  means and expect the reader to understand why it is True. This onus is on you, the proof-writer!

Do not just write out what the statement  $P(1)$  is, itself, and put a  $\checkmark$  next to it. This does not prove anything!

If the proposition  $P(1)$  is some kind of equation (which is common), demonstrate why both sides are actually equal, instead of just writing the equation and expecting a reader to see why it works out.

- The IH and IS together apply the direct proof strategy for  $\Rightarrow$  statements.

The IH introduces an arbitrary and fixed natural number and assumes the left-hand side of the implication  $P(k) \Rightarrow P(k + 1)$ . That's why it is our hypothesis. We then use this assumption to deduce  $P(k + 1)$ . This proves the conditional statement in condition (2) in the PMI.

Be sure to quantify the variable  $k$  here! A statement like "Assume  $P(k)$ " has no meaning. What is  $k$ ? Is it a natural number?

"Let  $k \in \mathbb{N}$  and assume  $P(k)$ " is an acceptable form here. "Let  $k \in \mathbb{N}$ , to a mathematical reader, implicitly means "Let  $k \in \mathbb{N}$  (be arbitrary and fixed)".

- It helps to explicitly write out what  $P(k)$  means in the IH.

For one, this helps a reader understand your assumption and follow the rest of the proof better.

But also, this helps you figure out how to prove  $P(k + 1)$ , which is your goal in this step. If you're struggling to work through this step in your head (perhaps on an exam or a homework problem), simply write out the meaning of  $P(k)$  at the top of your paper and the meaning of  $P(k + 1)$  at the bottom. Now do you see how they might be connected? Try to work downwards from  $P(k)$  and upwards from  $P(k + 1)$  and connect them in the middle.

- You must invoke the IH somewhere in the Induction Step!

If you didn't use the IH at all, why did you need to use induction?

When you use the IH, say that you are doing so. Don't expect the reader to remember/recognize that this is what you're doing.

Make a conclusion.

Tell the reader what you have accomplished.

Okay, now that we've discussed how to write a good proof by induction, let's actually do so!

# 5.2.3 Examples

Here are a couple of examples of good induction proofs. Use them as guides when writing your own. We have omitted the usual discussion of how we came up with the arguments here, partly because we want to just emphasize the structure of the proofs, but also because we worked on those problem-solving aspects extensively in Chapter 2.

Notice that we are using abbreviations for some components of these proofs, namely BC (for Base Case) and IH (for Induction Hypothesis) and IS (for Induction Step). Feel free to use this shorthand, as well!

Example 5.2.5. Sum of the odds is a square:

Claim: The sum of the first  $n$  odd natural numbers is  $n^2$ .

(Note: We already saw this claim as a puzzle in Section 1.4.3, and then asked you to work through the inductive details in Section 2.3.4. We will present a good proof of the claim here.)

Proof. Let  $P(n)$  be the proposition

$$
\quad \text{``} 1 + 3 + 5 + \dots + 2 n - 1 = \sum_{i=1}^{n}(2i-1) = n^{2} \quad \text{''}
$$

We will prove that  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$

BC: Consider  $n = 1$ . Notice that

$$
\sum_{i=1}^{1}(2i-1) = 1 \quad \text{ and } \quad 1^{2} = 1
$$

and so

$$
\sum_{i=1}^{1}(2i-1) = 1^{2}
$$

Thus,  $P(1)$  is True, because  $1 = 1$ .

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $P(k)$  holds. This means

$$
\sum_{i=1}^{k}(2i-1) = k^{2}
$$

IS: Consider  $k + 1$ . We can write

$$
\sum_{i=1}^{k+1}(2i-1) = 2(k+1)-1 + \sum_{i=1}^{k}(2i-1) = 2k+1 + \sum_{i=1}^{k}(2i-1)
$$

by separating out the  $(k + 1)$ -th term of the summation.

We now use the IH to replace the summation on the right-hand side and deduce that

$$
\sum_{i=1}^{k+1}(2i-1) = 2k + 1 + k^{2}
$$

Factoring then tells us

$$
\sum_{i=1}^{k+1}(2i-1) = (k+1)^{2}
$$

and therefore  $P(k + 1)$  holds.

By the PMI, we conclude that  $\forall n\in \mathbb{N}$ $P(n)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/40265cb079fb09b5f19da4bf76b21848f1a2cb7f0fcf62dd3d7bc9f8099af484.jpg)

Here's another good induction proof of a useful fact about geometric series.

Example 5.2.6. Geometric series formula:

Claim: For every  $q \in \mathbb{R} - \{0,1\}$  and for every  $n \in \mathbb{N}$ , the following formula holds:

$$
\sum_{i=0}^{n-1}q^{i} = 1 + q + q^{2} + \dots + q^{n-1} = \frac{q^{n}-1}{q-1}
$$

Proof. Let  $q \in \mathbb{R} - \{0,1\}$  be arbitrary and fixed. Define  $P(n)$  to be the proposition

$$
\text{``} \sum_{i=0}^{n-1}q^{i} = \frac{q^{n}-1}{q-1} \text{''}
$$

We will prove  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$

BC: Consider  $n = 1$ . Observe that

$$
\sum_{i=0}^{n-1}q^{i} = \sum_{i=0}^{0}q^{i} = q^{0} = 1
$$

since  $q \neq 0$ . Also, observe that

$$
\frac{q^{n}-1}{q-1} = \frac{q-1}{q-1} = 1
$$

since  $q \neq 1$ . Thus,  $P(1)$  holds.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed and suppose  $P(k)$  holds. This means

$$
\sum_{i=0}^{k-1}q^{i} = \frac{q^{k}-1}{q-1}
$$

IS: WWTS  $P(k + 1)$  holds. (Remember, WWTS means "We want to show".) That is, WWTS

$$
\sum_{i=0}^{k}q^{i} = \frac{q^{k+1}-1}{q-1}
$$

noticing that  $(k + 1) - 1 = k$

Observe that we can algebraically simplify and use our assumptions to write

$\sum_{i = 0}^{k}q^{i} = \left(\sum_{i = 0}^{k - 1}q^{i}\right) + q^{k}$  summation notation  
$= \frac{q^k - 1}{q - 1} + q^k$  invoking IH  
$= \frac{q^k - 1 + q^k(q - 1)}{q - 1}$  common denominator  
$= \frac{q^k - 1 + q^{k + 1} - q^k}{q - 1} = \frac{q^{k + 1} - 1}{q - 1}$  algebra

This shows that  $P(k + 1)$  holds, as well.

By the PMI,  $\forall n\in \mathbb{N}$ $P(n)$  holds.

Follow-up question: Why did we need  $q \notin \{0,1\}$  in the claim?

What happens when  $q = 0$ ? Where does this proof break down? Does the formula still hold? If so, prove it. If not, can you fix it?

Try answering the same questions for  $q = 1$ , as well.

# 5.2.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What does the PMI (Principle of Mathematical Induction) state? How is it proven?

(2) What is the Base Case of an induction proof? How does it relate to the statement of the PMI?  
(3) How are the Induction Hypothesis and Induction Step of a proof related? How do they relate to the statement of the PMI?  
(4) Why is it important to invoke the Induction Hypothesis somewhere in the Induction Step?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Prove that

$$
\sum_{i=1}^{n}i^{3} = \left[\frac{n(n+1)}{2}\right]^{2}
$$

holds for every  $n\in \mathbb{N}$

(2) Prove that the square of every odd natural number is one more than a multiple of 8. That is, prove that

$$
(2n+1)^{2} - 1 \text{ isa multipleof } 8
$$

for every  $n\in \mathbb{N}$

(3) Consider this claim:  $7^{n} - 4^{n}$  is a multiple of 3, for every  $n \in \mathbb{N}$ .

Rewrite this claim using logical symbolic notation. Then, prove it by induction.

(4) Recall that the Fibonacci Numbers are defined by

$$
f_{0} = 0 \text{ and } f_{1} = 1 \text{ and } \forall n \in \mathbb{N} - \{1\}. f_{n} = f_{n-1} + f_{n-2}
$$

Prove the following claims hold for every  $n\in \mathbb{N}$ , by induction on  $n$ :

(a)  $\sum_{i = 1}^{n}f_{i} = f_{n + 2} - 1$  
(b)  $\sum_{i = 1}^{n}f_{2i - 1} = f_{2n}$  
(c)  $f_{4n}$  is a multiple of 3  
(d) Challenge 1: (  $n$  is a multiple of 3)  $\Rightarrow$  ( $f_{n}$  is even)  
(e) Challenge 2: (  $n$  is not a multiple of 3)  $\Rightarrow$  ( $f_{n}$  is odd)

# 5.3 Other Variants of Induction

Now that we're really comfortable with how induction works and have seen many examples, we can show you two modifications of this method. The idea is that there is "nothing special" about using induction to prove a statement holds for every  $n \in \mathbb{N}$ . Don't get us wrong; there is a lot that's special about  $\mathbb{N}$ ! What we mean is that it's possible to use induction to prove that a statement holds for every  $n \in S$ , where  $S$  might be some other kind of set. We will describe these sets for you in the following discussions and examples.

# 5.3.1 Starting with a Base Case other than  $n = 1$

We need to have a base case in an induction proof, but there's nothing that says it always has to be  $n = 1$ . Perhaps we have a proposition  $P(n)$  that is True for  $n = 1$  and  $n = 2$ , but then somehow False for  $n = 3$  and  $n = 4$ , but then True for every  $n$  that is at least 5. How could we prove these claims? Well, we could just show the individual cases for  $n = 1, 2, 3, 4$  separately, and then use induction to prove all the others. This will work because the set  $\mathbb{N} - \{1, 2, 3, 4\}$  is also an inductive set. In terms of the Domino Analogy, this is like saying, "Let's just skip a few dominoes and start the line falling at  $n = 5$ . The rest will all fall down in the exact same way as we'd expect."

In fact, we can even allow ourselves to talk about negative integers here! Let's slide to the left on the number line a bit and imagine that we actually have a line of dominoes numbered starting from, say, -3. That is, we'd have Domino \# -3 and Domino \# -2 and Domino \# -1 and Domino \#0 and Domino \#1 and all the rest. We can start the line falling at  $n = -3$  and know that they will all fall into each other in much the same way as before.

The whole idea here is that we still have an infinite line of dominoes moving off to the right with no gaps between them. It doesn't matter what numerical label we assign to the first domino. A line of dominoes like this will topple into each other no matter how we number that first one. This idea is what the next theorem encapsulates.

Theorem 5.3.1 (Induction with any base case). Let  $P(n)$  be a variable proposition. Let  $M \in \mathbb{Z}$  be arbitrary and fixed.

Let  $S = \{z \in \mathbb{Z} \mid z \geq M\}$ .

Suppose that

(1)  $P(M)$  holds True, and  
(2)  $\forall k\in S\bullet P(k)\Rightarrow P(k + 1)$  holds True

Then  $\forall n\in S\cdot P(n)$  holds True.

This theorem says exactly what we were discussing: if we want to prove a proposition holds for every value greater than or equal to some specific value  $(M, \text{inthetheoremstatement})$ , then we can just start inducting from that value.

We make that our BC and apply the IH and IS to every value greater than or equal to it. Everything else is exactly the same.

# Formal Proof

For the sake of illustration and completeness, we will formally prove this theorem. We hope that the discussion above—referencing the Domino Analogy—will help you intuitively understand how this works. Working through this proof will not directly and immediately affect your ability to apply induction as a technique. However, we do think that reading through it and trying to understand how it works will give you a better grasp of induction and proof techniques, and it will perhaps give you a deeper appreciation of the mathematics at work here. Specifically, we will use PMI to prove this modified version of itself!

Proof. Let  $P(n)$  be a variable proposition. Let  $M \in \mathbb{Z}$  be arbitrary and fixed.

Let  $S = \{z \in \mathbb{Z} \mid z \geq M\}$ .

Suppose that

(1)  $P(M)$  holds True, and

(2)  $\forall k\in S$ $P(k)\Rightarrow P(k + 1)$  holds True

Our goal is to prove that  $\forall n\in S$ $P(n)$  holds True.

Define the proposition  $Q(n)$  by setting

$$
Q (n) \Longleftrightarrow P (n + M - 1)
$$

Notice that, by algebraically manipulating the inequality, we have

$$
n \geq 1 \Longleftrightarrow n + M - 1 \geq M
$$

This means that our goal now is to prove that  $\forall n\in \mathbb{N}$ $Q(n)$  holds True.

(Doing so will prove that  $\forall n\in S$ $P(n)$

We will prove this by induction on  $n$ .

BC: We know  $P(M)$  holds, by assumption. Notice that  $n + M - 1 = M \Longleftrightarrow n = 1$ . This means  $Q(1)$  holds.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $Q(k)$  holds.

IS: Since  $Q(k)$  holds, we know  $P(k + M - 1)$  holds.

Also, since  $k \in \mathbb{N}$ , we know  $k \geq 1$ . Thus,  $k + M - 1 \geq M$ .

Thus, By condition (2) that we assumed, we can deduce that  $P((k + M - 1) + 1)$  holds, i.e. that  $P(k + M)$  holds.

This tells us that  $Q(k + 1)$  holds.

By PMI, we deduce that  $\forall n\in \mathbb{N}$ $Q(n)$  holds.

Then, by the definition of  $Q(n)$ , this tells us that  $\forall n\in S$ .  $P(n)$  holds.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/b057f14f7b36c69bb28b2a92c5b9b937d766fb8a84e9448d59e7b2ff6649ef5d.jpg)

As we said, try to work through the details of the proof but, in general, just keep in mind the intuitive idea that we're just "sliding over" and using a different base case. The mechanics of the inductive process are identical.

# Example

Let's see this modified technique in action. In fact, the example we will show you is of the flavor that we hinted at when introducing this method, wherein some proposition holds for a few small values, doesn't hold for some other small values, but does hold for every value after a certain point.

Example 5.3.2. How  $2^n$  compares to  $n^2$ :

# Claim:

$$
2^{n} > n^{2} \Longleftrightarrow n \in \{0, 1\} \cup \{z \in \mathbb{N} \mid z \geq 5\}
$$

That is, the only integers  $z$  that satisfy  $2^{z} > z^{2}$  are  $z = 0,1,5,6,7\ldots$

(We will leave it to you to play around and figure out how we might have come up with such a claim. Typically, as you will see in this section's exercises, such an inequality might be presented along with the question, "For which values of  $n$  does this hold?" In that case, you would have to do some scratch work to identify your claim before starting an induction proof.)

Proof. Let  $P(n)$  be the proposition " $2^n > n^2$ ".

First, observe the following cases:

$$
\begin{array}{l} 2^{0} > 0^{2} \Longleftrightarrow 1 > 0 \quad \text{so } P(0) \text{ isTrue} \\ 2^{1} > 1^{2} \Longleftrightarrow 2 > 1 \quad \text{so } P(1) \text{ isTrue} \\ 2^{2} > 2^{2} \Longleftrightarrow 4 > 4 \quad \text{so } P(2) \text{ isFalse} \\ 2^{3} > 3^{2} \Longleftrightarrow 8 > 9 \quad \text{so } P(3) \text{ isFalse} \\ 2^{4} > 4^{2} \Longleftrightarrow 16 > 16 \quad \text{so } P(4) \text{ isFalse} \\ \end{array}
$$

Notice that whenever  $z \leq -1$ , we have  $2^z < 1$  and  $z^2 \geq 1$ , so  $2^z \ngeq z^2$ . Thus,  $P(n)$  is False for every  $n$  that satisfies  $n \leq -1$ .

Next, define  $S$  to be the set  $S = \{z\in \mathbb{N}\mid z\geq 5\}$

We will prove  $\forall n\in S\cdot P(n)$  holds by induction on  $n$

BC: Observe that  $P(5)$  holds because  $2^5 = 32$  and  $5^2 = 25$  and  $32 > 25$ .

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose that  $P(k)$  holds.

IS: Since  $k \in S$ , we know  $k \geq 5$  and so  $k > 4$ .

Thus,  $k - 1 > 3$  and so  $(k - 1)^2 > 9$ ; certainly, then,  $(k - 1)^2 > 2$ .

Observe the following chain of manipulations of this inequality:

$$
\begin{array}{l} (k-1)^{2} > 2 \Longrightarrow (k-1)^{2} - 2 > 0 \\ \Longrightarrow k^{2} - 2k - 1 > 0 \\ \Longrightarrow k^{2} > 2k + 1 \\ \Longrightarrow 2k^{2} > k^{2} + 2k + 1 \\ \Longrightarrow 2k^{2} > (k+1)^{2} \\ \end{array}
$$

Since we observed the first inequality holds, we can deduce that the final inequality above also holds.

(Note: In case you didn't realize, this chain of reasoning is a solution to practice exercise 2 from Section 4.9.9! To work this out, we did some scratch work, starting with the desired inequality at the bottom and "working backwards" until we found something obviously True. In writing it up here, we started with that obvious fact and worked down to the desired conclusion.)

By the IH  $P(k)$ , we know  $k^2 < 2^k$ . This tells us

$$
2 k^{2} <   2 \cdot 2^{k} = 2^{k + 1}
$$

Applying the transitivity property of inequalities, we can deduce that

$$
(k + 1)^{2} <   2 k^{2} <   2^{k + 1}
$$

and so  $P(k + 1)$  holds.

By PMI,  $\forall n\in S$ $P(n)$  holds.

Overall, we have considered every  $z \in \mathbb{Z}$ . We observed that  $P(z)$  fails for  $z \leq -1$ , that it holds for  $z = 0, 1$ , that it fails for  $z = 2, 3, 4$ , and that it holds for  $z \geq 5$ . Together, these observations prove the claim.

Phew! There was actually a lot going on in that proof. Did you notice that the claim was phrased as an if and only if, so that we had to consider all the integers in our proof? That was tricky, but we did it!

# 5.3.2 Inducting Backwards

This variant of induction is useful when a proposition  $P(n)$  happens to hold for all values of  $n$  less than some particular value. In terms of the Domino Analogy, this is like imagining our infinite line of dominoes running off to the left, instead of to the right. We already know that, for the reasons discussed in the previous section, it doesn't matter how we number them. Now, we can see that it also doesn't matter which direction they're going; they'll obey the same principles! The following theorem encapsulates this observation.

Theorem 5.3.3 (Backwards induction). Let  $P(n)$  be a variable proposition. Let  $M \in \mathbb{Z}$  be arbitrary and fixed.

Let  $S = \{z \in \mathbb{Z} \mid z \leq M\}$ .

Suppose that

(1)  $P(M)$  holds True, and  
(2)  $\forall k\in S\cdot P(k)\Rightarrow P(k - 1)$  holds True

Then  $\forall n\in S\cdot P(n)$  holds True.

Notice the differences between this and Theorem 5.3.1

# Formal Proof

At this point in our development, we feel comfortable giving you important theorems to prove. Specifically, we want you to prove this modified version of PMI you see above, Theorem 5.3.3! Letting you work through the details yourself, instead of just seeing us perform them for you, will be far more helpful in the long run. Furthermore, the details of this proof we have in mind are quite similar to those for the proof we gave you (in Section 5.3.1) of Theorem 5.3.1.

Leaving a proof as an "exercise for the reader" is actually quite common in mathematics, and in mathematics books, in particular. We're just doing our part to help you get used to this phenomenon!  $\odot$

Proof. Left for the reader as Exercise 1 in Section 5.3.4.

We will not show an example of this method in action because we believe it is exactly like the standard method of induction we have already seen. In fact, if you worked through the details of the proof above, you can probably even see how to "make up" an example for this section by just modifying some examples we've already seen! (What if we reverse an inequality …)

# 5.3.3 Inducting on the Evens/Odds

Let's motivate this section with an observation, which will lead us into the first example usage of this method. Consider the sequence of perfect square numbers:

$$
1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, \dots
$$

Look at what happens when we divide them by 8; specifically look at the remainders (indicated by the numerators of the fractions in each case):

$$
0 + \frac{1}{8}, 0 + \frac{4}{8}, 1 + \frac{1}{8}, 2 + \frac{0}{8}, 3 + \frac{1}{8}, 4 + \frac{2}{8}, 6 + \frac{1}{8}, \dots
$$

Notice that we left fractions like  $\frac{4}{8}$  and  $\frac{2}{8}$  unsimplified, keeping the denominator as 8, to indicate the remainders. Those remainders follow this pattern:

$$
1, 4, 1, 0, 1, 2, 1, \dots
$$

It looks like every other remainder is 1. In fact, it looks like the remainder is 1 when we divide an odd number squared by 8. Interesting! You might wonder whether this pattern continues. A reasonable way to address this idea is to just jump right in and try to prove this claim by induction and see if it works. If it does succeed, then we have successfully discovered and proven a fact. If it doesn't succeed, then we might be able to figure out where it fails and why. This is a good, general recommendation for mathematical discovery: if you want to see if something is True, just try to prove it and see what happens!

# Example

Try to work through the details of this one on your own before reading on. In doing so, you will have to figure out how to induct on the set of odd natural numbers, not all the natural numbers as we have done before. We will actually present the proof of this claim and afterwards discuss how the method works, but you should absolutely work on this on your own first! …

Example 5.3.4. Remainders of odd squares when divided by 8:

Claim: Let  $O$  be the set of odd natural numbers; that is,

$$
O = \{n \in \mathbb {N} \mid \exists m \in \mathbb {N} \cup \{0 \}. n = 2 m + 1 \}
$$

Let  $P(n)$  be the proposition "  $n^2$  is 1 more than a multiple of 8". Then

$$
\forall n \in O. P (n)
$$

Proof. Let  $P(n)$  be defined as in the claim above. We will prove  $\forall n \in O$ .  $P(n)$  by induction on  $n$ .

BC: Observe that  $1^2 = 1$  and  $1 = 0 \cdot 8 + 1$  (i.e. 1 is a multiple of 8 plus 1). Thus,  $P(1)$  holds.

IH: Let  $k \in O$  be arbitrary and fixed. Suppose  $P(k)$  holds.

IS: Our goal now is to deduce  $P(k + 2)$  holds. (This is because  $k + 2$  is the next odd natural number, after  $k$ .)

Since  $k + 2$  is odd, by assumption, we know  $\exists m \in \mathbb{N} \cup \{0\}$ .  $k = 2m + 1$ . Let such an  $m$  be given.

By the IH, we know  $\exists \ell \in \mathbb{N}$ .  $k^2 = 8\ell +1$ . Let such an  $\ell$  be given.

Now, we take these observations and use them to see that

$$
\begin{array}{l} (k + 2)^{2} = k^{2} + 4 k + 4 \\ = (8 \ell + 1) + 4 (2 m + 1) + 4 \\ = 8 \ell + 8 m + 8 + 1 \\ = 8 (\ell + m) + 1 \\ \end{array}
$$

Since  $\ell, m \in \mathbb{Z}$ , we know  $\ell + m \in \mathbb{Z}$ , as well. Thus,  $(k + 2)^2$  is one more than a multiple of 8. Therefore,  $P(k + 2)$  holds.

By induction,  $P(n)$  holds for every  $n \in O$ .

Follow-up questions: Can you also prove that the remainders of even squares when divided by 8 are not 1? (This would make the claim an if and only if statement.) Can you identify a pattern in the remainders of those even squares? Can you prove your claims?

(Hint: You probably won't need induction for these claims!)

# Discussion of Method

Let's discuss why this works. The underlying principle is exactly the same as the other forms of induction we have seen. The only difference lies in the induction step. Since the odd natural numbers are "two steps apart", our goal is to prove

$$
\forall k \in O. P (k) \Longrightarrow P (k + 2)
$$

This encapsulates the same idea as standard induction: take one instance of the proposition and use it to deduce the "next" instance holds. The only difference here lies in what we mean by "next". For completeness' sake, we will state a theorem that conveys this method. Again, we will leave it to you to fill in the details of the proof.

Theorem 5.3.5 (Induction on the odds). Let  $O$  be the set of odd natural numbers.

Let  $P(n)$  be a variable proposition. Suppose that

(1)  $P(1)$  holds, and  
(2)  $\forall k\in O\bullet P(k)\Rightarrow P(k + 2)$

Then  $\forall n\in O$ .  $P(n)$  holds.

Proof. Left for the reader as Exercise 2 in Section 5.3.4.

Thinking in a very similar way, we can see that induction on the even natural numbers will also work. Here is a theorem that states this. Again, we will leave the proof to you.

Theorem 5.3.6 (Induction on the evens). Let  $E$  be the set of even natural numbers.

Let  $P(n)$  be a variable proposition. Suppose that

(1)  $P(2)$  holds, and  
(2)  $\forall k\in E\bullet P(k)\Rightarrow P(k + 2)$

Then  $\forall n\in E\cdot P(n)$  holds.

Proof. Left for the reader as Exercise 2 in Section 5.3.4.

# Combining and Modifying These Methods

Let's say we have a proposition  $P(n)$  and we want to prove  $P(n)$  holds for every  $n \in \mathbb{N}$ . Perhaps the proposition, and the underlying ideas, are somehow tricky, and a regular old induction proof completely eludes us. Maybe it's because of some algebraic trick, maybe we just can't see how to do it in the most efficient way, or maybe there's actually something profound underlying the proposition that prevents us from doing so. Whatever the reason, we might be able to use a combination of these new induction methods and prove the proposition holds for all  $n \in \mathbb{N}$  in a couple of pieces.

We can think of these new methods as "jumping" induction methods. Proving a proposition holds for every odd natural number amounts to the exact same inductive technique as before, but we just "skip over" the evens by adjusting what happens in the induction step. The same goes for inducting on the evens (although we also adjust the base case slightly, since 2 is the first even, not 1). If we perform the "odds" method first and then the "evens" method, overall we have proved that the proposition holds for all naturals.

The following example does something just like this, but you'll notice that it actually makes "jumps" of size 3 (instead of 2, like with the "odds" and "evens" methods). We won't state and prove (or even ask you to do so) theorems that convey these methods. At this point, we will rely on our collective intuition for how induction works and point out that these theorems/proofs will be very similar to the ones we have been seeing. If you feel like getting the practice, or want to have them for your notes and records, by all means go ahead and state and prove theorems about the method we are about to use!

Example 5.3.7. Powers of 2 and multiples of 7:

Claim: For every  $n \in \mathbb{N}$ , the number  $2^n + 1$  is not a multiple of 7.

(At this point, we recommend doing some scratch work to identify a pattern in the remainders of the numbers  $2^n + 1$  when divided by 7. You'll see that they follow a cycle of length 3. Neato! That's essentially what we will prove here; it's just that the claim wasn't presented in that way, so we had to do some work on the side to reformulate it and come up with a proof.)

Proof. Define the sets  $A_{1}, A_{2}, A_{3}$  to be

$$
\begin{array}{l} A_{1} = \{n \in \mathbb {N} \mid \exists m \in \mathbb {N} \cup \{0 \}. n = 3 m + 1 \} = \{1, 4, 7, 10, \dots \} \\ A_{2} = \{n \in \mathbb {N} \mid \exists m \in \mathbb {N} \cup \{0 \}. n = 3 m + 2 \} = \{2, 5, 8, 11, \dots \} \\ A_{3} = \{n \in \mathbb {N} \mid \exists m \in \mathbb {N} \cup \{0 \}. n = 3 m \} = \{3, 6, 9, 12, \dots \} \\ \end{array}
$$

(That is, these three sets partition  $\mathbb{N}$  based on remainders when divided by 3.)

Let  $P(n)$  be the proposition " $2^n + 1$  is not divisible by 3". We will prove  $\forall n \in \mathbb{N}$ .  $P(n)$  holds, by induction.

Define the propositions  $Q(n)$  and  $R(n)$  and  $S(n)$  as follows:

$$
Q (n) \text{is} “ \exists \ell \in \mathbb {N} \cup \{0 \}. 2^{n} + 1 = 7 \ell + 3 ”
$$

$$
R (n) \text{is} “ \exists \ell \in \mathbb {N} \cup \{0 \}. 2^{n} + 1 = 7 \ell + 5 ”
$$

$$
S (n) \text{is} “ \exists \ell \in \mathbb {N} \cup \{0 \}. 2^{n} + 1 = 7 \ell + 2 ”
$$

Observe that

$$
\forall n \in \mathbb {N}. (Q (n) \vee R (n) \vee S (n)) \Rightarrow P (n)
$$

This is because a number that is a multiple of 7 plus 3 is not a multiple of 7, and neither is a multiple of 7 plus 5 or a multiple of 7 plus 2.

First, we will prove that  $\forall n\in A_1$ $Q(n)$  holds, by induction on  $n$

BC: Observe that  $2^1 + 1 = 3 = 0 \cdot 7 + 3$ . Thus,  $Q(1)$  holds.

IH: Let  $k \in A_1$  be arbitrary and fixed. Suppose  $Q(k)$  holds.

IS: Our goal now is to deduce that  $Q(k + 3)$  holds.

Since  $k \in A_1$ , we know  $\exists m \in \mathbb{N}$ .  $k = 3m + 1$ . Let such an  $m$  be given.

By the IH, we know  $\exists \ell \in \mathbb{N}$ .  $2^{k} + 1 = 7\ell + 3$ . Let such an  $\ell$  be given. This means  $2^{k} = 7\ell + 2$ .

We can deduce that

$$
2^{k + 3} = 2^{3} \cdot 2^{k} = 8 \cdot (7 \ell + 2) = 56 \ell + 16
$$

Thus,

$$
2^{k + 3} + 1 = 56 \ell + 17 = 7 (8 \ell) + 14 + 3 = 7 (8 \ell + 2) + 3
$$

and so  $Q(k + 3)$  holds, as well. Therefore,  $\forall n\in A_1$ .  $Q(n)$

Second, we will prove that  $\forall n\in A_2$ .  $R(n)$  holds, by induction on  $n$ .

BC: Observe that  $2^2 + 1 = 5 = 0 \cdot 7 + 5$ . Thus,  $R(2)$  holds.

IH: Let  $k \in A_2$  be arbitrary and fixed. Suppose  $R(k)$  holds.

IS: Our goal now is to deduce that  $R(k + 3)$  holds.

By the IH, we know  $\exists \ell \in \mathbb{N}$ .  $2^{k} + 1 = 7\ell + 5$ . Let such an  $\ell$  be given. This means  $2^{k} = 7\ell + 4$ .

We can deduce that

$$
2^{k + 3} = 2^{3} \cdot 2^{k} = 8 \cdot (7 \ell + 4) = 56 \ell + 32
$$

Thus,

$$
2^{k + 3} + 1 = 56 \ell + 33 = 7 (8 \ell) + 28 + 5 = 7 (8 \ell + 4) + 5
$$

and so  $R(k + 3)$  holds, as well. Therefore,  $\forall n \in A_2 \cdot R(n)$ .

Third, we will prove that  $\forall n\in A_3$ $S(n)$  holds, by induction on  $n$

BC: Observe that  $2^3 + 1 = 9 = 1 \cdot 7 + 2$ . Thus,  $S(3)$  holds.

IH: Let  $k \in A_3$  be arbitrary and fixed. Suppose  $S(k)$  holds.

IS: Our goal now is to deduce that  $S(k + 3)$  holds.

By the IH, we know  $\exists \ell \in \mathbb{N}$ .  $2^{k} + 1 = 7\ell + 2$ . Let such an  $\ell$  be given. This means  $2^{k} = 7\ell + 1$ .

We can deduce that

$$
2^{k + 3} = 2^{3} \cdot 2^{k} = 8 \cdot (7 \ell + 1) = 56 \ell + 8
$$

Thus,

$$
2^{k + 3} + 1 = 56 \ell + 9 = 7 (8 \ell) + 7 + 2 = 7 (8 \ell + 1) + 2
$$

and so  $S(k + 3)$  holds, as well. Therefore,  $\forall n \in A_3$ .  $S(n)$ .

Overall, we have proven that either  $Q(n)$  or  $R(n)$  or  $S(n)$  holds for every natural number (depending on a number's remainder when divided by 3). Accordingly, every natural number has the property that  $2^n + 1$  is not a multiple of 7.

In actuality, we proved a stronger result in our proof than what the claim presented. That is, not only did we show that no number of the form  $2^n + 1$  is a multiple of 7, but we also showed exactly how those numbers fail to be multiples of 7.

In this section's exercises, we have included a couple of exercises that guide you through a proof like this by identifying the "jumps" and the claims. In this chapter's exercises, Section 5.7, we have included some problems that might require this kind of argument (but we won't necessarily tell you the overall structure of the argument, as we've done here).

It's worth mentioning, at this point, that you could quite easily adapt these methods to any situation you face, as long as the "jumps" you want to make follow some easily identifiable pattern. In the previous example, we made jumps of size 3, and so we split the set of all natural numbers into three sets and jumped along within those sets. In essence, this relies on the fact that we had a "formula" for how to get to the "next" instance of the proposition: we start with  $P(k)$  and try to deduce  $P(k + 3)$ . You could conceivably make jumps of size 4, or 10, or even make jumps that double your value; that is, you could prove that some proposition  $P(n)$  holds for every  $n$  that is a power of 2, say, by proving

$$
P (1) \text{ho ld s ,a nd} \forall n \in \mathbb {N}. P (n) \Longrightarrow P (2 n)
$$

Again, all of this relies on having some kind of "formula" or "rule" that tells us what the next instance under consideration is. For this reason, we cannot induct on the set of all prime numbers. If you're trying to prove some fact holds

for every prime number, don't even bother trying to use induction! You'd have to have some "rule" that says, "If  $k$  is a prime number, then the next prime number is …". If you know of such a rule, the world of mathematics would love to hear from you! This would answer many outstanding, unresolved questions about the prime numbers and make you the most famous mathematician in all of history. Seriously!

# 5.3.4 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) How does the Domino Analogy describe an induction proof with a base case that is not 1?  
(2) Write out a proof template for proving a proposition  $P(n)$  that holds for every odd natural number greater than or equal to 7.  
(3) Why can't we "induct on the primes"?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Prove Theorem 5.3.3.  
(2) Prove Theorems 5.3.5 and 5.3.6.  
(3) State a theorem that represents a method for inducting on the set of all multiples of 5. Prove your theorem.  
(4) Consider the inequality  $n^3 < 3^{n - 1}$ .

(a) Prove that the inequality holds for every  $n$  that satisfies  $n \geq 6$ .  
(b) Prove that the inequality fails for  $n \in \{1, 2, 3, 4, 5\}$ . (This is easy.)  
(c) Prove that the inequality holds for every  $n$  that satisfies  $n \leq 0$ .

(5) Define a sequence of numbers by

$$
x_{1} = 2 \text{an d} x_{2} = 2 \text{an d} \forall n \in \mathbb {N} - \{1, 2 \}. x_{n} = x_{n - 2} + 1
$$

Let  $P(n)$  be the proposition

$$
x_{n} = \frac{1}{2} (n + 1) + \frac{1}{4} \left(1 + (- 1)^{n}\right)
$$

(a) Let  $O$  be the set of odd natural numbers. Prove that  $\forall n \in O$ .  $P(n)$  by induction.  
(b) Let  $E$  be the set of even natural numbers. Prove that  $\forall n \in E$ .  $P(n)$  by induction.

(6) Consider the following claim:

$$
\sum_{k = 1}^{n} (- 1)^{k - 1} k^{2} = (- 1)^{k - 1} \sum_{k = 1}^{n} k
$$

That is, we claim that

$$
1^{2} - 2^{2} + 3^{2} - 4^{2} + \dots + (- 1)^{n - 1} n^{2} = (- 1)^{n - 1} (1 + 2 + 3 + \dots + 9)
$$

holds for every  $n\in \mathbb{N}$

(a) Prove that the above formula holds for  $n = 1$  and  $n = 2$ .  
(b) Prove that whenever the formula holds for  $k$ , it also holds for  $k + 2$ .  
(c) Explain intuitively why (a) and (b) prove the claim.

# 5.4 Strong Induction

Now, we will see why our previous work with induction constitutes "Regular" Induction. What follows is a technique known as Strong Induction. You will see why the term applies. Specifically, it refers to the inductive hypothesis, wherein we make a stronger assumption; informally, we will assume "more stuff" in that part of our proof, which allows us to make a conclusion more easily (or, sometimes, at all). The important part of this section, in addition to seeing several examples to get a handle on this modified technique, will be to actually prove that this stronger technique is even valid. To do that, we will actually invoke the PMI, itself!

# 5.4.1 Motivation

Look back to the examples from Section 2.4. There, we made some observations about the number of ways to tile a  $2 \times n$  rectangular board with dominoes, and we played the game of Takeaway. In working through the inductive arguments for each of those examples, we found the situation to be slightly different than previous inductive arguments. When we proved something like

$$
\sum_{k = 1}^{n} \frac{n (n + 1)}{2}
$$

holds for every  $n \in \mathbb{N}$ , we could, in the inductive step, appeal to the immediately preceding case and invoke the inductive hypothesis, like so:

$$
\sum_{k = 1}^{n + 1} k = (n + 1) + \sum_{k = 1}^{n} k = n + 1 + \frac{n (n + 1)}{2} = \frac{(n + 1) (n + 2)}{2}
$$

Of course, we didn't refer to these parts of our argument as the "IH" or "IS" yet, but that is what we were doing.

When we considered the Domino Tilings example, though, we found that we needed to refer to two previous instances of the fact. Specifically, to find the number of tilings of a  $2 \times n$  board, we needed to know not only how many tilings of a  $2 \times (n - 1)$  board there were, but also how many tilings of a  $2 \times (n - 2)$  board there were. This is inherently different! What is it about an inductive argument that lets us do this? How does this follow the "domino analogy" we described? Or the "Mojo the Monkey" analogy? Does it, at all?

When we considered the game of Takeaway, we had even "more" different situation, didn't we? In constructing Player 2's winning strategy, we noticed that Player 2 should just mimic whatever Player 1 does, but on the other pile. That is, if Player 1 removes, say, 3 stones from the left pile, then Player 2 should remove 3 stones from the right pile, to guarantee a win. This held true no matter how many stones Player 1 removed. In that sense, we required the fact that Player 2 had a winning strategy on any size of piles up to  $n$  (inclusive) to guarantee that Player 2 had a winning strategy on piles of size  $n + 1$ . This required a lot of assumptions to go into our inductive hypothesis. How do we know that we can do that?

# 5.4.2 Theorem Statement and Proof

Our goal now is to state and prove a modified version of the PMI that reflects these kinds of examples, the Domino Tilings and the Takeaway game. They represent inductive arguments where we might have to (1) refer to more than one previous instance to prove the subsequent instance of the claim, or (2) refer to some unknown previous instance to prove the subsequent instance. Both of those argument styles will be covered by this theorem. Let's see that statement first and then discuss what it means.

Theorem 5.4.1 (Principle of Strong Mathematical Induction (Strong PMI)). Let  $P(n)$  be a variable proposition. Suppose that

(1)  $P(1)$  holds True, and  
(2)  $\forall k\in \mathbb{N}\bullet \left(\forall i\in [k]\bullet P(i)\right)\Rightarrow P(k + 1)$  holds True

Then  $\forall n\in \mathbb{N}$ $P(n)$  holds True.

Whoa, what does this say? We're giving you some extra work by presenting it here in logical notation before discussing it in a more wordy way, but we think you can handle it. Try to parse these two conditions, although surely condition

(2) is the tough one. What does it say? Read it out loud, write it down in an English sentence, think about it. Compare it to the regular old PMI we stated and proved in the previous section. Why would we call this one "strong"? How are these theorems different? Are their hypotheses different? What about their conclusions? Take a few minutes' break from reading to ponder these questions. Then, read on …

Okay, let's explain this theorem. Notice that the only difference between The Strong PMI (Theorem 5.4.1) and The Regular PMI (Theorem 5.2.2) lies in condition (2), which governs what we do in the induction hypothesis part of a proof. The setup (that we have a variable proposition) and condition (1) (the base case) and the conclusion (that  $P(n)$  holds for every  $n \in \mathbb{N}$ ) are identical. Let's compare condition (2), now.

The Regular PMI requires that  $P(k)$  is sufficient to allow us to deduce  $P(k + 1)$ , for every  $k \in \mathbb{N}$ . If we can achieve that (the domino toppling affect), and we have a Base Case, then  $P(n)$  holds for every  $n \in \mathbb{N}$ . This is what we do in the IH and IS of an induction proof: suppose  $P(k)$  holds and use it to deduce  $P(k + 1)$  necessarily holds, too.

Let's rewrite condition (2) of The Strong PMI to see what it says:

$$
\forall k \in \mathbb {N}. (P (1) \wedge P (2) \wedge P (3) \wedge \dots \wedge P (k)) \Longrightarrow P (k + 1)
$$

That is, Strong PMI requires that all of the previous instances of the proposition  $(P(1)$  and  $P(2)$  and  $P(3)$  and …and all the way until  $P(k)$ ) are together sufficient to allow us to deduce  $P(k + 1)$ . This theorem seems to say, "Hey, don't worry about using just  $P(k)$  to get to  $P(k + 1)$ ; you can actually use all of the statements  $P(1)$  through  $P(k)$  to get there! The desired conclusion—that  $\forall n\in \mathbb{N}$ .  $P(n)$  will still follow!" Isn't that nice?

There are three aspects of this theorem to discuss now: (1) why this method is actually valid, (2) when we would need to use it, and (3) how to use it. We can address aspect (3) quickly right now, before showing you some examples later on. The only difference between a Strong Induction proof and a Regular Induction proof will be in the IH and the IS. When using Strong Induction, in the IH we will suppose  $P(1)$  and  $P(2)$  and … and  $P(k)$  all hold, then use them to deduce  $P(k + 1)$  necessarily holds, too. In the IS, we will just have to be careful about pointing out which of the assumptions of the IH we use.

To address aspect (2)—when to use Strong Induction—we will show you several examples. In working through these examples, we will point out precisely why a regular induction proof would fail. By seeing several instances of this, we hope to develop some intuition for when to recognize these situations in the future. That is, we will learn to realize what kinds of claims require a strong IH in their proof.

Let's address aspect (1) right now, because it is the most pressing. Before we race on and start using a proof technique, we want to make sure it's actually mathematically valid! If you're like us, you're wondering, "How is this theorem

even True? It says that we need to know a whole lot more about how the instances of  $P(n)$  relate to each other. Why should we be allowed to make so many assumptions in the IH and be able to use them later?"

# A Modified Domino Analogy and a Heuristic Diagram

We'll start with a modification of the Domino Analogy from Chapter 2, and then show you a heuristic diagram for how Strong Induction works, to satisfy our intuitions. After that, we'll formally prove the theorem above.

Think about how Regular Induction followed the Domino Analogy. We only needed to know that Domino  $n$  will fall into Domino  $n + 1$  to guarantee the whole line will fall. Here, with Strong Induction, we actually need to know that all of the dominoes up to (and including) Domino  $n$  have fallen and knocked into Domino  $n + 1$ , toppling it, to guarantee the whole line will fall. It's as if the dominoes are getting "heavier and heavier" as the line goes on, so we need a whole bunch of them falling into each other to generate enough momentum to topple the next, much heavier one.

Let's put this another way. Think about the chain of implications connecting all of our propositions. Our BC will tell us  $P(1)$  is True. Great. This will imply that  $P(2)$  holds. (Use  $n = 1$  in condition (2) of SPMI.) Knowing these two will together imply that  $P(3)$  holds. (Use  $n = 2$  in condition (2) of SPMI.) Knowing all three of those will collectively imply  $P(4)$  holds. And so and so on:

$$
\underbrace {\overbrace {\left(P (1)\right) \stackrel {{\text{Us eI S}}} {{\Longrightarrow}} \left(P (2)\right)}_{\text{Kn ow} P (1) \wedge P (2)} \underbrace {\Longrightarrow \left(P (3)\right)}_{\text{Us eI S} \text{Ge t} T} \Rightarrow \left(P (4)\right) \Rightarrow \left(P (5)\right) \Rightarrow
$$

In some sense, this points to why the method works, overall. We prove  $P(1)$  holds, just like with Regular Induction. But then, to "get to" the truth of  $P(2)$ , that first step— $P(1) \Rightarrow P(2)$ —is the same in Strong Induction as it is in Regular Induction. (Use  $n = 1$  in condition (2) of SPMI and PMI. It's the same condition.) From there on out, when we use Strong Induction, we're just making use of the fact that all of the previous instances of the proposition have held True; we might as well use them to keep traveling through and deducing the truths of the next propositions! Regular Induction doesn't bother with this. It says, "Okay, great, all of the previous instances have held. We don't actually need them to prove the next instance; we only need the immediately preceding one."

Here's one more slightly different way of interpreting this "chain of implications". This will actually directly hint at the proof we will see very shortly, as well! Pretend we're moving along with a Strong Induction process, and we've proven everything up until  $P(n)$ ; that is,  $P(1)$  and  $P(2)$  and … and  $P(n)$  are all

True. Let's just package those instances all together and label them as one big proposition,  $Q(n)$ . (Thinking of it another way, we'll take all of those dominoes and bind them together into one giant domino.) The next step is to use that one instance to prove the next one, which sounds a lot more like Regular Induction, which we're more comfortable with for now. This is essentially what we will do in the proof! We'll reformulate the whole process of Strong Induction to phrase it as a Regular Induction process.

# Formal Proof

As the previous paragraph hinted, the proof below will make use of PMI. (In fact, we will even use the proof template for a proof by induction that we saw in the previous section!) In this sense, we are really proving this statement:

$$
\mathrm{PM I} \Rightarrow \mathrm{SP MI}
$$

Let's do it!

Proof. Let  $P(n)$  be a variable proposition. Suppose that

(1)  $P(1)$  holds True, and

(2)  $\forall k\in \mathbb{N}.\left(\forall i\in [k].P(i)\right)\Rightarrow P(k + 1)$  holds True

Our goal is to prove that  $\forall n\in \mathbb{N}$ $P(n)$

Define the proposition  $Q(n)$  by setting

$$
Q (n) \Longleftrightarrow \forall i \in [ n ]. P (i)
$$

(That is,  $Q(n)$  says "All of the propositions  $P(1)$  and  $P(2)$  and …and  $P(n)$  are True.)

We will now prove  $\forall n\in \mathbb{N}$ $Q(n)$  by induction on  $n$

BC: By the definition of the proposition  $Q(1)$ , we have  $Q(1) \Longleftrightarrow P(1)$ . Condition (1) tells us that  $P(1)$  holds, and therefore  $Q(1)$  holds, as well.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $Q(k)$  holds.

IS: By the definition of  $Q(k)$ , we have

$$
Q (k) \Longleftrightarrow \forall i \in [ k ]. P (i)
$$

(Again, that is,  $P(1)$  and …and  $P(k)$  all hold.)

By condition (2), we can deduce that  $P(k + 1)$  holds.

This means that  $\forall i\in [k + 1].P(i)$ . (That is, we already knew  $P(1)$  and … and  $P(k)$  all hold, and we just found that  $P(k + 1)$  holds, too.)

By the definition of  $Q(k + 1)$ , this means that  $Q(k + 1)$  holds. This was the goal of the IS.

# 5.4. STRONG INDUCTION

Accordingly, by PMI, we deduce that  $\forall n\in \mathbb{N}$ $Q(n)$  holds.

By the definition of  $Q(n)$ , we have

$$
\forall n \in \mathbb {N}. Q (n) \Rightarrow P (n)
$$

(That is, every instance  $Q(n)$  says that all of the instances  $P(1)$  and … and  $P(n)$  hold and so, at the very least, we know that  $P(n)$  itself holds.)

Since we just proved that  $Q(n)$  holds for every  $n \in \mathbb{N}$ , we may deduce that  $P(n)$  therefore also holds for every  $n \in \mathbb{N}$ , i.e.

$$
\forall n \in \mathbb {N}. P (n)
$$

This was the goal, so our proof is complete.

□

# Proof Summary and a Striking Equivalence

Look at what we've accomplished: we used Regular Induction to prove that Strong Induction is a valid technique. This tells us the PMI Theorem implies the SPMI Theorem, as we mentioned above:

$$
\mathrm{PM I} \Rightarrow \mathrm{SP MI}
$$

But certainly, this works the other way around, too! If we had already somehow proven (by other means) that Strong Induction is valid, then Regular Induction would have to be valid, as well. That is, we also know that

$$
\mathrm{SP MI} \Rightarrow \mathrm{PM I}
$$

Said another way: if we already had Strong Induction in hand as a valid proof technique, then whenever we would want to use Regular Induction to prove something, we would just use Strong Induction to accomplish our goal. In that sense, Strong Induction "subsumes" Regular Induction as a technique.

Together, these two observations tell us something remarkable about the theorems PMI and SPMI as they are in the world of mathematical truths. We have now shown that they are equivalent:

$$
\mathrm{PM I} \iff \mathrm{SP MI}
$$

Each theorem implies the other one.

Now, for the practical purpose of applying these techniques to prove facts, this equivalence might not seem to matter too much, but it really does tell us something helpful. It says this:

Whenever we have to prove something by induction, we might as well always use Strong Induction.

Think about this for a few minutes. Read over the theorem statements and their proofs and consider it. Have it in mind as we work through the coming examples.

Once you've read the proof template below, go back to the examples from the previous section on Regular Induction and apply Strong Induction to them. Does it work? Does it seem different? Try it! We'll discuss this Regular/Strong comparison again after working out the examples below, so let's move on and see how to use Strong Induction.

# 5.4.3 Using Strong Induction: Proof Template

This template is very similar to the one for Regular Induction, since the only difference between the two theorems (and, accordingly, their respective techniques when applied) occurs in the IH.

# Template for a "Proof by Strong Induction"

Goal: Prove that  $\forall n\in \mathbb{N}$ $P(n)$

Proof.

Let  $P(n)$  be the proposition

We will prove  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$

Base Case: Observe that  $P(1)$  holds because

Induction Hypothesis: Let  $k \in \mathbb{N}$  be arbitrary and fixed.

Suppose  $\forall i\in [k].P(k)$  holds.

Induction Step: Deduce that  $P(k + 1)$  also holds.

By PMI, it follows that  $\forall n\in \mathbb{N}$ $P(n)$

All of the same important observations and recommendations that we made about Regular Induction apply here, as well. We have to be sure to define a proposition, point out that we're using (strong) induction on a specific variable, label our steps, and make a conclusion.

One new recommendation we want to make is a refinement of an old one. When using Regular Induction, we had to be sure to cite the IH whenever we used it. Here, we will have many instances of the proposition in our IH, so we will actually have to be careful and cite which instance(s) of the proposition we use! You'll see this come into play in the examples below.

# 5.4.4 Examples

We will see three different "kinds" of examples here. Even though they all use the same template for Strong Induction that we just introduced, they differ in how the refer to the hypotheses in the IH. This first one is a direct application of the method, so let's work through it first, and then discuss how the other examples might be different.

Example 5.4.2. A formula for a recursively-defined sequence:

Claim: Let the sequence  $s_n$  be defined by

$$
s_{0} = 1 \text{an d} \forall n \in \mathbb {N}. s_{n} = 1 + \sum_{i = 0}^{n - 1} s_{i}
$$

Find and prove a closed formula for  $s_n$  for every  $n \in \mathbb{N} \cup \{0\}$ .

Proof. Let  $P(n)$  be " $s_n = 2^n$ ". We prove  $\forall n \in \mathbb{N} \cup \{0\}$ .  $P(n)$  by induction on  $n$ .

BC: When  $n = 0$ , observe that  $s_0 = 1$  and  $2^0 = 1$ , so  $s_0 = 2^0$ . Thus,  $P(0)$  holds.

IH: Let  $k \in \mathbb{N} \cup \{0\}$  be arbitrary and fixed. Suppose  $P(0) \wedge P(1) \wedge \dots \wedge P(k)$  holds.

IS: Observe that

$$
\begin{array}{l} s_{k + 1} = 1 + \sum_{i = 0}^{k} s_{i} \quad \text{Definition of } s_{k + 1} \\ = 1 + \sum_{i = 0}^{k} 2^{i} \quad \text{Using IHs: } P (0) \wedge \dots \wedge P (k) \\ = 1 + \left(2^{k + 1} - 1\right) \quad \text{Standard geometric series} \\ = 2^{k + 1} \\ \end{array}
$$

Thus,  $P(k + 1)$  holds. Therefore,  $\forall n \in \mathbb{N} \cup \{0\}$ .  $P(n)$  holds, by induction.

Notice that this example required us to use all of the instances in the IH. Isn't that striking? Certainly, we needed strong induction here. Without knowing all of the previous instances held, we wouldn't have any hope of deducing the next one!

What distinguishes this from the next example is that here we knew exactly which instance(s) of the IH we used (namely, all of them). In the next example, we will invoke the IH, but we won't be able to say exactly which instance we use. You'll see what we mean!

Example 5.4.3. To start we need to introduce you to (or perhaps remind you of) a couple of ideas about prime numbers and the natural numbers.

Primes: A prime number is an element of the set

$$
P = \left\{n \in \mathbb {N} \mid n > 1 \wedge (n = a b) \Longrightarrow (a = 1 \vee a = n) \right\}
$$

That is, the only divisors of a prime number are 1 and itself.

Prime Factorization: Given  $x \in \mathbb{N}$ , a prime factorization of  $x$  is a product of primes that equals  $x$ , with repeats allowed.

For example, a prime factorization of 6 is  $2 \cdot 3$ , and a prime factorization of 252 is  $2 \cdot 2 \cdot 3 \cdot 3 \cdot 7$ .

We will now state and prove the fact that every natural number has a prime factorization.

Claim: Let  $F(n)$  be the proposition " $n$  has a prime factorization". Then we claim that  $\forall n \in \mathbb{N} - \{1\}$ .  $F(n)$ .

Proof. We will prove  $\forall n\in \mathbb{N} - \{1\} .F(n)$  by induction on  $n$

BC: Notice that  $F(2)$  holds because  $2 = 2$  is a prime factorization of 2.

IH: Let  $k \in \mathbb{N} - \{1\}$  be arbitrary and fixed.

Suppose  $\forall i\in [k] - \{1\} .F(i)$  holds. (That is, suppose  $F(2)\wedge F(3)\wedge \dots \wedge F(k).$

IS: Consider  $k + 1$ . We want to find a prime factorization of  $k + 1$ . There are two cases, based on whether  $k + 1$ , itself, is prime:

Case 1: If  $k + 1$  itself is prime, then  $k + 1$  is a prime factorization of  $k + 1$ , thereby showing  $F(k + 1)$  holds.

Case 2: If  $k + 1$  is not prime, there exist  $a, b \in \mathbb{N} - \{1\}$  such that  $k + 1 = a \cdot b$ . Since  $a, b \neq 1$ , it must be that  $1 < a < k + 1$  and  $1 < b < k + 1$ . That is,  $2 \leq a \leq k$  and  $2 \leq b \leq k$ .

Thus,  $F(a)$  and  $F(b)$  hold, by the IH. Accordingly, there is a prime factorization of  $a$  and a prime factorization of  $b$ . Multiplying these two factorizations together yields a prime factorization of  $a \cdot b = k + 1$ . This shows  $F(k + 1)$  holds.

In either case, we deduce that  $F(k + 1)$  holds.

By induction, we conclude that  $\forall n\in \mathbb{N} - \{1\} .F(n)$

Notice that we invoked the IH in this proof but we didn't know which "previous instance" of the claim we invoked. We were only able to appeal to some  $a$  and  $b$  with a certain property. This is different than the previous example, but it also clearly indicates we needed strong induction here. Nothing about a prime factorization for  $k$  could possibly help us find one for  $k + 1$ . Think about it: does knowing  $14 = 2 \cdot 7$  help us figure out that  $15 = 3 \cdot 5$ ? Does knowing  $16 = 2^4$  help us figure out that 17 is prime?

This result we just proved is an important one: it says that every natural number has a prime factorization. Now, it also happens to be true that these prime factorizations are unique, in the sense that every natural number has exactly one prime factorization. Of course, this only works "up to the ordering of the factors". By this, we mean that  $6 = 2 \cdot 3$  and  $6 = 3 \cdot 2$  are really the same factorization of 6. Likewise,  $252 = 2 \cdot 2 \cdot 3 \cdot 3 \cdot 7$  is the only factorization of 252; it is no different than writing  $252 = 7 \cdot 3^2 \text{cod} t2^2$ .

Nothing about proof above addresses this fact, though! We only used the existence of some  $a$  and  $b$  to deduce something. Who's to say that there weren't some other  $c$  and  $d$  with the same properties that we could have used? Think

about this. Can you prove that prime factorizations are unique? What method will you use?

The next example will address the Fibonacci Sequence, a sequence of numbers we have used before. Specifically, we will state and prove a closed form for the sequence, which is typically defined recursively. By a "closed form" we mean a straight-forward expression that can be evaluated by "plugging and chugging". To find, for example,  $f_{100}$ , with the recursive definition of the sequence, we would have to compute all of the numbers in the sequence up until that point: we need  $f_{99}$  and  $f_{98}$ , which means we need  $f_{97}$ , which means … With the closed form, though, we will be able to just "plug in  $n$ " and evaluate directly to find  $f_{100}$ .

Example 5.4.4. A closed form for the Fibonacci Sequence:

Claim: Define the standard Fibonacci Sequence by

$$
f_{0} = 0 \text{an d} f_{1} = 1 \text{an d} \forall n \in \mathbb {N} - \{1 \}. f_{n} = f_{n - 1} + f_{n - 2}
$$

Define  $\varphi = \frac{1 + \sqrt{5}}{2}$ . Then the following equality holds for every  $n \in \mathbb{N} \cup \{0\}$ :

$$
f_{n} = \frac{1}{\sqrt{5}} \left(\varphi^{n} - (1 - \varphi)^{n}\right)
$$

Proof. Let  $f_{n}$  and  $\varphi$  be defined as in the claim above.

We will first prove the following equation:

$$
1 + \varphi = \varphi^{2} \quad (\star_{1})
$$

Observe that

$$
\begin{array}{l} \varphi^{2} = \left(\frac{1 + \sqrt{5}}{2}\right)^{2} = \frac{1 + 2 \sqrt{5} + 5}{4} = \frac{6 + 2 \sqrt{5}}{4} \\ = \frac{3 + \sqrt{5}}{2} = 1 + \frac{1 + \sqrt{5}}{2} = 1 + \varphi \\ \end{array}
$$

Then, we can use this to prove the following equation:

$$
2 - \varphi = (1 - \varphi)^{2} \quad (\star_{2})
$$

Observe that

$$
(1 - \varphi)^{2} = 1 - 2 \varphi + \varphi^{2} = 1 - 2 \varphi + (\varphi + 1) = 2 - \varphi
$$

where we have used fact  $(\star_{1})$

We will make use of both of these facts below.

Let  $P(n)$  be the proposition

$$
“ f_{n} = \frac{1}{\sqrt{5}} \left(\varphi^{n} - (1 - \varphi)^{n}\right) ”
$$

We will prove that  $\forall n\in \mathbb{N}\cup \{0\} .P(n)$  by induction on  $n$

BC: Observe that  $f_0 = 0$  and

$$
\frac{1}{\sqrt{5}} \left(\varphi^{0} - (1 - \varphi)^{0}\right) = \frac{1}{\sqrt{5}} (1 - 1) = 0
$$

Thus,  $P(0)$  holds.

IH: Let  $k \in \mathbb{N} \cup \{0\}$  be arbitrary and fixed. Suppose  $\forall i \in [k] \cup \{0\}$ .  $P(i)$  holds.

IS: Our goal now is to deduce that  $P(k + 1)$  holds.

Case 1: Suppose  $k = 0$ . Then we can directly observe that  $f_{1} = 1$  and

$$
\frac{1}{\sqrt{5}} \left(\varphi^{1} - (1 - \varphi)^{1}\right) = \frac{1}{\sqrt{5}} \left(2 \varphi - 1\right) = \frac{1}{\sqrt{5}} \left(1 + \sqrt{5} - 1\right) = \frac{1}{\sqrt{5}} \left(\sqrt{5}\right) = 1
$$

This shows that  $P(1)$  holds.

Case 2: Suppose  $k \geq 1$ . Then, observe that

$$
\begin{array}{l} f_{k + 1} = f_{k} + f_{k - 1} \quad \text{De fn ,s in ce} k \geq 1 \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k} - (1 - \varphi)^{k}\right) + \frac{1}{\sqrt{5}} \left(\varphi^{k - 1} - (1 - \varphi)^{k - 1}\right) \quad \mathbf {I H s} P (k), P (k - 1) \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k} + \varphi^{k - 1} - (1 - \varphi)^{k} - (1 - \varphi)^{k - 1}\right) \quad \text{Si mp li fy} \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k - 1} (\varphi + 1) - (1 - \varphi)^{k - 1} ((1 - \varphi) + 1)\right) \quad \text{Fa ct or} \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k - 1} \cdot \varphi^{2} - (1 - \varphi)^{k - 1} (2 - \varphi)\right) \quad \text{By} (\star_{1}) \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k + 1} - (1 - \varphi)^{k - 1} (1 - \varphi)^{2}\right) \quad \text{By} (\star_{2}) \\ = \frac{1}{\sqrt{5}} \left(\varphi^{k + 1} - (1 - \varphi)^{k + 1}\right) \\ \end{array}
$$

Thus,  $P(k + 1)$  holds.

By induction, we conclude that  $\forall n\in \mathbb{N}\cup \{0\} .P(n)$

# A Discussion about Multiple Base Cases

Notice, in the previous example, that we had to establish two cases in the IS. Because the Fibonacci Sequence is defined recursively so that each term depends on two previous terms, we could not use the truth of  $P(0)$  alone to deduce  $P(1)$ . We had to show  $P(1)$  held separately. (Go back and try it. You'll find yourself trying to refer to  $f_{-1}$ , an undefined term!) After that, we can use the truth of  $P(0)$  and  $P(1)$  to deduce  $P(2)$ , then we can use  $P(1)$  and  $P(2)$  to deduce  $P(3)$ …. That is to say, we really needed to throw in one extra base case before the whole "and so on" of induction kicked in.

There are two legitimate ways to handle this, and we just showed you one. The alternative would be to recognize that this situation will happen ahead of time, and instead present two base cases in the BC step. For the sake of illustration, let's show you how the relevant parts of the proof would be different, had we done that instead:

Proof.

.

BC: Observe that  $f_0 = 0$  and

$$
\frac{1}{\sqrt{5}} \big (\varphi^{0} - (1 - \varphi)^{0} \big) = \frac{1}{\sqrt{5}} (1 - 1) = 0
$$

Thus,  $P(0)$  holds.

Also, observe that  $f_{1} = 1$  and

$$
\frac{1}{\sqrt{5}} \big (\varphi^{1} - (1 - \varphi)^{1} \big) = \frac{1}{\sqrt{5}} \big (2 \varphi - 1 \big) = \frac{1}{\sqrt{5}} \big (1 + \sqrt{5} - 1 \big) = \frac{1}{\sqrt{5}} \big (\sqrt{5} \big) = 1
$$

Thus,  $P(1)$  holds.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose  $\forall i \in [k] \cup \{0\}$ .  $P(i)$  holds.

IS: Our goal now is to deduce that  $P(k + 1)$  holds. Observe that

.

We moved the special  $P(1)$  case into the BC section. Because of this, we had to also modify the quantification that happens in the IH and IS. We no longer want to use  $k = 0$  in the ensuing argument, so in the IH we just take an arbitrary  $k$  that satisfies  $k \geq 1$ . However, we have already seen  $P(0)$  holds, so we can still include it in our IH.

That's it! The two proofs are fundamentally identical. The only differences lie in their presentation and, even then, the differences are small. We will leave it to you to decide which style you prefer (if either) to be used in your proofs. We want to remind you, though, that these differences are small but they're also subtle and sometimes easy to forget! If you find yourself including many base cases, be sure to start your  $\mathbf{IS}$  by seeking to prove a value above those base case values! You don't want to be inadvertently asserting some logical implication that doesn't actually hold. (For example, look back at the second proof above. If we had allowed  $k = 0$  as a case in the  $\mathbf{IS}$ , we would have inadvertently been referring to  $f_{-1}$ , which does not exist. Thus, we would have been saying something incorrect, and the proof would be flawed, albeit not totally doomed.)

This kind of distinction typically occurs when you are asked to prove some representation formula for a recursively-defined sequence, where each term in the sequence is defined by several previous terms. There are several examples of this phenomenon in the exercises, both for this section and at the end of the chapter. Keep this in mind as you work on them!

# Needing  $n = 2$

A fairly common phenomenon that occurs in strong induction proofs is the necessity of proving both the  $n = 1$  and  $n = 2$  cases before jumping into the IS. In particular, this might happen when you have to prove some inequality or equality holds for  $n$  variables, where the  $n = 1$  case is trivial and the  $n = 2$  case is the interesting one that requires more work, and the rest of the induction follows by invoking the  $n = 2$  case. Note that this requires taking  $k \geq 2$  in the IS, of course.

Let's see an example to show you what we mean. Lucky for us, we have already proven the  $n = 2$  case for this claim; it's actually one of DeMorgan's Laws for Sets!

Example 5.4.5. A Generalized DeMorgan's Law for Sets:

Claim: Let  $U$  be a universal set. For every  $i \in \mathbb{N}$ , let  $A_i \subseteq U$  be a set.

Then, the following equality holds for every  $n \in \mathbb{N}$ :

$$
\overline {{\bigcup_{i = 1}^{n} A_{i}}} = \bigcap_{i = 1}^{n} \overline {{A_{i}}}
$$

Written another way, this claim says that, for every  $n \in \mathbb{N}$ , we have

$$
\overline {{A_{1} \cup A_{2} \cup \cdots \cup A_{n}}} = \overline {{A_{1}}} \cap \overline {{A_{2}}} \cap \dots \cap \overline {{A_{n}}}
$$

Proof. Let  $U$  and  $A_{1}, A_{2}, \ldots$  be defined as in the claim.

Let  $P(n)$  be the proposition

$$
\overline {{\bigcup_{i = 1}^{n} A_{i}}} = \bigcap_{i = 1}^{n} \overline {{A_{i}}} ”
$$

We will prove  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$

BC: Certainly,  $\overline{A_1} = \overline{A_1}$ , so  $P(1)$  holds.

Also,  $\overline{A_1 \cup A_2} = \overline{A_1} \cap \overline{A_2}$  by DeMorgan's Law for Sets (Theorem 4.6.9), so  $P(2)$  holds.

IH: Let  $k \in \mathbb{N} - \{1\}$  be arbitrary and fixed. Suppose  $\forall i \in [k]$ .  $P(i)$  holds.

IS: Our goal now is to deduce that  $P(k + 1)$  holds. First, observe that

$$
\bigcup_{i = 1}^{k + 1} A_{i} = A_{k + 1} \cup \bigcup_{i = 1}^{k} A_{i}
$$

so let's define

$$
B_{k} = \bigcup_{i = 1}^{k} A_{i}
$$

Then, observe that

$$
\overline {{\bigcup_{i = 1}^{k + 1} A_{i}}} = \overline {{A_{k + 1} \cup B_{k}}}
$$

Defn of  $B_{k}$

$$
= \overline {{A_{k + 1}}} \cap \overline {{B_{k}}}
$$

By BC,  $P(2)$  (a.k.a. DeMorgan)

$$
= \overline {{A_{k + 1}}} \cap \overline {{\bigcup_{i = 1}^{k} A_{i}}}
$$

Defn of  $B_{k}$

$$
= \overline {{A_{k = 1}}} \cap \bigcap_{i = 1}^{k} \overline {{A_{i}}}
$$

By IH,  $P(k)$

$$
= \bigcap_{i = 1}^{k + 1} \overline {{A_{i}}}
$$

Simplify

Thus,  $P(k + 1)$  also holds.

By induction,  $\forall n\in \mathbb{N}$ $P(n)$

# 5.4.5 Comparing "Regular" and Strong Induction

We want to reiterate something we said earlier when we introduced strong induction as a technique. It bears repeating here, because it's an important lesson:

Whenever we have to prove something by induction, we might as well always use Strong Induction.

The reason behind this is that regular induction and strong induction are bi-conditionally connected; each one implies the other. When working through an induction proof, it essentially "doesn't hurt" to make a strong induction hypothesis, because we know we can. When you're working through a proof, you might not anticipate which or how many of the hypotheses from the IH that you'll need to invoke in the IS. It would be a shame to make a weaker hypothesis and find yourself referencing "truths" that you never officially proved! Instead, you might as well make the strongest hypothesis you can, just in case you'll need it. It might end up being overkill (in the sense that you really only needed  $P(k)$  to deduce  $P(k + 1)$ ), but who cares, right? The point is to prove the fact at hand, and as long as that is achieved, then you've been successful.

As you move on in your mathematical careers, you'll probably get better at identifying the distinctions between regular/strong induction arguments. In particular, you'll likely notice when strong induction is truly required. Typically, this happens when we have a recursively-defined sequence, but this occurs in many other places, too. As you play around with a problem, trying to come

up with an argument, look at what sorts of dependencies there are between instances of your proposition. If you notice that an instance depends on several previous ones, you will almost certainly need a strong induction argument.

# 5.4.6 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you can confidently answer these before moving on will help your understanding and memory!

(1) What are the differences between Strong and Regular Induction?  
(2) How might you identify when a Strong Induction argument is required?  
(3) Why is it that we might as well always use Strong Induction, instead of deciding whether to use Regular/Strong?  
(4) What was interesting about the use of the IH in the Prime Factorization example that we saw? How does it compare to the other examples, where we proved a formula about a recursively-defined sequence of numbers?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Define a sequence of numbers by

$$
x_{1} = 2 \text{an d} x_{2} = 3 \text{an d} \forall n \in \mathbb {N} - \{1, 2 \}. x_{n} = 3 x_{n - 1} - 2 x_{n - 2}
$$

Prove that

$$
\forall n \in \mathbb {N}. x_{n} = 2^{n - 1} + 1
$$

(2) Let the sequence  $a_{n}$  be defined by  $a_0 = 0$  and  $a_1 = 1$  and

$$
\forall n \in \mathbb {N} - \{1 \}. a_{n} = 5 a_{n - 1} - 6 a_{n - 2}
$$

That is,  $\langle a_n\rangle = \langle 0,1,5,19,65,211,\ldots \rangle$

Prove that  $a_{n} = 3^{n} - 2^{n}$  for every  $n\in \mathbb{N}\cup \{0\}$ .

(3) Let  $a_1 \in \mathbb{Z}$  be arbitrary and fixed. Define a sequence by setting

$$
\forall n \in \mathbb {N} - \{1 \}. a_{n} = \sum_{k = 1}^{n - 1} k^{2} a_{k}
$$

Prove that

$$
a_{1} \text{is ev en} \Rightarrow \forall n \in \mathbb {N}. a_{n} \text{is ev en}
$$

(4) Define a sequence  $\langle t_n\rangle$  by setting

$$
t_{1} = t_{2} = 2 \mathrm{an d} \forall n \in \mathbb {N} - \{1, 2 \}. t_{n} = \frac{1}{2 t_{n - 2}} (t_{n - 1} - 4) (t_{n - 1} - 6)
$$

Prove that  $\forall n\in \mathbb{N}$ $t_n = 2$

(5) You have likely seen the Triangle Inequality before; it states

$$
\forall x, y \in \mathbb {R}. | x + y | \leq | x | + | y |
$$

(where  $|x|$  is the absolute value of  $x$ ). Prove that this inequality holds with  $n$  variables, not just 2; that is, prove that if we have a sequence of real numbers  $x_{i}$ , where  $\forall i \in \mathbb{N}$ .  $x_{i} \in \mathbb{R}$ , then

$$
\forall n \in \mathbb {N}. \left| \sum_{k = 1}^{n} x_{i} \right| \leq \sum_{k = 1}^{n} | x_{i} |
$$

(Note: Prove the  $n = 2$  case, as well. We do not want you to just assume it!)

(6) Look back to Section 2.4.1 where we considered tiling  $2 \times n$  rectangular chessboards with dominoes. Here, investigate the similar problem of tiling  $3 \times n$  rectangular chessboards with straight triominoes (i.e.  $3 \times 1$  rectangular pieces). Identify an inductive relationship and define a sequence that identifies the number of ways to tile a  $3 \times n$  board.

(Note: Don't attempt to find a closed form and/or prove it! The techniques required to do so lie outside the scope of our current discussion. If you are curious, search for recurrence relations. If you'd like, try to apply what you read about to come up with a closed form for this problem. Can you prove it by induction?)

# 5.5 Variants of Strong Induction

Much like we saw a few variations on regular induction—inducting with a different base case, on a different set, backwards, etc.—we have a variation on strong induction to discuss here. As you will see, "minimal criminal" arguments are

essentially strong induction proofs where the induction step is done using a contrapositive conditional statement. These types of arguments pop up in induction proofs now and again, and understanding how they work will be very helpful!

Furthermore, we will state and prove a property of the set of natural numbers. This is known as the Well-Ordering Principle. Why is it included in this section? Well, you'll see how this principle is closely related to both induction and strong induction!

# 5.5.1 "Minimal Criminal" Arguments

# Using a Contrapositive

Remember that a conditional statement is logically equivalent to its contrapositive. Also, remember that the theorem statements about how induction works all have conditional statements within them. They are always in condition (2), and they represent the action of the IH and IS. What happens if we consider the contrapositive of such a conditional statement? This won't change the truth of the theorem at all, but it will certainly affect how we apply induction as a proof technique. What would happen? Let's find out!

Here is the conditional statement from the Strong PMI:

$$
\forall k \in \mathbb {N}. (\forall i \in [ k ]. P (i)) \Rightarrow P (k + 1)
$$

Negating both sides and switching the arrow, we find its contrapositive:

$$
\forall k \in \mathbb {N}. \neg P (k + 1) \Longrightarrow (\exists i \in [ k ]. \neg P (i))
$$

When applying strong induction, we seek to prove that  $P(1)$  and … and  $P(k)$  together allow us to deduce  $P(k + 1)$ . This new version of the statement reflects a different approach: supposing that  $P(k + 1)$  actually fails, let's deduce that there is a previous instance that also fails.

# How It Works

Technically speaking, there's nothing new to say here! This method works because a conditional statement and its contrapositive are logically equivalent. However, this is a little unsatisfying. It feels funny to argue "backwards" like this, pretending that our proposition fails somewhere and showing that it also fails somewhere earlier. Isn't that the opposite of what we were trying to do? The crux of this method is twofold: (1) we already established a base case, and (2) this "earlier failure" argument is made for an arbitrary  $k$ .

Here's how we think of it. Say we have a proposition  $P(n)$  and we want to show  $\forall n \in \mathbb{N}$ .  $P(n)$ . First, we establish that  $P(1)$  holds. Good. Next, we pretend that  $P(k + 1)$  fails, for some arbitrary  $k \in \mathbb{N}$ . (Notice that  $k + 1 \geq 2$ , so we aren't pretending that  $P(1)$  fails, since we already know it holds.) We work through some argument and deduce that an earlier instance fails. Let's say  $P(\ell)$  fails, for some  $\ell$  that satisfies  $1 \leq \ell \leq k$ .

Now, this argument we just made was for an arbitrary  $k$ , so the same argument applies to this new value  $\ell$  that we've produced. This guarantees that  $P(m)$  fails, for some  $m$  that satisfies  $1 \leq m \leq \ell - 1$ . Then, the same argument can be re-packaged to apply to the value of  $m$ , and then … You might see where this is going. Eventually, we "run out" of previous instances at which the proposition could fail; we have to eventually get back to  $P(1)$ . But we already know  $P(1)$  holds!

The main idea can be sumamrized thusly: if we have a valid base case, and there is no smallest instance that fails, then the proposition holds everywhere. This is where the phrase "Minimal Criminal" comes from. (It is chosen for both its descriptiveness and its playful slant rhyme, of course.) "Criminal" refers to an instance where the proposition fails, and proving the implication

$$
\forall k \in \mathbb {N}. \neg P (k + 1) \Longrightarrow (\exists i \in [ k ]. \neg P (i))
$$

amounts to showing that there can be no "minimal" such instance.

Another phrase that encapsulates this same idea is "No Least Counterexample". You might find this phrase in other books, so be aware that it refers to the same idea. It conveys the idea that there is no counterexample to the claim such that all the previous instances are true. Also, another term for this method is "Infinite Descent". It's less immediately clear that this refers to the same concept, because it is hinting at the actual description we gave of how this method works. By proving that we can always find a smaller counterexample, we are showing that there exists a "backwards" sequence of instances where our proposition fails. However, this sequence cannot be an "infinite descent" because we'll eventually run into  $P(1)$ , which we proved to be valid. Be aware that both of these terms are also used. We chose "Minimal Criminal" because it's more fun to say.

# Proof Template

Let's briefly show you a template for how to write a proof like this, and then we'll move right into working through an example proof of an interesting fact. There isn't anything particularly new right here. We're applying the direct proof strategy to a  $\Rightarrow$  statement; it's just that this statement is the contrapositive of a statement we've already seen before.

# Template for a "Proof by a Minimal Criminal Argument"

Goal: Prove that  $\forall n\in \mathbb{N}$ $P(n)$

Proof.

Let  $P(n)$  be the proposition

We will prove  $\forall n\in \mathbb{N}$ $P(n)$  by induction on  $n$  (a "minimal criminal"

argument, in fact).

Base Case: Observe that  $P(1)$  holds because

Induction Hypothesis: Let  $k \in \mathbb{N}$  be arbitrary and fixed.

Suppose  $P(k + 1)$  is False.

Induction Step: Deduce that  $\exists \ell \in \mathbb{N}$  that satisfies  $1 \leq \ell \leq k$  and such that  $P(\ell)$  is False.

It follows that  $\forall n\in \mathbb{N}$ $P(n)$

If you're worried about forgetting the technical details of this template, just keep the main idea in your mind:

A "Minimal Criminal" argument works by applying the contrapositive of the usual IH and IS steps of an induction proof.

# Example

The following result is interesting in its own right. (In fact, we will use it later on in Section 7.6.3 when we talk about how "big" infinite sets are. Neat, right?) We encourage you to play around with the claim first before jumping into the proof. Try to see why it's true and how it works. Check it for small values of  $n$ . Then, as you read the proof, look at your scratch work and see how it mimics the kinds of patterns you might have observed.

Example 5.5.1. Expressing naturals uniquely as a product:

Claim: Every  $n \in \mathbb{N}$  can be expressed uniquely as a power of 2 times an odd number. That is,

$$
\forall n \in \mathbb {N}. \exists m, \ell \in \mathbb {N} \cup \{0 \}. n = 2^{m} \cdot (2 \ell + 1)
$$

and the  $\ell, m$  that exist are the only values that satisfy this equality.

Proof. We prove this claim by induction on  $n$ ; specifically, we use a "minimal criminal" argument.

BC: Observe that  $n = 1$  has such a representation as  $1 = 2^0 \cdot (2 \cdot 0 + 1)$ . Furthermore, this is the only such representation because any other power of 2 will make the product at least 2, and any other odd will make the product at least 3.

IH: Let  $k \in \mathbb{N}$  be arbitrary and fixed. Suppose that  $P(k + 1)$  fails, i.e. that  $k + 1$  has no such representation, or it has more than one such representation. We will have two cases based on the parity of  $k + 1$ .

Case 1: Suppose  $k + 1$  is even. This means  $\frac{k + 1}{2} \in \mathbb{N}$ .

First, suppose  $k + 1$  has no such representation. Then, neither does  $\frac{k + 1}{2}$ ; for if

it actually did, then we could simply double it (i.e. increasing the power of 2 by 1) to find a representation of  $k + 1$ .

Thus,  $P\left(\frac{k + 1}{2}\right)$  fails in this case (for non-existence).

Next, suppose  $k + 1$  has at least two such representations:

$$
k + 1 = 2^{m_{1}} \left(2 \ell_{1} + 1\right) \text{an d} k + 1 = 2^{m_{2}} \left(2 \ell_{2} + 1\right)
$$

We are assuming they are different, i.e.  $(m_1,\ell_1)\neq (m_2,\ell_2)$ . Since  $k + 1$  is even, we know  $m_{1},m_{2}\geq 1$ . By decreasing the powers of 2 by 1 each, we see that

$$
\frac{k + 1}{2} = 2^{m_{1} - 1} (2 \ell_{1} + 1) \text{an d} \frac{k + 1}{2} = 2^{m_{2} - 1} (2 \ell_{2} + 1)
$$

are two representations of  $\frac{k + 1}{2}$ . (Also note that  $m_1 - 1, m_2 - 1 \geq 0$ .) These are different because  $(m_1 - 1, \ell_1) \neq (m_2 - 1, \ell_2)$ , based on our assumption above.

Thus,  $P\left(\frac{k + 1}{2}\right)$  fails in this case (for non-uniqueness).

In either situation, we find that  $P\left(\frac{k + 1}{2}\right)$  fails.

Case 2: Suppose  $k + 1$  is odd. This means  $\exists \ell \in \mathbb{N} \cup \{0\}$ .  $k + 1 = 2\ell + 1$ . Then certainly we can represent  $k + 1$  as

$$
k + 1 = 2^{0} \cdot (2 \ell + 1)
$$

Also, there is certainly no other way to do this. Using a different power of 2 will make the product even (but  $k + 1$  is odd), and using a different odd factor will make the product different. Thus, this case is a contradiction.

By induction, then,  $\forall n\in \mathbb{N}$ $P(n)$  holds.

Interesting, isn't it? There was actually a little bit more going on, logically speaking, in this proof than we led on at the beginning. Specifically, the cases based on parity make this a little trickier. One of the cases (the even one) follows the "minimal criminal" argument. The other case (the odd one) can actually truly be proven. In this proof, we assumed  $P(k + 1)$  failed, but then realized it actually couldn't when  $k + 1$  is odd. That was the contradiction. It seems a little roundabout in retrospect, but it allows us to present the entire proof as a "minimal criminal" argument, rather than just doing two separate proofs, one for odds and one for evens.

Furthermore, we had to address not only the existence but the uniqueness of these representations. This is why there were two considerations to make in the case for  $k + 1$  being even. To show existence of these representations, we had to show it is not possible for  $k + 1$  to have zero representations; to show uniqueness, we had to show it is not possible for  $k + 1$  to have two representations.

# 5.5.2 The Well-Ordering Principle of  $\mathbb{N}$

# Motivation

We are all familiar with the relationship " $\leq$ " on the natural numbers  $\mathbb{N}$ . Given any two elements  $x, y \in \mathbb{N}$ , it must be that one of the two relationships holds: either  $x \leq y$  or  $y \leq x$  (or possibly both, but only when  $x = y$ ). We also know that

$$
\forall x, y, z \in \mathbb {N}. (x \leq y \wedge y \leq z) \Rightarrow x \leq z
$$

and that  $\forall x\in \mathbb{N}$ $x\leq x$  . This makes  $\mathbb{N}$  an ordered set; we call "  $\leq$  " an order relation on  $\mathbb{N}$  . (See Section 6.3 for more information.)

Furthermore, it turns out that this relationship is a well-ordering. We won't define this term formally, but one of the key aspects of being a well-ordering is not having any infinitely-descending chains. Just think about how this works in  $\mathbb{N}$ : Does there exist an infinite sequence of elements  $a_1, a_2, a_3, \ldots$  such that  $a_1 > a_2 > a_3 > \cdots$ ? Is that possible? (Notice these inequalities are strict). No, it's not! The idea is that, starting from some number  $a_1 \in \mathbb{N}$ , if we "descend" we have to eventually reach 1. We can't "go lower" than that.

Rather than discuss well-orderings in generality—which you can do in a class on set theory or formal logic—we will just discuss how this concept works in the context of  $\mathbb{N}$ . It's a useful property, and we will have occasion to cite it in the future, too! In this section, we will state the principle, get your help in proving it, and then demonstrate its relationship with induction.

# Statement and Proof

Theorem 5.5.2. Every non-empty subset of  $\mathbb{N}$  has a least element. Stated in logical form,

$$
\forall S \in \mathcal {P} (\mathbb {N}). \bullet [ S \neq \varnothing \Rightarrow (\exists \ell \in S. (\forall x \in S. \ell \leq x)) ]
$$

Think about how this relates to our statement before that we cannot have an infinitely-descending chain of natural numbers. If we did have such a chain, we could define  $S$  to be the set of all of those elements in the chain. This set would not have a least element. Given an element of that set, we know it is one of the elements in the chain; let's say it's  $a_{n}$ . Then,  $a_{n+1}$  is also in the set and  $a_{n+1} < a_{n}$ . Thus, there would be no least element.

We will have you prove this theorem, because we think it will be instructive to work through the details. It is outlined for you in several steps. One key observation is that the proof is by induction! That is, by proving the Well-Ordering Principle in this way, we will have shown that the Principle of Mathematical Induction implies the Well-Ordering Principle.

Proof. By induction. Left for the reader as Exercise 5.7.21

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/931673023455783bb889ce8fe9d27b04379355a005a10a50040b10acc948d1fc.jpg)

An easy extra observation to make is that the least element of any subset  $S \subseteq \mathbb{N}$  must also be unique. That is, we can't have two (or more) least elements. Let's say we actually do have two least elements of a set  $S$ ; call them  $\ell$  and  $m$ .

By the definition of what it means to be the least element, we would know  $\ell \leq m$  and  $m \leq \ell$ . Of course, this tells us  $\ell = m$ , so they're the same!

# Induction, Strong Induction, and The WOP

As we mentioned before, because we used induction to prove the Well-Ordering Principle, this shows the Principle of Mathematical Induction implies the Well-Ordering Principle. The next theorem shows that, in fact, those two theorems are logically equivalent: they imply each other. Furthermore, it says the Principle of Strong Induction also implies the Well-Ordering Principle, and vice-versa. In fact, it says that all three of these theorems are logically equivalent!

Essentially, this is saying that these three theorems

Theorem 5.5.3. The following are all logically equivalent:

- The Principle of Mathematical Induction  
- The Principle of Strong Induction  
- The Well-Ordering Principle

Proof. Let's use the following shorthand for each theorem:

- PMI: The Principle of Mathematical Induction  
- PSI: The Principle of Strong Induction  
WOP: The Well-Ordering Principle

By the way we proved PSI and WOP, we can already deduce that

$$
\mathrm{PM I} \Rightarrow \mathrm{PS I} \quad \text{an d} \quad \mathrm{PM I} \Rightarrow \mathrm{WO P}
$$

We also described in Section 5.4.2 how

$$
\mathrm{PS I} \Longrightarrow \mathrm{PM I}
$$

so now we know that

$$
\mathrm{PM I} \Longleftrightarrow \mathrm{PS I} \quad \text{an d} \quad \mathrm{PM I} \Longrightarrow \mathrm{WO P}
$$

To complete the proof, we will show that  $\mathrm{WOP} \Longrightarrow \mathrm{PMI}$ . This will show that  $\mathrm{WOP} \Longleftrightarrow \mathrm{PMI}$ , and the equivalence above will allow us to deduce that all three are logically equivalent.

To prove this, let's assume that the WOP is valid. We will use it to prove PMI. (Look back at the statement of PMI, in Theorem 5.2.2, to remind yourself why what we're about to do accomplishes our goal.)

Suppose we have a proposition  $P(n)$ , defined for every  $n \in \mathbb{N}$ . Let's suppose that  $P(1)$  is True, and that  $\forall k \in \mathbb{N}$ .  $P(k) \Rightarrow P(k + 1)$ . We need to show that  $\forall n \in \mathbb{N}$ .  $P(n)$  holds.

Define the set  $F$  to be the set of "False instances" of  $P(n)$ . That is, define

$$
F = \{n \in \mathbb {N} \mid P (n) \text{is} \mathsf{False} \}
$$

To prove that  $\forall n\in \mathbb{N}$ $P(n)$  , we will AFSOC that  $F\neq \varnothing$

Notice that  $F \subseteq \mathbb{N}$ , because we used set-builder notation. By our assumption in the line above,  $\exists f \in F$ . Let such an  $f$  be given.

Because of these two conditions, the WOP applies to the set  $F$ , telling us that  $F$  has a least element. Let  $\ell$  be that least element. We know that  $\ell \in F$  and,

$$
\forall x \in F. \ell \leq x
$$

Consider the case that  $\ell = 1$ . This is not possible, because our assumption above says that  $P(1)$  holds, so  $1 \notin F$ .

Now, consider the case that  $\ell \geq 2$ . Our assumption above said that

$$
\forall k \in \mathbb {N}. P (k) \Longrightarrow P (k + 1)
$$

which is logically equivalent to

$$
\forall k \in \mathbb {N} - \{1 \}. \neg P (k) \Longrightarrow \neg P (k - 1)
$$

by taking the contrapositive.

Applying this to the element  $\ell \in \mathbb{N} - \{1\}$ , we deduce that  $\neg P(\ell - 1)$  also holds. That is,  $P(\ell - 1)$  is False.

This means that  $\ell - 1 \in F$ . However, this contradicts the fact that  $\ell$  is the least element of  $F$ , since  $\ell - 1 < \ell$ .  $\boxtimes$

Therefore, it must be that  $F = \varnothing$ , which means that  $\forall n \in \mathbb{N}$ .  $P(n)$ .

This shows that the theorem PMI is valid.

Look at the main part of this proof. To prove that  $P(n)$  holds for all  $n$ , we supposed it failed for a particular  $n$ , the element  $f \in F$ . From there, you might be tempted to say, "Well,  $P(f)$  failing means  $P(f - 1)$  fails, which then means  $P(f - 2)$  also fails, … and so on, all the way down to  $P(1)$ , but we know that  $P(1)$  is True." But that argument about "and so on" is precisely what PMI and WOP are all about! You can't use a hand-wavey "just keep going" argument to prove the very idea that you're allowed to make such arguments! This is why we invoked the WOP to produce the least element of  $F$ . It might have seemed odd to you that we would introduce  $f \in F$  and the never use it again. We needed it to exist to guarantee  $F \neq \emptyset$ , which allows us to apply WOP.

# 5.5.3 Questions & Exercises

# Remind Yourself

Answering the following questions briefly, either out loud or in writing. These are all based on the section you just read, so if you can't recall a specific definition or concept or example, go back and reread that part. Making sure you

can confidently answer these before moving on will help your understanding and memory!

(1) What is the difference between a "Minimal Criminal" argument and a Strong Induction proof?  
(2) We proved that every  $n \in \mathbb{N}$  can be written as a product of a power of 2 and an odd number. What else is true about this representation?  
(3) We proved that  $\mathbb{N}$  is well-ordered. Do you think  $\mathbb{Z}$  also has the property? What about  $\mathbb{Q}$ ? What about  $\mathbb{R}$ ?  
(4) What does it mean that PMI and PSI and WOP are all logically equivalent?

# Try It

Try answering the following short-answer questions. They require you to actually write something down, or describe something out loud (to a friend/classmate, perhaps). The goal is to get you to practice working with new concepts, definitions, and notation. They are meant to be easy, though; making sure you can work through them will help you!

(1) Prove the Well-Ordering Principle. It's Exercise 5.7.21. Seriously, do it!  
(2) Prove that  $\sqrt{3}$  is irrational.

(Hint: AFSOC that  $\sqrt{3} = \frac{a}{b}$ , where  $a, b \in \mathbb{N}$  and the fraction is in reduced form. Use a descent argument to contradict this reduced form assumption.)

(3) Use the Well-Ordering Principle to prove that every natural number, except 1, can be written as a sum of non-negative multiples of 2 and 3.

For example,  $2 = 2$  and  $8 = 6 + 2$  and  $101 = 3 \cdot 33 + 2$ .

(4) Consider the following equation:  $4x^{4} + 2y^{4} = z^{4}$ . In this problem, you will prove that this equation has no solution,  $(x,y,z) \in \mathbb{N}^3$ , by an argument that appeals to the Well-Ordering Principle.

(a) AFSOC  $(x,y,z)\in \mathbb{N}^3$  is a solution, and suppose further that this solution has the smallest value of  $x$  amongst all solutions.

That is, we are defining

$$
T = \left\{x \in \mathbb {N} \mid \exists y, z \in \mathbb {N}. 4 x^{4} + 2 y^{4} = z^{4} \right\}
$$

and pre-supposing that this set is non-empty (i.e. the equation has solutions) so that  $T$  has a least element.

(b) Deduce that  $z$  is even.

Hint: In this and the next two parts, you may use the fact that a sum/difference of multiples of some natural number  $m$  is also a multiple of  $m$ .)

(c) Deduce that  $y$  is even.  
(d) Deduce that  $x$  is even.  
(e) Use this to deduce that there is another solution  $(a, b, c)$  with a smaller value of the first variable, i.e.  $a < x$ .  
(f) Explain why this has proven that there are no solutions.

# 5.6 Summary

Now, we have finally placed induction on solid, mathematical ground! We have been building towards this for a while, so we wanted to present this fully when we finally got here. We took care to formally state and prove the Principle of Mathematical Induction, and see several examples of it in action. Then, we used PMI to prove the more general Principle of Strong Induction. In so doing, we pointed out that any induction proof might as well be a strong induction one, because one technique "subsumes" the other. Furthermore, we later proved—in the section about the Well-Ordering Principle of  $\mathbb{N}$ —that the two principles of induction we introduced are logically equivalent to each other (and to the Well-Ordering Principle, as well).

We saw a few variants of induction and an example or two for each one. One of the more helpful techniques we will use later on is the "minimal criminal" argument. This amounts to an induction proof where the induction step proves the contrapositive of the conditional statement required.

For all of these variants of induction, we provided you with some proof templates. Consult them in the future, and use them to make your proofs well-organized, clear, and easy to read. Not only will this make it easier for a reader to understand your written work, it will also reiterate the important concepts behind these proof techniques. These are not created by us out of pedantry, mind you: they are based firmly on the underlying principles!

The exercises below will give you lots of practice in working with all kinds of inductive arguments. We have posed some problems that are significantly more challenging than the ones we saw in Chapter 2. This is because we have now thoroughly studied the principle of induction and feel confident applying it to solve problems. Furthermore, some of the results you prove in these problems are interesting and helpful facts to have at our disposal. We will have occasion to refer to some of them in our later work in this book, even!

# 5.7 Chapter Exercises

These problems incorporate all of the material covered in this chapter, as well as any previous material we've seen, and possibly some assumed mathematical knowledge. We don't expect you to work through all of these, of course, but the more you work on, the more you will learn! Remember that you can't truly learn mathematics without doing mathematics. Get your hands dirty working on a problem. Read a few statements and walk around thinking about them.

Try to write a proof and show it to a friend, and see if they're convinced. Keep practicing your ability to take your thoughts and write them out in a clear, precise, and logical way. Write a proof and then edit it, to make it better. Most of all, just keep doing mathematics!

Short-answer problems, that only require an explanation or stated answer without a rigorous proof, have been marked with a  $\triangleright$ .

Particularly challenging problems have been marked with a  $\star$ .

Problem 5.7.1. Prove that

$$
\forall n \in \mathbb {N}. \sum_{k = 1}^{n} k^{3} = \left(\sum_{k = 1}^{n} k\right)^{2}
$$

Problem 5.7.2. For each of the following inequalities, determine the set of natural numbers for which it holds. Make a claim and then prove it (by induction, if necessary).

(a)  $3^n >n^4$  
(b)  $(n - 3)^2 > (n - 2)^3$  
(c)  $3^{n} < n!$  
(d)  $4^{n} > n^{4}$

Problem 5.7.3. What is wrong with the "proof" of the following claim?

Claim: Every even natural number is a power of 2.

We prove this by induction on  $n$ .

Notice that  $2 = 2^{1}$  is a power of 2.

Next, suppose  $k \in \mathbb{N}$  and  $k \geq 4$  and  $k$  is even. Suppose that every even natural number up to (but not including)  $k$  is a power of 2.

Since  $k$  is even, we can consider  $\frac{k}{2}$ . By assumption,  $\frac{k}{2}$  is a power of 2, so  $\frac{k}{2} = 2^j$  for some  $j$ .

This shows that  $k = 2^{j + 1}$ , so  $k$  is a power of 2.

Problem 5.7.4. Let's say that a number  $n \in \mathbb{N}$  is "Special in the Land of  $(x, y)$ " if  $n$  can be written as a sum of non-negative multiples of  $x$  and  $y$ .

For example, 11 is Special in the Land of (3,5) because  $11 = 5 + 2 \cdot 3$ . Also, 15 is Special in that Land because  $15 = 3 \cdot 5 + 0 \cdot 3$ . However, 7 is not Special there.

For each of the following pairs  $(x,y)$ , state and prove a claim that identifies the set  $S_{x,y}$  of all numbers that are Special in the respective Land.

1. (2,3)  
2. (3,5)  
3. (4,9)  
4. (7,6)

Problem 5.7.5. Prove that for any  $n \in \mathbb{N}$ , for any real numbers  $x_1, x_2, \ldots, x_n$  that satisfy  $\forall i \in [n]$ .  $0 \leq x_i \leq 1$ , the following inequality holds:

$$
\prod_{i = 1}^{n} \left(1 - x_{i}\right) \geq 1 - \sum_{i = 1}^{n} x_{i}
$$

This is known as Bernoulli's Inequality.

Problem 5.7.6. Let  $P(n)$  be a proposition that depends on the variable  $n$ , which is allowed to assume any integer value.

For each of the following situations, you are given some kind of "Base Cases" and some kind of "Inductive Implication". Identify and explain which instances of the proposition you could necessarily deduce, from those assumptions.

For instance, if you were given  $P(3)$  as a Base Case and  $\forall n \in \mathbb{N}$ .  $P(n) \Rightarrow P(n + 1)$  as an Inductive Implication, a correct answer would be "We would know  $P(n)$  holds for every  $n \in \mathbb{N}$  with  $n \geq 3$ ."

1. Base Cases:  $P(-3)$ . Implication:  $\forall n \in \mathbb{Z}$ .  $P(n) \Rightarrow P(n + 1)$  
2. Base Cases:  $P(1) \wedge P(2)$ . Implication:  $\forall n \in \mathbb{N} \cdot P(n) \Rightarrow P(2n)$  
3. Base Cases:  $P(0)$ . Implication:  $\forall n \in \mathbb{Z}$ .  $P(n) \Rightarrow (P(n - 1) \land P(n + 1))$  
4. Base Cases:  $P(-1) \wedge P(0)$ . Implication:  $\forall n \in \mathbb{N}$ .  $P(n) \Rightarrow P(n + 2)$ .

Problem 5.7.7. Prove that for any integers  $x, y \in \mathbb{Z}$  (with  $x \neq y$ ), the number  $x^n - y^n$  is a multiple of  $x - y$ , for every  $n \in \mathbb{N} \cup \{0\}$ .

Problem 5.7.8. (a) Identify the set of natural numbers  $n$  for which the inequality  $n! > 2^n$  holds.

(Recall:  $n! = n \cdot (n - 1) \cdots 1$ .)

(b) Identify the set of natural numbers  $n$  for which the inequality  $n! > 3^n$  holds.  
(c) Identify the set of natural numbers  $n$  for which the inequality  $n! > 5^n$  holds.

Problem 5.7.9.  $\star$  Prove the following generalization of the previous problem:

$$
\forall m \in \mathbb {N} - \{1 \}. \exists B_{m} \in \mathbb {N}. \forall n \in \mathbb {N}. n \geq B_{m} \Rightarrow n! > m^{n}
$$

Problem 5.7.10. Recall that the Fibonacci Numbers are defined by setting  $f_0 = 0$  and  $f_1 = 1$  and then, for every  $n \geq 2$ , setting  $f_n = f_{n-1} + f_{n-2}$ .

Prove the following hold for this sequence:

(a)  $\forall n\in \mathbb{N}\cup \{0\} .f_n <   2^n$  
(b)  $\forall n\in \mathbb{N}$ $f_{n - 1}f_{n + 1} = f_n^2 +(-1)^n$  
(c)  $\forall n\in \mathbb{N}$ $1\leq \frac{f_{n + 1}}{f_n}\leq 2$  
(d)  $\forall n\in \mathbb{N}\cdot \sum_{k = 1}^{n}f_{2k} = f_{2k + 1} - 1$  
(e)  $\forall n\in \mathbb{N}$ $\sum_{k = 1}^{n}f_k^2 = f_nf_{n + 1}$

Problem 5.7.11. In Problem 5.7.1, you proved a formula for the sum of the first  $n$  perfect cubes. Specifically, you proved that it is the square of the sum of those base numbers.

In this problem, we want you to prove the converse of this assertion, that the only sequence of numbers with this property is  $\langle 1,2,\ldots ,n\rangle$ . We will restate this claim below for you to consider, and then prove.

Claim: Suppose  $\langle a_i\rangle$  is a sequence of real numbers, i.e.  $\forall i\in \mathbb{N}$ $a_{i}\in \mathbb{R}$  Suppose this sequence has the property that

$$
\forall n \in \mathbb {N}. \sum_{k = 1}^{n} a_{k}^{3} = \left(\sum_{k = 1}^{n} a_{k}\right)^{2}
$$

Prove that, necessarily,  $\forall n\in \mathbb{N}$ $a_{n} = n$  , by induction on  $n$

Problem 5.7.12. (a) Prove that  $\forall n\in \mathbb{N}\cdot 7^{n} + 7 <   7^{n + 1}$

(b) Prove that  $\forall n\in \mathbb{N}$ $3^{n} + 3 <   3^{n + 1}$  
(c) Identify the set  $S$  of real numbers  $r$  that satisfy  $\forall n \in \mathbb{N}$ .  $r^n + r < r^{n+1}$ . Prove your claim by induction.

Problem 5.7.13. Prove that for every  $n \in \mathbb{N}$ ,  $2^{3^n} + 1$  is a multiple of  $3^{n+1}$ .

Problem 5.7.14.  $\star$  Assume  $x + \frac{1}{x}$  is an integer. Prove  $x^n + \frac{1}{x^n}$  is an integer for all  $n \in \mathbb{Z}$

(Note: Do this for every  $n \in \mathbb{Z}$ , not just  $n \in \mathbb{N}!$ .

Problem 5.7.15. Prove that  $n^3 + 5n$  is a multiple of 6 for every  $n \in \mathbb{N}$ , by induction on  $n$ .

Problem 5.7.16. Prove that the following summation equality holds for every  $n \in \mathbb{N}$ :

$$
\sum_{k = n}^{2 n - 1} 2 k + 1 = 3 n^{2}
$$

Problem 5.7.17. For every  $n\in \mathbb{N}\cup \{0\}$  , define

$$
s_{n} = \left(3 + \sqrt{5}\right)^{n} + \left(3 - \sqrt{5}\right)^{n}
$$

Prove that every such  $s_n$  is actually an integer. Also, prove that, in fact,  $s_n$  is a multiple of  $2^n$ . (!)

Problem 5.7.18. In this problem, we will prove that the familiar Harmonic Series, given by

$$
\sum_{k = 1}^{\infty} \frac{1}{k} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots
$$

is divergent; that is, we will prove that the sum of all the terms does not approach a finite limit.

We claim that the following inequality holds for every natural number  $n$ :

$$
\sum_{k = 1}^{2^{n}} \frac{1}{k} > \frac{n + 1}{2}
$$

Call this inequality  $\star$

(a) Prove that  $\star$  holds true when  $n = 1$ .  
(b) Suppose that  $m \in \mathbb{N}$  is arbitrary and fixed, and suppose that  $\star$  holds true for the value  $n = m$ .

Deduce that  $\star$  also holds for the value  $n = m + 1$ . Be sure to cite where you use the above assumption about the case where  $n = m$ .

(c) Think about what you have accomplished so far. Explain how the Harmonic Series cannot converge to any finite limit.

Problem 5.7.19. Prove that the following inequality holds for every  $n \in \mathbb{N}$ :

$$
\sum_{k = 1}^{n} \frac{1}{\sqrt{k}} = 1 + \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{3}} + \dots \frac{1}{\sqrt{n}} \geq \sqrt{n}
$$

Use this to deduce that the infinite series  $\sum_{k=1}^{\infty} \frac{1}{\sqrt{k}}$  does not converge to a finite limit.

Problem 5.7.20. Prove that the following inequality holds for every  $n \in \mathbb{N}$ :

$$
\prod_{i = 1}^{n} \left(i + \frac{1}{i^{2}}\right) = \left(1 + \frac{1}{1^{2}}\right) \left(1 + \frac{1}{2^{2}}\right) \dots \left(1 + \frac{1}{n^{2}}\right) <   4 - \frac{1}{n}
$$

Problem 5.7.21. In this problem, you will prove the Well-Ordering Principle of the natural numbers. This is stated in Theorem 5.5.2, but we'll restate it here:

$$
\forall S \in \mathcal {P} (\mathbb {N}). [ S \neq \varnothing \Rightarrow (\exists \ell \in S. (\forall x \in S. \ell \leq x)) ]
$$

That is, every non-empty set of natural numbers has a least element.

You will prove this claim by induction on whether or not a given set  $S$  contains  $n$  as an element.

We will start the proof for you, and then guide you through the rest:

Let  $S \subseteq \mathbb{N}$  be arbitrary and fixed. For every  $n \in \mathbb{N}$ , define  $P(n)$  to be the proposition

$$
n \in S \Rightarrow [ \exists \ell \in S. (\forall x \in S. \ell \leq x) ]
$$

(a) Prove that  $P(1)$  holds. (Hint: What's the smallest natural number?)  
(b) Let  $k \in \mathbb{N}$  be arbitrary and fixed. Write down, using logical notation, a hypothesis which asserts that  $P(i)$  holds true for every  $i$  between 1 and  $k$  (inclusive).

(Hint: This should be easy; just write an "and" statement. Think about what it means.)

Next, suppose  $k + 1 \in S$ . Define  $T = S - \{k + 1\}$ . There are three cases:

(c) Consider the case that  $T = \varnothing$ . Prove that  $S$  has a least element.  
(d) Consider the case that  $T \neq \emptyset$  and  $\forall x \in S$ .  $x \geq k + 1$ . Prove that  $S$  has a least element.  
(e) Consider the case that  $T \neq \emptyset$  and  $\exists x \in S$ .  $x < k + 1$ . Prove that  $S$  has a least element.

(Hint: Here is where you will need to use an assumption from (b), one of the induction hypotheses!)

Since  $S$  has a least element in every case, we deduce that  $P(k + 1)$  holds. By induction,  $\forall n \in \mathbb{N}$ .  $P(n)$ .

(f) Let's show why this proof actually worked! Consider an arbitrary  $S \subseteq \mathbb{N}$  such that  $S \neq \emptyset$ . How do we know  $S$  has a least element? That is, which instance of the claim  $P(n)$  is guaranteed to hold?

(Hint: This would fail if  $S = \varnothing \ldots$ )

(g) [Bonus] Why didn't we just induct on the size of the set  $S$ ? Why would that not prove WOP?

Problem 5.7.22. Let  $W$  be the set of well-formed strings of parentheses. Any element  $w$  of the set  $W$  satisfies one of the following conditions:

(i)  $w$  is the string  $"\left(\right)$

(ii)  $\exists x \in W$  such that  $w$  is the string " $(x)$ " (i.e.  $w$  is the string consisting of parentheses around the string  $x$ )

(iii)  $\exists x, y \in W$  such that  $w$  is the string " $xy$ " (i.e.  $w$  is the string consisting of the string  $y$  appended after the string  $x$ )

For example, "( ) ( )" is a well-formed string in  $W$ , because it consists of the valid string "( )" appended after itself. However, "( )" is not a well-formed string in  $W$ , because it does not satisfy any of the above conditions.

(As a more complicated example, we will let you figure out why "(( ( ( ) ))" is a well-formed string.)

Prove the following statements about this system.

(a) Prove that every element  $w \in W$  has an even number of parentheses, in total.

(Hint: Use a Minimal Criminal argument. Suppose  $w$  is a string of the smallest odd length …)

(b) For  $w \in W$ , let  $L(w)$  be the number of left parentheses appearing in  $w$ , and let  $R(w)$  be the number right parentheses.

Prove that  $\forall w\in W$ .  $L(w) = R(w)$ .

(Hint: Induct on the length of the string.)

Problem 5.7.23. What is wrong with the following "spoof" that all pens have the same color?

"Sproof": We claim that all pens have the same color. We will prove this by showing that a set of pens of any size has only one color represented amongst those pens. We will provide an inductive argument for this claim, by inducting on the size.

Consider a group of pens with size 1. Since there is only 1 pen, it certainly has the same color as itself.

Now, suppose that any set of  $n$  pens has only one color represented inside the group.

Take any set of  $n + 1$  pens. Line them up on a table and number them from 1 to  $n + 1$ , left to right.

Look at the first  $n$  of them, i.e. look at pens 1, 2, 3, …,  $n$ . This is a set of  $n$  pens so, by assumption, there is only one color represented in the group. (We don't know what color that is yet.)

Then, look at the last  $n$  of the pens; i.e. look at pens  $2, 3, \ldots, n + 1$ . This is also a set of  $n$  pens so, by assumption, there is only one color represented in this group, too.

Now, pen 2 happens to belong to both of these sets. Thus, whatever color pen 2 is, that is also the color of every pen in both groups. Thus, all  $n + 1$  pens have the same color.

By induction, this shows that any group of pens, of any size, has only one color represented. Looking at the finite collection of pens in the world, then, we should only find one color.

Problem 5.7.24. An  $n$ -gon is a convex polygon with  $n$  sides. For example, a 3-gon is a triangle, a 4-gon is any rectangle, and so on. ("Convex" means that there are no "indents" in the shape or, equivalently, that if you take any two points inside the shape and draw the line segment between them, that segment does not go outside the shape.)

Prove, by induction on  $n$ , that there are  $\frac{n(n - 3)}{2}$  possible diagonals that can be drawn between the vertices of an  $n$ -gon. (Do not count the actual boundary sides of the shape as diagonals, only interior diagonals.)

# 5.8 Lookahead

With a whole array of proof techniques and logical knowledge at our disposal now, we could try to go just about anywhere in the mathematical universe. We will choose to explore some particular areas, with the goal of talking about functions. We have referred to this idea before, but have not discussed it in a mathematical setting. Over the next two chapters, we will formalize this notion.