---
title: Chapter 01 What Is Mathematics
parent_directory: I. Foundations/Mathematics/Everything You Always Wanted to Know About Mathematics
formatted: 2025-12-21 09:20:00 AM
formatter_model: grok-code-fast-1
cli-tool: opencode
primary_tags:
- mathematical proofs
- pythagorean theorem
- mathematical reasoning
- mathematical arguments
- mathematical truth
secondary_tags:
- mathematical induction
- mathematical discoveries
- triangle geometry
- mathematical proof examples
- mathematical problem solving
- mathematical thinking
- mathematical creativity
- mathematical verification
- mathematical explanations
- mathematical foundations
cssclasses: academia
---

# Chapter 01 What Is Mathematics

## 1.1 Truths and Proofs

How do you know whether something is true or not? Surely, you've been told that the angles of a triangle add to  $180^{\circ}$ , for example, but how do you know for sure? What if you met an alien who had never studied basic geometry? How could you convince him/her/it that this fact is true? In a way, this is what mathematics is all about: devising new statements, deciding somehow whether they are true or false, and explaining these findings to other people (or aliens, as the case may be). Unfortunately, it seems like many people think mathematicians spend their days multiplying large numbers together; in actuality, though, mathematics is a far more creative and writing-based discipline than its widely-perceived role as ever-more-complicated arithmetic. One aim of this book is to convince you of this fact, but that's merely a bonus. This book's main goals are to show you what mathematical thinking, problem-solving, and proof-writing are really all about, to show you how to do those things, and to show you how much fun they really are!

As a side note, you might even wonder "What does it mean for something to be true?" A full discussion of this question would delve into philosophy, psychology, and maybe linguistics, and we don't really want to get into that. The main idea in the context of mathematics, though, is that something is true only if we can show it to be true always. We know  $1 + 1 = 2$  always and forever. It doesn't matter if it's midnight or noon, we can rest assured that equation will hold true. (Have you ever thought about how to show such a fact, though? It's actually quite difficult! A book called the Principia Mathematica does this from "first principles" and it takes the authors many, many pages to even get to  $1 + 1 = 2!$ ) This is quite different from, perhaps, other sciences. If we conduct a physical experiment 10 times and the same result occurs, do we know that this will always happen? What if we do the experiment a million times? A billion? At what point have we actually proven anything? In mathematics, repeated experimentation is not a viable proof! We would need to find an argument that shows why such a phenomenon would always occur. As an example, there is a famous open problem in mathematics called the Goldbach Conjecture. It is unknown, as of now, whether it is true or not, even though it has been verified by computer simulations up until a value of roughly  $10^{18}$ . That's a huge number, but it is still not enough to know whether the conjecture is True or False. Do you see the difference? We mathematicians like to prove facts, and checking a bunch of values but not all of them does not constitute a proof.

### 1.1.1 Triangle Tangle

We've introduced the idea of a proof by talking about what we hope proofs to accomplish, and why we would care so much about them. You might wonder, then, how one can define a proof. This is actually a difficult idea to address! To approach this idea, we are going to present several different mathematical arguments. We want you to read along with them, and think about whether they are convincing. Do they prove something? Are they correct? Are they understandable? How do they make you feel? Think about them on your own and develop some opinions, and then read along with our discussion.

The mathematical arguments we will present here are all about triangles. Specifically, they concern the Pythagorean Theorem.

Theorem 1.1.1 (The Pythagorean Theorem). If a right triangle has base lengths  $a, b$  and hypotenuse length  $c$ , then these values satisfy  $a^2 + b^2 = c^2$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/905910e6804081116587f141f12850cf957cf2fff3aed89b310adf04e643ba81.jpg)

How do we know this? It's a very useful fact, one that you've probably used many times in your mathematics classes (and in life, without even realizing).

Have you ever wondered why it's true? How would you explain it to a skeptical friend? This is what a mathematical proof attempts to accomplish: a clear and concise explanation of a fact. The reasoning behind requiring a proof makes a lot of sense, too, and is twofold: it's a relief to know that what we thought was true is, indeed, true and it's nice to not have to go through the explanation of the fact every time we'd like to use it. After proving the Pythagorean Theorem (satisfactorily), we merely need to refer to the theorem by name whenever a relevant situation arises; we've already done the proof, so there's no need to prove it again.

Now, what exactly constitutes a proof? How do we know that an explanation is sufficiently clear and concise? Answering this question is, in general, rather difficult and is part of the reason why mathematics can be viewed as an art as much as it is a science. We deal with cold, hard facts, yes, but being able to reason with these facts and satisfactorily explain them to others is an art form in itself.

## Examples of "Proofs"

Let's look at some sample "proofs" and see whether they work well enough. (We say "proof" for now until we come up with a more precise definition for it, later on.) Here's the first one:

"Proof" 1. Draw a square with side length  $a + b$ . Inside this square, draw four copies of the right triangle, forming a square with side length  $c$  inside the larger square.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/5201b10794c7dd6c0dd7e6558ef25ddd7074fae10e895f36061eda1e821296e9.jpg)

The area of the larger square can be computed in two ways: by applying the area formula to the larger square or by adding the area of the smaller square to the area of the four triangles. Thus, it must be true that

$$
(a + b)^{2} = c^{2} + 4 \cdot \frac{a b}{2} = c^{2} + 2 a b
$$

Expanding the expression on the left and canceling a common term on both sides yields

$$
a^{2} + 2 a b + b^{2} = c^{2} + 2 a b
$$

Therefore,  $a^2 + b^2 = c^2$  is true.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/ba08e815944cbdd9c63a255f2d69878f124a4b7eb9caca1e03dcbc0e401217e7.jpg)

Are you convinced? Did each step make sense? Maybe you're not sure yet, so let's look at another "proof" of the theorem.

"Proof" 2. Suppose the Pythagorean Theorem is true and draw the right triangle with the altitude from the vertex corresponding to the right angle. Label the points and lengths as in the diagram below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/4903d36d5f62b1909d8688be03b435324b39fced794aaf3e0af5233557629093.jpg)

Since the Pythagorean Theorem is true, we can apply it to all three of the right triangles in the diagram, namely  $ABC, BCD, ACD$ . This tells us (defining  $e = c - d$ )

$$
\begin{array}{l} a^{2} = d^{2} + f^{2} \\ b^{2} = f^{2} + e^{2} \\ c^{2} = a^{2} + b^{2} \\ \end{array}
$$

Adding the first two equations together and replacing this sum in the third equation, we get

$$
c^{2} = d^{2} + e^{2} + 2 f^{2}
$$

Notice that angles  $\angle ABC$  and  $\angle ACD$  are equal, because they are both complementary to angle  $\angle CAB$ , so we know triangles  $\triangle CDB$  and  $\triangle ADC$  are similar triangles. (We are now assuming some familiarity with plane geometry.) This tells us  $\frac{e}{f} = \frac{f}{d}$ , and thus  $f^2 = ed$ . We can use this to replace  $f^2$  in the line above and factor, as follows:

$$
c^{2} = d^{2} + e^{2} + 2 d e = (d + e)^{2}
$$

Taking the square root of both sides (and knowing  $c, d, e$  are all positive numbers) tells us  $c = d + e$ , which is true by the definition of the lengths  $d$  and  $e$ . Therefore, our assumption that the Pythagorean Theorem is true was valid.

What about this proof? Was it convincing? Was it clear? Let's examine one more "proof" before we decide what a constitutes a "correct" or "good" proof.

"Proof" 3. Observe that

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/58fa64e9545c11654b48b2dbd93b811ba8147d92291e5ebcd3ca933f2b8023bf.jpg)

so  $\frac{a}{c + b} = \frac{c - b}{a}$  and thus  $a^2 +b^2 = c^2$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/490ba0c36abd6fb4e062424db5c07e6d269758dbce16795fa3c4df8af0fdaa0f.jpg)

Did that make any sense to you? Finally, here's one last "proof" to consider.

"Proof" 4. The Pythagorean Theorem must be true, otherwise my teachers have been lying to me.  $\square$

## Discussion

### Clarity

### Correctness

- "Proof" 1 mostly good. The formulae for the areas of the square and triangles are correctly applied, and the algebraic manipulation thereof is correct. But how do we know that the process they described—putting four copies of the given triangle inside a larger square—creates a square with side length  $c$  on the inside? They merely say it does so without

# 1.1. TRUTHS AND PROOFS

really saying why. Other than this omission, though, this proof is both well-written and correct.

(Can you prove that fact, that the shape inside is actually a square? Just look at its angles: can you show why they are all right angles?)

- Unfortunately, "Proof" 2 is completely invalid! Every logical step that it makes does follow from the previous one. For instance, assuming we have the triangles set up this way, we can correctly deduce that  $\Delta CDB$  and  $\Delta ADC$  are similar triangles. However, why is it that we can assume the theorem is True right at the beginning? Isn't that what we are trying to accomplish in the proof, overall? This is a crucial flaw. Assuming a fact and deducing something True from it does not allow us to conclude the original assumption was valid.

If this method were valid, we could "prove" just about anything we wanted! Here's an example: What do you think of the following "proof" that  $0 = 1$ ?

"Proof". Assume  $0 = 1$ . Then, by the symmetric property of  $=$ , it is also true that  $1 = 0$ . Adding these two equations tells us  $1 = 1$ , which is True. Therefore,  $0 = 1$  was a valid assumption, so it must be True.

Do you see the similarity between this and "Proof" 2 above? The same sort of flawed reasoning was used: we assumed one fact, did some work to get to something else we know to be True, and then said that the assumed fact must be True, as well.

- Regarding "Proof" 3, most mathematicians would say it is a "bad proof", despite the fact that everything it appears to claim is correct. We say "appears" because, without any words to explain what's going on, we don't actually know what the proof-writer is trying to say! However, we will say that the kernel of a perfectly good proof is contained therein.

From the diagram, you can show that the stated equation,  $\frac{a}{c + b} = \frac{c - b}{a}$ , must follow. (Hint: Use similar triangles!) From there, it is a simple manipulation to deduce that  $a^2 + b^2 = c^2$ .

Can you write some sentences to go along with the diagram that would turn this into a proper proof?

- Lastly, just about every reasonably logical person (we hope!) would say that "Proof" 4 is not even close to being a proof, however convenient it might be to make such statements.

This discussion shows that "Proof" 1 is actually a good proof. Amongst all four, it is the most clearly-written, and the one that is logically correct. We can refer to it now as a proof. "Proof" 2 is outright incorrect, despite how clearly it is presented. "Proof" 3 contains correct ideas, but is not presented clearly. "Proof" 4 is so far from a proof that we don't even want to discuss it.

### Question

## Definition, Examples, and Uses

### Theorem and Proof

Theorem 1.1.3 (Infinitude of the Primes). There are infinitely-many prime numbers.

"Proof". Assume instead that there are only finitely-many prime numbers, and list them in ascending order:  $p_1, p_2, p_3, \ldots, p_k$ , so that  $p_k$  is the largest of these prime numbers. Define the new number

$$
N = \left(p_{1} \cdot p_{2} \cdot p_{3} \cdot \dots \cdot p_{k}\right) + 1
$$

It must be true that  $N$  is divisible by some prime number. However, it cannot be divisible by  $p_1$  or  $p_2$  or … or  $p_k$ , because that would leave a remainder of 1,

based on how we defined  $N$ . Thus,  $N$  is divisible by some other prime number that is not in the list.

If  $N$  itself is composite (i.e. not prime), then we have found some new prime  $p < N$  that is not in the list of all primes we presumably had. If  $N$  itself is prime, then we have a new prime  $N > p_k$ , so  $p_k$  is not actually the largest prime number. Either way, we have a new prime guaranteed to not be in the given list of  $k$  primes. Therefore, there must be infinitely-many prime numbers.

What do you think of this "proof"? Are you convinced? It feels a little different from the other arguments we've seen so far, doesn't it? Try explaining to a classmate how this one differs from "Proof 1" of the Pythagorean Theorem from the previous section. We will reveal this, though: this "proof" here is actually a fully correct proof, sans quotation marks!

# 1.1.3 Irrational Irreverence

Let's talk about a different type of number, now: rational numbers. You might know rational numbers as "fractions" or "quotients" or "ratios".

### Definition and Examples

### Questions

Given this definition of rational/irrational, we might wonder how we can combine irrational numbers to produce a rational number. Try to answer the following questions on your own. If your answer is "yes", try to find an example, and if your answer is "no", try to explain why the desired situation is not possible.

(1) Are there irrational numbers  $a$  and  $b$  such that  $a \cdot b$  is a rational number?

(2) Are there irrational numbers  $a$  and  $b$  such that  $a + b$  is a rational number?  
(3) Are there irrational numbers  $a$  and  $b$  such that  $a^b$  is a rational number?

Did you find any examples? It turns out that the answer to all three questions is "yes!" The first two are not too hard to figure out, but the third one is a little trickier.

Here, we'll work through a proof that says the answer to the third is "yes". The interesting part about it, though, is that we won't actually come up with definitive numbers  $a$  and  $b$  that make  $a^b$  a rational number; we'll just narrow it down to two possible choices and show that one of those choices must work. Sounds interesting, right? Let's try it.

Proof. We know  $\sqrt{2}$  is an irrational number. Consider the number  $x = \sqrt{2}^{\sqrt{2}}$ . There are two possibilities to consider:

- If  $x$  is rational, then we can choose  $a = \sqrt{2}$  and  $b = \sqrt{2}$  and have our answer.  
- However, if  $x$  is irrational, then we can choose  $a = \sqrt{2}^{\sqrt{2}}$  and  $b = \sqrt{2}$  because then

$$
a^{b} = \left(\sqrt{2}^{\sqrt{2}}\right)^{\sqrt{2}} = \left(\sqrt{2}\right)^{\sqrt{2} \cdot \sqrt{2}} = \left(\sqrt{2}\right)^{2} = 2
$$

and 2 is a rational number.

In either case, we can find irrational numbers  $a$  and  $b$  such that  $a^b$  is a rational number. Thus, such a pair of numbers must exist.

How do you feel about this proof? Is it convincing? It answers the third question above with a definitive "yes", but it does not tell us which pair  $a, b$  is actually the correct one, merely that one of the pairs will work. (It turns out that  $\sqrt{2}^{\sqrt{2}}$  is also irrational, but that fact takes a lot more work to prove.)

There are plenty of other concrete examples that answer this question, though. Can you come up with any? (Hint: try using the  $\log_{10}$  function…)

# 1.2 Exposition Exhibition

# 1.2.1 Simply Symbols

## Mathematics is a Language

### Choosing Definitions Properly

As a concrete example, let's return to Definition 1.1.2 of a prime number that we saw in the previous subsection. It said:

Definition. A positive integer  $p$  that is larger than 1 is called a prime number if the only positive divisors of  $p$  are 1 and  $p$ . A non-prime positive integer is called a composite number.

There doesn't seem to be anything questionable about this definition, does there? Perhaps you would have worded it differently or been more concise or used a different variable letter or what have you, but the ultimate message would be the same: a prime number is a certain type of number that has a certain

property. However you choose to write out what that specific type of number is (a positive integer larger than 1) and what that property is (having no positive divisors except itself and 1), you obtain an equivalent definition.

There are some subtle questions behind this definition, though: Why is it that particular type of number? Why is it that particular property—only being divisible by 1 and itself—that we care so much about? What if the definition was slightly different? Would things really change that much? We'll address these questions with another question: What do you think of the following alternative definition of a prime number?

Definition 1.2.1. An integer  $p$  that is less than  $-1$  or greater than  $1$  is called a prime number if the only positive divisors of  $p$  are  $1$  and  $p$ .

Do you notice the subtle difference? All of the numbers that fit the previous definition of "prime" still fit this one, but now so do negative numbers! Specifically, given any number  $p$  that is prime under the old definition,  $-p$  is now prime under the new definition. Is this a reasonable idea? What's wrong with having negative prime numbers?

How about this third definition of prime numbers?

Definition 1.2.2. A positive integer  $p$  is called a prime number if the only positive divisors of  $p$  are 1 and  $p$ .

(Remember that 0 is neither positive nor negative, by convention.) Now, the negative numbers are out of bounds, but 1 fits this definition. Is this reasonable? The only positive divisors of 1 are 1 and … itself, right?

This is where a debate could arise: perhaps you don't mind allowing 1 to be a prime number, but your friend is vehemently against it. Well, without solid reasons either way, there's no way to say that either of you is wrong, really; you just made different choices of terminology, and neither of them change the inherent property that the only positive divisors of 1 are 1 and itself. As a similar idea, consider this: whether you call them sandals or thongs or flip-flops, the fact remains that those types of shoes are appropriate footwear at the beach.

With historical hindsight and new desires in mind, though, oftentimes one particular definition is shown to be more appropriate. In the future, we will look at prime factorizations, a way of writing every (positive) integer as a product of only prime numbers. For instance,  $15 = 3 \cdot 5$  and  $12 = 2 \cdot 2 \cdot 3 = 2^2 \cdot 3$  and  $142857 = 3^3 \cdot 11 \cdot 13 \cdot 37$  are all prime factorizations.

There is a special property about these factorizations, too: in general, a prime factorization of a positive integer is unique! That is, there is one and only one way to write a positive integer as a product of prime numbers (since we think of different orderings of the factors as the same thing, so  $105 = 3 \cdot 5 \cdot 7$  and  $105 = 7 \cdot 3 \cdot 5$  are the same factorization). This is something we will prove rigorously using the first definition we gave above. What if we use the second definition, or the third? Is this property of uniqueness still true? Why do you think this uniqueness property is so important? Ultimately, the lesson here is

that definitions should be driven by both logic and usefulness, and this can change over time and stir some debate.

## Mathematicians Study Patterns

### Bad "Proof" 1

First, we have a "proof" that  $1 = 2$ , so we know there must be something wrong with this one. Can you find the error? Which standard does it violate? Precision, logic, or clarity?

"Proof". Suppose we have two real numbers  $x$  and  $y$ , and consider the following chain of equalities:

$$
x = y
$$

$$
x^{2} = x y
$$

$$
x^{2} - y^{2} = x y - y^{2}
$$

$$
(x + y) (x - y) = y (x - y)
$$

$$
x + y = y
$$

$$
y + y = y
$$

$$
2 y = y
$$

$$
2 = 1
$$

multiply both sides by  $x$

subtract  $y^{2}$  from both sides

factor both sides

cancel  $(x - y)$  from both sides

remembering  $x = y$ , from the first line

divide both sides by  $y$

