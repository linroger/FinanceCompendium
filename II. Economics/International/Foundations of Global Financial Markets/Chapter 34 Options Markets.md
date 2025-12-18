---
aliases:
tags:
key_concepts:
parent_directory:
cssclasses: academia
title: "34"
linter-yaml-title-alias: "34"
---

# 34

# Options Markets

# CONTENTS

Learning Objectives

Options Contracts

Differences between Options and Futures Contracts

Risk and Return Characteristics of Options

Buying Call Options

Writing (Selling) Call Options

Buying Put Options

Writing (Selling) Put Options

Considering the Time Value of Money

Economic Role of the Options Markets

U.S. Options Markets

Stock Options

Stock Index Options

Long-Term Equity Anticipation Securities

Interest Rate Options

FLEX Options

Exotic Options

Futures Options

Mechanics of Trading Futures Options

Reasons for the Popularity of Futures Options

Key Points

Questions

Learning Objectives

After reading this chapter, you will understand:

- what an option contract is, and the basic features of an option;
- the difference between a call option and a put option;
- why an option is a derivative instrument;
- the different types of exercise styles for an option (American, European, Bermuda);
- the difference between an exchange-traded option and an over-the-counter option;
- the difference between a futures contract and an option contract;
- the risk/return characteristics of call and put options for both the seller and the buyer of the options;
- the hedging role of options in financial markets;
- the extensive role that organized exchanges play in standardizing and guaranteeing options contracts traded on exchanges;
- how stock options can change the risk/return profile of a portfolio;
- the basic features of stock index options;
- the basic features of interest rate options;
- what an exotic option is;
- some key aspects of non-U.S. options markets; and
- the basic features of options on futures or futures options.

In chapter 33, we introduced a derivative instrument, a futures contract. In this chapter, we introduce another derivative contract, an options contract, and we discuss the differences between the two. In particular, in chapter 33, we explained how derivatives transfer risk by either a risk-sharing arrangement or an insurance arrangement. Unlike futures contracts, which are risk-sharing arrangements, options contracts are insurance arrangements. In chapter 35, we show how to determine the price of an option, and in chapter 36, we explain how market participants can use these contracts.

# Options Contracts

There are two parties to an options contract: the buyer and the writer (also called the "seller"). In an options contract, the writer of the option grants the buyer of the option the right, but not the obligation, to purchase from or sell to the writer something at a specified price in a specified period of time (or on a specified date). The writer grants this right to the buyer in exchange for a certain sum of money, which is called the option price or option premium. The price at which the underlying (that is, the asset or commodity) may be bought or sold is called the exercise price or strike price. The date after which an option is void is called the expiration date or maturity date. Our focus in this chapter is on options for which the underlying is a financial instrument or financial index.

When an option grants the buyer the right to purchase the underlying from the writer (seller), it is referred to as a call option, or simply, a call. When the option buyer has the right to sell the underlying to the writer, the option is called a put option, or simply, a put.

The timing of the possible exercise of an option is an important characteristic of the contract. This feature of an option is referred to as its exercise style. Some options may be exercised at any time up to and including the expiration date. Such options are referred to as American options. Other options may be exercised only at the expiration date; these are called European options. A Bermuda option, also referred to as an Atlantic option, can be exercised only on specified dates.

Let's use an illustration to demonstrate the fundamental options contract. Suppose that Jack buys a call option for 3 (the option price) with the following terms:

1. The underlying is one unit of Asset XYZ.
 2. The exercise price is 100.
3. The expiration date is three months from now, and the option can be exercised any time up to and including the expiration date (that is, it is an American option).

At any time up to and including the expiration date, Jack can decide to buy from the writer (seller) of this option one unit of Asset XYZ, for which he will pay a price of \$100. If it is not beneficial for Jack to exercise the option, he will not, and we'll explain shortly how he decides whether it will be beneficial. Regardless of whether Jack exercises the option, the \$3 he paid for the option will be kept by the option writer. If Jack buys a put option rather than a call option, then he would be able to sell Asset XYZ to the option writer for a price of 100.

The maximum amount that an option buyer can lose is the option price. The maximum profit that the option writer (seller) can realize is the option price. The option buyer has substantial upside return potential, whereas the option writer has substantial downside risk. We will investigate the risk/reward relationship for option positions later in this chapter.

There are no margin requirements for the buyer of an option once the option price has been paid in full. Because the option price is the maximum amount that the investor can lose, no matter how adverse the price movement of the underlying, no margin is needed. Because the writer (seller) of an option has agreed to accept all of the risk (and none of the reward) of the position in the underlying, the writer is generally required to put up the option price received as margin. In addition, as price changes occur that adversely affect the writer's position, the writer is required to deposit additional margin (with some exceptions) as the position is marked to market.

Options, like other financial instruments, may be traded either on an organized exchange or in the over-the-counter (OTC) market. Exchange-traded options have three advantages. The first is standardization of the exercise price, the quantity of the underlying, and the expiration date of the contract. Second, as in the case of futures contracts, the direct link between buyer and seller is severed after the order is executed because of the interchangeability of exchange-traded options. The clearinghouse associated with the exchange where the option trades performs the same function in the options market it does in the futures market. Finally, the transactions costs are lower for exchange-traded options than for OTC options.

The higher cost of an OTC option reflects the cost of customizing the option for the common situation where an institutional investor needs to have a tailor-made option because the standardized exchange-traded option does not satisfy its investment objectives. Investment banking firms and commercial banks act as principals as well as brokers in the OTC options market. Most institutional investors are not concerned that an OTC option is less liquid than an exchange-traded option because they use OTC options as part of an asset/liability strategy in which they intend to hold them to expiration.

# Differences between Options and Futures Contracts

One distinction between futures and options contracts is that one party to an option contract is not obligated to transact at a later date. Specifically, the option buyer has the right but not the obligation to exercise the option. However, the option writer (seller) does have the obligation to perform, if the buyer of the option insists on exercising it. In the case of a futures contract, both buyer and seller are obligated to perform. Of course, a futures buyer does not pay the seller to accept the obligation, whereas an options buyer pays the seller an option price.

Consequently, the risk/reward characteristics of the two contracts are also different. In the case of a futures contract, the buyer of the contract realizes a dollar-for-dollar gain when the price of the futures contract increases and suffers a dollar-for-dollar loss when its price drops. The opposite occurs for the seller of a futures contract. Options do not provide this symmetric risk/reward relationship. The most that the buyer of an option can lose is the option price. Although the buyer of an option retains all the potential benefits, the gain is always reduced by the amount of the option price. The maximum profit that the writer (seller) may realize is the option price; this is offset against substantial downside risk. This difference between options and futures is extremely important, because as we shall see in subsequent chapters, investors can use futures to protect against symmetric risk and options to protect against asymmetric risk.

Now we can see why options are derivatives that have an insurance type arrangement for transferring risk. Unlike a risk-sharing derivative (such as a futures contract) where both parties are required to act, with an options contract, only one party is required to perform: the party providing the insurance. Moreover, options contracts have a nonsymmetric payoff and are therefore nonlinear payoff derivatives.

