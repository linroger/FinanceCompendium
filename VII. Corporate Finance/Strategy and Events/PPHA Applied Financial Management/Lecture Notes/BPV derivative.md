---
title: Some Notes on Defining and Measuring BPV
aliases:
  - Defining and Measuring BPV
tags:
parent_directory: Lecture Notes
parent_folder: Lecture Notes
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Some Notes on Defining and Measuring BPV
---

# Some Notes on Defining and Measuring BPV

Thomas Coleman

8 April 2023; Revised April 8, 2023

There are many questions and confusions on how we define and how we calculate the BPV. Let's separate the Definition and the Calculation:

# Definition:

- BPV is the derivative of PV w.r.t. yield (changed in sign):  $BPV - \frac{\partial PV}{\partial y}$  
- But we have to define "PV of what?" and "per what change in yield?"  
- For BPV we are saying "PV of a bond with $100 notional, so FV=100" and "per one unit (one percentage point) change in yield" so we are writing yield as a percentage like 1.50% not as decimal like 0.015"  
- This means we are defining the PV as the derivative for "a $100 bond, per one percentage point (or 100bp) change in yield"  
- This is our definition of the BPV, defining the units we are using (\(100 bond, 100bp change in yield)

# Calculation:

- Remember that the derivative is defined as the slope at a point and to be perfectly accurate we would use the rules of calculus to calculate the derivative  
- Let's focus on a simple bond, our 4-year  $6.5\%$  coupon bond. To be perfectly accurate we should write down the PV formula, and then use the rules of calculus to calculate the derivative. For our 4-year annual-coupon bond this would be:

$$
P V (y) = \frac {6 . 5}{(1 + y) ^ {1}} + \frac {6 . 5}{(1 + y) ^ {2}} + \frac {6 . 5}{(1 + y) ^ {3}} + \frac {6 . 5}{(1 + y) ^ {4}} + \frac {1 0 0}{(1 + y) ^ {4}}
$$

$$
\frac {\partial P V (y)}{\partial y} = \frac {- 1 \times 6 . 5}{(1 + y) ^ {2}} + \frac {- 2 \times 6 . 5}{(1 + y) ^ {3}} + \frac {- 3 \times 6 . 5}{(1 + y) ^ {4}} + \frac {- 4 \times 6 . 5}{(1 + y) ^ {5}} + \frac {- 4 \times 1 0 0}{(1 + y) ^ {5}}
$$

- This is messy, and gets to be very very difficult for anything beyond a simple bond  
- So instead, let's go back to the definition of the derivative:

$$
\frac {\partial P V (y)}{\partial y} = \lim  _ {h \rightarrow 0} \frac {P V (y + h) - P V (y)}{h}
$$

which says we bump the original value up a little (that  $h$ ), take the difference  $(PV(y + h) - PV(y))$  and then divide by  $h$  so that we measure the derivative per one unit change in  $y$ . We do this for smaller-and-smaller bumps  $h$  until we reach the limit.

- Let's do that, but instead of just bumping up, we can bump up and down. And instead of taking the limit (as  $h \to 0$ ) let's just use a small value for  $h$  (and remember to divide by  $2h$  because we are bumping both up and down):

$$
\frac {\partial P V (y)}{\partial y} \approx \frac {P V (y + h) - P V (y - h)}{2 h}
$$

This is called "finite different approximation" and is a standard way to calculate an approximation to the derivative without having to do the messy formulas.

# Example:

Let's use our 4 year bond, and try three different bump sizes: 3bp, 5bp, and 6bp (in percentage points that is .03, .05, and .06):

- 3bp:

$$
\frac {\partial P V (y = 6.60 \%)}{\partial y} \approx \frac {P V (6.60 + .03) - P V (6.60 - .03)}{2 \times .03} = \frac {99.55596 - 99.760575}{.06} = \frac {- 0.2046}{.06} = - 3.410
$$

- 5bp:

$$
\frac {\partial P V (y = 6 . 6 0 \%)}{\partial y} \approx \frac {P V (6 . 6 0 + . 0 5) - P V (6 . 6 0 - . 0 5)}{2 \times . 0 5} = \frac {9 9 . 5 5 5 9 6 - 9 9 . 7 6 0 5 7 5}{. 1 0} = \frac {- 0 . 3 4 1 0}{. 1 0} = - 3. 4 1 0
$$

- 6bp:

$$
\frac {\partial P V (y = 6.60 \%)}{\partial y} \approx \frac {P V (6.60 + .06) - P V (6.60 - .06)}{2 \times .06} = \frac {99.55596 - 99.760575}{.12} = \frac {- 0.4092}{.12} = - 3.410
$$

The change in bond price  $(PV(y + h) - PV(y - h))$  is different for each, because we are bumping up and down by different amounts. Those changes in bond price on their own will not be useful for the derivative because they measure changes for different amounts of change in yield. But we can normalize and convert them all to the change in bond price per 1 percentage point change in yield if we divide by the amount of the bump  $(2 \times h)$ . We see that the change in price from bumping up-and-down by 6bp is twice the change in prices using 3bp (to four decimals at least). We can use either one to give us our approximation to the derivate (change in price per 1 percentage point (100bp) change in yield). I tell you to use 5bp. Either 3 or 6 would also work, as long as we divide by the right  $2 \times h$ . But using  $\pm 50\mathrm{bp}$  is not a good idea because that is too big a change. We use a small change (small bump  $h$ ), and then normalize by the size of the bump to get the approximation per 1 percentage point change in yield.