The issue here is precision. After factoring in line four, it seems convenient and wise to divide by the common factor  $(x - y)$  to obtain line five; however, line one tells us that  $x = y$  so  $x - y = 0$ , and division by zero is not allowed! Working with the variables  $x$  and  $y$  was just a way to throw you off the scent and disguise the division by zero. (While we're on the topic, why is division by zero not allowed? Can you think of a reasonable explanation? Think about it in terms of multiplication.)

### Bad "Proof" 2

## Mathematics Uses the "Inclusive Or"

Since this word just arose, let's mention the use of  $or$  in the sentence above. When we say " $a = b$  or  $a = -b$ ", we mean that at least one of the two statements must be true, possibly both. Now, if both  $a \neq 0$  and  $b \neq 0$ , then only one of the concluding statements can be true; that is, in that context, only one of the roots (positive or negative) will be the correct one and not both. If  $b = 0$ , though, then both of the concluding statements say the same thing,  $a = 0$ , so it would be illogical to dictate that  $or$  means only one of the statements can be true and doesn't allow both of them to be true, simultaneously. In other situations, this distinction makes a more marked difference.

For instance, if you order a sandwich at a restaurant and the waiter asks, "Do you want fries or potato salad on the side?", it is understood that you can choose one of those options, but not both. This is an example of the exclusive or since

it excludes you from choosing both options. Alternatively, if you forgot to bring a writing implement to class and are looking for any old way to take notes and ask your friend, "Do you have a pencil or pen I can borrow?", it is understood that you really don't care which one of the two options is provided, as long as at least one is available. Maybe your friend has both, and any one of them will do. This is an example of the inclusive or, and this is the interpretation that is assumed in all mathematical examples.

# Unclear Arguments

The last two bad "proofs" failed because of issues with precision and logical correctness. The third condition we require of a good proof is that it be clear: we want the writing to explain what the proof-writer accomplishes in each step and why that accomplishment is relevant. In other words, we don't want the reader to stop at any point and ask, "What does that sentence mean?" or "Where did that come from?" or similar questions born from confusion. If it helps, think about writing a proof in terms of explaining it to your friend in your class, or the grader who will be reading your homework assignment, or a family member of similar intelligence. Reread your own writing and try to anticipate any questions that might arise or any clarifications that might be asked of you, and then address those issues by rewriting.

There are several ways that a proof could fail this condition and come across as unclear. For one, the words and sentences might fail to properly explain the steps and motivations of the proof, and this could actually be because there are too many words (obscuring the proof by overburdening the reader) or because there are too few words (not giving the reader enough information to work with) or because the words chosen are confusing (not properly explaining the proof). These are issues with the language of the proof.

Mathematically, any number of issues could arise, in terms of clarity. Perhaps the proof-writer suddenly introduces a variable without stating what type of number it is (an integer, a real number, etc.) or skips a few steps of arithmetic/algebra or uses new notation without defining what it means first or … None of these acts is technically wrong or illogical, but they can certainly cause confusion for a reader. Can you think of any other ways that a proof can be unclear? Try to think of a language-based one and a mathematical one.

# Bad "Proof" 3

Let's state a simple fact about a polynomial function and then examine a "proof" about that fact. Read the argument carefully and try to pinpoint some sentences or mathematical steps that are unclear.

Fact: Consider the polynomial function  $f(x) = x^4 - 8x^2 + 16$ . This function satisfies  $f(x) \geq 0$  for any value of  $x$ .

"Proof". No matter what the value of  $x$  is that we plug into the function  $f$  of  $x$  we can write the value that the function puts out by factoring the polynomial,

like this:

$$
f (x) = x^{4} - 8 x^{2} + 16 = (x - 2)^{2} (x + 2)^{2}
$$

Now, any number  $z$  must be less than  $-2$ , or greater than 2, or strictly between  $-2$  and 2, or equal to one of them. When  $z > 2$  then  $z - 2$  and  $z + 2$  are both greater than 0 so  $f(z) > 0$ . When  $z < -2$  then both terms are negative and a negative squared is positive so  $f(z) > 0$ , too. When  $-2 < x < 2$ , a similar thing happens, and when  $x = 2$  or  $x = -2$  one of the terms is 0 so  $f = 0$ . Therefore, what we were trying to prove has to be true.

What is there to criticize in this proof? First of all, is it correct? Is it precise? Logical? Clear? Where is it unclear? Try to identify the statements, both linguistic and mathematical, that are even slightly unclear, and try to amend them appropriately. Without pointing out any of the individual errors, we offer below a much better, clearer proof of the fact above.

Proof. We begin by factoring the function  $f(x)$  by considering it as a quadratic function in the variable  $x^2$

$$
f (x) = \left(x^{2}\right)^{2} - 8 x^{2} + 16 = \left(x^{2} - 4\right)^{2}
$$

Next, we can factor  $x^{2} - 4 = (x + 2)(x - 2)$  and rewrite the original function as

$$
f (x) = \left((x + 2) (x - 2)\right)^{2} = (x + 2)^{2} (x - 2)^{2}
$$

Now, for any real number  $x$ ,  $(x + 2)^2 \geq 0$  and  $(x - 2)^2 \geq 0$ , since a squared quantity is always nonnegative. A product of two nonnegative terms is also nonnegative, so  $f(x) = (x + 2)^2 (x - 2)^2 \geq 0$ , for any value of  $x$ .

What are the differences between the first "proof" and this second proof? Does your rewritten proof look like this second one, as well?

One of the critiques of the first "proof" is that it does not fully explain the situation where  $-2 < x < 2$ ; rather, it merely says that something "similar" happens and does not actually carry out any of the details. This is a common situation in mathematics (where some steps of a proof are "left to the reader") and it is a convenient technique that can sometimes avoid tedious arithmetic/algebra and make reading a proof easier, faster, and more enjoyable. However, it should be used sparingly and with caution. It is important, as a proof-writer, to make sure that those steps do work, even if you are not going to present them in your proof; you should consider providing the reader with a short summary or hint as to how those steps would actually work. Also, a proof-writer should try not to use this technique on steps that are crucial to the ultimate result of the proof.

In this particular case, the actual steps of factoring are skipped completely and the analysis of the case where  $-2 < x < 2$  is only mentioned in passing, yet these are essential components of the proof! It is such a short proof, anyway, that showing these steps does not represent a great sacrifice in brevity or clarity. Again, this brings up the point of proof-writing as an art, as much as a science:

choosing when to leave some of the verification of details to the reader can be tricky. In this particular instance, showing all of the steps is important.

That being said, though, the second proof we showed here is much clearer. Moreover, it completely avoids the case analysis that appears in the first "proof!" There was an issue of clarity with one of the cases in the first "proof", but rather than simply expound the details in the amended version, we opted to scrap that technique altogether and use a shorter, more direct proof. Now, this is not to say that the technique of the first proof is incorrect. Were we to fill in the gaps of the argument of the first "proof", we would obtain a completely correct proof. However, some of the steps in that technique are redundant. Notice that the cases where  $-2 < x < 2$  and where  $x > 2$  are actually identical, in a sense: the factors satisfy  $(x - 2)^2 > 0$  and  $(x + 2)^2 > 0$  in both cases. In fact, this is true of the first case, where  $x < -2$ , as well! So why separate this argument into three separate cases when the same ultimate observation is applied to all three of them? In this case, it is best to combine them into one (also using the knowledge that when  $x = 2$  or  $x = -2$ , one of the factors is 0). Again, using that expanded technique is certainly not incorrect; rather, it just adds some unnecessary length to the proof.

We mentioned the term "case" and the phrase "case analysis" in the above paragraphs without properly defining or explaining what we mean. For now, we want to postpone a discussion of these terms until we thoroughly discuss logic in Chapter 4. If you're itching for immediate gratification regarding this issue, though, you can skip ahead to Section 1.4.4 and check out the "Hungarian friends" problem, which contains some intricate case analyses.

# 1.2.3 Pick Logic

We have used the word "logical", and its associated forms, quite frequently, already, without fully explaining what we mean by it. We realize this seems to go against the precision and clarity that we have been so strongly advocating thus far, but we also have to admit that, unfortunately, it is extremely difficult to provide a thorough definition of logic.

# Games

If you're looking for a decent heuristic understanding of logic, try thinking about it in terms of "logic puzzles" like Sudoku or Kakuro. These puzzles/games are built around very specific rules that are established and agreed upon from the very beginning, and then the solver is presented with a starting board and expected to apply those rules in a rigorous manner until the puzzle is solved. For instance, in Sudoku, remembering the conditions that each digit from 1 through 9 must appear exactly once in every row, column, and  $3 \times 3$  box allows the solver to systematically place more and more numbers in the grid, continually narrowing down the large number of potential "solutions" to find the unique answer that the starting grid of numbers yields. An important aspect of this solving process is that at no time is it necessary (or wise, at that) to guess;

every step should be guided by a rational choice given the current situation and the established rules of the puzzle, and within that framework, the puzzle is guaranteed to be solvable (given enough time, of course).

Mathematical logic is a little different, in some respects, but the essence is the same: there are established rules of how to play the game and every move should be guided by those rules and current knowledge, and nothing else. This is what we mean when we say that writing mathematical proofs should be governed by logic: every step, from one truth to another, should follow the agreed-upon rules and only reference those rules or already-proven facts. The "game" or "puzzle" that we're playing in a proof (and in mathematics, in general) is not as clear-cut as a Sudoku puzzle. Even more confusing, though, is the idea that sometimes we start playing an unwinnable game and don't realize it!

This idea of an "unwinnable game" is an astounding, surprising, and downright powerful conclusion of the work of mathematician Kurt Gödel, a 20th century Austrian logician. His Incompleteness Theorems address an inherent problem with strong logical systems: there can be True statements that aren't provable within that system. We are unable to provide a thoroughly detailed explanation of some terms here (namely, logical system and provable), but hopefully you see that there is something weird going on here. How could this be possible? If something is True in mathematics, can't we somehow show that it is true? How else would we know that it is true?

# Some Mathematical History

To begin to address these natural questions, let's step a little further back in time and discuss the beginnings of logic as a full-fledged branch of mathematics. One thing to keep in mind throughout this discussion is that we can't completely address every topic that comes up, and that this may feel dissatisfying, and we understand that. Part of the beauty of mathematics is that learning about any one topic brings up so many other questions and concepts to think about, and these can be addressed, as well, with more mathematics. Context is important, though, and for the context of this book, we just don't have the time and space to address all of these tangentially-related topics. We are not trying to hide anything from you or sweep some issues under the rug; rather, we're just dealing with the reality of making sure we're not forcing you to read 10,000 pages on the entire history of mathematics just to get our point across!

You will probably study many of the people that we mention below (and the work they did) further along in your mathematical careers. At that point, you'll have a deeper understanding and appreciation for the subject built by hands-on experience with the material, and you'll be better-equipped to tackle the issues therein. For now, we are merely introducing these people out of interest. Mathematics has a rich and interesting history, and it helps to be aware of it! Here, we will try to present a concise yet meaningful interpretation of logic—its history, motivations, and meaning—that fits with the current context.

The mathematicians and philosophers in the midto late-19th century who first studied the ideas that would evolve into modern logic were interested in

many of the same issues we are trying to investigate here: How do we know something is True? How can we express that truth? What types of "sometimes" can we even declare to be True or not? Breaking down mathematical language to its very roots, these mathematicians studied ways to combine a fixed set of symbols in very specific ways to create more complicated statements, but in the grand scheme of things, these statements were still rather simple. This is not meant to be a knock against their efforts; one must start somewhere, after all, and these people were working from the ground up.

One of the first major efforts was to investigate the foundations of arithmetic, or the study of the natural numbers (1, 2, 3, 4, …). Much like Euclid sought to study geometry by establishing a short list of accepted truths, or axioms, and then derive truths from these given assumptions, Italian mathematician Giuseppe Peano established a set of axioms for the natural numbers, while others approached the topic from a slightly different viewpoint. Meanwhile, this newfound appreciation for being rigorous and decisive about truths and proving those truths led David Hilbert and others to bring up some issues with Euclid's axioms, specifically the parallel postulate.

This work on geometry and arithmetic naturally led into further, intricate study of other areas of mathematics and fervent attempts to axiomatize fields like analysis of the real numbers. Karl Weierstrass, in studying this topic, produced some mind-blowing examples of functions with strange properties. For instance, try to define a continuous function that is not differentiable anywhere. (If you're unfamiliar with these terms from calculus, don't worry about it; suffice it to say, it's difficult.) Finally, Richard Dedekind was able to establish a rigorous, logical definition of the real numbers, derived entirely from the natural numbers, and not dependent on some vague, physical notion that a continuum of numbers must exist.

Later on, this study branched off slightly into the study of sets, or collections of objects. The groundwork for much of this area was laid by Georg Cantor towards the end of the 19th century. He was the first to truly study the theory of infinite sets, establishing the controversial idea that there are different "sizes" of infinity. That is, he showed that some infinite sets are strictly bigger than other infinite sets. This idea was so controversial at the time, that he was hated by many other mathematicians! Nowadays, we realize Cantor was right. (This also gives you a flavor of what we'll discuss later in Section 7.6. Take this as an intriguing example: the set of odd integers and the set of even integers are the same size, sure, but they are both also the same size as the set of all integers. However, the set of all real numbers is strictly bigger!)

Indeed, some mathematicians were quite shocked by Cantor's discoveries, and even the great Bernhard Riemann thought the development of set theory would be the scourge of mathematics (at first, anyway). This was not the case, though, and it has flourished since then, with many mathematicians working on ways to represent all of mathematics in just the right way and understand the "foundations" of mathematics. In a way, you can think of set theory as the study of the basic objects that all mathematicians are working with, ultimately, in a way similar to the fact that all of chemistry is done by appropriately combining

elements of the periodic table in more and more complicated ways.

A further development from these topics was the study of symbolic logic, which is a bit more concrete than the abstract ideas we've mentioned so far, and whose basic ideas we will be studying frequently in the beginning chapters of this book. This area covers how we can combine mathematical equations and symbols with language-based symbols and connectors to make meaningful mathematical statements that are able to be confirmed as true via a proof. This is an incredibly important component of mathematics, in general, and this book, in particular. Individual viewpoints are certainly more nuanced and specific than this, but, in general, most mathematicians are of the mindset that there are many mathematical truths out there waiting to be discovered and we spend our time learning about the truths we have already uncovered with the hopes of exposing even more of those truths. It's like a giant archaeological dig, whereby studying the bones and artifacts we've already unearthed will help us to predict what kinds of other treasures we will find and where, which tells us where to look and how to dig once we get there. In a way, logic is that process that is abstracted from the digging by one step: logic is the study of the digging process. It tells us how we can actually take our mathematical knowledge and learn from it and combine it with other knowledge to prove further truths from that.

Now, this is not a precise analogy, mind you, and the study of abstract logic is far more complicated and intricate. For our purposes, in this book, though, this is a sufficiently reasonable way to think of logic. We will learn about some of the first principles and basic operations of symbolic logic and apply this knowledge to our study of writing proofs. It will help us to actually understand what a proof even is, it will help guide the construction of proofs that we want to write, it will allow us to critique proofs that may be incorrect, and it will ultimately help us understand just how mathematics works, as a whole.

# Applications of Logic: Theoretical Computer Science

One very important application of the ideas and results of logic is in the development and study of computer science, particularly theoretical computer science and computability theory. This particular branch of mathematics was initially motivated by one of David Hilbert's Twenty-Three Problems: this was a list of famously unsolved conjectures in the world of mathematics at the time of their publishing, in 1900. Problem number ten dealt with solving Diophantine Equations, which are equations of the form

$$
a_{1} x_{1}^{p_{1}} + a_{2} x_{2}^{p_{2}} + a_{3} x_{3}^{p_{3}} + \dots + a_{n} x_{n}^{p_{n}} = c
$$

where  $a_1, a_2, \ldots, a_n$  and  $c$  are fixed, given constants,  $p_1, \ldots, p_n$  are fixed natural numbers, and  $x_1, x_2, \ldots, x_n$  are variables that are left to be determined so that they make the equation true.

Given an equation like this, one might wonder whether there are any solutions at all and, if so, just how many there are. Furthermore, if we're given that the fixed constants  $a_{i}$  and  $c$  are all rational numbers, we might wonder

whether we can ensure that there is a solution where all of the variables  $x_{i}$  are also rational numbers. Some theoretical results have been established regarding this particular problem, but Hilbert's tenth problem, as stated in 1900, asked whether there was "a process according to which it can be determined in a finite number of operations" whether there is a solution to a given equation where all of the variables  $x_{i}$  are rational numbers. They didn't have a proper notion or definition of this term at the time, but what Hilbert was asking for was an algorithm that would take in the values of the constants  $a_{i}$  and  $c$  and output True or False depending on whether there exists a solution with the desired property. An important part of his question was that this "process" takes a finite number of steps before outputting an answer.

A student at Cambridge in the United Kingdom by the name of Alan Turing began working on this problem years later by thinking of a physical machine that would be executing the steps required to output an answer to the posed problem. Some subsequent publications of his described his invention, what we now call a Turing Machine, which is an interesting theoretical device that could be used to answer some problems in formal logic, but also represents many of the ideas that go into building modern computers. We say it's a theoretical device because the nature of its definition ensures that it is not physically feasible to build and operate, but it handles some theoretical problems quite well, including the aforementioned tenth problem of Hilbert. More specifically, this machine gave rise to a proper definition for what we mean when we say that something is computable, or able to be determined in a finite number of steps, and this helped to establish a proper notion of an algorithm. It would be unfair of us to discuss these topics without also mentioning Alonzo Church, who was working on similar problems at the same time as Turing. Their names, together, are placed on the Church-Turing thesis which relates the work of the Turing machine to the more theoretical, formal logic-based notion of computability.

# What Will We Do with Logic?

While all of these topics in set theory and logic are inherently interesting and immensely important to mathematics, in general, we simply don't have enough time and space to discuss them in detail. Instead, let's focus a bit more on the notions of logic that we'll be using in writing and critiquing mathematical proofs.

We will consider: (1) what kinds of "things" we can actually state and prove, (2) how we can combine "things" that we know to be true to produce more complex truths, and (3) how we can explain how we arrived at the conclusion that those "things" are, indeed, True. For lack of a better term, we say "things" since we don't yet have a formal definition of mathematical statement, which is really the type of "thing" that we will be proving. In essence, a mathematical statement is a combination of symbols and sentences from the languages of mathematics and English (in this book, at least) that can be verified as either True or False, but not both or neither. A proof, then, amounts to arranging a sequence of steps and explanations that use true mathematical statements

and sentences to connect these truths together and yield the desired truth of a specific statement at the end. Our study of logic will deal with just how we can combine those steps and guarantee that our proof leads to the correct assessment of truth at the end.

More specifically, we will examine what a mathematical statement really is and how we can combine them to produce more complicated statements. The words  $\text{and}$  and  $\text{or}$  will be particularly important there, since those two words allow us to combine two mathematical statements together in new and meaningful ways. We will also look at conditional mathematical statements, which are statements of the form "If  $A$ , then  $B$ " or "  $A$  implies  $B$ ". These are really the bread and butter of mathematical statements and a majority of important mathematical theorems are of this form. These statements involve making some assumptions or hypotheses (contained in the statement  $A$ ), and using those assumed truths to derive a conclusion (contained in the statement  $B$ ). Look back at the statement of the Pythagorean Theorem in Section 1.1.1 and notice how it is in the form of a conditional statement. (Could it be written another way? Try writing the statement of the theorem in a non-conditional form and think about whether it is an inherently different statement in that form. Find another famous mathematical theorem that is in the form of a conditional statement and try doing the same change of format.)

Another important idea in mathematics, and one that will show up all the time in proof-writing, is the concept of a variable. Sometimes we want to talk about a type of mathematical object in generality without assigning it a specific value and this is accomplished by introducing a variable. You have likely seen this happen all the time in your previous study of mathematics, and we've even done it already in this book. Look again at the Pythagorean Theorem statement in Section 1.1.1. What do the letters  $a, b, c$  represent? Well, we didn't state it explicitly, but we know that these are positive real numbers that represent the lengths of the three sides of a right triangle. What triangle? We didn't mention a specific one or point to a specific drawing or anything like that, but you knew all along what we were talking about. Moreover, the proofs we examined didn't depend on what those values actually are, merely that they are positive real numbers with certain properties. This is incredibly useful and important and, in a way, it saves time since we don't have to individually consider all possible right triangles in the universe (of which there are infinitely-many!) and can reduce the whole idea into one compact statement and proof.

One thing we can do with variables is quantify them. This involves making claims about whether a statement is true for any potential value of a variable, or maybe for just one specific value. For instance, in the Pythagorean Theorem, we couldn't claim that  $a^2 + b^2 = c^2$  for any positive real numbers  $a, b, c$ ; we had to impose extra assumptions on the variables to obtain the result we did. This is an example of universal quantification: "For all numbers  $a, b, c$  with this property and that property, we can guarantee that …" Similarly, we can quantify existentially: "There exists a number  $n$  with this property."

Can you think of a theorem/fact that we have examined so far that uses existential quantification? Look again at the proof that there are irrational

numbers  $a$  and  $b$  such that  $a^b$  is rational. Notice that this claim we proved is of the existence type: we claimed that there are two such numbers with the desired properties, and we then proceeded to show that there must, indeed, be those numbers. Now, the interesting part of that proof was that it was nonconstructive; that is, we were able to prove our claim without saying what the numbers  $a$  and  $b$  actually are, explicitly. We narrowed it down to two choices but never made a claim as to which one is the correct choice, merely that one of the pairs must work.

# 1.2.4 Obvious Obfuscation

As a preview of these logical concepts that we'll be examining in mathematical detail later on, let's take some real-world, language-based examples of these ideas.

# Conditional Statements

First, let's investigate conditional statements. Mathematical theorems frequently take the form of a conditional statement, but these types of statements also appear in everyday language all the time, sometimes implicitly (which can only add to the confusion). For instance, people talk sometimes about what they would do with their lottery winnings, saying something like

If I win the lottery, then I will buy a new car.

The idea is that the second part of the statement, after the "then", is dependent on the first part of the statement, which is associated with the "if". When the conditions outlined in the "if" part are satisfied, the actions outlined in the "then" part are guaranteed to take place.

The part of a conditional statement associated with the "if" is known as the hypothesis (or sometimes, more formally, the antecedent). The part associated with the "then" is known as the conclusion (or, more formally, the consequent).

Sometimes the conclusion of the conditional is more subtle, or the verb tenses in the sentence are such that it doesn't even include the word "if". Take the following quote from the film Top Gun, for example:

It's classified. I could tell you, but then I'd have to kill you.

The idea here is that the first part, "I could tell you", is a hypothesis in disguise. The sentence "If I told you, I would have to kill you" would have the same logical meaning as the actual film quote; however it doesn't convey the same forceful, dramatic connotations. It's quite common to actually not include the word "then" in the conclusion of a conditional statement; while reading the sentence, you might even add the word in your mind without realizing. Take the following lyrics from a song by the band The Barenaked Ladies, say:

If I had \$1,000,000, we wouldn't have to walk to the store.

If I had \$1,000,000, we'd take a limousine 'cause it costs more.

Both lines are conditional statements, but neither includes the word "then"; it is understood to be part of the sentence.

Compare these examples to the following sentence and see what's different:

I carry an umbrella only if it is raining.

The idea here is that the speaker would hate to carry an umbrella around for no good reason, preferring to make sure it would be of use. Does this sentence have the same meaning as the following, similar sentence?

If I am carrying an umbrella, it is raining.

In modern language usage, the notion of conditional can be a little fuzzy. The first sentence could be interpreted to mean that sometimes it might be raining but the speaker forgets to bring an umbrella, say. The second sentence is a clear assertion of a conditional statement: seeing me walking around with an umbrella lets you necessarily deduce this is because it's raining. In mathematics, we associate these two sentences and say they have the same logical meaning.

This motivates the meaning of the phrase "only if" and, subsequently, the phrase "if and only if". Consider the following two sentences:

I will buy a new car if I win the lottery.

I will buy a new car only if I win the lottery.

The first one says that winning the lottery guarantees I will buy a new car, whereas the second one says that the act of buying a new car guarantees that it is because I just won the lottery. If both of these sentences are true, then the events "winning the lottery" and "buying a new car" are equivalent, in a sense, because the occurrence of each one necessarily guarantees the occurrence of the other.

Accordingly, mathematical definitions commonly use the phrase "if and only if". For example, we might write "An integer is even if and only if it is divisible by 2." This indicates that knowing a number has that property allows us to call it "even", and knowing a number is even allows us to conclude the divisibility property. (Sometimes, though, a definition will just use  $if$ , with the only if part left unstated but understood. You may have noticed that we did this with the definition of prime numbers in Section 1.1.2.)

# Creating More Conditional Statements from Others

Starting with a conditional statement, we can modify it slightly to produce three other conditional statements with the same content but different structure. Continuing to use the "lottery/car" example, let's consider the following four versions of the original sentence:

1. If I win the lottery, then I will buy a new car.  
2. If I bought a new car, then I won the lottery.  
3. If I don't win the lottery, then I won't buy a new car.
4. If I didn't buy a new car, then I didn't win the lottery.

How do these sentences compare? Do any of them have the same logical meaning as each other? Are all of them True, necessarily, assuming the truth of the first one? We would argue that, in this case, sentence two could be False, even if the first sentence is True. Perhaps I got a hefty raise at work or inherited some money and decided to buy a new car. What about sentences three and four, though? Can they be associated with the others somehow? We will leave this for you to discuss and explore on your own. It might be interesting to ask the same questions of some of the other conditional statements we've looked at and see if your answers are different, too.

One final example of a conditional statement we'll mention comes from a joke by standup comedian Demetri Martin.

I went into a clothing store and a lady came up to me and said, "If you need anything, I'm Jill." I've never met anyone with a conditional identity before. "What if I don't need anything! Who are you?"

This should give you a flavor for the ways that conditional statements in modern language can be imprecise or subtle, and sometimes open to interpretation. In mathematics, we want these types of statements to be rigorous, well-defined, and unambiguous. This is something we will investigate further later on in Section 4.5.3. For now, though, it might help to think of these types of statements in the rigorous way in which a computer algorithm would interpret an if…then statement. When the conditions of the if part are satisfied, the subroutine is executed, and they are ignored otherwise. Likewise, a while loop is merely a sequence of if…then statements condensed into one, concise form.

# Quantifiers

Next, let's examine some examples of quantifiers. We will use quantifiers when there is an unknown variable meant to be an object drawn from a collection of possible values or representations. For instance, when we quantified the variables  $a, b, c$  in the statement of the Pythagorean Theorem, they were drawn from the collection of real numbers that represent the side lengths of right triangles. For a non-mathematical example, consider the following sentence:

Every person is loved by someone.

What are the variables here? How are they quantified? Be careful because, yes, there are in fact two quantifications in this sentence, one for each of two separate variables. In both cases, the variables represent a member of the collection of all people in the world, and the first variable is quantified universally while the second one is quantified existentially. That may sound confusing, so let's try rewriting the sentence more verbally:

For every person  $x$  in the world, there exists another person  $y$  with the property that person  $y$  loves person  $x$ .

Do you see how this has the same logical meaning as the first sentence? Surely, this one is unnecessarily wordy and precise for a conversation, but we present it here to show you the underlying variables and quantifiers. The key phrases for the quantifiers are "for every" (universal) and "there exists" (existential).

# The Order of Quantification Matters!

Now, let's look at a similar sentence as the last example:

Someone is loved by every person.

This sentence is quite similar to the one above; it has all of the same words, even! What did the change in word order do to the logical meaning of the sentence? Well, there are still two variables and two quantifiers, one universal and one existential, but the order in which those quantifiers are applied has been switched. The verbose version of this sentence reads:

There exists a person  $x$  with the property that, for every person  $y$  in the world, person  $y$  loves person  $x$ .

This has a completely different meaning from the first sentence! The first one seemed believable but this one is almost outlandish. This should give you an idea of how important it is to keep the order of quantification straight so that you are actually saying what you mean to be saying.

# Nested Quantifiers

The following examples illustrate how our brains can sometimes process quantifiers in language-based sentences fairly quickly and easily, even when the interconnectedness might make it difficult to understand. When quantifiers follow one after the other, we call them nested.

The ability to analyze and understand such sentences might depend on the context of the sentence and the message it is trying to convey. If the message makes sense and we believe it, it can be easier to grasp. The best example we know of this phenomenon is embodied by the following quote, attributed to the great presidential orator Abraham Lincoln:

You can fool some of the people all of the time, and all of the people some of the time, but you can not fool all of the people all of the time.

There are quantifiers all over the place here! We are talking about the collection of all people and the collection of instances in which certain people are fooled, and quantifying on those collections. Try to write this sentence with a few different wordings to see if it can sound any "simpler" or more concise.

Could there be another way to phrase the sentence that would remove some (or all) of the quantifiers without altering the meaning?

Finally, out of personal interest and to inject a bit of humor, we'll mention a similar quote that comes from Bob Dylan's song "Talkin' World War III Blues", from his 1963 album The Freewheelin' Bob Dylan:

Half of the people can be part right all of the time

Some of the people can be all right part of the time

But all of the people can't be all right all of the time

I think Abraham Lincoln said that

We will discuss these topics in greater detail later on, where we will examine their mathematical motivations, meanings, and uses. For now, we can't stress enough how important these issues are in writing proofs. Stringing together a bunch of sentences with no way of knowing how they're connected is not a proof, but a properly-structured series of logical statements and implications is exactly what we're looking for.

# 1.3 Review, Redo, Renew

Thus far, we have sought to motivate and explain mathematical reasoning and proof-writing from a logical standpoint but, along the way, we have used some mathematical concepts and techniques with which you may or may not be familiar. It is important, of course, to think logically and rationally when doing mathematics, but this is only part of the bigger picture. We have tried to explain how to organize mathematical ideas and structure them in a meaningful way that can convince others of a specific fact, but those ideas must contain some mathematical concepts related to that fact!

For instance, we couldn't have looked at any of the proofs of the Pythagorean Theorem without having a rudimentary understanding of geometry: what a triangle is, some basic properties of triangles and lines and angles, etc. What else did we assume the reader would understand? Many of the steps involved arithmetic, like manipulating multiple equations by multiplying through by the same factor or subtracting two equations, and so on. Those ideas may be secondnature to you now, but at some point you had to learn these things and see why and how they actually worked so that you could safely and appropriately use them in the future.

Look back over some of the other proofs we looked at in the previous sections. What mathematical ideas did we use? Try to write down a few and think about when and how you learned about them. Try to write down some specific facts that we may have used without explicitly saying so and think about why we would do that. Also, try to find a few instances where we made a claim but didn't necessarily fully explain why it must be True, and try to do that. For instance, in "Proof 1" of the Pythagorean Theorem, we drew four identical triangles inside a square and then said that the figure inside would also be a square. Is this really True? How can we be so sure? Try to prove it!

# Presumed Knowledge

The main point is that we can't actually write proofs without imbuing them with some meaningful mathematical content. Accordingly, one of the main goals of this book is to share some interesting mathematical facts with you. Sometimes, this involves working with objects you already know about and have seen before (like triangles or prime numbers) and trying to do new things with them. Other times, we may be introducing you to completely new mathematical objects (like equivalence relations or binomial coefficients) and working with those. What we'd like to do now is discuss some mathematical objects and concepts that we will use rather frequently and that you might have seen before. We aren't necessarily assuming that you've seen all of these, but none of these ideas are too hard to learn/relearn quickly, and they will be quite useful throughout the remainder of this book, and the remainder of your mathematical life, as well! We've included a handful of problems for you to work on to give you some practice, both throughout this section and at the end of it.

# 1.3.1 Quick Arithmetic

We won't be expecting you to multiply six digit numbers in your head or anything like that, but being able to manipulate "small" numbers via addition, subtraction and multiplication is an important skill. Sure, calculators and computing programs can be helpful, but we hope that it isn't necessary to run off to Maple or Mathematica or your TI-89 whenever we need to add a couple of four digit numbers, say. Technology provides us with many conveniences in the form of accuracy and time-efficiency but when we rely on these devices too heavily, we diminish our ability to verify those answers we get (in the event of a typo or missed keystroke, for instance) and when we use them too frequently, we may not actually save any time at all!

We encourage you to continually try to perform any arithmetic steps we face either in your head or on a piece of scrap paper. It will be fairly infrequent that any problems/puzzles involve arithmetic with "large" numbers and even when they do, there may be a special trick that can reduce the problem to something easier. For instance, try to work on the following series of problems and see what you notice.

Problem 1.3.1. For each of the following multiplications, try to identify the final digit of the resulting number. If your answer is "0" then try to identify how many zeroes are at the end of the resulting number.

1. $1 \cdot 2 \cdot 3 \cdot 4 \cdot 5$  
2. $1\cdot 2\cdot 3\dots \dots 10$  
3. $1\cdot 2\cdot 3\dots \dots 25$  
4. $1\cdot 2\cdot 3\dots \dots 100$  
5. $1\cdot 2\cdot 3\dots \dots 1000$
6. $1\cdot 2\cdot 3\dots \dots 10000$  
7. $1\cdot 2\cdot 3\cdot \dots \cdot 10^{9}$

Try to write down a few sentences that would explain to a friend the procedure you used above. That is, given any number  $n$ , explain how to identify the number of zeroes at the end of the number resulting from multiplying  $1 \cdot 2 \cdot 3 \cdots n$

What did you notice? Did you use your calculator for the first few? Surely that would work, or you could even do the first two or three by hand, but how did that help you later on? How did that help you to explain your procedure? Certainly, you needed to find a more general way of figuring out how to tackle this problem, and resorting to a calculator or computer might help you in some cases, but it won't provide you with any insight into the answer.

If you haven't figured out a general procedure, we'll give you this:

Hint: Think about how many multiples of 2 and how many multiples of 5 appear in the multiplication. Try to pair them together. (Why would you want to do that?)

# 1.3.2 Algebra Abracadabra

The term algebra has a couple of meanings in the mathematical world with some different nuances to each. Usually, the term brings to mind manipulating equations with variables and trying to find a numerical solution for them. This is probably how you handled word problems in a high school algebra class. More generally, though, abstract algebra is a branch of mathematics that studies certain mathematical structures that have specific properties, oftentimes having no relation to integers or real numbers.

Much of the groundwork for this field was laid by mathematicians before the 19th century who were seeking roots of polynomial equations where the variables were raised to the third or fourth or even higher powers. For a quadratic equation (containing a variable raised to the second power), you probably remember the formula for finding a root of the equation (i.e. a value for the variable that will make the expression evaluate to zero); this is the famous Quadratic Formula.

Did you also know there is a procedure for finding the root of an expression involving a variable that is cubed? Or even raised to the fourth power? Interestingly enough, the mathematicians working on this general problem discovered that there are no such procedures possible for higher powers! A lot of the concepts and structures they were working with developed into some inherently interesting mathematics, and people have been studying those objects ever since, eventually branching off and working with the underlying properties of those objects, stripping away the numerical context of finding roots of equations. This is usually what a mathematician means when he/she says "algebra".

In this particular context, though, we will be using "algebra" in the sense that you're likely thinking of it: manipulating multiple equations and variables

to obtain numerical values for the variables that make the expressions evaluate to numbers that satisfy all of the equations involved. There is actually a rich and wonderful theory behind solving systems of linear equations, but this type of in-depth study is better suited for a course on matrix algebra (also called linear algebra). For now, we'll look at a couple of handy tricks and then let you practice them.

# Solving Systems of Linear Equations

A system of linear equations is just a collection of equations involving a certain number of variables (all raised to the first power, hence linear) multiplied by coefficients and added together, and set equal to some constants. There are specific conditions on the coefficients and constants that guarantee whether or not a solution exists (and whether there are infinitely many or just one, in fact) but we won't get into those specific details. Suffice it to say that the systems of equations we will have to handle in this book will have unique solutions, and this means that the number of equations we have will be the same as the number of variables involved. Knowing that ahead of time, how do we manipulate a system of equations to find that unique solution?

In practice, the most time-efficient way of solving a system depends on the coefficients and constants, as well, and perhaps spotting a particular way of applying the methods we are about to explain. That said, simply following these methods will always work in a short amount of time, anyway, so don't be too concerned with finding the absolute shortest method in any given case.

Method 1: The first method involves a system of two equations and two unknowns. In this case, we can use one of the equations to express one variable in terms of the other, then substitute this into the second equation, yielding one equation and one unknown. From that, we can find a specific value for one variable, and substitute this back into the first equation to find a specific value for the other variable, thereby obtaining the solution we wanted. Let's see this process in action with a particular example. Consider the system of equations below:

$$
\begin{array}{l} 7 x + 4 y = - 2 \\ - 2 x + 3 y = 1 3 \\ \end{array}
$$

Following the method we just described, we would rearrange the first equation to write  $y$  in terms of  $x$

$$
y = \frac{1}{4} (- 2 - 7 x)
$$

then substitute this into the second equation

$$
- 2 x + 3 \cdot \frac{1}{4} (- 2 - 7 x) = 13
$$

and solve that new equation for  $x$ :

$$
\begin{array}{l} - 2 x - \frac{3}{2} - \frac{21}{4} x = 13 \\ - \frac{29}{4} x = \frac{29}{2} \\ x = - 2 \\ \end{array}
$$

Then, we would use this value in the first equation and solve for  $y$ :

$$
\begin{array}{l} 7 \cdot (- 2) + 4 y = - 2 \\ 4 y = - 2 + 1 4 = 1 2 \\ y = 3 \\ \end{array}
$$

Therefore, the solution we sought is  $(x,y) = (-2,3)$ .

What if we had used the value of  $x$  we found in the second equation instead of the first? Well, it would produce the same value of  $y$ , but maybe the arithmetic would have been slightly quicker. Or, what if we had done it the other way around, and expressed  $x$  in terms of  $y$ , solved for  $y$ , then went back and solved for  $x$ ? Again, we would have found the same solution, but perhaps the numbers would work out more "nicely" and save us a few seconds of scratch work. This is what we mean by not worrying about finding the most "efficient" method. Sure, there are multiple ways to approach this system of equations, but they ultimately stem from the same method (substitute and solve) and yield the same solution.

Method 2: An alternative way to handle a system of two equations and two unknowns is to multiply both equations through by particular values and then add them together, choosing those multipliers appropriately so that one of the variables is eliminated. Using the example from above, we could multiply the first equation by 2 and the second equation by 7, making the coefficient of  $x$  in both equations equal yet opposite; then, adding the equations reduces the system to one equation and one unknown, just  $y$ . Observe:

$$
\begin{array}{l} 2 \cdot (7 x + 4 y = - 2) \\ 7 \cdot (- 2 x + 3 y = 1 3) \\ 1 4 x + (- 1 4 x) + 8 y + 2 1 y = - 4 + 9 1 \\ 2 9 y = 8 7 \\ y = 3 \\ \end{array}
$$

From there, we can substitute this value into the first or second equation and solve for  $x$ .

You can use either of these approaches to handle any system of two equations and two unknowns. Perhaps one would be slightly quicker than the other, depending on the numbers involved, but you won't be saving more than a minute either way, so we encourage you to just choose one and work through it.

Method 3: It can sometimes be convenient to interpret these systems of equations graphically; this is not usually an efficient way of identifying a specific solution to the system, but it can give an indication of whether a solution exists and a rough estimate of the magnitude of the values of the solution.

With two unknowns, we can interpret an equation like  $ax + by = c$  in terms of a line in the plane by rearranging:  $y = -\frac{a}{b} x + \frac{c}{b}$ . This is the line with slope  $-\frac{a}{b}$  and  $y$ -intercept  $\frac{c}{b}$ . Given two such equations, we can draw two lines in the plane and locate the point of intersection visually. The  $(x,y)$  coordinates of that point are precisely the solution we would find by solving the system of equations as we described above.

This visual method also applies to a system of three equations and three unknowns, but this requires drawing lines in three-dimensional space. This can be difficult to do in practice, but is technically achievable. These same concepts also apply to larger numbers of equations and unknowns, but drawing "lines" in four or more dimensions is impossible for us human beings to visualize!

More than two variables: Reduce! The next part of this method builds upon the first by taking a system of more than two equations (and unknowns) and continually reducing it to smaller systems, eventually obtaining a system of two equations and two unknowns, where we can apply the first part of the method. We will illustrate the method by considering a system of three equations and three unknowns, like the one below:

$$
\begin{array}{l} 6 x - 3 y + z = - 1 \\ - 3 x + 4 y - 2 z = 1 2 \\ 5 x + y + 8 z = 6 \\ \end{array}
$$

The first goal is to eliminate one of the three variables. In essence, this can be done in one of two ways, much like the method for two equations and two unknowns. Let's say we're going to try to eliminate  $z$  from the system; we can try to express  $z$  in terms of  $x$  and  $y$  and substitute somehow, or we can multiply some equations and add them together to cancel the coefficients of  $z$ . The only difference here is that, whichever option we choose, we need to do it twice. Let's use the first equation to write

$$
z = - 6 x + 3 y - 1
$$

After substituting this expression for  $z$  into both the second and third equations, we will have a system of two equations and two unknowns.

One way to think about this is that we need information from all three equations to ultimately arrive at an answer, and in reducing the system to two equations, we need to somehow retain information from all three of the original equations. The expression we have for  $z$  came from the first equation, so we need to substitute it into the other two to retain all of the information we need.

Compare this to the following sequence of steps: rearrange the first equation to isolate  $z$  and substitute this into the second equation, then rearrange the second equation to isolate  $z$  and substitute this into the first equation. What

happens? The intuition is that we have somehow "lost" information from the third equation and, yes, we will obtain a system of two equations and two unknowns, but it will have insufficient information to yield a unique solution for  $x$  and  $y$ . If you actually perform the steps we just described (try doing this to check our work), you obtain the following "system" of two equations after minimal simplification:

$$
9 x - 2 y = 1 0
$$

$$
\frac{9}{2} x - y = 5
$$

These are really the same equation! Accordingly, we wouldn't actually be able to solve them for unique values of  $x$  and  $y$ .

Let's return to where we were and substitute the expression for  $z$  above into the second and third equations

$$
- 3 x + 4 y - 2 \cdot (- 6 x + 3 y - 1) = 1 2
$$

$$
5 x + y + 8 \cdot (- 6 x + 3 y - 1) = 6
$$

and then simplify

$$
\begin{array}{l} 9 x - 2 y = 1 0 \\ - 4 3 x + 2 5 y = 1 4 \\ \end{array}
$$

Applying one of the methods from the first problem will give us the solution  $(x,y) = (2,4)$ . Having both of these values in hand, we can now return to any one of the original three equations and solve for  $z$ ; better yet, we can just use the isolated expression for  $z$  we found already from the first equation:

$$
z = - 6 x + 3 y - 1 = - 6 \cdot (2) + 3 \cdot 4 - 1 = - 1 2 + 1 2 - 1 = - 1
$$

More than two variables: Reduce another way! Another way to reduce a system from three equations to two equations is related to the "multiply and add" method from before, but we still have to be careful about ensuring that we retain information from all three equations. Using the same system of three equations from above, we might notice that after multiplying the first equation by 8 and the second equation by 4, the coefficient of  $z$  in all three equations is either  $\pm 8$ . This allows us to add/subtract the equations in a convenient way to reduce the system to two equations and two unknowns. Specifically, let's do the multiplication we just mentioned

$$
\begin{array}{l} 4 8 x - 2 4 y + 8 z = - 8 \\ - 1 2 x + 1 6 y - 8 z = 4 8 \\ 5 x + y + 8 z = 6 \\ \end{array}
$$

and then add the first equation to the second

$$
\begin{array}{l} (4 8 x - 1 2 x) + (- 2 4 y + 1 6 y) + (8 z - 8 z) = - 8 + 4 8 \\ 3 6 x - 8 y = 4 0 \\ \end{array}
$$

and the second equation to the third

$$
\begin{array}{l} (- 1 2 x + 5 x) + (1 6 y + y) + (- 8 z + 8 z) = 4 8 + 6 \\ - 7 x + 1 7 y = 5 4 \\ \end{array}
$$

This produces two equations involving only  $x$  and  $y$ ; furthermore, we have combined information from all three original equations to produce these, so we can be assured that we haven't "lost" anything. Solving this new system

$$
\begin{array}{l} 3 6 x - 8 y = 4 0 \\ - 7 x + 1 7 y = 5 4 \\ \end{array}
$$

via any of the previous methods we discussed produces the solution  $(x,y) = (2,4)$ . Substituting these values into any of the three original equations and solving for  $z$  produces the ultimate answer we sought.

We could have performed similar steps to eliminate  $y$  from the system of three equations, too; for instance, we could add 4 times the first equation to three times the second, and subtract 4 times the third equation from the second. Any of these methods would produce the same ultimate answer, but some of them may shorten the arithmetic steps or involve "nicer" numbers (i.e. fewer fractions, smaller multiplications, what have you). Solving a system with more equations amounts to the same general procedure: multiply the equations and add to eliminate one variable from the system and continue doing this until there are only two equations and two unknowns; then, solve for the values of those two variables and work backwards, substituting those values to solve for the values of the variables that had been eliminated.

# Algebra Practice

Problem 1.3.2. Solve the following system of equations for  $(x,y,z)$ :

$$
\begin{array}{l} x + y + z = 1 5 \\ 2 x - y + z = 8 \\ x - 2 y - z = - 2 \\ \end{array}
$$

Now, solve this similar system for  $(x,y,z)$ :

$$
\begin{array}{l} x + y + z = 1 5 \\ 2 x - y + z = 9 \\ x - 2 y - z = - 2 \\ \end{array}
$$

Compare the changes in the values of  $x, y$ , and  $z$  between the two systems.

Which variable changed the most? The least? What is the ratio of these changes?

How large/small can you make this ratio by changing the constant on the right-hand side of the second equation of the system?

Problem 1.3.3. A father, mother and son were sitting in a restaurant eating dinner, when they were approached by another family consisting of a father, mother and son. This second family was struck by their resemblance to the first family, so the second father asked the first, "How old are the three of you? I'm guessing we are all about the same age". The first father happened to be a mathematician and did not feel like giving away his family member's ages so easily, and thus "revealed" them to the others in a tricky way. He said, "Well, our current ages combine to make 72, and I happen to be six times as old as my son. However, in the future when I am just twice his age, our combined age will be twice our current combined age. How old do you think we are?"

How old are the three family members?

# 1.3.3 Polynomnomnomials

Sometimes we will need to work with variables that are squared or cubed or raised to even higher powers. In general, a polynomial is the term we use for a function that has one or more variables raised to integer powers, multiplied by coefficients, and added together. Here are some examples of polynomials:

$$
x^{2} - 7 x + 1, \quad 7 p^{6} + 5 p^{4} + 3 p^{2} + 2 p, \quad \frac{1}{2} z^{2} + 9 y^{2} z - 2 y + z^{3} y^{2} - 7 z
$$

These types of functions are quite common and popular in mathematics, partly due to their convenient properties and partly due to their prevalence in nature. We will see them appear throughout this book. For now, though, let's focus on polynomials that only have one input variable.

# Roots of Polynomials

Sometimes, we will define a polynomial function in the context of a puzzle and wonder whether there are any values for the input variable that make the output value 0. These input values are called roots of the polynomial.

One way to identify roots of a polynomial is to factor it into linear terms; that is, we try to express the function as a series of multiplications instead of additions, since we can declare that (at least) one of the factors must be 0 to achieve a 0 value. The motivation behind this technique relies on the following fact:

Fact: If  $a$  and  $b$  are real numbers and  $ab = 0$ , then  $a = 0$  or  $b = 0$  (or possibly both).

Example 1.3.4. Let's see a specific example. Let's try to factor the following polynomial:

$$
p (x) = x^{2} + 6 x + 8
$$

(It is common notation to define polynomials as  $p(x)$ , where  $p$  stands for polynomial,  $x$  is the input variable, and  $p(x)$  is the output value corresponding to the input value  $x$ . This doesn't have to be the case, though.)

You might notice that

$$
p (x) = x^{2} + 6 x + 8 = (x + 4) \cdot (x + 2) = (x + 4) (x + 2)
$$

(It is also fairly common to drop the  $\cdot$  when there are factors separated by parentheses, so we will adopt that convention from here on out, as well.)

The reason this factorization works is because we are applying the distributive property multiple times, in reverse. If we were to expand the factorization we just found, explicitly showing every step, it would look like:

$$
\begin{array}{l} p (x) = (x + 4) (x + 2) \\ = x (x + 2) + 4 (x + 2) \\ = (x^{2} + 2 x) + (4 x + 8) \\ = x^{2} + 2 x + 4 x + 8 = x^{2} + 6 x + 8 \\ \end{array}
$$

All we really did to write down the factorization was to notice that the terms  $+4$  and  $+2$  have product  $+8$ , which is the constant term, and they have sum  $+6$ , which is the coefficient on the  $x$  term. Knowing how the subsequent expansion of those factors would work out allows us to write down that factorization without really checking it.

# Factoring Quadratics

Let's take what we did with that specific example and try to generalize to any quadratic function. If we want to factor a quadratic polynomial like

$$
p (x) = x^{2} + b x + c
$$

we seek values  $r$  and  $s$  so that  $r \cdot s = c$  and  $r + s = b$ . Usually, we can do this "by inspection", or by just staring at these two equations and thinking for a minute to come up with the appropriate values. (That's what we did with the last example!)

What do we do if the coefficient of the  $x^2$  is not 1 but some other number  $a$ ? Well, notice that if we can factor the polynomial  $\frac{p(x)}{a} = x^2 + \frac{b}{a}x + \frac{c}{a}$ , then we can find a factorization of the original polynomial  $p(x)$ , as well, by just multiplying by  $a$ . This won't affect our ability to find roots of the polynomial (our original goal), because we're assuming  $a \neq 0$  (otherwise we didn't really have a quadratic polynomial to begin with and wouldn't need to factor it). Once we've found this factorization, it's easy to identify the roots of  $p(x)$ ; since we want to figure out when  $p(x) = 0$ , we can just use the factorization and the fact we mentioned above to conclude that

$$
\begin{array}{l} 0 = p (x) = (x + r) (x + s) \quad \text{im pl ie s} \quad x + r = 0 \text{or} x + s = 0 \\ w h i c h \quad x = - r \text{or} x = - s \\ \end{array}
$$

That is, the roots must be  $-r$  and  $-s$ .

What if we have a polynomial of the form  $p(x) = x^2 - a^2$ ? This particular type of function is known as a difference of squares, and has a quick factorization trick. This is a quadratic polynomial so, following the method from above, we would seek values  $r, s$  such that  $rs = -a^2$  and  $r + s = 0$  (since there is no  $x$  term in  $p(x)$ ). The second constraint tells us  $r = -s$  and using this in the first constraint tells us  $r^2 = a^2$ . Thus, using  $r = a$  and  $s = -a$  achieves the factorization  $p(x) = (x - a)(x + a)$  and so the roots are  $\pm a$ . (Notice that using  $r = -a$  and  $s = a$  also satisfies both constraints, yet it actually yields the same factorization of  $p(x)$ .)

Similar tricks can sometimes be applied to polynomials of higher degree (recall that "degree" means the highest power of the input variable). For instance, the following polynomial has degree 4

$$
p (x) = 4 x^{4} - x^{2} - 3
$$

but we can factor it easily if we define  $y = x^2$  and write it as a quadratic polynomial

$$
p (y) = 4 y^{2} - y - 3 = (4 y + 3) (y - 1)
$$

Notice that you can think about the factorizations of the coefficients of the  $y^2$ ,  $y$ , and constant terms to jump right to the factorization we found, or you can follow the division trick we mentioned. Here, we would want to factor  $\frac{p(y)}{4} = y^2 - \frac{1}{4}y - \frac{3}{4}$ , so we need  $rs = -\frac{3}{4}$  and  $r + s = -\frac{1}{4}$ ; using  $r = -1$  and  $s = +\frac{3}{4}$  works, so we obtain the factorization

$$
{\frac{p (x)}{4}} = (y + (- 1)) \left(y + {\frac{3}{4}}\right)
$$

which can be simplified as

$$
p (x) = 4 (y - 1) \left(y + \frac{3}{4}\right) = (y - 1) (4 y + 3)
$$

which is exactly what we had before.

# A Root Yields A Factor

Of course, this trick of identifying roots can work in reverse, too: if we can easily spot a root of a polynomial, that can help us in identifying one of the factors. As an example, look at the cubic polynomial below and see if you can find a root "by inspection"; that is, see if you can find an input value for  $x$  that will make  $p(x)$  evaluate to zero:

$$
p (x) = x^{3} - 3 x + 2
$$

If you haven't spotted it yet, you might want to try plugging in some "easy values", like the first few integers (both positive and negative) to see what happens. If you do so, you'll find that  $p(1) = 1 - 3 + 2 = 0$ . Accordingly, we

know that a factorization of the polynomial  $p$  should include the factor  $(x - 1)$ , since this corresponds to the root  $x = 1$ . Knowing this, we want to divide  $p(x)$  by the factor  $(x - 1)$  so that we can further factor that quotient and identify all of the roots of  $p$ .

# Polynomial "Division"

How do we divide polynomials, though? We seek another polynomial  $q(x)$  so that  $p(x) = q(x) \cdot (x - 1)$ , or in other words, we need to find  $\frac{p(x)}{x - 1}$ . One way to identify such a function is by using the same principles of long division that you learned all about in middle school when you were dividing integers. The same concepts apply to polynomial functions! Think back to how long division works, and try working through some basic examples—like  $22 \div 7$ , say—to refresh your memory about how it works.

Now, let's try to apply those same principles to polynomials. Here's an example of the idea of long division applied to  $\frac{x^3 - 3x + 2}{x - 1}$ :

$$
\begin{array}{l} x - 1) \begin{array}{c c} & x^{2} + x - 2 \\ \hline x^{3} & - 3 x + 2 \end{array} \\ \frac{- x^{3} + x^{2}}{x^{2}} \\ - x^{2} + x \\ - 2 x + 2 \\ \begin{array}{c} 2 x - 2 \\ 0 \end{array} \\ \end{array}
$$

In each iteration of the method, we try to find the largest "factor" that can "go into" the larger term. In this case, these are just multiples of powers of  $x$ ; we identify the largest power of  $x$  that can "go into" the current term in question. Since the dividend has  $x^3$  and the divisor has  $x$ , we write  $x^2$  above the division line. Then, we multiply  $(x - 1)$  by  $x^2$ , write this below the dividend, and subtract to find the remainder.

We repeat the same process until we have a constant term above the division line (i.e. a multiple of  $x^0$ ) and see the remainder. Since the remainder here is 0, we know that we have a factorization with no remainder. We can then factor the resultant quadratic by noticing that  $r = 2$  and  $s = -1$  satisfy  $r + s = 1$  and  $rs = -2$ , so we can finally write

$$
p (x) = (x - 1) (x - 1) (x + 2) = (x - 1)^{2} (x + 2)
$$

Accordingly, the roots of  $p(x)$  are  $x = 1$  and  $x = -2$ . For this function, the degree of the polynomial is 3 but the function has only 2 roots. Does this strike you as odd? Can you think of a polynomial of degree 3 that has only 1 root? How about a polynomial of degree 3 with no roots? What about 4 roots, or 5 or more? Are any of these possible? Why or why not? What if we were working with a polynomial of degree 4? Of degree  $n$ ? What can you say for sure about the number of roots a polynomial has, relative to its degree?

# Expanding Factors

Sometimes, when working on a puzzle, we start from a factorization of a polynomial and want to expand the factors completely so we can identify the coefficient of a particular term. How can we quickly and easily multiply polynomials together? In essence, we are trying to apply the distributive law over and over without having to write out all of the steps (although that thorough, step-by-step procedure is guaranteed to work, so if you are unsure of your answer, it is always a good idea to go back and check each step thoroughly).

One particular instance where we can reduce the number of steps involved is when we need to expand a factorization like  $(a + b)^n$ , where  $a$  and  $b$  represent any constant or variable and  $n$  is an integer. In this specific situation, there is a convenient way to identify the coefficients of the expanded polynomial, and those values come from Pascal's Triangle.

This is an arrangement of rows of integers into a triangular shape, where each row corresponds to a particular value of  $n$  in such an expansion. The trick to generate Pascal's Triangle is to write the first two rows as all 1s, and the outside "legs" of the triangle as all 1s. In the interior of the triangle, any entry is filled in by finding the sum of the two entries immediately above that entry, to the left and to the right. Try generating the first few rows of the triangle yourself and compare to the one below to make sure you've done the procedure correctly.

<table><tr><td>n = 0:</td><td></td><td></td><td></td><td>1</td><td></td><td></td><td></td><td></td></tr><tr><td>n = 1:</td><td></td><td></td><td>1</td><td></td><td>1</td><td></td><td></td><td></td></tr><tr><td>n = 2:</td><td></td><td>1</td><td></td><td>2</td><td></td><td>1</td><td></td><td></td></tr><tr><td>n = 3:</td><td>1</td><td></td><td>3</td><td></td><td>3</td><td></td><td>1</td><td></td></tr><tr><td>n = 4:</td><td>1</td><td></td><td>4</td><td>6</td><td></td><td>4</td><td></td><td>1</td></tr></table>

We've written the  $n$  values on the left side to indicate the correspondence with the original problem of expanding  $(a + b)^n$ . In general, any term of the expansion will be some coefficient (taken from the triangle) times  $a^k b^{n - k}$  for some value of  $k$  between 0 and  $n$ ; that is to say, in every term of the expansion, the sum of the powers of  $a$  and  $b$  in that term must be  $n$ . The numbers in any given row of the triangle are written in an order corresponding to decreasing powers of  $a$ , so that the first 1 is the coefficient of  $a^n$ , the next number is the coefficient of  $a^{n - 1}b$ , and so on.

If we were faced with expanding  $(a + b)^2$ , we would read the  $n = 2$  row of Pascal's Triangle and see that the coefficients should be 1, 2, 1, and that these are the coefficients for  $a^2, ab, b^2$ , respectively. Thus,

$$
(a + b)^{2} = a^{2} + 2 a b + b^{2}
$$

which we could have also accomplished fairly easily by just expanding by hand. What if we were faced with expanding  $\left(x^{2} + 2\right)^{4}$ , say? This isn't done as quickly by hand, so let's see what happens if we use Pascal's Triangle. The  $n = 4$  row

tells us the coefficients of  $a^4, a^3b, a^2b^2, ab^3, b^4$  are 1, 4, 6, 4, 1, respectively, where  $a = x^2$  and  $b = 2$ . Thus, we can write

$$
\begin{array}{l} \left(x^{2} + 2\right)^{4} = 1 \cdot \left(x^{2}\right)^{4} + 4 \cdot \left(x^{2}\right)^{3} \cdot 2 + 6 \cdot \left(x^{2}\right)^{2} \cdot (2)^{2} \\ + 4 \cdot x^{2} \cdot (2)^{3} + 1 \cdot (2)^{4} \\ = x^{8} + 4 \cdot x^{6} \cdot 2 + 6 \cdot x^{4} \cdot 4 + 4 \cdot x^{2} \cdot 8 + 1 6 \\ = x^{8} + 8 x^{6} + 2 4 x^{4} + 3 2 x^{2} + 1 6 \\ \end{array}
$$

Try performing this expansion step-by-step and compare, too. There are actually some very interesting properties of Pascal's Triangle that are deeply rooted in some other mathematical concepts, and these properties are particularly useful in the field of combinatorics. We will, in fact, examine many of these properties in greater detail later on! For example, you might wonder why it is the case that this procedure—adding the two entries above—yields entries that correspond to expanding factors like this. We will prove that it works when we discuss the Binomial Theorem and its related ideas! (See Section 8.4.4 if you're curious.)

# Completing the Square

There is one more polynomial-related trick we need to mention before deriving an important result. Sometimes, it is useful to rewrite a polynomial as a squared term plus a constant term, so that we can separate the variables and constants in a convenient way. This amounts to adding and subtracting a particular term so that, overall, we have added 0 to the polynomial, but the term is chosen in a way that lets us rewrite the terms of the polynomial conveniently. This process is known as completing the square, in the sense that we add a term to create a squared factor, and complete the polynomial by subtracting a corresponding amount.

Let's try this procedure with an example and then attempt to generalize. Start with the following polynomial:

$$
p (x) = x^{2} + 8 x + 9
$$

A factorization isn't immediately apparent here, so let's try to complete the square. We want to see a term like  $(x + a)^2$ , where we know the coefficient of  $x$  is 1 since the polynomial has  $1 \cdot x^2$ . Expanding a term like that gives  $x^2 + 2ax + a^2$ . Since we need  $8x$  to appear, we should use  $a = 4$ . This expansion gives  $x^2 + 8x + 16$ , but we really want to see  $+9$  as the constant term, so let's add and subtract 7 from the original polynomial:

$$
p (x) = x^{2} + 8 x + 9 + 7 - 7 = (x^{2} + 8 x + 1 6) - 7 = (x + 4)^{2} - 7
$$

Does this look familiar? Precisely, it's a difference of squares, and we know how

to factor that:

$$
\begin{array}{l} p (x) = x^{2} + 8 x + 9 = (x + 4)^{2} - 7 = (x + 4)^{2} - \left(\sqrt{7}\right)^{2} \\ = (x + 4 + \sqrt{7}) (x + 4 - \sqrt{7}) \\ \end{array}
$$

Accordingly, the roots of this polynomial are  $x = -4 - \sqrt{7}$  and  $x = -4 + \sqrt{7}$ .

Let's generalize! Suppose we start with a quadratic polynomial of the form

$$
p (x) = a x^{2} + b x + c
$$

and, to complete the square, we want to add and subtract a particular term. How did we find that term before? Well, the expansion of a term like  $(rx + s)^2$  yields  $r^2 x^2 + 2rsx + s^2$ , and to match these coefficients with the coefficients of the original polynomial, we see that we need  $r^2 = a$ , so we should use  $r = \sqrt{a}$ . (Notice that this requires  $a \geq 0$ , of course! What should we do if  $a < 0$ ?) Then, to have  $2rs = b$ , we need  $s = \frac{b}{2r} = \frac{b}{2\sqrt{a}}$ . Then, when this is expanded we have added on  $s^2 = \frac{b^2}{4a}$ , so we should subtract that from the polynomial.

These steps are performed below, with some extra algebraic cleanup, of sorts, to make the terms look "nicer":

$$
\begin{array}{l} p (x) = a x^{2} + b x + c = a x^{2} + b x + \frac{b^{2}}{4 a} + c - \frac{b^{2}}{4 a} \\ = \left(\sqrt{a} x + \frac{b}{2 \sqrt{a}}\right)^{2} + \left(c - \frac{b^{2}}{4 a}\right) \\ = \left(\sqrt{a} \cdot \left(x + \frac{b}{2 a}\right)\right)^{2} + \left(c - \frac{b^{2}}{4 a}\right) \\ = a \left(x + \frac{b}{2 a}\right)^{2} + \left(c - \frac{b^{2}}{4 a}\right) \\ \end{array}
$$

This now tells us how to complete the square, given any quadratic polynomial!

# Visualizing Completing the Square

Here's a helpful way to remember how to do this process. It's based on a visual representation of the areas of squares and rectangles.

Let's suppose that  $a, b > 0$  so that we can geometrically interpret  $ax^2 + bx$  as the area of a rectangle. Specifically, let's take the  $ax^2$  term to be the area of a square. This means each side has length  $\sqrt{a} \cdot x$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/6de2ebd9c7369e3e3e6dfbfbf23ae7a1e1e0f76cba02058572c9757e2bc44175.jpg)

How might we represent the  $bx$  term? We want to build this square into a larger square; this is what completing the square means. So, we should build some rectangles around this square that will help us proceed towards that goal. Let's split the area contributed by the  $bx$  term into two rectangles, each with area  $\frac{b}{2} x$ . Since we must have one side with length  $\sqrt{a} \cdot x$ , and we want the total area to be  $\frac{b}{2} x$ , then we see that we need the other length to be  $\frac{b}{2\sqrt{a}}$ :

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/e599dcf6fd6ee4d1dc97a203ec8e74a25284f950522c4d5e662d0387162e0121.jpg)

What do we need to add to make this a square? We see that there is just a tiny square piece left to fill in the upper-right corner. Each side is length  $\frac{b}{2\sqrt{a}}$ , so its area—the term we need to add on—is  $\frac{b^2}{4a}$ .

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/951fc6d39f4c349a87b16188bd55fc08ba701b206d374f40eccaf73dc1256274.jpg)