We will return to the difference between options and futures later in this chapter when we discuss the application of these contracts to hedging.

Here we illustrate the risk and return characteristics of the four basic option positions: buying a call option (which market participants refer to as being long a call option), selling a call option (short a call option), buying a put option (long a put option), and selling a put option (short a put option). The illustrations assume that each option position is held to the expiration date and is not exercised early. To simplify the illustrations, we ignore transactions costs.

# Buying Call Options

Assume that there is a call option on Asset XYZ that expires in one month and has a strike price of  \$100. The option price is\$ 3. Suppose that the current price of Asset XYZ is 100. What is the profit or loss for the investor who purchases this call option and holds it to the expiration date?

The profit and loss from the strategy will depend on the price of Asset XYZ at the expiration date. Several outcomes are possible:

1. If Asset XYZ's price at the expiration date is less than \$100, the investor will not exercise the option. It would be foolish to pay the option writer \$100 when Asset XYZ can be purchased in the market at a lower price. In this case, the option buyer loses the entire, original option price of 3. Notice, however, that this is the maximum loss that the option buyer will realize regardless of how low Asset XYZ's price declines.
 2. If Asset XYZ's price is equal to \$100 at the expiration date, again, there is no economic value in exercising the option. As in the case where the price is less than \$100, the buyer of the call option will lose the entire option price, 3.
3. If Asset XYZ's price is more than \$100 but less than \$103 at the expiration date, the option buyer will exercise the option. By exercising, the option buyer can purchase Asset XYZ for \$100 (the strike price) and sell it in the market for the higher price. Suppose, for example, that Asset XYZ's price is \$102 at the expiration date. The buyer of the call option will realize a \$2 gain by exercising the option. Of course, the cost of purchasing the call option was \$3, so 1 is lost on this position. By failing to exercise the option, the investor loses \$3 instead of only \$1.
4. If Asset XYZ's price is equal to \$103 at the expiration date, the investor will exercise the option. In this case, the investor breaks even, realizing a gain of \$3 that offsets the cost of the option, 3.
 5. If Asset XYZ's price is more than \$103 at the expiration date, the investor will exercise the option and realize a profit. For example, if the price is \$113, exercising the option will generate a profit on Asset XYZ of \$13. Reducing this gain by the cost of the option (\$3), the investor will realize a net profit of 10 from this position.

Table 34.1 shows the profit and loss for the buyer of the hypothetical call option in tabular form, and figure 34.1 graphically portrays the result. Although the break-even point and the size of the loss depend on the option price and the strike price, the profile shown in figure 34.1 holds for all buyers of call options. The shape indicates that the maximum loss is the option price and that there is substantial upside potential.

Table 34.1

Profit/loss profile for a long call position.

<table><tr><td colspan="4">Assumptions:
Option price = 3
Strike price = 100
Time to expiration = 1 month</td></tr><tr><td>Price of Asset XYZ at
Expiration Date ($)</td><td>Net
Profit/Loss1($)</td><td>Price of Asset XYZ at
Expiration Date ($)</td><td>Net Profit/
Loss1 ($)</td></tr><tr><td>150</td><td>47</td><td>100</td><td>-3</td></tr><tr><td>140</td><td>37</td><td>99</td><td>-3</td></tr><tr><td>130</td><td>27</td><td>98</td><td>-3</td></tr><tr><td>120</td><td>17</td><td>97</td><td>-3</td></tr><tr><td>115</td><td>12</td><td>96</td><td>-3</td></tr><tr><td>114</td><td>11</td><td>95</td><td>-3</td></tr><tr><td>113</td><td>10</td><td>94</td><td>-3</td></tr><tr><td>112</td><td>9</td><td>93</td><td>-3</td></tr><tr><td>111</td><td>8</td><td>92</td><td>-3</td></tr><tr><td>110</td><td>7</td><td>91</td><td>-3</td></tr><tr><td>109</td><td>6</td><td>90</td><td>-3</td></tr><tr><td>108</td><td>5</td><td>89</td><td>-3</td></tr><tr><td>107</td><td>4</td><td>88</td><td>-3</td></tr><tr><td>106</td><td>3</td><td>87</td><td>-3</td></tr><tr><td>105</td><td>2</td><td>86</td><td>-3</td></tr><tr><td>104</td><td>1</td><td>85</td><td>-3</td></tr><tr><td>103</td><td>0</td><td>80</td><td>-3</td></tr><tr><td>102</td><td>-1</td><td>70</td><td>-3</td></tr><tr><td>101</td><td>-2</td><td>60</td><td>-3</td></tr></table>

Note: Maximum loss = 3.

1 Price at expiration is -\$100 - \$ 3.

Figure 34.1

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/4e22fc842d386001aaebf8cb82116e49210290b9da352743831cdf62a0bd1391.jpg)

Profit/loss profile for a long call position.

It is worthwhile to compare the profit and loss profile of the call option buyer to that of someone taking a long position in one unit of Asset XYZ. The payoff from the position depends on Asset XYZ's price at the expiration date. Consider again the five price outcomes given above (and again ignore transactions costs):

1. If Asset XYZ's price at the expiration date is less than \$100, the investor in the call option loses the entire option price of \$3. In contrast, a long position in Asset XYZ will have one of three possible losses: a. If Asset XYZ's price is less than \$100 but greater than \$97, the loss on the long position in Asset XYZ will be less than 3.

b. If Asset XYZ's price is  \$97, the loss on the long position in Asset XYZ will be\$ 3.

 c. If Asset XYZ's price is less than \$97, the loss on the long position in Asset XYZ will be greater than \$3. For example, if the price at the expiration date is \$80, the long position in Asset XYZ will result in a loss of \$20.

2. If Asset XYZ's price is equal to \$100, the buyer of the call option will realize a loss of \$3 (option price). Similarly, there will be no gain or loss on the long position in Asset XYZ.
 3. If Asset XYZ's price is more than \$100 but less than \$103, the option buyer will realize a loss of less than 3, and the long position in Asset XYZ will realize a profit.
 4. If the price of Asset XYZ at the expiration date is equal to \$103, there will be no loss or gain from buying the call option. However, the long position in Asset XYZ will produce a gain of \$3.
 5. If Asset XYZ's price at the expiration date is greater than \$103, both the call option buyer and the long position in Asset XYZ will post a profit. However, the profit for the buyer of the call option will be \$3 less than that for the long position. For example, if Asset XYZ's price is \$113, the profit from the call position is \$10, whereas the profit from the long position in Asset XYZ is 13.

Table 34.2 compares the long call strategy and the long position in Asset XYZ. This comparison clearly demonstrates the way in which an option can change the risk/return profile for investors. An investor who takes a long position in Asset XYZ realizes a profit of \$1 for every \$1 increase in Asset XYZ's price. However, as Asset XYZ's price falls, the investor loses dollar-for-dollar. If the price drops by more than \$3, the long position in Asset XYZ results in a loss of more than \$3. In contrast, the long call strategy limits the loss to only the option price of \$3 but retains the upside potential, which will be \$3 less than for the long position in Asset XYZ.

Table 34.2 Comparison of long call position and long asset position.

<table><tr><td colspan="6">Assumptions:
Initial price of Asset XYZ = 100
Option price = 3
Strike price = 100
Time to expiration = 1 month</td></tr><tr><td></td><td colspan="3">Net Profit/Loss</td><td colspan="2">Net Profit/Loss</td></tr><tr><td>Price of Asset XYZ at
Expiration Date ($)</td><td>Long
Call1($)</td><td>Long
Asset
XYZ2($)</td><td>Price of Asset XYZ at Expiration Date($)</td><td>Long
Call1($)</td><td>Long
Asset
XYZ2($)</td></tr><tr><td>150</td><td>47</td><td>50</td><td>100</td><td>-3</td><td>0</td></tr><tr><td>140</td><td>37</td><td>40</td><td>99</td><td>-3</td><td>-1</td></tr><tr><td>130</td><td>27</td><td>30</td><td>98</td><td>-3</td><td>-2</td></tr><tr><td>120</td><td>17</td><td>20</td><td>97</td><td>-3</td><td>-3</td></tr><tr><td>115</td><td>12</td><td>15</td><td>96</td><td>-3</td><td>-4</td></tr><tr><td>114</td><td>11</td><td>14</td><td>95</td><td>-3</td><td>-5</td></tr><tr><td>113</td><td>10</td><td>13</td><td>94</td><td>-3</td><td>-6</td></tr><tr><td>112</td><td>9</td><td>12</td><td>93</td><td>-3</td><td>-7</td></tr><tr><td>111</td><td>8</td><td>11</td><td>92</td><td>-3</td><td>-8</td></tr><tr><td>110</td><td>7</td><td>10</td><td>91</td><td>-3</td><td>-9</td></tr><tr><td>109</td><td>6</td><td>9</td><td>90</td><td>-3</td><td>-10</td></tr><tr><td>108</td><td>5</td><td>8</td><td>89</td><td>-3</td><td>-11</td></tr><tr><td>107</td><td>4</td><td>7</td><td>88</td><td>-3</td><td>-12</td></tr><tr><td>106</td><td>3</td><td>6</td><td>87</td><td>-3</td><td>-13</td></tr><tr><td>105</td><td>2</td><td>5</td><td>86</td><td>-3</td><td>-14</td></tr><tr><td>104</td><td>1</td><td>4</td><td>85</td><td>-3</td><td>-15</td></tr><tr><td>103</td><td>0</td><td>3</td><td>80</td><td>-3</td><td>-20</td></tr><tr><td>102</td><td>-1</td><td>2</td><td>70</td><td>-3</td><td>-30</td></tr><tr><td>101</td><td>-2</td><td>1</td><td>60</td><td>-3</td><td>-40</td></tr><tr><td colspan="6">Note: Maximum loss = \$3.
1Calculated as Price at expiration - 100
2Calculated as Price of Asset XYZ - 100</td></tr></table>

Which alternative is better, buying the call option or buying the asset? The answer depends on what the investor is attempting to achieve. This will become clearer in chapter 36, where we explain various strategies using either option positions or cash market positions.

This hypothetical example demonstrates another important feature of options: their speculative appeal. Suppose an investor has strong expectations that Asset XYZ's price will rise in one month. At an option price of \$3, the speculator can purchase 33.33 call options for each \$100 invested. If Asset XYZ's price rises, the investor realizes the price appreciation associated with 33.33 units of Asset XYZ, whereas with the same \$100, the investor could have bought only one unit of Asset XYZ selling at \$100, realizing the appreciation associated with only one unit if Asset XYZ's price increases. For example, suppose that in one month the price of Asset XYZ rises to \$120. The long call position will result in a profit of $566.66 [($20 × 33.33) - \$100] or a return of 566.66\% on the \$100 investment in the call option. By comparison, a \$100 investment in the long position in Asset XYZ results in a profit of \$20, for only a 20\% return on \$100.

It is this greater leverage that attracts investors to options when they wish to speculate on price movements. Leverage does have some drawbacks, however. Suppose that Asset XYZ's price is unchanged at  \$100 at the expiration date. In this case, the long call position (33.33 options) results in a loss of the entire investment of\$ 100, and the long position in Asset XYZ produces neither a gain nor a loss.

Writing (Selling) Call Options

To illustrate the option seller's (writer's) position, we use the same call option as in the example of buying a call option. The profit and loss profile of the short call position (that is, the position of the call option writer) is the mirror image of the profit and loss profile of the long call position (the position of the call option buyer). Consequently, the profit of the short call position for any given price of Asset XYZ at the expiration date is the same as the loss of the long call position. Furthermore, the maximum profit that the short call position can produce is the option price. The maximum loss is not limited, because it is the highest price reached by Asset XYZ on or before the expiration date, less the option price; this price can be indefinitely high. These relationships can be seen in figure 34.2, which shows the profit/loss profile for a short call position.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/f556bbc833cde9a1294a053ad22cbd0b10f8bb331fe2d463f86da1fe9300ef64.jpg)

Figure 34.2 Profit/loss profile for a short call position.

# Buying Put Options

To illustrate the position of the buyer of a put option, we assume a hypothetical put option on one unit of Asset XYZ with one month to maturity and a strike price of  \$100. Assume that the put option is selling for\$ 2 and that the current price of Asset XYZ is 100. The profit or loss for this position at the expiration date depends on the market price of Asset XYZ. The possible outcomes are:

1. If Asset XYZ's price is greater than \$100, the buyer of the put option will not exercise it, because exercising would mean selling Asset XYZ to the writer for a price that is less than the market price. In this case, a loss of \$2 (the original price of the option) will result from buying the put option. Once again, the option price represents the maximum loss to which the buyer of the put option is exposed.
 2. If Asset XYZ's price at expiration is equal to \$100, the put will not be exercised, leaving the put buyer with a loss equal to the option price of \$2.
3. If Asset XYZ's price is less than \$100 but greater than \$98, the option buyer will experience a net loss on the position; however, exercising the put option limits the loss to less than the option price of \$2. For example, suppose that the price is \$99 at the expiration date. By exercising the option, the option buyer will realize a loss of only \$1. This is because the buyer of the put option can sell Asset XYZ, purchased in the market for \$99, to the writer for \$100, realizing a gain of \$1. Deducting the \$2 cost of the option results in a net loss of \$1 to the position.
 4. If Asset XYZ's price is \$98 at the expiration date, the put buyer will break even. The investor will realize a gain of \$2 by selling Asset XYZ to the writer of the option for \$100, and this gain exactly offsets the cost of the option (\$2).
 5. If Asset XYZ's price is below \$98 at the expiration date, the long put position (the put buyer) will realize a profit. For example, suppose the price falls at expiration to \$80. The long put position will produce a profit of \$18: a gain of \$20 for exercising the put option less the 2 option price.