Look at that! This is the same term we produced above with our algebraic derivation. By adding that on, we were able to factor the terms as a perfect square. We just needed to make sure to subtract it off, as well, so that the net change to the original expression is zero.

This is a helpful trick to keep in mind. It can remind you about both the motivating process for completing the square, as well as how to achieve it. One thing you should ponder, though: Why is it that this visual representation works? We had to assume  $a, b > 0$  to be able to draw these diagrams, so why is it that the general formula works no matter what  $a$  and  $b$  are?

# The Quadratic Formula

Let's returning to the question of identifying the roots of a polynomial. Specifically, let's recall the quadratic formula. You may have memorized this formula as a way to "solve quadratic equations" but do you know why it actually works? Let's try to figure it out! In general, we start with a quadratic polynomial of the form

$$
p (x) = a x^{2} + b x + c
$$

where  $a \neq 0$  (otherwise, it's not actually quadratic), and we want to identify the values of  $x$  such that  $p(x) = 0$ . (Did you try to answer our questions above about how many roots this type of polynomial can have? Keep those concepts in mind throughout the following derivation.) We can't hope to factor the polynomial into linear factors too easily, so let's take advantage of the process we used above: completing the square. The benefit of that procedure is that we can set  $p(x) = 0$  and rearrange the terms after completing the square to solve for  $x$ . Observe:

$$
0 = p (x) = a x^{2} + b x + c = a \left(x + \frac{b}{2 a}\right)^{2} + \left(c - \frac{b^{2}}{4 a}\right)
$$

simplifies to:

$$
\frac{b^{2}}{4 a} - c = a \left(x + \frac{b}{2 a}\right)^{2}
$$

Now, we want to start "undoing" the processes here to solve for  $x$ , and this would require taking the square root of both sides. But what if  $\frac{b^2}{4a} - c < 0$ ? We couldn't take that square root at all! Or what if  $\frac{b^2}{4a} - c = 0$ ? Is that a problem? Do we have anything to worry about when  $\frac{b^2}{4a} - c > 0$ ? These are issues that are related to the questions we had before about the possible number of roots a polynomial can have. You may have deduced (correctly) that a quadratic polynomial can have at most two roots, but here we have uncovered the possibility (and reasons why) that a quadratic polynomial may have one or zero roots!

- In the case where  $\frac{b^2}{4a} - c < 0$ , then no value of  $x$  can possibly satisfy the last line in the derivation above. Therefore, there would be no roots of  $p(x)$  in the set of real numbers.  
- In the case where  $\frac{b^2}{4a} - c = 0$ , then taking the square root of both sides of the last line above is perfectly valid, but it will produce exactly one value

of  $x$

$$
\begin{array}{l} \frac{b^{2}}{4 a} - c = 0 = a \left(x + \frac{b}{2 a}\right)^{2} \\ 0 = x + \frac{b}{2 a} \\ x = - \frac{b}{2 a} \\ \end{array}
$$

The remaining case is when  $\frac{b^2}{4a} - c > 0$ . Here, we can expect two roots of  $p(x)$  because taking the square root of both sides introduces two possible solutions. In general, when we have a situation like  $s^2 = t$ , we can say that the only possible solutions are  $s = \sqrt{t}$  and  $s = -\sqrt{t}$  but we must consider both (we usually write this as  $s = \pm \sqrt{t}$ ). Solving for  $x$  in that case yields

$$
\begin{array}{l} \frac{b^{2}}{4 a} - c = a \left(x + \frac{b}{2 a}\right)^{2} \\ \pm \sqrt{\frac{b^{2} - 4 a c}{4 a}} = \sqrt{a} \left(x + \frac{b}{2 a}\right) = \sqrt{a} x + \frac{b}{2 \sqrt{a}} \\ - \frac{b}{2 \sqrt{a}} \pm \frac{\sqrt{b^{2} - 4 a c}}{\sqrt{4 a}} = \sqrt{a} x \\ - \frac{b}{2 a} \pm \frac{\sqrt{b^{2} - 4 a c}}{\sqrt{4 a^{2}}} = x \\ \end{array}
$$

Now, we need to be careful about the square root observation we made before. In general,  $\sqrt{4a^2} = \pm 2a$ , but we already know that the fractional term involving that square root already has an associated  $\pm 1$  factor, so this factor won't change that. Therefore, we can conclude

$$
x = - \frac{b}{2 a} \pm \frac{\sqrt{b^{2} - 4 a c}}{2 a} = \frac{- b \pm \sqrt{b^{2} - 4 a c}}{2 a}
$$

Voilà, the quadratic formula!

Remember that the final steps of the derivation were carried out under the assumption that  $\frac{b^2}{4a} - c > 0$ . Does this formula still apply when  $\frac{b^2}{4a} - c = 0$ ? Could we have performed the same steps as we did immediately above while operating under that assumption? Why or why not?

# Problems

Problem 1.3.5. Find all possible values of  $a$  so that  $x - a$  is a factor of  $x^2 + 2ax - 3$ .

Problem 1.3.6. Find all possible values of  $b$  so that  $x^3 + b$  is divisible by  $x + b$  with no remainder.

Problem 1.3.7. Factor  $x^n - 1$  for any natural number  $n$ .

Problem 1.3.8. Determine the value of  $x$  defined by

$$
x = \sqrt{2 + \sqrt{2 + \sqrt{2 + \sqrt{2 + \cdots}}}}
$$

Hint: try to express the infinitely-nested square roots by using  $x$ , itself.

Problem 1.3.9. Use completing the square to prove that the sum of a positive number  $n$  and its reciprocal is always greater than or equal to 2, and that the only number that makes the sum equal to 2 is  $n = 1$ .

Hint: take the sum, add and subtract 2, and rearrange.

Problem 1.3.10. How can we find the roots of a quartic polynomial of the form  $ax^4 + bx^2 + c$ ?

# 1.3.4 Let's Talk About Sets

We've mentioned some particular types of numbers already, but we want to specifically define the sets of numbers we will be working with in the future. Each of these collections of numbers is represented by a particular letter in the blackboard bold font. The natural numbers (also known as whole numbers or counting numbers) are so-called because they feel "natural" to say as we start counting objects. We can write

$$
\mathbb {N} = \{1, 2, 3, 4, 5, \dots \}
$$

(There is a more specific and technical definition that we will explain later on.) We use  $\mathbb{N}$  to stand for "natural".

Using  $\mathbb{N}$ , we can define a related collection of numbers: the set of all integers, which combines the natural numbers, 0, and the negative natural numbers. We can write

$$
\mathbb {Z} = \{\dots , - 3, - 2, - 1, 0, 1, 2, 3, \dots \}
$$

The letter  $\mathbb{Z}$  comes from the German word Zahlen, meaning "number".

From this set, we can define the collection of rational numbers. These numbers can be represented as a ratio of integers, but they don't seem to have a natural "listing" like the sets  $\mathbb{N}$  and  $\mathbb{Z}$ , so we can't write this set in the way that we did above. For this, we use a very common set notation, as follows:

$$
\mathbb {Q} = \left\{\frac{a}{b} \mid a, b \in \mathbb {Z} \text{an d} b \neq 0 \right\}
$$

We read this as:

"The set of rational numbers is the set of all numbers of the form  $\frac{a}{b}$ , where  $a$  and  $b$  are both integers and  $b$  is nonzero."

This conveys the necessary information that a rational number is a fraction, where the numerator and denominator are integers (but the denominator can't

be 0 because division by 0 is disallowed). The reason we use the letter  $\mathbb{Q}$  for the rational numbers is because  $\mathbb{R}$  was already reserved for the real numbers and  $\mathbb{Q}$  was the next previous letter available. Also,  $\mathbb{Q}$  contains all of the quotients of integers, so that makes sense, too!

The real numbers  $\mathbb{R}$  have a very technical definition that we, unfortunately, cannot delve into completely in this book. (That just goes to show how difficult it is to mathematically define that set!) For now, one way to think of the real numbers is via a number line. The real numbers are all numbers that lie on the line, while the numbers of  $\mathbb{N},\mathbb{Z}$  and  $\mathbb{Q}$  are specific numbers that lie on the line, but they don't comprise the entirety of the line. In a way,  $\mathbb{R}$  is the "completion" of  $\mathbb{Q}$ , in the sense of "filling in the gaps" between rational numbers.

# 1.3.5 Notation Station

A popular and convenient way of writing sums and products is to use a shortened notation that collects many terms or factors into one common form. For instance, what if we wanted to talk about the sum of the first 500 natural numbers? It would be tedious to write out all 500 terms of the sum, so it is common to write something like  $1 + 2 + 3 + \dots + 499 + 500$ . (We've already used ellipses like this, in fact. Did you understand what we meant?) This is popular and does get the point across, but some mathematicians take offense to the unnecessary use of ellipses in the middle. We put off talking about this issue until now because it's often the case that notation can be difficult to learn and comprehend. Rather than bombard you with new symbols right away, we appealed to our intuitive understanding of what "… accomplish.

Now, that we've brought it up, let's see how to avoid using ellipses. To write the sum we mentioned above, we would use the following notation:

$$
1 + 2 + 3 + \dots + 4 9 9 + 5 0 0 = \sum_{i = 1}^{5 0 0} i
$$

The large sigma  $\sum$  comes from the Greek letter corresponding to S, for "sum", and the index  $i$  tells us to find the values of the individual terms of the sum. Writing  $i = 1$  below and 500 above the  $\sum$  sign means that we let  $i$  assume all of the natural number values between 1 and 500 (inclusive). Using those values, we substitute into the general expression for the term, which is just  $i$ , in this case. Accordingly, we find that the terms are  $1,2,3,\ldots,500$ , as desired. Try to find a few other ways of writing this sum by altering the expression for the general term and/or the values of the index. What if we wanted to find the sum of the first 500 even natural numbers? What about all of the even natural numbers up to (and including) 500? Try to write those sums in the notation style above.

Related to this is the  $\prod$  notation. If we wanted to look at the product of the first 500 natural numbers, we would follow the same conventions of identifying

values for the index and the general term:

$$
1 \cdot 2 \cdot 3 \cdot \dots \cdot 4 9 9 \cdot 5 0 0 = \prod_{i = 1}^{5 0 0} i
$$

The large pi  $\prod$  comes from the Greek letter corresponding to P, for "product". Again, try expressing this in a different way by changing the general term and/or index values. What if we wanted to find the product of the first 500 even natural numbers? What about all of the even natural numbers up to (and including) 500? Try to write those products in the notation style above.

# Problems

Problem 1.3.11. Write an English sentence that describes what the following equation means:

$$
\sum_{i = 1}^{n} i^{2} = \frac{n (n + 1) (2 n + 1)}{6}
$$

Problem 1.3.12. Express, in appropriate notation, the sum and product of the first  $n$  powers of 2, starting with  $2^0 = 1$ . Can you prove a formula for the sum? The product?

Problem 1.3.13. Consider the sum of all the odd numbers between 17 and 33 (inclusive). Write this sum in summation notation where the index starts at 0. Now try writing it where the index starts at 1. Now try writing it where the index starts at 8, and again with 9. Which of these feels "more natural"? Why?

# 1.4 Quizzical Puzzicles

Let's put into action some of the principles we have discussed so far. Specifically, let's examine some interesting mathematical puzzles and explain how to go about solving them. None of these involves knowing anything beyond basic algebra and arithmetic, but this does not mean they are "basic" or "easy", since they all involve critical thinking skills and keen insight to solve and understand. Along the way, we will be employing some logical ideas we have brought up already. We might have to work with polynomial functions, or solve some equations algebraically. We might have to think careful about order and flow of our arguments, making sure everything follows from previous knowledge or deductions. Overall, we should also be thinking about what constitutes a good and valid proof of the facts we discover!

# 1.4.1 Funny Money

# Problem Statement

This classic puzzle is contained in a story about some friends paying for a shared hotel room:

Three friends are on a road trip and stop at a hotel late one night looking for a room to catch up on some rest. The clerk on duty says that there is only one room vacant for that night and it costs \$30 for the three of them, if they want to squeeze in together. The friends decide they are desperate for sleep and agree to split the room amongst them, each placing a \$10 bill on the counter to pay up front. The clerk thanks them, hands them the key, and they head off to grab their bags from the car. Meanwhile, another clerk shows up to start his shift and realizes that the previous clerk had made an error and overcharged the three friends for their room: it should have only been \$25. He takes a \$5 bill from the register, hands it to the bellhop on duty and says, "Bring this to Room 29. The guests there were overcharged." The bellhop nods and heads off to their room. When the three friends answer the door, they are surprised and happy to discover they earned a refund. To split the money fairly, one friend makes change with five \$1 bills and then each friend takes \$1, giving the remaining \$2 to the bellhop as a friendly tip. The bellhop thanks them kindly and heads back to work.

Now, each of the three friends contributed \$9 to the room, plus a \$2 tip, making a total of \$29. But they originally gave the clerk \$30… What happened to the missing dollar?!

Think carefully about this before turning the page and reading our solution.

# Solution: Keeping Careful Track of the Money

Did you figure it out? Did you realize there is really nothing "missing"? This puzzle is intended to confuse the reader and mislead them into searching for something that isn't really there. The numbers involved are chosen so that the "missing sum" of \(1 is so small that the reader believes that something mysterious happened, but careful and logical analysis of the events should lead you to realize that the question at the end is not really a fair one; it is based on a misinterpretation of the situation, and trying to ignore its reasoning is the key to figuring out the solution to this puzzle. When the numbers are changed greatly so that the final discrepancy is of a much larger value, the reader no longer has that emotional investment to seek out that "missing dollar".

First, let's analyze what actually happened in this particular case. The key is careful interpretation of where the money actually goes. It helps to forget about the individual people involved and think of two distinct entities: the group of friends, who we'll call  $F$ , and the clerk/bellhop combo from the hotel, who we'll call  $H$ . Now, let's replay the steps of the story and describe where the money comes from and goes to at each step:

(1) \(F\) arrives and gives \\(30 to \(H\) (original cost of room)  
(2)  $H$  gives  $\$ 5$ back to  $F$  (refund for overcharge)  
(3)  $F$  gives  $\$ 2$ back to  $H$  (tip to bellhop)  
(4) Net change:  $F$  gave \$30-$ 5+ $2=\$ 27 to H

It makes more sense now, doesn't it? The refund was \$5, so the room actually cost \$25 and it doesn't make sense to say that the three friends each paid \$9 for it, plus the tip to the bellhop. That \$27 contribution from the three of them includes the tip. The question after the story implies that the we should be adding the tip to the friends' contribution but, really, it is part of their contribution. By grouping the friends together and the bellhop/clerk together, we can actually track down how the money changes hands.

# Generalizing: Changing The Numbers

Let's change the problem in the way that we mentioned above; specifically, let's try to change the numbers of the problem to remove that emotional attachment to the "missing dollar" and make the discrepancy much larger. To begin, we will define some variables to represent the dollar amounts used in each of the steps outlined above. We could try to approach this problem by "testing out" specific values for these dollar amounts and seeing what happens but it will be more efficient to essentially "try everything at once" by introducing variables and substituting specific values for them later on.

We will let  $3n$  represent the original cost of the hotel room (the amount paid by the three friends when they first arrived), for some value of  $n$ . We choose this because we want the cost to be evenly split by the friends. Next, we want

to define a variable to represent the refund they receive. Knowing that they will want to split this amount evenly amongst the three of them and have some leftover to tip the bellhop, let's say that the refund is of the form  $3r + 2$ . The variable  $r$  represents how much each friend individually receives back from the hotel, and the 2 represents the tip for the bellhop. Now, let's restate the puzzle with these variables instead of the original values.

Three friends are on a road trip and stop at a hotel late one night looking for a room to catch up on some rest. The clerk on duty says that there is only one room vacant for that night and it costs \$3n for the three of them, if they want to squeeze in together. The friends decide they are desperate for sleep and agree to split the room amongst them, each placing $n on the counter to pay up front. The clerk thanks them, hands them the key, and they head off to grab their bags from the car. Meanwhile, another clerk shows up to start his shift and realizes that the previous clerk had made an error and overcharged the three friends for their room: it should have only been \$3n - (3r + 2). He takes \$3r + 2 from the register, hands it to the bellhop on duty and says, "Bring this to Room 29. The guests there were overcharged." The bellhop nods and heads off to their room. When the three friends answer the door, they are surprised and happy to discover they earned a refund. To split the money fairly, each friend takes $r, giving the remaining \$2 to the bellhop as a friendly tip. The bellhop thanks them kindly and heads back to work.

Now, each of the three friends contributed $n - r to the room, plus a \$2 tip, making a total of \$3(n - r) + 2. But they originally gave the clerk \$3n… What happened to the missing $3n - [3(n - r) + 2] = $3r - 2?!

Do you see what happened now? The discrepancy occurs, as we explained before, because the question considers adding the \$2 tip to the refunded cost of the room and comparing that to the original cost of \$3n. The actual comparison should be between the refunded contribution of the friends, which is $3(n-r) = $3n - 3r, and the sum of the refunded cost of the room and the tip, which is $3n - (3r + 2) + 2 = $3n - 3r. No discrepancy there!

# Generalizing: Questions For You

In the original statement of the puzzle, the values were n = 10 and r = 1, so that the "missing amount" was magically $3r - 2 = $1. If we had chosen larger values—say n = 100 and r = 10—then the \$300 room actually should have cost \$268, the bellhop would bring the friends \$32, they would each take \$10, he would keep \$2, and the discrepancy becomes \$28. Would anyone actually believe that \$28 went missing in those transactions? What if we use even larger values of n and r? How large can you make the discrepancy? How small? Given

a desired discrepancy, in dollars, can you find values for  $n$  and  $r$  that achieve that value? How many ways are there to do that?

# Lessons From This Puzzle

Logic and rational thinking are important when solving a puzzle because it is sometimes easy to be misled by emotions. Had we stated the puzzle originally as the "missing \$28 problem", would you have reacted the same way? Would you have been as temporarily confused before trying to backtrack and discover what really happened?

# 1.4.2 Gauss in the House

# Problem Statement

There is a popular anecdote among mathematicians that may or may not be apocryphal, but some of us would like to believe that it is true, because it features one of the greatest mathematicians/physicists of all time, Carl Friedrich Gauss. He worked in the late 1700s and earlyto mid-1800s and proved some fundamental and powerful results in a broad range of areas. He studied number theory, and complex analysis, and optics, and geometry, and astronomy, and so much more! Read the story below, think about what you would have done in that situation—as a young child and now—and then read on for a discussion.

It was early in the morning in an elementary school classroom, and the students were acting noisy and rowdy, much to the dismay of the teacher, who was feeling quite sick and tired, literally, and quite sick and tired of their behavior. He needed a way to occupy them for a while so that he could relax at his desk and recuperate. He bellowed out to the room and told them to take out their slates and chalk. After asking a few more times, everyone had obliged. He then told them to add together all of the numbers from 1 to 100, and that the first person to do so would earn the privilege of being the teacher's helper for the day. He returned to his desk and sat down, relieved that they would be occupied for quite some time performing large sums. After only a minute, though, one boy walked up to the desk and showed the teacher his slate with the answer. The teacher was astounded and had to spend a few minutes performing the arithmetic himself to check the answer, but in the end, the little boy was correct, and he had accomplished this feat so quickly. How did he do it?

Think carefully about this before turning the page and reading our solution. Remember, this story "happened" in the days before calculators, so you should not be using anything more than your brain and a pencil and paper.

# Solution: Reducing Computations

Perhaps you figured this one out. There are actually a number of ways to approach this problem that are slightly different, but they mostly amount to the same insight: trying to reduce the number of computations required.

To naively go through and add each of the 100 numbers to the previously obtained sum would require 99 additions, with ever larger numbers involved. Certainly, the trick here is not to just do these additions faster than the others, it is to be more efficient with the computations that are required. Remember that multiplication can be viewed as repeated addition of one number with itself, so perhaps we can reduce all of these additions to one multiplication, provided we find the right number to add to itself over and over.

Another important fact to remember is that addition is associative and commutative, meaning we can perform the additions in any order and be assured that we obtain the same answer. Specifically, we can add all the numbers from 100 down to 1 and get the same result for the sum, call it  $S$ . Let's write down this fact in a convenient way here:

<table><tr><td>1</td><td>+</td><td>2</td><td>+</td><td>3</td><td>+</td><td>…</td><td>+</td><td>98</td><td>+</td><td>99</td><td>+</td><td>100</td><td>=</td><td>S</td></tr><tr><td>100</td><td>+</td><td>99</td><td>+</td><td>98</td><td>+</td><td>…</td><td>+</td><td>3</td><td>+</td><td>2</td><td>+</td><td>1</td><td>=</td><td>S</td></tr><tr><td>101</td><td>+</td><td>101</td><td>+</td><td>101</td><td>+</td><td>…</td><td>+</td><td>101</td><td>+</td><td>101</td><td>+</td><td>101</td><td>=</td><td>2S</td></tr></table>

Notice that we have written down the desired sum in two different ways, added those two sums entry by entry, and obtained an expression for  $2S$ , twice the desired sum. That new expression can be written as a multiplication because there are 100 terms, each of which is the number 101. Thus,

$$
2 S = 1 0 1 \cdot 1 0 0 \quad \text{an dt he re fo re ,} \quad S = 1 0 1 \cdot 5 0 = 5 0 5 0
$$

This is much faster than performing 99 additions, and in fact, if we think carefully, we may be able to do the entire process in our heads!

# Alternate Solution: Pairing Terms

Now, a very similar way of seeing this problem is to skip adding the two lines we wrote above and just pair off the numbers in the original sum, as follows:

$$
\begin{array}{l} S = 1 + 2 + 3 + \dots + 9 8 + 9 9 + 1 0 0 \\ = (1 + 1 0 0) + (2 + 9 9) + (3 + 9 8) + \dots + (4 9 + 5 2) + (5 0 + 5 1) \\ = 1 0 1 + 1 0 1 + \dots + 1 0 1 = 5 0 \cdot 1 0 1 = 5 0 5 0 \\ \end{array}
$$

This approach is essentially equivalent to the one we described above; it still takes advantage of the associative property of addition to convert the sum into a multiplication, it just skips over the intermediate steps where we found an expression for  $2S$  and then divided by two.

# Generalizing: Even  $n$

What if the teacher had asked his students to add the numbers from 1 to 1000? Would they have protested? Would Gauss have been able to find the answer just as quickly? What would you do? We're not sure about the first two questions, but we think that you could handle this sum just as easily. The only thing different here is that the number of pairs we create will be 500 (instead of 50), and each of those pairs will sum to 1001 (instead of 101), so the result will be

$$
1 + 2 + 3 + \dots + 9 9 8 + 9 9 9 + 1 0 0 0 = 1 0 0 1 \cdot 5 0 0 = 5 0 0 5 0 0
$$

Does it look like there's a pattern there? Do you think you could say what the sum of all of the numbers from 1 to 1 million is right away without doing the multiplication?

# Generalizing: Odd  $n$

What if the teacher had asked for the sum of the first 99 numbers instead? Would the pairing process still work? Let's see:

$$
\begin{array}{l} S = 1 + 2 + 3 + \dots + 9 7 + 9 8 + 9 9 \\ = (1 + 9 9) + (2 + 9 8) + (3 + 9 7) + \dots + (4 8 + 5 2) + (4 9 + 5 1) + 5 0 \\ = (4 9 \cdot 1 0 0) + 5 0 = 4 9 5 0 \\ \end{array}
$$

Notice that we had an odd number of terms in total, so we couldn't pair off every number, and had to add 50 to the result of the multiplication. Could we have paired the numbers in a different way?

$$
\begin{array}{l} S = 1 + 2 + 3 + \dots + 9 7 + 9 8 + 9 9 \\ = (1 + 9 8) + (2 + 9 7) + (3 + 9 6) + \dots + (4 8 + 5 1) + (4 9 + 5 0) + 9 9 \\ = (4 9 \cdot 9 9) + 9 9 = 5 0 \cdot 9 9 = 4 9 5 0 \\ \end{array}
$$

This seems more similar to the result of the original puzzle, because we ultimately performed one multiplication. This may seem like a strange coincidence now, but try to follow the steps above with some other odd sums. What is the sum of the first 7 integers? The first 29? The first 999? The first 999999?

# Generalizing: Any  $n$

Let's step back from the individual cases that we have examined here and try to solve the problem in a more general sense. Let's pretened that the teacher had presented the students with the following problem:

Find a formula for the sum of the first  $n$  numbers. I want a specific formula so that if someone tells me what  $n$  is, I can find an answer quickly by plugging in that particular value.

The caveat in the second sentence rules out a solution of the form given by our investigations above. We have already come up with some simple algorithms for finding a solution to this problem, but we have now been asked to find a formula that will produce a solution. How do we begin to approach this? Well, based on some observations we made above, it would make sense to tackle this puzzle by handling the cases where  $n$  is even and where  $n$  is odd separately. We saw that the pairing worked out slightly differently in those cases, so let's investigate one and then the other. In each case, we are looking for a formula for  $S(n)$ , the sum represented by  $1 + 2 + 3 + \dots + (n - 2) + (n - 1) + n$ . We are using this new notation  $S(n)$  to indicate that the sum depends on that particular value of  $n$ .

If  $n$  is even, we know that we can pair off every number and have no terms leftover:

$$
\begin{array}{l} S (n) = 1 + 2 + 3 + \dots + \left(\frac{n}{2} - 1\right) + \frac{n}{2} + \left(\frac{n}{2} + 1\right) + \dots \\ + (n - 2) + (n - 1) + n \\ = (1 + n) + (2 + (n - 1)) + (3 + (n - 2)) + \dots \\ + \left(\left(\frac{n}{2} - 1\right) + \left(\frac{n}{2} + 2\right)\right) + \left(\left(\frac{n}{2}\right) + \left(\frac{n}{2} + 1\right)\right) \\ = (n + 1) \cdot \frac{n}{2} = \frac{n^{2} + n}{2} \\ \end{array}
$$

Try this formula with some of the even values of  $n$  we examined above (like 100, 1000, 1000000, etc.) It works, doesn't it? Note that the reason we can write terms involving  $\frac{n}{2}$  and be assured they are part of the sum is that  $n$  is even, so  $\frac{n}{2}$  is also a whole number.

Okay, now what happens if  $n$  is odd? We know that we won't be able to pair off every number, so we need to be clever about what we do here. Remember our approach with summing the first 99 numbers? By leaving off the last term of the sum, we could pair off all of the other terms with no leftover, and furthermore, each of those pairs summed to the same value as that last number. Let's try using that approach here:

$$
\begin{array}{l} S (n) = 1 + 2 + 3 + \dots + \left(\frac{n - 1}{2} - 1\right) + \frac{n - 1}{2} + \left(\frac{n - 1}{2} + 1\right) + \dots \\ + (n - 2) + (n - 1) + n \\ = (1 + (n - 1)) + (2 + (n - 2)) + \dots + \left(\left(\frac{n - 1}{2}\right) + \left(\frac{n - 1}{2} + 1\right)\right) + n \\ = n + n + \dots + \left(\frac{2 n - 2}{2} + 1\right) + n = (n + n + \dots + n) + n \\ \end{array}
$$

This has shown that each of the pairs of terms sums to  $n$ , the final number that we removed before the pairing process. Now, let's think carefully about how many pairs we had. Notice that we can number them by looking at the first number of the pair: the first pair was  $(1, n - 1)$ , the second pair was  $(2, n - 2)$ , and so on, and the first number in the last pair was  $\frac{n - 1}{2}$ . Therefore, we had

exactly that many pairs:  $\frac{n - 1}{2}$ . (Remember that  $n$  is odd, so we can rest assured that  $n - 1$  is even, so  $\frac{n - 1}{2}$  is a whole number. We haven't been mentioning that every time, so be sure to go back over what we've done so far and convince yourself that every step and every term we write is valid.) To those pairs, we tacked on a final number,  $n$ , so we can write the multiplication for the sum as follows:

$$
S (n) = \left(\frac{n - 1}{2} + 1\right) \cdot n = \left(\frac{n - 1}{2} + \frac{2}{2}\right) \cdot n = \frac{n + 1}{2} \cdot n = \frac{n^{2} + n}{2}
$$

Wow, this is the exact same formula we found in the case where  $n$  is even! Did this surprise you? It's not obvious at all that we should end up with the same formula, even with the similarity of the approaches to the problem. What does this suggest to you? A mathematician would see such a "coincidence" and wonder whether there is a much simpler and direct route to this result; that is, is there a way we could approach this puzzle that would answer both odd and even cases simultaneously? Since we obtained the same answer, there might be a way to do it. Think about this for a minute before reading on.

# Generalizing: Any  $n$ , without separate cases

It turns out that we already hinted at this other method in our previous discussion of this puzzle. Remember when we wrote the sum forwards on one line and backwards on another line and added them together? Well, when we treated the odd/even cases here, we decided to avoid that method because it seemed to add a couple of extra steps; the "pairing terms" process seemed slightly quicker so we followed that method. What if we went back and reexamined the "add the sum twice" method? We'd find something like this:

$$
\begin{array}{c c c c c c c c c c} 1 & + & 2 & + & \dots & + & (n - 1) & + & n & = & S (n) \\ n & + & (n - 1) & + & \dots & + & 2 & + & 1 & = & S (n) \\ \hline (n + 1) & + & (n + 1) & + & \dots & + & (n + 1) & + & (n + 1) & = & 2 S (n) \end{array}
$$

In this case, we have  $n$  terms in the sum on the third line, and each term is  $(n + 1)$ . Thus,

$$
(n + 1) \cdot n = 2 S (n) \quad \mathrm{an dt he re fo re ,} \quad S (n) = \frac{1}{2} (n + 1) \cdot n = \frac{n^{2} + n}{2}
$$

This is the formula we have obtained already, and we found it here in a way that didn't depend on whether  $n$  is odd or even! (Look back at the steps we just performed and verify for yourself that the odd/even property of  $n$  is really irrelevant.)

# Alternate Solution: Visual Diagram

Before we wrap up this puzzle, we want to mention a geometric approach to the solution. We will relate the sum  $S(n)$  to the area of a square and find a way

to draw the individual terms of the sum  $(1,2,3,\ldots,n-1,n)$  as portions of the square's area. Specifically, let's consider an  $n \times n$  square and draw the sum's terms as rectangles with increasing height, each with width one unit. See the picture below:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/daed2dc09516b4e55996367b4e2f8f987b3b607604e049fe62388ab091d0b71d.jpg)

Now, asking for a formula that yields the sum  $S(n)$  is equivalent to asking what area is covered by all of the rectangles we have drawn inside this square. Trying to add up the individual areas is just restating the puzzle, so we need to think of a way to relate this area to the total area of the square. To do this, let's think about what is left over; that is, how can we describe the area of the square that is not covered by the rectangles? Look at the area strictly above the first  $1 \times 1$  rectangle: it is also a rectangle, with dimensions  $(n - 1) \times 1$ .

Look at the area above the  $2 \times 1$  rectangle: it is a  $(n - 2) \times 1$  rectangle. This pattern continues! Eventually, we have a  $1 \times 1$  rectangle above the  $(n - 1) \times 1$  rectangle and then no area above the last  $n \times 1$  rectangle. What is the total area of all of those rectangles? Well, it looks a lot like the sum  $S(n)$  we are considering, but it is just missing the final term,  $n$ . Now, we can add up the areas of all the rectangles by relating them to  $S(n)$  and then to the square's area:

$$
n^{2} = S (n) + (S (n) - n) = 2 S (n) - n
$$

Therefore,

$$
S (n) = \frac{n^{2} + n}{2}
$$

the same formula we had before!

# Lessons From This Puzzle

Sometimes there are several completely reasonable ways to approach a puzzle and obtain a solution. Some of them might come to mind first but take longer to execute, some might be trickier to find but lead to a solution much more easily, or some might just go nowhere at all! It's often hard to tell beforehand what's going to happen with any particular approach, so just start trying to work through the puzzle and see what happens, keeping track of what you've

tried and what happened so that you can reassess that approach later. This is a fact we need to keep in mind as we advance in our mathematical careers. We can't always know exactly what to do right away. We are bound to get stuck sometimes, or try roads that end up being dead ends. This shouldn't be discouraging; it's just the way it is!

As a subpuzzle, try redoing the "paired terms" for the odd  $n$  case, but instead of leaving off the last term of the sum, try separating the middle term and pairing the numbers from the outside in. Does this give you the same result? Does it seem any easier/faster/different than the approach we used? Alternatively, what if we had handled the even  $n$  case by saying that  $n = 2k$  for some number  $k$ ? What would we do for odd  $n$ ? Does this notation change the procedure at all? Does it make it any easier to handle? Now, can you think of any completely different methods to attack this puzzle?

# 1.4.3 Some Other Sums

# Summing Odd Numbers: Observing a Pattern

While we're on the topic of evaluating sums of integers, let's look at some related problems. First, we will look at an interesting geometric way of interpreting sums of odd integers: let's represent 1 as a  $1 \times 1$  block, and then each successively larger odd integer as a right-angled corner of  $1 \times 1$  blocks that fits perfectly around the previous such figure. Why would we do this? Well, since these are all odd numbers, successive terms differ in size by two, and lengthening the sides of our corner pieces by one each time allows us to snugly fit the corners around each other and build successively larger squares!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/1aeb1325b40dd351dedee61c081e49a1ea7d1a89f5b0c197d3432e0440d4be0c.jpg)

Does this pattern continue? If we believe that it does, how could we prove such a thing? What does this geometric pattern mean in terms of the numerical sums? This is a good question to answer first, because as pretty as the geometric pattern is, it's difficult to work with and manipulate and, ultimately, prove decidedly. In essence, pointing to the first few terms of the pattern and saying, "Look, it works!" does not constitute an official, mathematical proof, so we must find a better way of formulating this problem. This is not to downplay the meaningfulness and beauty of the pattern we noticed; it is quite interesting that it works out that way and it did provide us with some valuable insight into what might be going on, mathematically, but at the end of the day, that's all it can do for us.

# Summing Odd Numbers: Proving Our Findings

Let's try to write the sums represented by the figures above in numerical terms. The corner pieces are made from  $1 \times 1$  blocks, and there are two more blocks in each corner than the previous one, so each square figure that we saw is represented by a sum like

$$
1 \quad \text{or} \quad 1 + 3 \quad \text{or} \quad 1 + 3 + 5 \quad \text{or} \quad 1 + 3 + 5 + 7
$$

and so on. What we notice from these terms is that, indeed, they sum to square numbers:

$$
1 = 1^{2} \quad 1 + 3 = 4 = 2^{2} \quad 1 + 3 + 5 = 9 = 3^{2} \quad 1 + 3 + 5 + 7 = 1 6 = 4^{2}
$$

This is really the pattern that we want to prove; it is equivalent to the geometric pattern we noticed before, but now it is written in terms we can manipulate. Let's think about how can we do this, now. Is this pattern similar to anything we've seen before? Have we proved any results about sums of integers? Of course! Look back at the previous puzzle; we proved (in a few ways, in fact) that

$$
1 + 2 + 3 + \dots + (n - 1) + n = \frac{n^{2} + n}{2}
$$

How might this be useful in this puzzle? The sum formula we proved involves all consecutive integers from 1 to  $n$ , but for the current desired formula, we only want to consider consecutive odd integers.

Before, we used the function  $S(n)$  to represent the sum of the first  $n$  natural numbers, so let's define a function  $T(n)$  to represent the sum of the first  $n$  odd natural numbers. Now, we need to identify the terms of that sum first, and then relate those to  $S(n)$  somehow. Below, we have written out the sums for  $n = 1,2,3$  and 4. Can you find a way to identify the largest term in the sum and express that in terms of  $n$ ?

$$
n = 1: \quad 1, \quad n = 2: \quad 1 + 3, \quad n = 3: \quad 1 + 3 + 5, \quad n = 4: \quad 1 + 3 + 5 + 7
$$

Notice that the last term of the sum is always  $2n - 1$ . This is related to a general fact, that any even integer can be represented as  $2k$ , for some particular integer  $k$ , and any odd integer can be represented as  $2n - 1$ , for some particular integer  $n$ . (We can also express an odd integer as  $2n + 1$  for some integer, as well, right? In this context, it is more convenient to use the  $2n - 1$  form, though.) Accordingly, we want to find a formula for the sum of the first  $n$  odd natural numbers, given by

$$
T (n) = 1 + 3 + 5 + 7 + \dots + (2 n - 3) + (2 n - 1)
$$

Can we relate this sum to  $S(n)$  or something similar? Well, notice that the sum

$$
S (2 n) = 1 + 2 + 3 + \dots + (2 n - 3) + (2 n - 2) + (2 n - 1) + 2 n
$$

contains all of the natural numbers from 1 to  $2n$ , whereas  $T(n)$  only contains the odd natural numbers in that range. Perhaps it would make sense to subtract those two sums and try to find an expression for the sum of the leftover terms:

$$
\begin{array}{l} S (2 n) - T (n) = \left(1 + 2 + 3 + \dots + (2 n - 1) + 2 n\right) \\ - (1 + 3 + 5 + \dots + (2 n - 3) + (2 n - 1)) \\ = 2 + 4 + 6 + \dots + (2 n - 2) + 2 n \\ \end{array}
$$

These terms are all of the even natural numbers from 2 to  $2n$ . How can we find a formula for this sum? Do we need to do any extra work, or can we apply a previously-proven result? Well, since all of the terms are even, we can divide everything by 2 and write

$$
\begin{array}{l} \frac{1}{2} (S (2 n) - T (n)) = \frac{1}{2} (2 + 4 + 6 + \dots + (2 n - 2) + 2 n) \\ = 1 + 2 + 3 + \dots + (n - 1) + n = S (n) \\ \end{array}
$$

and we can be assured that all of the terms in the sum on the far right are, indeed, integers. Not only that, they are all of the consecutive integers from 1 to  $n$ , and we have a formula for that sum! Now, everything is written in terms of formulas we already know, namely  $S(n)$  and  $S(2n)$ , and the one formula that we are seeking, namely  $T(n)$ . The last step now is to rearrange the equation to isolate  $T(n)$  and then substitute what we know about the formulas involving  $S$ :

$$
\begin{array}{l} \frac{1}{2} \left(S (2 n) - T (n)\right) = S (n) \\ S (2 n) - T (n) = 2 S (n) \\ S (2 n) - 2 S (n) = T (n) \\ \frac{(2 n)^{2} + 2 n}{2} - \frac{2 \cdot (n^{2} + n)}{2} = T (n) \\ \frac{4 n^{2} + 2 n - 2 n^{2} - 2 n}{2} = T (n) \\ \frac{2 n^{2}}{2} = T (n) \\ n^{2} = T (n) \\ \end{array}
$$

This looks rather nice, doesn't it? Despite having to muddle through some algebraic steps, we arrived at one of the conclusions we were hoping to prove: that the sum of consecutive odd integers is a perfect square. Not only that, we have managed to prove precisely how that square number is related to the number of terms in the sum. Specifically, a concise way of summarizing the result that we just proved is to say that "the sum of the first  $n$  odd integers is  $n^2$ ."

# Alternate Solution: An Inductive Argument

Could we have proven this in a different way? What if we had not yet proven the result from the previous section, or if we hadn't thought to use it in that way? Could we have somehow taken advantage of the geometric structure of the sums that we noticed at first?

Let's go back and think about this in a slightly different way. Specifically, let's see why adding one more term to a sum produces another square number. Suppose we knew already that one of the sums produced a square number; we know this is true for the first sum  $(1 = 1^{2})$ , but let's assume that this happens for some arbitrary number of terms,  $n$ . That is, let's assume that

$$
1 + 3 + 5 + \dots + (2 n - 3) + (2 n - 1) = n^{2}
$$

for some value of  $n$ . Given this as a fact, what can we subsequently deduce about the next sum? When we add one more term to the sum, we add on the next odd integer,  $2n + 1$ , so let's see how this affects the value of the sum:

$$
1 + 3 + 5 + \dots + (2 n - 3) + (2 n - 1) + (2 n + 1) = n^{2} + 2 n + 1 = (n + 1)^{2}
$$

This seems to confirm our belief, doesn't it? Knowing that one sum behaves in the way we expect it to ("if the sum of the first  $n$  odd integers is  $n^2 \ldots$ ) allows us to deduce that the next sum must also behave in the same way ("…then the sum of the first  $n + 1$  odd integers is  $(n + 1)^{2}$ ". Does this also prove the result? What do you think? Does it feel strange to essentially assume our result to prove something further about it? Is that really what we did?

This proof strategy, using one form of the result to prove something about a "subsequent" form of the result is called mathematical induction. (In general, the meaning of the term "subsequent" depends on the context; here, it means the next sum with one more term.) We will examine this strategy in more detail in the next chapter. For now, we will point out that this is a perfectly sound strategy, but it is highly dependent on the fact that the first sum behaves appropriately:  $1 = 1^{2}$ . That way, the work we did allows us to deduce that the second sum behaves that way ( $1 + 3 = 2^{2}$ ), which then allows us to deduce that the third sum behaves that way ( $1 + 3 + 5 = 3^{2}$ ), and so on… What if we had only been able to prove that second part, but the first sum didn't work out in the way that we wanted? Would we still be able to prove the result? What does this tell you about the induction strategy, in general? We will address some of these issues in more generality later on.

# Generalizing: Arithmetic Series

One final sum problem we want to mention is strongly related to the two that we've seen so far and, in fact, if we had proven this next result first, we wouldn't have had to do anything more to prove the first two! In that sense, this next result is stronger than the first two: the truth of this result implies the truth of the first two. (This is a common notion in mathematical terminology, to label results as stronger or weaker than others.)

For this result, we want to examine a general arithmetic series. This phrase means that we're adding a sequence of numbers where the difference in value between successive terms is a fixed value. Another way of thinking about this is that each term is obtained from the previous one by adding on a fixed constant. Notice that the sums we've examined in the last two puzzles were arithmetic series: in the first sum, each term differed by 1 (or, we added 1 to each term to get the next term), and in the second sum, each term differed by 2 (or, we added 2 to each term to get the next term).

How can we represent a general arithmetic series? Knowing that successive terms must differ by a fixed constant, let's assign that value a variable, say  $c$ , for constant. Now, there must be a first term in the sum, as well, so let's assign that value a variable, say  $a$ , since it's the first letter. We just need one more variable to tell us how many terms there are in the sum, so we will use  $k$ , since we've used that variable before with the same meaning. Now, we can represent the entire sum with just these three variables:

$$
A (a, c, k) = a + (a + c) + (a + 2 c) + (a + 3 c) + \dots + (a + (k - 2) c) + (a + (k - 1) c)
$$

We can use the fact that each pair of successive terms differ by  $c$  to express the second term using the first term,  $a$ , and we can use this to express the third term, and so on, by continually adding  $c$ . We wanted  $k$  terms in total so, thinking of the first term as  $a + 0 \cdot k$ , the final term will be what we obtain after adding  $c$  to the first term  $k - 1$  times (there are  $k$  numbers from 0 to  $k - 1$ , inclusive). Notice, as well, that we introduced the notation  $A(a, c, k)$  to mean "the sum of the arithmetic series with first term  $a$ , constant difference  $c$ , and  $k$  terms". Now, how can we figure out this sum?

Let's employ a strategy that worked before: in the first sum puzzle, we wrote the terms of the sum forwards and backwards and added them together. This allowed us to create many pairs of terms that all had the same sum, reducing the sum to a multiplication. What happens when we do that here? We see that

$$
\begin{array}{c c c c c c c} a & + & (a + c) & + \dots + & (a + (k - 1) c) & = & A (a, c, k) \\ (a + (k - 1) c) & + & (a + (k - 2) c) & + \dots + & a & = & A (a, c, k) \\ \hline (2 a + (k - 1) c) & + & (2 a + (k - 1) c) & + \dots + & (2 a + (k - 1) c) & = & 2 A (a, c, k) \end{array}
$$

Again, we find that each pair of terms has the same sum, and in this case that sum is  $2a + (k - 1)c$ . How many such pairs are there? There are exactly  $k$  terms, of course! (That's why we chose to use that variable, even.) Representing the sum as a multiplication, we can now deduce that

$$
2 A (a, c, k) = k \cdot (2 a + (k - 1) c)
$$

and therefore,

$$
A (a, c, k) = \frac{k}{2} \cdot (2 a + (k - 1) c)
$$

Does this look like what you expected for a result? Did you have any expectations? It sometimes helps to try to "guess" what might happen, and then see if and how the results match up with your intuitions.

# Applying the General to the Specific

We mentioned before that the sums we examined previously were both arithmetic series, so does this formula yield the correct value for those sums? In the first puzzle, the values of the variables were  $a = 1$ ,  $c = 1$ , and  $k = n$ ; plugging in those values yields

$$
A (1, 1, n) = \frac{n}{2} \cdot (2 + (n - 1)) = \frac{n}{2} \cdot (n + 1) = \frac{n^{2} + n}{2}
$$

which is, indeed, what we derived. What about the second sum? What were the values of the variables? Is the formula correct? We will leave it to you to verify that result.

# Another Representation

As a final comment for this puzzle, we want to discuss one other way of representing the formula we just derived. Look at the term in the parentheses and write it slightly differently:  $a + (a + (k - 1)c)$ . Do those terms look particularly interesting? Well, they are the first and last terms of the sum, respectively. This gives us a different way of stating the sum formula we derived:  $A(a,c,k) = \frac{k}{2} (a + b)$ , where  $a$  is the first term of the sum and  $b$  is the final term. This version of the formula can be more convenient, and lets us verify some sums more quickly.

For instance, if we told you to find the sum of an arithmetic series with first term 12 and last term 110 and 14 terms in total, you wouldn't have to bother figuring out the constand difference  $c$ ; instead, you could simply find the sum:  $\frac{14}{2} \cdot (12 + 110) = 854$ . Much faster, right? What is the value of  $c$  for that arithmetic series? Is there an easy way to find  $c$ , given  $a$  and  $b$  and  $k$ ?

# Lessons From This Puzzle

It can be helpful to be aware of previous results, since they can make other proofs shorter and easier. Sometimes, it's difficult to recognize when a particular result would be useful or, even if you recognize its use, it may be difficult to figure out how to apply it. In this case, we recognized that we had proven a sum formula before, so it made sense to at least try to figure out how it might be useful in proving a different sum formula. However, there was a completely different way to prove the formula for the sums of odd integers that didn't depend on our previous result. That hints at a more general result, and a curious mathematician would try to explore the problem in more generality, which we did by looking at an arbitrary arithmetic series. In the end, though, we used multiple strategies for the first two sum formulas, and applied just one of those to the general series problem. Could we have used the strategies in other settings? Could we prove the first sum formula by induction, as well? Could we prove the second sum formula using the forwards/backwards writing technique? Try to use those strategies and see what happens. It may seem strange or unnecessary to you, because we already have the results, but seeing how different techniques work in different settings is a valuable lesson. In mathematics, it is often as

hard (or harder, even) to figure out which strategy to use in a proof as it is to figure out the result to be proven. With that in mind, it's helpful to practice particular strategies to develop an intuition for when they will work and when we need to try something else.

# 1.4.4 Friend Trends

# Problem Statement

This puzzle is based on the following anecdote concerning a Hungarian sociologist and his observations of circles of friends among children.

"In the 1950s, a Hungarian sociologist S. Szalai studied friendship relationships between children. He observed that in any group of around 20 children, he was able to find four children who were mutual friends, or four children such that no two of them were friends. Before drawing any sociological conclusions, Szalai consulted three eminent mathematicians in Hungary at that time: Erdos, Turan and Sos. A brief discussion revealed that indeed this is a mathematical phenomenon rather than a sociological one. For any symmetric relation R on at least 18 elements, there is a subset S of 4 elements such that R contains either all pairs in S or none of them. This fact is a special case of Ramsey's theorem proved in 1930, the foundation of Ramsey theory which developed later into a rich area of combinatorics."

(Quoted from lecture notes by MIT Prof. Jacob Fox.)

The puzzle we now present follows the same idea but with some smaller numbers. Specifically, we are interested in investigating the smallest size of a group of people that necessitates a subgroup of three people that are all mutually friends or all mutually enemies.

Assume that amongst a group of people, any two of them are either friends or enemies, and that these are the only possible relationships (i.e. no acquaintances or frenemies or anything like that). Take a group of four people and try to assign a designation of friend/enemy to each pair so that there are no groups of three people that are all friends or all enemies. Can you do this with a group of five people? How about six? Seven? Ten? Twenty? Try to identify a cutoff number for the size of the group where you can be guaranteed to find a subgroup of three people that are all friends or all enemies.

Think carefully about this before turning the page and reading our solution.

# Representing The Problem Effectively

Did you figure it out? This is a very tricky puzzle, so don't feel bad if you struggled with finding a solution. In fact, we think that investigating this puzzle is just as important as actually finding an answer, because there are several ways to approach this puzzle and it's always interesting to see how different people interpret the puzzle.

Let's start by discussing how to even write down/draw/talk about this situation. For any of the questions posed by this puzzle, we are meant to consider a group of people with a certain size and think about the relationship between any two people in the group. To tackle this puzzle, we will need a way to represent all of these relationships in an efficient and easily-interpretable way, so that we can verify the desired property about the subgroups of size three. Specifically, we want to easily identify whether or not there are any subgroups of size three that are homogeneous, in the sense that the three people are all friends or all enemies. From now on, we will refer to this as the "homeogeneity property".

How could we do this? How could we represent the people and their relationships? We could number the people in the group, then write out a list of all pairs of numbers and label each pair with  $F$  (friend) or  $E$  (enemy). Let's try doing that for a group of four people:

12F 13E 14F 23F 24E 34F

Does this friend/enemy group satisfy the homogeneity property? It's not so easy to verify, is it? For one, the numbering makes it difficult to find subgroups of size three, and to verify the property, we need to check all such subgroups to make sure they are not  $EEE$  or  $FFF$ . Perhaps we should find a better way of representing the information of the puzzle before attempting a solution. Can you think of a more visually pleasing way of representing whether two people are friends or enemies, for all possible pairs in the group? Specifically, we would like to have a relatively efficient way of looking for subgroups of size three and recognizing whether they are all friends or all enemies.

Let's try representing each person in the group as a single dot and connecting two people with a type of line dependent on whether those two are friends or enemies. For example, let's connect two people that are friends with a blue line and two people that are enemies with a red line (and remember that any two people are either friends or enemies and nothing else, so each pair of dots must have some colored line between them). For example, the following diagram depicts the relationships we assigned in the line above, with the other notation:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/0742ad736fa3716f05896f27115da8de019c191d2cfbf960e7d47ceb5fc3b2e0.jpg)

Now, what would we be looking for to verify the homogeneity property? We want three dots (three people) so that all of the lines between them are either blue (all friends) or red (all enemies). That's right—we're looking for monochromatic triangles! (Note: we want the vertices of the triangle to be one of the original dots we drew; that is, we don't want a vertex to be a place where two lines cross. Also, monochromatic comes from the Greek words monos and khroma, meaning "one" and "color", respectively.) This representation is much easier to interpret visually and makes checking for a solution much faster.

Based on the diagram above, we have addressed the question regarding four people: we have found a particular arrangement of friends and enemies so that there are no subgroups of size three that are either all friends or all enemies. That is, there are no subgroups of size three with the homogeneity property. This shows that such a situation can be achieved with four people, so we are not guaranteed to have a group with the homogeneity property amongst four people.

Can you find another such arrangement? How can you be sure that it's a different arrangement than the one we've already seen? How many different arrangements are there that satisfy the homogeneity property? Now, try drawing an arrangement that does have a subgroup of size three with the homogeneity property. What does that look like? How many of these arrangements are there?

# Restating the Problem for  $n = 5$

Let's move on and think about a group of five people. Our diagram changes because we have five dots now, and this means there are more lines to draw. Still, we are looking to fill in all of the connections with a blue or red line and make sure there are no monochromatic triangles. Is this possible? (Hint: try arranging the dots into a regular pentagon shape and then filling in the lines.) Try to draw this a few times and see if any of your arrangements work. It may also help to draw in a few lines randomly and then guide your choices from there on out by making sure that you don't create any triangles when you add a new line.

Did you figure it out? Turn the page to see how we did it …

# Solution for  $n = 5$

Here is our arrangement of red/blue lines amongst five dots that completely avoids the homogeneity property:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/67e8851945c5037142ed95825032f26d633130db84bc5847c8cb21ce20195b15.jpg)

Notice the elegant symmetry of the figure: all of the red lines are on the outside of the pentagon, and all of the blue lines are in the interior of the shape. The reason this works is that any triangle using three dots as vertices must use either two outside lines and one inside line, or two inside lines and one outside line. (Think about that: why couldn't we use three inside lines or three outside lines to make a triangle?) This guarantees that any triangle we draw will use two differently-colored lines, so this figure does not have the homogeneity property! Of course, we could look at all possible triangles inside the diagram and make sure none of them use one color. How many such triangles are there? How quickly could you check all of them by hand? Is it easier to do that, or to notice the inside/outside property that we mentioned above?

Perhaps you found a solution that doesn't look like the drawing we have. How can you tell whether it's actually a different figure? How many blue and red lines are there in your diagram? In ours? Try redrawing your figure by moving the dots around but maintaining the relationships between the dots (i.e. the color of line drawn between any two of them). Can you make your figure look like ours? What do you think this says about the number of solutions to this puzzle?

# What about  $n = 6$ ?

Okay, now we're ready to think about what happens when we have six people. In terms of the dots and lines, we're looking to draw all possible connections between six dots with either blue or red lines and ensure that there are no triangles with the same line type. Before you start drawing, try to think about the solutions to this puzzle when we were working with four and five dots. What did those solutions look like? What was the number of lines that we had to fill in? How many will we have to draw this time? Can we try to make this figure look like the solution for five dots? It sometimes helps to think about how a solution to a current puzzle might be similar to previous work. Now, try to draw this figure and see what happens.

Did it work? Why not? Where did you run into trouble? How many lines could you draw before you were forced to make a monochromatic triangle? That is, how many lines could you fit into the figure before the next one you drew would make a monochromatic triangle, no matter whether it was blue or red? These are just tangential questions, in a way, to solving this particular puzzle, but they're worth thinking about because they're interesting in their own right and they may guide us toward a solution for this puzzle or a generalization thereof. For illustration's sake, here is one of our attempts at trying toassing red and blue lines in a diagram. Why did we stop here? How many more lines need to be added? Can we add any of them?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/831e8c40380a78967d35d14f253ccb96edcbcb5c40c5de340cbc8d0d0a57595e.jpg)

The situation we face now is interesting because it's of the opposite nature to the kind of situations we faced before. With four and five dots, we wanted to show that it was possible to arrange all of the lines to make no monochromatic triangles. To show that, we just had to do it! Exhibiting a particular figure with the desired property was sufficient to show that it was possible to achieve the property we wanted. With six dots, though, it seems like it is not possible to arrange the lines so that there are no monochromatic triangles. How can we prove that this is a fact? It is tempting to say that we should just look at all possible arrangements of the lines and argue that there is at least one monochromatic triangle in every single one of them. Is this feasible? How many arrangements of the lines are there? How could we easily find a monochromatic triangle in any given diagram? Remember how we did this with the figure with five dots? We noticed that any triangle would have to use at least one line from the outside and at least one line from the inside, which guarantees right away that any triangle has two types of lines. Could we do the same thing here, and identify some property that guarantees a triangle?

The issue is that there are too many possible arrangements of the lines in the diagram with six dots for us to check all of them by hand! There are 15 lines to be drawn, each of which could be either blue or red, so it seems like there are  $2^{15}$  possible arrangements. This is a big number! (In actuality, there are slightly fewer possibilities because some of them are equivalent in some sense; more technically, they are called "isomorphic".)

# Solution: Working with an Arbitrary Diagram

We need to be more clever with our argument so that we can prove a property about any diagram without drawing a particular one. That is, we need to find some fact, some property that is true of all of the possible diagrams with six dots, that will still allow us to deduce that there must be a triangle. One way to approach this is to think about drawing the lines in one small section of the diagram. Specifically, let's take any of the six dots and consider the five lines coming out from that dot. For example, we might have something like this:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/a260b476e300d68faffb9b3a9fca3a90cbfb49d3abf0c32ff208a6d41bc8fb5b.jpg)

How many are blue and how many are red? This is partially a trick question: we're not really considering any particular diagram (like the one above) but rather trying to find a fact about all possible diagrams. Thus, we can't answer that question too specifically. Pretend we are presented with an arbitrary diagram, and we have to make an argument that will work no matter what that diagram was.

Here's what we can say: There must be at least three blue lines or at least three red lines. Do you see why this is true? The only way this wouldn't be true is if there were two (or fewer) blue lines and two (or fewer) red lines leaving this particular dot, for a total of four (or fewer) lines. We know that all possible connections must be drawn, though, so there should be five! (This argument is an example of a concept known as the Pigeonhole Principle. The idea is that we can't place five objects, of two different colors, into two different boxes without putting three objects of one color into one box. This is an incredibly useful strategy with these types of problems, and we will examine the principle in much greater detail later on in Section 8.6.)

So where do we stand? We started with any of the figures with six dots and all lines filled in, and focused on one particular dot; coming out from this dot, there must be three blue lines or three red lines. It could be either color, so we can't just assume it's red and follow an argument that way; we can do that, but we have to come back to this point afterwards and see what would change if the three lines were blue. So let's do that: let's examine all of the figures where there are three red lines exiting this particular dot. Where can we go from there? We haven't yet assumed anything about the other lines in the figure, so let's look at what those could be. Examine the picture below to see what line colors we have assumed exist so far:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/de69a20e9047a7ce46a429232356eabec20cb84ffa00120e1ea07330c203e8f4.jpg)

Now, what lines could be added to this diagram that would avoid making a triangle of one color amongst three dots? We can't necessarily make any assumptions about the lines coming out from the two dots that are isolated in the picture, so let's focus on the three dots on the bottom. What color could the lines among those be? Well, if any of them are red, that would form a monochromatic triangle between the two endpoints of that line and the original dot we focused on! That would be a problem.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/e324c4291b1236a3d8d79a3ba36b49b971dbfe6d8be8508c41730c7c8709c544.jpg)

Okay, the only way to avoid that is to make all of those lines blue. But that would make a blue triangle among those three dots! Wow, it looks like we cannot avoid making a monochromatic triangle no matter what we do!

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/e990fc90087aad173f6f7aeeeccf9ba17b7246a2c3c21fcc1a21f7cde4c877fa.jpg)

Let's go back to our Pigeonhole argument and reassess the situation. What if the three lines of the same type that were guaranteed by the argument were blue instead of red? Well, nothing would really change, right? We would still

be stuck, in terms of adding new lines among the three dots on the bottom of the figure:

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/f425f0b89dc91c3c3ed9e6a6836c93a751673bf860c5d5f75c3f17b3e232c623.jpg)

If we include any blue lines, that forms a monochromatic triangle with the original dot, and if we make all of them red, that forms a monochromatic triangle there! In this sense, the two arguments we followed after the Pigeonhole argument were identical; if we were to replace every instance of the word "blue" with "red" and vice versa, we would have the same argument. Sometimes, mathematicians will use this situation to shorten a proof and just say that "without loss of generality, the three lines are red." This is usually taken to mean that if we were to make the other choice instead (i.e. if the lines were blue) then the further argument would have an identical structure, mathematically, so we can save space and time by not writing the same words over again. This is so common, in fact, that you might sometimes see this phrase, "without loss of generality", abbreviated as WLOG or WLOG.

# Solution: Summarizing Our Results

What have we accomplished so far? We produced specific diagrams that showed we could arrange the lines among four and five dots so that we can avoid a monochromatic triangle, and we argued that any diagram of lines with six dots must have a monochromatic triangle. In terms of the friends/enemies formulation of the puzzle, this means that any group of six people must have a subgroup of three people that are all friends or all enemies.

Notice how helpful it was to recast the puzzle into this dots/lines formulation; it allowed us to completely forget about the social context of the problem (which can be distracting, in a way) and let us simplify our terminology and notation (we went from labeling pairs of people as "friends" or "enemies" to simply drawing one line between two dots). This is a very useful strategy: extracting the inherent structure of a puzzle—the underworkings, the relationships between the elements, how they interact, etc.—and rewriting everything in terms of just those parts. This can make the puzzle easier to understand and tackle, and it can guide us into devising better notation. What if we had continued to solve this puzzle with the  $13F,23E,\ldots$  notation? That may have eventually worked, but it would have been much harder!

One of this puzzle's original questions was to identify a cutoff number so that any larger group of people would necessarily have this subgroup property. Do you think we have accomplished that? Have we identified a cutoff? Could six be that number? Why or why not? In any group of seven people, there's a smaller group of six people, and then our work above proves that there must be three mutual friends/enemies among that group! Certainly, this works for any group of people of size larger than six, so this must be that precise cutoff point we were looking for. This is an analogous result to the one mentioned in the original statement of the puzzle, where the Hungarian sociologist noticed this phenomenon for subgroups of size four. That problem is much more difficult to solve, so we handled a smaller, simpler case here. Both of these results are related to a larger class of problems known as Ramsey Theory. This branch of combinatorics and graph theory works with identifying these kind of "cutoff points" where, as the size of some structure (like a group of people) grows and grows, there is eventually a point where we can be guaranteed to find a subgroup with a certain property (three mutual friends/enemies). What was at first thought to be a sociological phenomenon turned out to be a rigorous mathematical fact. How about that!

# Generalizing: Questions for You

Let's pose some interesting and related questions before moving on. What if we had been looking for homogeneous groups of a different size, like four or five or twelve? Certainly, we would have to have a larger group of people, overall, to guarantee finding such a subgroup. Can we always do this? That is, given any desired subgroup size, can we identify a cutoff point in the way that we did here? Can you figure out how to prove that such a cutoff point must exist, even without finding the particular number? Furthermore, what if we allowed for a third possibility: friend, enemy, unacquainted. Could we answer similar questions about homogeneous groups? These are all questions related to Ramsey Theory and some of them are quite difficult to answer and took mathematicians many years to address. Many of these kinds of simply-stated questions are still open, unsolved problems! Don't be discouraged if you don't make any progress on these questions. We believe that even attempting to answer them and thinking about the issues therein is meaningful and beneficial enough, in itself.

# Lessons From This Puzzle

This puzzle brought up several difficulties. First, we had to find a way to interpret the puzzle in a meaningful way so that we could even address the questions it asked, and this involved coming up with appropriate notation to represent the elements of the puzzle. This is an important part of mathematical problem-solving, particularly for a puzzle like this that doesn't incorporate the notation and visualization as part of the problem statement.

Second, to identify six as the group cutoff size, we had to somehow prove that

something is not possible, but the number of possible configurations to examine was way too large to examine each one individually. This happens frequently, particularly in problems related to computer science and algorithms. To address this, we had to employ a strategy far more clever than mere brute force, and it's not always clear what strategy that should be. Here, we essentially started to try to fill in the lines as if it was going to work out, and then realized that we reached a point that was impossible to fix. Proving that something is possible can amount to just showing an example of that phenomenon (which we did with the groups of size four and five), but proving something is impossible can be much trickier and require some context-dependent ingenuity.

Lastly, we saw that it can be interesting to think of questions closely-related to the puzzle at hand that simply tweak one or more of the conditions of the problem. What if we look for larger subgroups? What if we allow for more types of lines? How does this change the results? Exploring the boundaries of puzzles by changing the conditions like this can lead to new mathematical discoveries and techniques, and keeps mathematicians actively searching for new knowledge and ways of sharing that knowledge.

# 1.4.5 The Full Monty Hall

# Problem Statement

This puzzle involves only basic probability and arithmetic, yet it has continually stumped some very smart people over the years. In fact, a debate erupted in 1990 when Marilyn vos Savant published the puzzle and her solution in her column in *Parade* magazine, with many people (mathematicians included) writing her letters to agree or disagree with her (correct, we should say) answer. Let's see what you think!

Suppose you're on a game show and you're given the choice of three doors. Behind one door is a car; behind the others, goats. The car and the goats were placed randomly behind the doors before the show. The rules of the game show are as follows: After you have chosen a door, the door remains closed for the time being. The game show host, Monty Hall, who knows what is behind the doors, now has to open one of the two remaining doors, and the door he opens must have a goat behind it. If both remaining doors have goats behind them, he chooses one at random. After Monty Hall opens a door with a goat, he will ask you to decide whether you want to stay with your first choice or to switch to the last remaining door. Imagine that you chose Door 1 and the host opens Door 3, which has a goat. He then asks you "Do you want to switch to Door Number 2?" Is it to your advantage to change your choice?

Of course, we are assuming that you would prefer to win a car over a goat, and that you want to maximize the chances of winning that one car. Also, we

# 1.4. QUIZZICAL PUZZICLES

should mention that this puzzle takes its name from the host (Monty Hall) of a TV game show called Let's Make a Deal.

So what do you think? Imagine yourself standing on the stage in front of a TV audience, when Monty Hall asks you, "Do you want to switch to the other door?" What do you do?

Think carefully about this before turning the page and reading our solution.

# Solution: Always Switch

We'll state the answer right away because it might shock you: you should definitely switch your choice! Reasoning this out and obtaining this solution is the tricky and confusing part, and establishing the right way to interpret the puzzle is part of what has confused solvers for so long.

# Analyzing an Incorrect Argument

Let's start by showing you an incorrect "solution" that claims switching is irrelevant. Imagine you and your friend heard this puzzle, and he/she gave you this explanation. How would you respond? Would you agree? Why? If not, how would you tell them they're wrong? What is wrong with their explanation?

Well, after I pick a door and Monty Hall shows me a goat behind another door, then there are only two doors that are unopened. One of them has a goat and the other one has a car, so there's a 50/50 chance that the car is behind my door and a 50/50 chance that the car is behind the other door. Therefore, it doesn't matter whether I switch or not, so I might as well stick with the choice I already made.

Are you convinced by this? Let's try to figure out what's wrong with this argument. The main question we need to address to solve this puzzle involves figuring out two numbers: the probability of winning the car by sticking with our first choice, and the probability of winning the car by switching to the other door. We need to identify these two values and compare them; only then can we definitively address the question of the puzzle.

Now, the argument above seems to address both of these probabilities by saying they are both  $50\%$ , but there is a problem with how the arguer interprets the situation. What do you think the chances are of winning the car by staying with the first choice? In essence, this is equivalent to not even having Monty Hall show us another door with a goat behind it. If we are going to stay with our first choice of a door, we might as well not even see a goat behind a different door since that doesn't affect the object behind the door we originally chose. Let's restate this idea to reiterate its importance:

Since there are three doors, the chances of picking the right one first is  $\frac{1}{3}$ , and seeing a goat behind another door doesn't change that fact.

This is the problem with the above argument and, in fact, one of the most common mistakes made in "solving" this puzzle.

The next step is to figure out the probability of winning the car after switching and compare this to  $\frac{1}{3}$ . There are several ways to accomplish this, in fact. One concise way is to reason that switching results in success (winning the car) whenever we first choose a door that happens to have a goat. In those cases, the two unchosen doors conceal a goat and a car, in some order, and the game show host is forced to show us the goat; thus, the car is concealed behind the

remaining door, and switching results in a win. Since we will choose a door with a goat behind it  $\frac{2}{3}$  of the time, we conclude that switching results in a win  $\frac{2}{3}$  of the time.

# Enumerating the Possibilities

These explanations might seem unsatisfactory to you, so let's try to actually enumerate (explicitly count) the possible arrangements of the goats and the car behind the doors and write down what happens if we switch in each case. The first thing to notice is that the numbering of the doors is irrelevant since all choices are made randomly; that is, whether the car lies behind the door with "#1" printed on it, or "#2" or "#3", the results will be the same: we still have a  $\frac{1}{3}$  chance of identifying that door with the car. Accordingly, we can assume WOLOG (remember that this acronym means "without loss of generality") that the car lies behind Door 1 and the goats stand behind Doors 2 and 3. Of course, this is our imposition on the problem, and we can't say that the gameplay knows this (otherwise he/she would pick Door 1 every time!). With this arrangement in mind, let's examine all 3 choices we could make at the beginning, and see what switching or staying would accomplish in each case:

<table><tr><td>Door #1</td><td>Door #2</td><td>Door #3</td></tr><tr><td>Car</td><td>Goat</td><td>Goat</td></tr></table>

<table><tr><td>Our choice</td><td>Host shows</td><td>Result of switching</td><td>Result of staying</td></tr><tr><td>Door #1</td><td>Door #2 or Door #3</td><td>Goat</td><td>Car</td></tr><tr><td>Door #2</td><td>Door #3</td><td>Car</td><td>Goat</td></tr><tr><td>Door #3</td><td>Door #2</td><td>Car</td><td>Goat</td></tr></table>

One important observation is that when we initially choose the door with the car, the host could choose either of the remaining doors to show us a goat, and he makes that choice randomly. For either choice, though, we lose by switching and win by staying. Still, those situations only occur  $\frac{1}{3}$  of the time, i.e. after we chose the door with the car behind it, initially. Since each of the rows of the table above is equally likely, we can conclude that  $\frac{2}{3}$  of the time we win by switching, while  $\frac{1}{3}$  of the time we win by staying.

Does this puzzle make more sense now? Try posing this puzzle to some of your friends and family and gauge their reactions. How many produced the correct answer? How many could correctly explain it? How many erroneously said "it doesn't matter"? How many had already heard the puzzle before?

# Generalizing to Many Doors and Cars

Let's look at a generalization of this game show situation and try to prove whether or not switching is also a good idea there. Specifically, let's say there are  $n$  doors and  $m$  cars in total, so there are  $n - m$  goats. To analyze this, we need to specify that  $m \leq n - 2$ . Think about why this is necessary:

- If  $m = n$  were true, then we always win all the time, whether we switch or not. Hence, there's nothing to prove in this case.  
- If  $m = n - 1$  were true, then whenever we happen to choose the door with the only goat behind it at first, the host is unable to show us a door with a goat. Hence, the game is ruined and the question of switching is moot.

Now, with these variables in place, here are the new rules of the game: We choose one of the  $n$  doors. The host identifies all other doors that conceal a goat and randomly chooses one of those doors and opens it. We then have the option to stick with our original choice or switch to any of the other doors, of our choosing. What is the strategy now? Should we switch? Should we stay? Does the answer depend on  $m$  and  $n$  at all? How?

We will approach this modified puzzle in much the same way as the first approach to the version above. We can't possibly enumerate all situations in this version because  $m$  and  $n$  are unknown variables. Instead, we need to apply logical reasoning to deduce the probabilities associated with winning when staying and when switching. The first key observation is exactly the same as one we made before: the probability of winning when staying is exactly the probability of choosing a door concealing a car at first. When we choose a door with a car behind it first, no matter what other door the host reveals, staying on our current choice results in a win. Furthermore, when we chose a door concealing a goat at first, staying results in a loss. Thus, the only way to win while sticking with our first choice is by choosing one of the  $m$  doors with a car behind it out of the  $n$  total doors. This probability is precisely  $\frac{m}{n}$ .

To identify the probability of winning after switching, we need to think carefully about the probabilities associated with each step. Notice that since  $m \geq 2$  is a possibility, it may be that we chose a door with a car at first, switched our choice, and still won. With that in mind, we should examine two different cases, here: (a) what happens when we choose a door with a goat first, and (b) what happens when we choose a door with a car first. Each case will leave a different number of options for the host and, subsequently, a different number of ways for us to switch and win, so we should handle them separately.

(a) Let's say we first chose a door with a goat. There are now  $n - m - 1$  doors remaining that conceal goats, and the host randomly picks one of those to open. From our perspective, switching leaves us with  $n - 2$  options (we can't switch to the opened door or our first choice),  $m$  of which are cars. Thus, the probability of winning after switching, in this particular case, is  $\frac{m}{n - 2}$ .

Since there were  $n - m$  goats originally, this case occurs with a probability of  $\frac{n - m}{n}$ . Therefore, the contribution of this case to the total chances of winning after switching is

$$
{\frac{n - m}{n}} \cdot {\frac{m}{n - 2}} = {\frac{n m - m^{2}}{n (n - 2)}}
$$

(Think about why we multiplied these probabilities together. Why did we need to do that at all? Why didn't we add them together? What will we do

to combine this probability with the probability associated with the next case?)

(b) Next, let's say we first chose a door with a car. There are now  $n - m$  doors remaining that conceal goats, and the host randomly picks one of those to open. From our perspective, switching leaves us with  $n - 2$  options,  $m - 1$  of which are cars. Thus, the probability of winning after switching, in this particular case, is  $\frac{m - 1}{n - 2}$ .

Since there were  $m$  cars originally, this case occurs with a probability of  $\frac{m}{n}$ . Therefore, the contribution of this case to the total chances of winning after switching is

$$
{\frac{m - 1}{n - 2}} \cdot {\frac{m}{n}} = {\frac{m^{2} - m}{n (n - 2)}}
$$

Since these two cases occur separately (i.e. they both can't occur simultaneously) we should add these probabilities together. This will tell us the totally probability of winning a car after switching from our original choice to another random door:

$$
\begin{array}{l} \frac{n m - m^{2}}{n (n - 2)} + \frac{m^{2} - m}{n (n - 2)} = \frac{n m - m^{2} + m^{2} - m}{n (n - 2)} \\ = \frac{n m - m}{n (n - 2)} \\ = \frac{m (n - 1)}{n (n - 2)} \\ = \frac{m}{n} \cdot \frac{n - 1}{n - 2} \\ \end{array}
$$

Now, there's a reason we chose to write the fraction the way we did here. We want to compare this probability to the chances of winning after staying with our first choice of door, which was  $\frac{m}{n}$ . We see that the probability of winning after switching is, in fact, a multiple of that other probability, and the factor  $\frac{n - 1}{n - 2} > 1$  because  $n - 1 > n - 2$ . Written in inequality form:

$$
\frac{m}{n} <   \frac{m}{n} \cdot \underbrace {\frac{n - 1}{n - 2}}_{> 1}
$$

Therefore, the chances of winning after switching are strictly better (i.e. not equal to, always better) than the chances of winning after staying. We should always switch to another random door!

# Applying the General to the Specific

The original version of this puzzle is the specific case where  $n = 3$  and  $m = 1$ , so we can check that our result makes sense. The formulas we derived tell us the chances of winning after switching are  $\frac{1}{3}$ , as we found previously, and the chances of winning after staying are  $\frac{1(3 - 1)}{3(1)} = \frac{2}{3}$ , as we found previously. Neat!

# Generalizing: Questions for You

What happens for other values of  $m$  and  $n$ ? Can you make the "always switch" strategy significantly better than the "always stay" strategy? That is, how large of a difference can we get between the probability of winning associated with the two strategies? How small can we make it? Is it possible to make them equal?

Another modified version of this puzzle is based on the host opening more than 1 door, revealing multiple goats. Specifically, suppose there are  $n$  total doors,  $m$  of which have cars, and that, after your first choice, the host randomly identifies  $p$  doors with goats and opens all of those, after which you may choose to switch to any of the remaining  $n - p - 1$  doors, or stick with your first pick. What is the best strategy in this game? What sorts of conditions do you need to impose on  $m, n$  and  $p$  to ensure we can even play the game at all? Should you always switch, or does it depend on  $p$ ? How large/small can we make the difference in the chances of winning for the "always switch" and "always stay" strategies?

# Lessons From This Puzzle

Intuition and quick decisions are sometimes helpful in guiding us to a solution, but it is always important to check those snap judgments to make sure they are based on sound, rational arguments. In this puzzle, saying that the chances were "50/50" may be made sense at first, but after thinking about it more carefully and reassessing the situation, we realized there was a flaw in the argument. Specifically, that flaw had to do with interpreting the puzzle correctly and following the steps of the game show in the appropriate order. It was best to assess the probabilities in the order in which they occur as the game is played, rather than starting from an ending position and looking backwards.

In general, puzzles involving probability are quite tricky and require careful analysis, so it's important to keep that in mind. A larger lesson here, as well, is that oftentimes the most simply stated puzzles are the trickiest to figure out. Never be fooled into thinking that a puzzle will be easy to solve because the statement is short or easy to understand!

For more information about the Monty Hall problem and the psychology involved, check out this link to the following paper: Krauss, Stefan and Wang, X. T. (2003). "The Psychology of the Monty Hall Problem: Discovering Psychological Mechanisms for Solving a Tenacious Brain Teaser", Journal of Experimental Psychology: General 132(1).

# 1.5 It's Wise To Exercise

We'll conclude this chapter with a handful of exercises that incorporate some of the ideas we've discussed so far, or give you a chance to practice your previous knowledge, or just keep you on your mental toes. Attempt as many as you can, and discuss potential solutions with some friends to see what they think. At the

end of the day, though, just think of this as a way to keep your brain muscles limber!

Problem 1.5.1. A fly is resting on the front of a train that is hurtling forward at 60 kilometers per hour. On the same track, 300 kilometers straight ahead, another train is hurtling towards the first train at 60 kilometers per hour. At that moment, when the trains are  $300\mathrm{km}$  apart, the fly takes off at  $90\mathrm{km}$  per hour. He continually flies back and forth between the trains, flying just above the track and instantaneously turning around when he reaches a train. What is the total distance traveled by the fly before the two trains crash together, squishing the fly between them in the process? How did you figure this out? Try to generalize the situation to when one train travels at  $a\mathrm{km/hr}$ , the other at  $b\mathrm{km/hr}$ , and the fly at  $c\mathrm{km/hr}$ .

Problem 1.5.2. A government mint is commissioned to produce gold coins. The mint has 20 machines, each of which is producing coins weighing 5 grams apiece. One day, the foreman of the mint notices that some coins are light, and after assessing the machines, he finds that one of them is making 4 gram coins, while the other 19 machines are working perfectly. He decides to use the situation to his advantage and identify the smartest employee, to be promoted next. He tells the workers that exactly one machine is producing coins that are 4 grams, and that they need to determine which machine is broken. You, as an employee, are allowed to take one, and only one, reading on a scale. You can place any number of coins from any machines, of your choosing, but you must pool them together and will only see the total weight of all the coins, as a number in grams. How do you do this so that you can determine precisely which machine is the broken one?

Problem 1.5.3. In a game of chess, the Queen is allowed to move vertically, horizontally, or diagonally, in any direction, for any number of spaces. Try to place 8 Queens on a standard  $8 \times 8$  chessboard so that none of the Queens is attacking any of the others (that is, no Queen can make one move and capture another one immediately). Exhibit a way to do this or show that it is not possible. If you found a way, how many different ways do you think there are to do so? If you showed it isn't possible, find a smaller number of Queens to place so that it is possible. What is the maximum number of Queens you can possibly place on the board in this way?

Problem 1.5.4. Start with a standard  $8 \times 8$  chessboard and remove 2 squares at opposite corners, say the top-right and bottom-left. Can you cover all of the remaining squares with  $2 \times 1$  dominos so that none of the dominos overlap? (Note: this is known as a tiling of the board.) Why or why not? What about in the general case, with an  $n \times n$  board? Does your answer depend on  $n$  at all? How so?

Problem 1.5.5. Consider a standard  $8 \times 8$  chessboard, with two adjacent squares removed from each corner. (See picture.) Can you tile this board with T-shaped tetrominoes? (See picture.) If so, how? If not, why not?

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/f9522ada0603d0bf91e1af78a3c10057f150f36baba45569cce6f8f9eb986c97.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/44fa662e-a015-46fb-8608-ecf0fb518d19/9615383d761f7c7909f307f08c4327bceba248873b6984dde985c751e3ebd5ee.jpg)