The profit and loss profile for the long put position is shown in tabular form in the second column of table 34.3 and in graphical form in figure 34.3. As with all long option positions, the loss is limited to the option price. The profit potential, however, is substantial: the theoretical maximum profit is generated if Asset XYZ's price falls to zero. Contrast this profit potential with that of the buyer of a call option. The theoretical maximum profit for a call buyer cannot be determined beforehand, because it depends on the highest price that can be reached by Asset XYZ before or at the option expiration date, a price that is indeterminate.

Profit/loss profile for a long put position compared to a short asset position.

# Assumptions:

Initial price of Asset XYZ = 100

Option price = 2

Strike price = 100

Time to expiration  $= 1$  month

Table 34.3

<table><tr><td></td><td colspan="3">Net Profit/Loss</td><td colspan="2">Net Profit/Loss</td></tr><tr><td>Price of Asset XYZ at Expiration Date ($)</td><td>Long Put1 ($)</td><td>Short Asset XYZ2 ($)</td><td>Price of Asset XYZ at Expiration Date ($)</td><td>Long Put1 ($)</td><td>Short Asset XYZ2 ($)</td></tr><tr><td>150</td><td>-2</td><td>-50</td><td>91</td><td>7</td><td>9</td></tr><tr><td>140</td><td>-2</td><td>-40</td><td>90</td><td>8</td><td>10</td></tr><tr><td>130</td><td>-2</td><td>-30</td><td>89</td><td>9</td><td>11</td></tr><tr><td>120</td><td>-2</td><td>-20</td><td>88</td><td>10</td><td>12</td></tr><tr><td>115</td><td>-2</td><td>-15</td><td>87</td><td>11</td><td>13</td></tr><tr><td>110</td><td>-2</td><td>-10</td><td>86</td><td>12</td><td>14</td></tr><tr><td>105</td><td>-2</td><td>-5</td><td>85</td><td>13</td><td>15</td></tr><tr><td>100</td><td>-2</td><td>0</td><td>84</td><td>14</td><td>16</td></tr><tr><td>99</td><td>-1</td><td>1</td><td>83</td><td>15</td><td>17</td></tr><tr><td>98</td><td>0</td><td>2</td><td>82</td><td>16</td><td>18</td></tr><tr><td>97</td><td>1</td><td>3</td><td>81</td><td>17</td><td>19</td></tr><tr><td>96</td><td>2</td><td>4</td><td>80</td><td>18</td><td>20</td></tr><tr><td>95</td><td>3</td><td>5</td><td>75</td><td>23</td><td>25</td></tr><tr><td>94</td><td>4</td><td>6</td><td>70</td><td>28</td><td>30</td></tr><tr><td>93</td><td>5</td><td>7</td><td>65</td><td>33</td><td>35</td></tr><tr><td>92</td><td>6</td><td>8</td><td>60</td><td>38</td><td>40</td></tr></table>

 Note: Maximum loss = 2.

1Calculated as 100 - Price at expiration.

2Calculated as 100 - Price of Asset XYZ.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/09393b95998254fb9c269d94b9e73837b5455be562bb1da0ba227d5040678922.jpg)

Figure 34.3

Profit/loss profile for a long put position.

To see how an option alters the risk/return profile for an investor, we again compare it to a position in Asset XYZ. The long put position is compared to taking a short position in Asset XYZ, because this is the position that would realize a profit if the price of the asset falls. Suppose an investor sells Asset XYZ short for 100. The short position in Asset XYZ would produce the following profit or loss compared to the long put position (without considering transactions costs):

1. If Asset XYZ's price rises above \$100, the long put option results in a loss of \$2, but the short position in Asset XYZ realizes one of the following: a. If the price of Asset XYZ is less than \$102, there will be a loss of less than \$2, which is the loss to the long put position.

b. If the price of Asset XYZ is equal to  \$102, the loss will be\$ 2, the same as the maximum loss of the long put position.

 c. If the price of Asset XYZ is greater than \$102, the loss will be greater than \$2. For example, if the price is \$125, the short position will realize a loss of \$25, because the short seller must now pay \$125 for Asset XYZ that the seller sold short at \$100.

 2. If Asset XYZ's price at expiration is equal to \$100, the long put position will realize a \$2 loss, while there will be no profit or loss on the short position in Asset XYZ.
 3. If Asset XYZ's price is less than \$100 but greater than \$98, the long put position will experience a loss of less than \$2, but the short position will realize a profit. For example, a price of \$99 at the expiration date will result in a loss of \$1 for the long put position but a profit of \$1 for the short position.
 4. If Asset XYZ's price is \$98 at the expiration date, the long put position will break even, but the short position in Asset XYZ will generate a \$2 profit.
 5. If Asset XYZ's price is below \$98, both positions will generate a profit; however, the profit for the long put position will always be \$2 less than that for the short position.

Table 34.3 presents a detailed account of this comparison of the profit and loss profiles for the long put position and short position in Asset XYZ. Although the investor who takes a short position in Asset XYZ faces all the downside risk as well as the upside potential, the long put position limits the downside risk to the option price while still maintaining upside potential (reduced only by an amount equal to the option price).

Writing (Selling) Put Options

The profit/loss profile for a short put option is the mirror image of that for the long put option. The maximum profit from this position is the option price. The theoretical maximum loss can be substantial should the price of the underlying asset fall; however, if the price were to fall all the way to zero, the loss would be as large as the strike price less the option price. Figure 34.4 graphically depicts this profit and loss profile.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-05/f9e2019c-3d5c-44b5-bba3-9b7de83643f5/938fafdaffe71d3520e5e63125ed30a0e42a2d881b033f9f31b37ff250d56bc7.jpg)

Figure 34.4

Profit/loss profile for a short put position.

To summarize these illustrations of the four option positions, we can say the following: Buying calls or selling puts allows the investor to gain if the price of the underlying asset rises; and selling calls and buying puts allows the investor to gain if the price of the underlying asset falls.

Considering the Time Value of Money

Our illustrations of the four option positions do not take into account the time value of money. Specifically, the buyer of an option must pay the seller the option price at the time the option is purchased. Thus, the buyer must finance the purchase price of the option, or (assuming the purchase price does not have to be borrowed) the buyer loses the income that can be earned by investing the amount of the option price until the option is sold or exercised. In contrast, assuming that the seller does not have to use the option price amount as margin for the short position or can use an interest-earning asset as security, the seller has the opportunity to earn income from the proceeds of the option sale.

The time value of money changes the profit/loss profile of the option positions we have discussed. The breakeven price for the buyer and the seller of an option will not be the same as in our illustrations. The breakeven price for the underlying asset at the expiration date is higher for the buyer of the option; for the seller, it is lower.

Our comparisons of the option position with long and short positions in the underlying asset also ignore the time value of money. We have not considered the fact that the underlying asset may generate interim cash flows (dividends in the case of common stock, interest in the case of bonds). The buyer of a call option is not entitled to any interim cash flows generated by the underlying asset. However, the buyer of the underlying asset would receive any interim cash flows and would have the opportunity to reinvest them. A complete comparison of the long call option position and the long position in the underlying asset must take into account the additional dollars from reinvesting any interim cash flows. Moreover, any effect on the price of the underlying asset as a result of the distribution of cash must be considered. This occurs, for example, when the underlying asset is common stock and, as a result of a dividend payment, the stock declines in price.

# Economic Role of the Options Markets

Futures contracts allow investors to hedge the risks associated with adverse price movements. Hedging with futures lets a market participant lock in a price and thereby eliminates price risk. In the process, however, the investor gives up the opportunity to benefit from a favorable price movement. In other words, hedging with futures involves trading off the benefits of a favorable price movement for protection against an adverse price movement.

Hedging with options has a variety of potential benefits, which we discuss in chapter 36. For now, we provide an overview of how options can be used for hedging and how the outcomes of hedging with options differ from those of hedging with futures. A good way to show the hedging uses of options is to return to the initial illustration in this chapter where the underlying for the option is Asset XYZ.

Let's consider an investor who owns Asset XYZ, currently selling for \$100, which she expects to sell one month from now. The investor's concern is that, one month from now, Asset XYZ's price may decline below \$100. One alternative available to this investor is to sell Asset XYZ now. However, suppose that the investor does not want to sell this asset now, because either some restrictions prevent this or she thinks that the price may rise during the month. Suppose also that an insurance company offers to sell the investor an insurance policy providing that, if at the end of one month, Asset XYZ's price is less than \$100, the insurance company will make up the difference between \$100 and the market price. For example, if one month from now Asset XYZ's price is \$80, the insurance company will pay the investor \$20.

The insurance company naturally charges the investor a premium to write this policy. Let's suppose that the premium is \$2. Holding aside the cost of the insurance policy, the payoff that this investor then faces is as follows. The minimum price for Asset XYZ that the investor can receive is \$100, because if the price is less, the insurance company will make up the difference. However, if Asset XYZ's price is greater than \$100, the investor will receive the higher price. The premium of \$2 that is required to purchase this insurance policy effectively assures the investor of a minimum price of $98 ($100 minus \$2), but if the price is above \$100, the investor realizes the benefits of a higher price (reduced always by the 2 for the insurance policy). In buying this policy, the investor has purchased protection against an adverse price movement while maintaining the opportunity to benefit from a favorable price movement.

Insurance companies do not offer such policies, but we have described an option strategy that provides the same protection. Consider the put option on

Asset XYZ with one month to expiration, a strike price of  \$100, and an option price of\$ 2 discussed earlier in this chapter. The payoff to a long position in this put is identical to the insurance policy. The option price resembles the hypothetical insurance premium; this is the reason the option price is referred to as the option "premium." Thus, a put option can be used to hedge against a decline in the price of the underlying instrument.

The long put's payoff is quite different from that of a futures contract. Suppose that a futures contract with Asset XYZ as the underlying instrument has a futures price equal to \$100 and a settlement date of one month from now. By selling this futures contract, the investor would be agreeing to sell Asset XYZ for \$100 one month from now. If Asset XYZ's price falls below \$100, the investor is protected, because she will receive \$100 on delivery of the asset to satisfy the futures contract. If Asset XYZ's price rises above \$100, however, the investor will not realize the price appreciation, because she must deliver the asset for an agreed-on amount of \$100. By selling the futures contract, the investor has locked in a price of 100 and fails to realize a gain if the price rises while avoiding a loss if the price declines.

Call options are also useful for hedging. A call option can be used to protect against a rise in the price of the underlying instrument while maintaining the opportunity to benefit from a decline in the price of the underlying instrument. For example, suppose that an investor expects to receive  \$100 one month from now and plans to use that money to purchase Asset XYZ, which is selling currently for\$ 100. The risk that the investor faces is that Asset XYZ's price will rise above \$100 one month from now. Let us further suppose there is a call option such as that described earlier in the chapter. The option costs \$3 and has a strike price of 100 and one month to expiration. By purchasing that call option, the investor has hedged the risk of a rise in the price of Asset XYZ.

The hedge outcome is as follows. If the price rises above \$100 one month from now, the investor would exercise the call option and realize the difference between the market price of Asset XYZ and \$100. Thus, ignoring the cost of the option for the moment, we can see that the investor is ensuring that the maximum price she will have to pay for Asset XYZ is \$100. Should the asset's price fall below \$100, the call option expires worthless, but the investor benefits by being able to purchase Asset XYZ at a price less than  \$100. Once the\$ 3 cost of the option is considered, the payoff is as follows. Regardless of the eventual price of the asset, the maximum price that the investor will have to pay for Asset XYZ is \$103 (the strike price plus the option price). If the price of the asset declines below \$100, the investor will benefit by the amount of the price decline less 3.

Compare this situation to a futures contract where Asset XYZ is the underlying instrument, the settlement is in one month, and the futures price is \$100. Suppose that the investor buys this futures contract. If one month from now the price of Asset XYZ rises above \$100, the investor has contracted to buy the asset for \$100, thereby eliminating the risk of a price rise. However, if the price falls below \$100, the investor cannot benefit, because she has contracted to pay 100 for the asset.

It should be clear now how hedging with options differs from hedging with futures. This difference cannot be overemphasized—options and futures are not interchangeable instruments.

Although our focus has been on hedging price risk, options also allow investors an efficient way to expand the range of return characteristics available. That is, investors can use options to "shape" a return distribution for a portfolio to fit particular investment objectives.[2]

# U.S. Options Markets

There are a variety of options traded throughout the world. Here we provide a survey of the major ones, focusing on the United States but also mentioning other markets.

# Stock Options

In the United States, exchange-traded stock options are for 100 shares of a designated common stock. The major U.S. exchanges where options are traded are the Chicago Board Options Exchange (CBOE), the New York Stock Exchange (NYSE), and the Nasdaq.

The Office of the Comptroller of the Currency (OCC) has established standard strike price guidelines for listed options. For stocks with a price above  \$100, option strike prices are set at\$ 10 intervals; for stocks with a price below  \$100 and above\$ 30, strike prices are set at \$5 intervals; and for stocks priced between \$10 and \$30 the interval is \$2.50. Although the strike price of exchange-traded options is not changed because of cash dividends paid to common stockholders, the strike price is adjusted for stock splits, stock dividends, reorganization, and other recapitalizations affecting the value of the underlying stock.

All exchange-traded stock options in the United States may be exercised any time before the expiration date; that is, they are American options. They expire at 11:59 p.m. Eastern Standard Time on the Saturday following the third Friday of the expiration month. Exchange rules require that investors wishing to exercise an expiring option must instruct a broker about the exercise no later than 5:30 p.m. Eastern time on the business day immediately preceding the expiration date. Notices to exercise a nonexpiring option on a date other than the expiration date must be made between 10:00 a.m. and 8:00 p.m. Eastern Standard Time. When a nonexpiring option is exercised, the OCC assigns the obligation the next day to someone who has an outstanding short position in an option of the same exercise price, expiration date, and underlying stock. This assignment is on a random basis.