What about in the general case, with an  $n \times n$  board? Does your answer depend on  $n$  at all? How so?

Problem 1.5.6. Given a real number  $x$ , we let  $\lfloor x \rfloor$  denote the largest integer smaller than (or equal to)  $x$  and we let  $\lceil x \rceil$  denote the smallest integer greater than (or equal to)  $x$ . For instance,  $\lfloor 6.02 \rfloor = 6$  and  $\lfloor 6.99999 \rfloor = 6$  and  $\lfloor 6 \rfloor = 6$  and  $\lvert -6.5 \rvert = -7$ .

Determine a more specific and concise representation for the value of the following expressions, whenever possible. (You might have to find a few different expressions, depending on  $x$ .)

1. $\lfloor x\rfloor +\lfloor 1 - x\rfloor$  
2. $\lceil x\rceil +\lceil 1 - x\rceil$  
3. $\lfloor x\rfloor +\lceil x\rceil$  
4. $\frac{\lfloor x\rfloor}{x}$  
5. $\lfloor x^2\rfloor -\lfloor x\rfloor^2$  
6. $\lceil x^2\rceil -\lceil x\rceil^2$

Problem 1.5.7. Find three natural numbers  $a, b, c$  so that no subset has a sum that is divisible by 3. That is, find  $a, b, c$  so that none of the following sums is divisible by 3:  $a, b, c, a + b, a + c, b + c, a + b + c$ . Is this possible? Why or why not?