Options are designated by the name of the underlying common stock, the expiration month, the strike price, and the type of option (put or call). Thus, an exchange-traded stock call option on Apple Inc. (APPL ticker symbol) with a strike price of 115 expiring June 16, 2017, is referred to as the "APPL June 2017 115 call."

The expiration dates are standardized. Each stock is assigned an option cycle, the three option cycles being January, February, and March. The expiration months for each option cycle are as follows:

<table><tr><td>Option Cycle</td><td>Expiration Months</td></tr><tr><td>January</td><td>January, April, July, October</td></tr><tr><td>February</td><td>February, May, August, November</td></tr><tr><td>March</td><td>March, June, September, December</td></tr></table>

In addition, the practice is to trade options with an expiration date of the current calendar month, the next calendar month, and the next two expiration months in the cycle. For example, suppose a stock is assigned the January option cycle. In February, options with the following expiration months would be traded: February (the current calendar month), March (the next calendar month), April (the next expiration month in the January option cycle), and July (the last option cycle month in the January option cycle). In May, the following expiration months would be traded for a stock assigned to the January option cycle: May (the current calendar month), April (the next calendar month), July (the next expiration month in the January option cycle), and October (the last option cycle month in the January option cycle).

Stock Index Options

In March 1983, a revolution in stock options and investments in general occurred. At that time, trading an option whose underlying instrument was a stock index, the S&P 100 (originally called the "CBOE 100"), began on the CBOE. Reflecting the trading needs of global investors for tools to more efficiently manage portfolios, the number of stock index options traded throughout the world exploded. There are currently options on all the major stock market indexes and on narrow sectors in those indexes.

In the United States, the most popular stock index options in terms of trading volume are the S&P 500 Index Option (ticket symbol SPX), the S&P 100 Index Option (ticket symbol OEX), the NASDAQ 100 Index Option (NDX), the Dow Jones Industrial Average (ticket symbol DJX), and the Russell 2000 Index Option (RUT). All these contracts are listed on the CBOE. Index options can have a European exercise style and are cash settled because of the difficulty of delivering a basket of stocks. All stock index options have a multiple. For the popular stock index options, the multiple is  \$100. To give an individual investor and smaller institutional investors the opportunity to use stock index products, the exchanges have created mini versions of some of the contracts, in which the underlying is one-tenth of the multiple used for the index. Since the multiple for the stock indexes described above is\$ 100, the mini version's multiple is \$10. Specifically, CME also added options on E-mini S&P500 futures contracts on both the standard \$250 sizes and mini 50 sizes. American quarterly options and also European weekly and EOM (end of month) options are offered. Moreover, as explained for stock options, there are long-term equity anticipation securities, weeklies, and Flex versions of the contract.

For the S&P 500 Index Option the underlying is of course the S&P 500. The underlying for the S&P 100 Index Option is a market capitalization-weighted index of 100 stocks from a broad range of industries in the S&P 500. The underlying index for the NASDAQ 100 Index Option is a modified market capitalization-weighted index composed of the 100 largest nonfinancial stocks listed on the Nasdaq stock market. The Russell 2000 Index is composed of the small-capitalization segment of the U.S. equity universe in the Russell 2000 Index. In addition to U.S. stock market indexes, there are global stock indexes and country-specific stock market indexes on which options are traded. An example of the former is the Euro STOXX 50 Index option (OESX), which covers global and regional stock market indexes.

There are also stock index options for components of the major broad-based stock market indexes, selected industries, and selected sectors. For example, the CBOE lists the Dow Jones Transportation Average Index Option, Dow Jones Utility Average Index Option, Dow Jones Internet Commerce Index Option, Dow Jones Equity REIT Index Option, CBOE Internet Index Option, CBOE Oil Index Option, CBOE Technology Index Option, and Morgan Stanley Retail Index Option. There are stock index options based on some attribute of the components of an index other than industry or sector. For example, the CBOE lists stock index options based on a classification of the component stock of the Russell 3000 in terms of value and growth. The Russell 1000 Growth Index Option and Russell 1000 Value Index Option include the 1,000 largest stocks in terms of market capitalization in the Russell 3000 that are classified as growth and value, respectively. The underlying for the Dow 10 Index Option includes the top 10 dividend-yielding stocks in the Dow Jones Industrial Average, with each component stock equally weighted in the index.

There are also stock index options based on the exercise style and the length of the expiration period. For example, the S&P 100 Index Option is available in American and European exercise style.

If a stock option is exercised, a stock must be delivered. It would be complicated, to say the least, to settle a stock index option by delivering all the stocks that make up the index. Instead, stock index options are cash settlement contracts. That is, if the option is exercised, the exchange-assigned option writer pays cash to the option buyer. No stock is delivered.

The dollar value of the stock index underlying an index option is equal to the current cash index value multiplied by the contract's multiple:

Dollar value of underlying index  $=$  Cash index value  $\times$  Contract multiple.

Each stock index option has a contract multiple. For example, for the S&P 100 Stock Index the multiple is \$100. So, if the cash index value for the S&P 100 is 1,000, then the dollar value of the S&P 100 contract is 1,000 × \$100 = 100,000.

For a stock option, the price at which the buyer of the option can buy or sell the stock is the strike price. For an index option, the strike index is the index value at which the buyer of the option can buy or sell the underlying stock index. The strike index is converted into a dollar value by multiplying the strike index by the multiple for the contract. For example, if the strike index is 1,750 for an S&P 100 Index option, the strike value is $175,000 (1,750 × $100). If an investor purchases a call option on the S&P 100 with a strike index of 1,750 and exercises the option when the index value is 1,800, then the investor has the right to purchase the index for \$175,000 when the dollar value of the index is \$180,000. The buyer of the call option would then receive $5,000 (= $180,000—175,000) from the option writer.

# Long-Term Equity Anticipation Securities

For an individual stock and a stock index, only the next two expiration months are traded on an exchange. Consequently, the longest time before expiration of a standard exchange-traded option is six months. Long-term equity anticipation securities (LEAPS) are options contracts designed to offer longer maturities. These contracts are available on individual stocks and some indexes. Stock option LEAPS are comparable to standard stock options except that the maturities can range up to 39 months from the origination date. Index options LEAPS differ in size compared with standard index options, having a multiplier of 10 rather than 100.

Interest rate options can be written on cash instruments or futures. At one time, several exchange-traded options contracts were available whose underlying instrument was a debt instrument. These contracts are referred to as options on physicals. For reasons explained later, options on futures that are based on debt instruments have been far more popular than options on physicals.

Market participants have made increasingly greater use of OTC options on Treasury, agency debentures, and mortgage-backed securities. Certain institutional investors who want to purchase an option on a specific Treasury security or a Ginnie Mae pass-through can do so on an OTC basis. There are government and mortgage-backed securities dealers who make a market in options on specific securities. Typically, the maturity of the option coincides with the period over which the buyer of the option wants to hedge, so the buyer is not concerned with the option's liquidity.