Try to do the same thing with 4 numbers: find  $a, b, c, d$  so that no subset has a sum that is divisible by 4. Is this possible? Why or why not?

Try to generalize. Can you say anything about finding  $n$  natural numbers so that no subset has a sum divisible by  $n$ ?

Problem 1.5.8. Recall the way that we solved the *Friend Trends* problem, by working with dots and colored lines. For this problem, we want to address a similar situation where we have a certain number of dots and need to draw all possible lines so that any two dots are connected by exactly one line, but in this case we don't care about the color, so we can say all lines are drawn in black, say. Can you draw this figure with 3 dots so that none of the lines cross? What about with 4 dots? Or 5? Or 6? Why or why not? Try to explain why any of those figures are impossible to achieve. If you can't achieve 0 crossings, what is the minimum number you could possibly achieve?

Problem 1.5.9. Let's use the same assumptions from the Friend Trends problem: any two people are either friends or enemies, and there are no other relationships. Take a group of  $n$  people and assume that no person has more than  $k$  friends. We want to separate the  $n$  people into some number of clubs so that each person is in exactly one club. How many clubs do we need, in total, so that we can distribute the  $n$  people so that nobody is in a club with a friend? Given the relationships between all the people (i.e. given two people, we know whether they are friends or enemies) and that number of clubs, how would we go about separating the people to achieve this property?