Besides options on fixed-income securities, investors can obtain OTC options on a yield spread (such as the spread between mortgage pass-through securities and Treasuries or between double-A corporates and Treasuries).

# FLEX Options

A FLEX option is an option contract with some terms that have been customized. It is traded on an options exchange and cleared and guaranteed by the associated clearinghouse for the exchange. The need for customization of certain terms is a result of the wide range of portfolio strategy needs of institutional investors that cannot be satisfied by standard exchange-traded options.

A FLEX option can be created for individual stocks, stock indexes, and Treasury securities. The value of FLEX options is the ability to customize the terms of the contract along four dimensions: underlying, strike price, expiration date, and settlement style (i.e., American versus European). Moreover, the exchange provides a secondary market to offset or alter positions and an independent daily marking of prices.

The development of the FLEX option is a response to the growing OTC market. The exchanges seek to make the FLEX option attractive by providing price discovery through a competitive auction market, an active secondary market, daily price valuations, and the virtual elimination of counterparty risk. The FLEX option represents a link between listed options and OTC products.

# Exotic Options

OTC options can be customized in any manner sought by an institutional investor. Basically, if a dealer can reasonably hedge the risk associated with the opposite side of the option sought, it will create the option desired by a customer. OTC options are not limited to European or American types. An option can be created in which the option can be exercised at several specified dates as well as the expiration date of the option. As noted earlier, such options are referred to as "Bermuda options."

The more complex options created are called exotic options. Here are just two types of such exotic options: alternative options and outperformance options. An alternative option, also called an either-or option, has a payoff that is the best independent payoff of two distinct assets. For example, suppose that Donna buys an alternative call option with the following terms:

1. The underlying is one unit of Asset M or one unit of Asset N.
 2. The strike price for Asset M is 80.
 3. The strike price for Asset N is 110.
4. The expiration date is three months from now.
5. The option can only be exercised three months from now (i.e., it is a European option).

At the expiration date, Donna can decide to buy from the writer of this option either one unit of Asset M at  \$80 or one unit of Asset N at\$ 110. Donna will buy the asset with the larger payoff. So, for example, if Asset M and Asset N at the expiration date are  \$84 and\$ 140, respectively, then the payoff would be \$4 if Donna elects to exercise to buy Asset M but \$30 if she elects to exercise to buy Asset N. Thus, she will choose to buy Asset N. If the price for both assets at the expiration date is below their strike prices, Donna will let the option expire worthless.

An outperformance option is an option whose payoff is based on the relative payoff of two assets at the expiration date. For example, consider the following outperformance call option purchased:

1. Portfolio A consists of the stock of 50 public utility companies with a market value of 1 million.
2. Portfolio B consists of the stock of 50 financial services companies with a market value of 1 million.
3. The expiration date is six months from now and is a European option.
4. The strike is equal to

Market value of Portfolio B - Market value of Portfolio A.

At the expiration date, if the market value of Portfolio A is greater than the market value of Portfolio B, then there is no value to this option, and it will expire worthless. The option will be exercised if the market value of Portfolio B exceeds the market value of Portfolio A at the expiration date.

# Futures Options

An option on a futures contract, commonly referred to as a futures option, gives the buyer the right to buy from or sell to the writer a designated futures contract at a designated price at any time during the life of the option. If the futures option is a call option, the buyer has the right to purchase one designated futures contract at the exercise price. That is, the buyer has the right to acquire a long futures position in the designated futures contract. If the buyer exercises the call option, the writer (seller) acquires a corresponding short position in the futures contract.

A put option on a futures contract grants the buyer the right to sell one designated futures contract to the writer at the exercise price. That is, the option buyer has the right to acquire a short position in the designated futures contract. If the put option is exercised, the writer acquires a corresponding long position in the designated futures contract.

There are futures options on all the interest rate futures contracts reviewed in chapter 34.

The parties to the futures option will realize a position in a futures contract when the option is exercised. The question is: What will the futures price be? That is, at what price will the long be required to pay for the instrument underlying the futures contract, and at what price will the short be required to sell the instrument underlying the futures contract?

On exercise, the futures price for the futures contract will be set equal to the exercise price. The position of the two parties is then immediately marked to market based on the then-current futures price. Thus, the futures position of the two parties will be at the prevailing futures price. At the same time, the option writer or seller must pay the option buyer the economic benefit from exercising. In the case of a call futures option, the option writer must pay the difference between the current futures price and the exercise price to the buyer of the option. In the case of a put futures option, the option writer must pay the option buyer the difference between the exercise price and the current futures price.

For example, suppose an investor buys a call option on some futures contract in which the exercise price is 85. Assume also that the futures price is 95 and that the buyer exercises the call option. On exercise, the call buyer is given a long position in the futures contract at 85, and the call writer is assigned the corresponding short position in the futures contract at 85. The futures position of the buyer and the writer is immediately marked to market by the exchange. Because the prevailing futures price is 95 and the exercise price is 85, the long futures position (the position of the call buyer) realizes a gain of 10, whereas the short futures position (the position of the call writer) realizes a loss of 10. The call writer pays the exchange 10, and the call buyer receives 10 from the exchange. The call buyer, who now has a long futures position at 95, can either liquidate the futures position at 95 or maintain a long futures position. If the former course of action is taken, the call buyer sells a futures contract at the prevailing futures price of 95. There is no gain or loss from liquidating the position. Overall, the call buyer realizes a gain of 10. If the call buyer elects to hold the long futures position, then he or she will face the same risk and reward of holding such a position. But the call buyer still has realized a gain of 10 from the exercise of the call option.

Suppose, instead, that the futures option is a put rather than a call, and the current futures price is 60 rather than 95. If the buyer of this put option exercises it, the buyer would have a short position in the futures contract at 85; the option writer would have a long position in the futures contract at 85. The exchange then marks the position to market at the then-current futures price of 60, resulting in a gain to the put buyer of 25 and a loss to the put writer of the same amount. The put buyer, now having a short futures position at 60, can either maintain that position or liquidate it by buying a futures contract at the prevailing futures price of 60. In either case, the put buyer realizes a gain of 25 from exercising the put option.

The exchange imposes no margin requirements for the buyer of a futures option once the option price has been paid in full. Because the maximum amount the buyer can lose is the option price, regardless of how adverse the price movement of the underlying instrument, there is no need for margin.

Because the writer (seller) of an option has agreed to accept all the risk (and none of the reward) of the position in the underlying instrument, the writer (seller) is required to deposit not only the margin required on the interest rate futures contract position if that is the underlying instrument, but also (with certain exceptions) the option price that is received for writing the option. In addition, if prices for the underlying futures contract adversely affect the writer's position, the writer would be required to deposit variation margin as it is marked to market.

# Reasons for the Popularity of Futures Options