Problem 1.5.10. Draw a circle. Place 3 dots along the circumference of the circle. We want to color the sections between the dots (each section gets exactly one color) so that no dot is touched by two sections of the same color. How many colors do we need? What about if we place 4 dots around the circumference of the circle? Or 5? Try to generalize to  $n$  dots. What can you say about the number of colors required?

Problem 1.5.11. Suppose you have a drawer full of socks. It contains 2 pairs of blue socks, 3 pairs of red socks, and 4 pairs of green socks. (Also assume that left and right socks are indistinguishable.) One morning, you are in a great rush and start grabbing socks randomly, one at a time, and holding on to all of them until you have a pair. How many socks do you need to take out of the drawer to guarantee that you have a pair on your hands?

How does your answer change if we had twice as many pairs, of each color, as before? What if we had 3 pairs of socks in each of red, green, blue, yellow and brown? What if we had  $n$  pairs of socks in each of  $m$  colors?

Problem 1.5.12. A group of four friends find themselves on one side of a bridge late at night while walking home. The bridge is old and rickety and unsafe to cross as a group. They only have one flashlight between them and the light is only strong enough to light the way for two friends at a time. Each friend has a different level of comfort with the bridge, so they will cross at different speeds. One friend will take 5 minutes to cross, one will take 10, one will take 15, and one will take 20. If two friends cross together, they cross at the pace of the slower friend. How long will it take all 4 friends to get across the bridge? Can you find the method that produces the absolute shortest time?