Futures options on fixed-income securities have largely supplanted options on physicals as the options vehicle used by institutional investors for three reasons.⁵ First, unlike options on fixed-income securities, futures options on Treasury coupon futures do not require payments to be made for accrued interest. Consequently, when a futures option is exercised, the call buyer and the put writer need not compensate the other party for accrued interest.

Second, futures options are believed to be "cleaner" instruments because of the reduced likelihood of delivery squeezes. Market participants who must deliver an instrument are concerned that the instrument to be delivered will be in short supply at the time of delivery, resulting in a higher price to acquire it. As the deliverable supply of futures contracts is more than adequate for futures options currently traded, there is no concern about a delivery squeeze.

Finally, to price any option, it is imperative to know at all times the price of the underlying instrument. As mentioned in our discussions of the various bond markets, current bond prices are not easily available. In contrast, futures prices are readily available.

# Key Points
- An option is a contract in which the writer of the option grants the buyer the right, but not the obligation, to purchase from or sell to the writer something at the exercise (or strike) price in a specified period of time (until the expiration date).
- The price paid by the option buyer is called the "option price" or "option premium."
- A call option grants the option buyer the right to buy something from the option writer, and a put option grants the option buyer the right to sell something to the option writer.
- The maximum amount that an option buyer can lose is the option price, while the maximum profit that the option writer can realize is the option price; the option buyer has substantial upside return potential, whereas the option writer has substantial downside risk.
- The option contract specifies the exercise style (American, European, Bermuda).
- Options may be traded either on an organized exchange or in the OTC market.
- Unlike a futures contract, only one party to an option contract is obligated to transact at a later date: the option writer.
- Futures have a symmetric risk/reward relationship, whereas options do not, because the buyer of an option retains all the potential benefits, but the gain is always reduced by the amount of the option price.
- Futures are risk-sharing arrangements, but options are insurance arrangements.
- There are four basic option positions: buying a call option, selling a call option, buying a put option, and selling a put option.
- An option can be used to alter the risk/reward relationship from that of a position in the underlying.
- The buyer of a call option benefits if the price of the underlying rises; the writer (seller) of a call option benefits if the price of the underlying is unchanged or falls.
- The buyer of a put option benefits if the price of the underlying falls; the writer (seller) of a put option benefits if the price of the underlying is unchanged or rises.
- When determining the payoff from an option, the time value of money as a result of having to finance the option price must be considered
- Some options are traded on individual shares of common stock, and some options are traded on common stock indexes.
- The dollar value of a stock index option contract is equal to the index value multiplied by the contract's multiple.
- There are interest rate options in which the underlying is a debt instrument (called an "option on a physical") and a futures contract (called a "futures option").
- Exchange-traded options on futures that are based on debt instruments have been far more popular than exchange-traded options on physicals.
- A futures option gives the buyer the right to buy from or sell to the writer a designated futures contract at a designated price at any time during the life of the option.
- If the buyer of the futures option exercises, the futures price for the futures contract will be set equal to the exercise price, but the position of the two parties is then immediately marked to market based on the then-current futures price.
- For several reasons, futures options on fixed-income securities have been used more by institutional investors than have options on physicals.
- There has been increased use by institutional investors of OTC options on Treasury and mortgage-backed securities.
- Complex OTC options are called "exotic options," two examples being alternative options and outperformance options.

# Questions

1. Identify and explain the key features of an options contract.
2. What is the difference between a put option and a call option?
3. What is the difference between an American option and a European option?
4. Why does an option writer need to post margin?
5. Identify two important ways in which an exchange-traded option differs from a typical OTC option.
6. a. What are the main ways in which an option differs from a futures contract?

b. Why are options and futures called "derivative securities"?

7. Explain how this statement can be true: "A long call position offers potentially unlimited gains, if the underlying asset's price rises, but a fixed, maximum loss if the underlying asset's price drops to zero."
8. Suppose a call option on a stock has an exercise price of \$70 and a cost of \$2, and suppose you buy the call. Identify the profit to your investment, at the call's expiration, for each of these values of the underlying stock: $25, $70, $100, $400.
9. Consider again the situation in question 8. Suppose you had sold the call option. What would your profit be, at expiration, for each of the stock prices?
10. Explain why you agree or disagree with this statement: "Buying a put is just like short selling the underlying asset. You gain the same thing from either position, if the underlying asset's price falls. If the price goes up, you have the same loss."
11. Why do stock index options involve cash settlement rather than delivery of the underlying stocks?
12. Suppose you bought an index call option for 5.50 that has a strike price of 200 and that, at expiration, you exercised it. Also suppose that at the time you exercised the call option, the index has a value of 240.

a. If the index option has a multiple of 100, how much money does the writer of this option pay you?

b. What profit did you realize from buying this call option?

13. How do LEAPS differ from standard stock options and standard index options?
14. a. What are the terms that can be customized in a FLEX option?

b. Why was the FLEX option introduced by exchanges?

15. Suppose that you buy an alternative call option with the following terms:
- The underlying asset is one unit of Asset G or one unit of Asset H.
- The strike price for Asset G is 100.
- The strike price for Asset H is 115.
- The expiration date is four months from now.
- The option can only be exercised at the expiration date.

a. What is the payoff from this option if at the expiration date, the price of Asset G is \$125 and the price of Asset H is \$135?

b. What is the payoff from this option if at the expiration date, the price of Asset G is  \$90 and the price of Asset H is\$ 125?

c. What is the payoff from this option if at the expiration date, the price of Asset G is \$90 and the price of Asset H is \$105?

16. Suppose that you buy an outperformance call option with the following terms:
- Portfolio X consists of bonds with a market value of 5 million.
- Portfolio Y consists of stocks with a market value of 5 million.
- The expiration date is nine months from now and is a European option.
- The strike price is equal to Market value of Portfolio X - Market value of Portfolio Y.

What is the payoff of this option if at the expiration date, the market value of Portfolio X is \$10 million and the market value of Portfolio Y is \$12 million?

17. Suppose you have a long position in a call option on a futures contract, and the strike price is \$80. The futures contract price is now \$87, and you want to exercise your option. Identify the gains from exercise, specifying any cash inflow and the futures position you get (and the price of the futures contract).
18. See chapter18 for more detail on selling short in a securities market.
19. See Stephen A. Ross, "Options and Efficiency," Quarterly Journal of Economics 90, no. 1 (1976): 75-89; Fred Arditti and Kose John, "Spanning the State Space with Options," Journal of Financial and Quantitative Analysis 25, no. 1(1980): 1-9.
20. For a more detailed discussion of OTC options, see Mark Pitts and Frank J. Fabozzi, *Interest Rate Futures and Options* (Chicago: Probus Publishing, 1989), chapter 2.
21. For a more detailed description of FLEX options, see James J. Angel, Gary L. Gastineau, and Clifford J. Weber, Equity FLEX Options (Hoboken, NJ: John Wiley & Sons, 1999).
22. Laurie Goodman, "Introduction to Debt Options," in Winning the Interest Rate Game: A Guide to Debt Options, ed. Frank J. Fabozzi (Chicago: Probus Publishing, 1985), chapter 1, 13-14.