Problem 1.5.13. Consider the usual denominations of coins for the American dollar: pennies (1 cent), nickels (5 cents), dimes (10 cents), and quarters (25 cents). What coins would you need to carry around in your pocket to guarantee that you can pay any price between 0 cents and 100 cents with exact change? Are there several possible sets of coins that would achieve this? What is the smallest total value of coins with this property? Are there several possible sets of coins with this same minimum total value?

Problem 1.5.14. Let  $a, b, c$  be real numbers, with  $a \neq 0$ . What is wrong with the following "spoof" that  $-\frac{b}{2a}$  is a solution to the equation  $ax^2 + bx + c = 0$ , if anything?

"Sproof": Let  $x$  and  $y$  be solutions to the equation. Subtracting  $ay^2 + by + c = 0$

from  $ax^2 + bx + c = 0$  yields  $a(x + y)(x - y) + b(x - y) = 0$ . Hence,  $a(x + y) + b = 0$ , and so  $x + y = -\frac{b}{a}$ . Since  $x$  and  $y$  were any solutions, we may repeat this computation with  $x = y$ . Thus,  $2x = -\frac{b}{a}$ , and therefore  $x = -\frac{b}{2a}$  is a solution.

Problem 1.5.15. Explain why  $(-1)(-1) = 1$ . Pretend you are writing for a fellow classmate of similar intelligence who is skeptical of this fact and needs to be convinced. It is not enough to just say "Because it is!" Try to come up with a helpful geometric or physical explanation, some kind of memorable argument.

Problem 1.5.16. For each of the following proposed equations, identify all of the real numbers that satisfy them:

(1)  $|x - 2| = |x - 3|$

(2)  $|2x - 1| = |2x - 3|$

(3)  $|2x - 2| = |3x - 3|$

(4)  $|x + 1| = |x - 5|$

(5)  $|x - 1| + |x - 2| = |x - 3|$

Problem 1.5.17. The First Rule Of Logic Club Is …: To join Logic Club, you must decide to always tell the truth or always lie. Members of Logic Club know who lies and who soothesays. I do not belong to Logic Club, but I encounter three members on the street who make the following statements:

- Jack: "All three of us are liars."  
Tyler: "Exactly two of us are liars."  
- Chuck: "Jack and Tyler are liars."

Who should I believe, if anyone?

Problem 1.5.18. Solve  $\sqrt{x - 1} = x - 3$  for all real values of  $x$  that satisfy the equation. Explain your work, and try to indicate why your answer/s is/are the only answer/s.

Problem 1.5.19. You have two strings of fuse. Each will burn for exactly one hour. The fuses are not necessarily identical, though, and do not burn at a constant rate. All you have with you is a lighter and these two fuses. Can you measure exactly 45 minutes? If so, explain how. If not, explain why.

Problem 1.5.20. This problem is a variation of a standard puzzle, a form of which first appeared in the Saturday Evening Post way back in 1926!

Three friends pitched in and bought a big bag of M&M candies. They brought the box back to their apartment and decided to wait and share the bag the next day at a party.

During the night, the first friend woke up and felt like having a snack. He

decided to just eat his share of the candies now and not have any the next day. He opened the bag, divided the M&Ms into three equal piles, but realized there was one left over. He figured that one extra couldn't hurt, and ate his share and the extra, then put the rest back in the bag.

Later in the night, the second friend did the exact same thing. He woke up feeling hungry, divided what was left in the bag into three piles, and ate his share plus the extra one that was left over.

Even later in the night, the third friend did the exact same thing, including the extra M&M left over.

The next day at their party, the friends split the bag of remaining candies into three equal shares and enjoyed them. (No one acknowledged what they had all done, of course).

How many M&Ms were in the bag to begin with? What is the smallest possible number?

Problem 1.5.21. Given a list of real numbers, their arithmetic mean is defined to be their sum divided by the number of terms, and their geometric mean is defined to be their product raised to the power of one over the number of terms. That is, supposing we have  $x_{1}, x_{2}, \ldots, x_{n}$  that are real numbers, then the arithmetic mean is

$$
\frac{x_{1} + x_{2} + \cdots + x_{n}}{n}
$$

and the geometric mean is

$$
\sqrt [ n ]{x_{1} \cdot x_{2} \cdot \cdot \cdot x_{n}}
$$

(Note: The  $n$ -th root of a number is the same as that number raised to the power of  $\frac{1}{n}$ .)

Can you identify two numbers so that the arithmetic and geometric means are equal? Can you identify two numbers so that the arithmetic mean is strictly greater than the geometric mean? How about the other way around?

Repeat this with three numbers, four numbers, etc. Can you identify a general pattern?

Problem 1.5.22. Consider the variable equation  $6x + 15y = 93$ . We want to find some integral solutions; that is, we want to find values of  $x$  and  $y$  that are both integers (natural numbers, zero, and negative natural numbers) that satisfy the equation.

1. Find a solution where both  $x$  and  $y$  are positive integers. Describe, with a few sentences, how you came up with this solution.  
2. Find a solution where one of the values,  $x$  or  $y$ , is positive and the other is negative. Again, describe how you came up with this solution.  
3. How many solutions do you think there are? Try to write down a characterization of all possible solutions, or describe how you might find them all

Problem 1.5.23. A magic square is an  $n \times n$  array that contains each of the numbers from 1 to  $n^2$  exactly once and has the property that every row and column (and both of the main diagonals) sums to the same number.

For example, here is a  $3 \times 3$  magic square:

<table><tr><td>8</td><td>1</td><td>6</td></tr><tr><td>3</td><td>5</td><td>7</td></tr><tr><td>4</td><td>9</td><td>2</td></tr></table>

Notice that the so-called magic sum of each row/column/diagonal is 15 in this case.

Can you find a formula for what the magic sum of an  $n \times n$  magic square must be?

(Hint: There is a result we discovered in this chapter that will be useful.)

Problem 1.5.24. How many whole numbers less than or equal to 1000 have a 1 as at least one of their digits? For instance, we want to count 1 and 12 and 511 once each.

Problem 1.5.25. We have several piles of koala bears. In an attempt to disperse them, we remove exactly one koala bear from each pile and place all of those koalas into one new pile. For example, if we started with koala piles of sizes 1, 4, and 4, we would then end up with koala piles of sizes 3, 3, and 3; or, if we started with piles of size 3 and 4, we would end up with piles of size 2 and 3 and 2.

It is possible that we do this operation exactly once and end up with the exact same pile sizes as we started with (the order of them is irrelevant; only the sizes matter).

Identify all the collections of piles that have this property and explain why they are the only ones.

Hint: An example of a starting situation with this property is when we have just one pile of size 1. We do the operation and again obtain one pile of size 1. Bingo.

Hint 2: Be sure to also explain why your situations are the only ones that work. How can we be sure you didn't miss some answers?

# 1.6 Lookahead

This introductory chapter is meant to get you thinking about what mathematics is, how we solve problems, and what it means to write a proof. Throughout the rest of the book, we will be discussing all three of these ideas in more and more detail. In doing so, we will explore several different areas of the mathematical universe. We have an overarching plan for our journey, so don't think that we are just stumbling randomly through the forest. Our major

goals are to (a) formalize some of the intuitive ideas we have about mathematical objects, (2) see many examples of good proofs and develop the ability to create and write good proofs, (3) develop problem-solving skills and the ability to apply mathematical knowledge, and (4) cultivate an appreciation for both the art and science of mathematics.

Scan the table of contents at the beginning of the book to get a sense for where our journey is headed. The phrases and terminology might be foreign to you now, but by the end of the book, we will all be speaking the same language: mathematics.