---
parent_directory:
title: Financial Mathematics 33000
tags:
aliases:
parent_folder: Options
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: Financial Mathematics 33000
---

# Financial Mathematics 33000

# Lecture 8

Roger Lee

2022 November 30

The implied volatility skew

# Realized Volatility

Realized variance of  $S$ , sampled at interval  $\Delta t$ , from time 0 to time  $T$  can be defined, using log-returns by letting  $t_n = n\Delta t$  and  $T = t_N$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\log \frac {S _ {t _ {n + 1}}}{S _ {t _ {n}}}\right) ^ {2}
$$

Alternatively could use simple returns, letting  $\Delta S = S_{t_{n + 1}} - S_{t_n}$  and

$$
R V a r = \frac {1}{T} \sum_ {n = 0} ^ {N - 1} \left(\frac {\Delta S}{S _ {t _ {n}}}\right) ^ {2}
$$

Realizedvolatilityof  $S$  is

$$
R V o l = \sqrt {R V a r}
$$

If  $\mathrm{d}S_{t} = \mu S_{t}\mathrm{d}t + \sigma S_{t}\mathrm{d}W_{t}$ , then  $RVol\to \sigma$  as  $\Delta t\rightarrow 0$

# Implied Volatility

Given a time- $t$  price  $C$  for a given call option  $(K, T)$  on an underlying  $S_{t}$  assuming interest rate  $r$ , the implied volatility is the  $\sigma$  such that

$$
C = C ^ {B S} \left(S _ {t}, t, K, T, r, \sigma\right)
$$

where  $C^{BS}$  is the Black-Scholes formula.

This exists and is unique, if  
The bigger the dollar price  $C$ , the bigger the implied vol  $\sigma_{imp}$  
Gives is another way quoting an option price. Instead of saying the option is trading at $x.xx, can say it's trading at yy% vol.

# Interpretations

Interpretations of time-  $t$  implied volatility

Intuitively, implied vol is in some sense the market's forward-looking expectation of "realized volatility" from time  $t$  until  $T$ , along paths that go near  $K$ .  
A language / a metric / a scale in which to quote option prices. Instead of quoting in dollars, can quote in vol points. (Use of this language does not mean we actually believe the Black-Scholes assumptions!)

# Volatility smile/skew

If the underlying truly has GBM dynamics with volatility  $\sigma$  then

$$
C (K, T) = C ^ {B S} (K, T, \sigma) \quad \text {f o r a l l} (K, T)
$$

Hence

$$
\sigma_ {i m p} (K, T) = \sigma \quad \text {f o r a l l} (K, T)
$$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/a982e62574143f75a20686dfce88435338090b44496e3ffedb1f1ef33cded412.jpg)

However, empirically,

$\triangleright$  Plotting  $\sigma_{imp}$  against  $K$ , you typically see not a flat line, but rather a volatility smile or a volatility skew.  
Also,  $\sigma_{imp}$  varies wrt  $T$ ; implied volatility has a term structure.  
The function  $\sigma_{imp}(K,T)$  is called the implied vol surface or skew.

# Volatility surface: SPX, by strike

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/763b47c03e89acea3b18b65139ae06cd61962de8605e416473bfb7201517f736.jpg)  
SN 417340 EST GMT-5:00 G721-6557-166 12-Jan-2022 15:56:46

# Volatility surface: SPX, by moneyness

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/7cb6eebf5d3e7da380f59bc14ba446075b82bd6c9933c82f53171025ceaa00ae.jpg)  
SN 417340 EST GMT-5:00 G721-6557-166 12-Jan-2022 15:58:14

# Volatility skews: SPX, by moneyness, 4 expirations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/9de87c7834a65d6e89dd0e9ed2963ed6eb482bd4eb53209da846576dc40307a7.jpg)

# Volatility skews: SPX, by moneyness, 4 observations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/d0760afd445debb3b3b6a469f4d2aa0f1ed8574637609698e8619e625289d9a0.jpg)

# Volatility smile/skew: EBAY

<table><tr><td>BID</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td><td>DPIN</td><td colspan="7">QXB JUL4 61074.620</td></tr><tr><td rowspan="2">Bid Price</td><td rowspan="2">Ask Price</td><td rowspan="2">Emp Volat Bid</td><td rowspan="2">Emp Volat Ask</td><td rowspan="2">Emp Volat Mid</td><td rowspan="2">Open Intrst</td><td colspan="2">EBAY &lt;-CALLS PUTS-&gt;</td><td>BID Price</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td></tr><tr><td colspan="2">EBAY &lt;-CALLS PUTS-&gt;</td><td>BID Price</td><td>dASK</td><td>dIVBD</td><td>IVAS</td><td>IVMD</td></tr><tr><td colspan="13">74.61074.620</td></tr><tr><td>44.60</td><td>44.80</td><td>N.A.</td><td>69.07</td><td>N.A.</td><td>335</td><td>130</td><td>16</td><td>.05</td><td>N.A.</td><td>74.86</td><td>69.02</td><td>478</td></tr><tr><td>39.60</td><td>39.80</td><td>N.A.</td><td>70.07</td><td>54.16</td><td>305</td><td>235</td><td>17</td><td>.05</td><td>N.A.</td><td>62.87</td><td>57.97</td><td>453</td></tr><tr><td>34.70</td><td>34.80</td><td>N.A.</td><td>57.73</td><td>36.43</td><td>378</td><td>340</td><td>18</td><td>.05</td><td>N.A.</td><td>52.53</td><td>48.44</td><td>1,169</td></tr><tr><td>29.70</td><td>29.90</td><td>N.A.</td><td>52.91</td><td>46.90</td><td>355</td><td>445</td><td>19</td><td>.10</td><td>43.44</td><td>47.80</td><td>45.89</td><td>739</td></tr><tr><td>24.80</td><td>25.00</td><td>37.23</td><td>46.40</td><td>42.65</td><td>514</td><td>550</td><td>20</td><td>.15</td><td>41.55</td><td>43.68</td><td>42.61</td><td>1,559</td></tr><tr><td>20.00</td><td>20.20</td><td>36.56</td><td>41.46</td><td>39.18</td><td>889</td><td>655</td><td>21</td><td>.30</td><td>38.88</td><td>40.05</td><td>39.50</td><td>2,205</td></tr><tr><td>15.40</td><td>15.50</td><td>34.85</td><td>37.76</td><td>36.34</td><td>1,931</td><td>760</td><td>22</td><td>.65</td><td>35.56</td><td>37.06</td><td>36.31</td><td>4,757</td></tr><tr><td>11.10</td><td>11.30</td><td>33.40</td><td>34.36</td><td>33.88</td><td>3,851</td><td>065</td><td>23</td><td>1.40</td><td>33.46</td><td>34.45</td><td>33.95</td><td>9,285</td></tr><tr><td>7.40</td><td>7.60</td><td>31.33</td><td>32.79</td><td>32.06</td><td>3,313</td><td>970</td><td>24</td><td>2.75</td><td>31.84</td><td>32.56</td><td>32.20</td><td>4,905</td></tr><tr><td>4.50</td><td>4.60</td><td>29.70</td><td>31.03</td><td>30.37</td><td>7,000</td><td>1075</td><td>25</td><td>4.70</td><td>30.15</td><td>30.81</td><td>30.48</td><td>2,415</td></tr><tr><td>2.45</td><td>2.55</td><td>29.16</td><td>29.88</td><td>29.52</td><td>2,166</td><td>1100</td><td>26</td><td>7.60</td><td>28.98</td><td>30.39</td><td>29.68</td><td>619</td></tr><tr><td>1.20</td><td>1.30</td><td>28.78</td><td>29.25</td><td>29.02</td><td>1,429</td><td>1285</td><td>27</td><td>11.40</td><td>11.60</td><td>27.94</td><td>29.89</td><td>28.92</td></tr><tr><td>.55</td><td>.65</td><td>28.82</td><td>29.50</td><td>29.16</td><td>1,115</td><td>1390</td><td>28</td><td>15.70</td><td>15.90</td><td>27.27</td><td>30.24</td><td>28.80</td></tr><tr><td>.20</td><td>.30</td><td>27.69</td><td>30.02</td><td>28.92</td><td>16</td><td>1495</td><td>29</td><td>20.40</td><td>20.70</td><td>N.A.</td><td>32.77</td><td>29.60</td></tr><tr><td>.10</td><td>.15</td><td>28.66</td><td>30.60</td><td>29.69</td><td>305</td><td>15100</td><td>30</td><td>25.30</td><td>25.50</td><td>N.A.</td><td>32.83</td><td>30.88</td></tr></table>

# Volatility smile/skew: GOOG

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/5ccc4e05c57570432f056459ce23d4f08551008264cff1ba507db4d7b12b3df2.jpg)

<table><tr><td colspan="9">Calls</td><td>Strike</td><td colspan="7">Puts</td><td></td></tr><tr><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td><td></td><td></td><td>Ticker</td><td>Bid</td><td>Ask</td><td>Last</td><td>IVM</td><td>DM</td><td>Voll</td><td>Oint</td></tr><tr><td>19 Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv.77; R.12:</td><td>19</td><td>Apr 14 (10D): CSize 10D:</td><td colspan="7">IDiv.77; R.12:</td><td></td></tr><tr><td>1)GOOG 4 C510</td><td>48.20</td><td>50.80</td><td>50.00</td><td>58.97</td><td>.84</td><td>2</td><td>34</td><td>510.00</td><td>8)GOOG 4 P510</td><td>3.20</td><td>3.60</td><td>3.08</td><td>55.30</td><td>-14</td><td>69</td><td>203</td><td></td></tr><tr><td>2)GOOG 4 C515</td><td>43.70</td><td>46.80</td><td>43.00y</td><td>57.94</td><td>.82</td><td>37</td><td>37</td><td>515.00</td><td>9)GOOG 4 P515</td><td>4.10</td><td>4.40</td><td>4.24</td><td>55.20</td><td>-17</td><td>28</td><td>304</td><td></td></tr><tr><td>3)GOOG 4 C520</td><td>39.00</td><td>46.40</td><td>44.40</td><td>53.44</td><td>.81</td><td>11</td><td>35</td><td>520.00</td><td>8)GOOG 4 P520</td><td>4.90</td><td>5.30</td><td>4.90</td><td>54.18</td><td>-20</td><td>13</td><td>485</td><td></td></tr><tr><td>4)GOOG 4 C525</td><td>36.20</td><td>37.70</td><td>40.00</td><td>55.38</td><td>.76</td><td>1</td><td>58</td><td>525.00</td><td>9)GOOG 4 P525</td><td>6.00</td><td>6.40</td><td>6.14</td><td>53.70</td><td>-23</td><td>27</td><td>163</td><td></td></tr><tr><td>5)GOOG 4 C530</td><td>32.40</td><td>33.50</td><td>34.00</td><td>54.21</td><td>.73</td><td>1</td><td>76</td><td>530.00</td><td>8)GOOG 4 P530</td><td>7.10</td><td>7.70</td><td>7.05</td><td>52.96</td><td>-27</td><td>14</td><td>183</td><td></td></tr><tr><td>6)GOOG 4 C535</td><td>28.90</td><td>29.80</td><td>30.56</td><td>53.31</td><td>.69</td><td>45</td><td>73</td><td>535.00</td><td>8)GOOG 4 P535</td><td>8.70</td><td>9.10</td><td>7.80</td><td>52.84</td><td>-30</td><td>45</td><td>348</td><td></td></tr><tr><td>7)GOOG 4 C540</td><td>25.60</td><td>26.50</td><td>27.52</td><td>53.30</td><td>.65</td><td>12</td><td>214</td><td>540.00</td><td>8)GOOG 4 P540</td><td>10.40</td><td>10.80</td><td>9.91</td><td>52.60</td><td>-35</td><td>26</td><td>249</td><td></td></tr><tr><td>8)GOOG 4 C545</td><td>22.50</td><td>23.30</td><td>23.70</td><td>52.81</td><td>.61</td><td>18</td><td>168</td><td>545.00</td><td>8)GOOG 4 P545</td><td>12.10</td><td>12.70</td><td>12.30</td><td>51.82</td><td>-39</td><td>17</td><td>148</td><td></td></tr><tr><td>9)GOOG 4 C550</td><td>19.60</td><td>20.20</td><td>20.00</td><td>52.13</td><td>.56</td><td>168</td><td>358</td><td>550.00</td><td>8)GOOG 4 P550</td><td>14.30</td><td>14.80</td><td>13.80</td><td>51.63</td><td>-44</td><td>84</td><td>155</td><td></td></tr><tr><td>10)GOOG 4 C555</td><td>17.00</td><td>17.50</td><td>17.95</td><td>51.84</td><td>.52</td><td>192</td><td>256</td><td>555.00</td><td>8)GOOG 4 P555</td><td>16.60</td><td>17.10</td><td>16.50</td><td>51.18</td><td>-48</td><td>41</td><td>159</td><td></td></tr><tr><td>11)GOOG 4 C560</td><td>14.60</td><td>15.00</td><td>15.41</td><td>51.29</td><td>.47</td><td>472</td><td>694</td><td>560.00</td><td>8)GOOG 4 P560</td><td>19.20</td><td>19.70</td><td>18.61</td><td>51.09</td><td>-53</td><td>101</td><td>113</td><td></td></tr><tr><td>12)GOOG 4 C565</td><td>12.40</td><td>13.00</td><td>13.14</td><td>51.28</td><td>.43</td><td>115</td><td>321</td><td>565.00</td><td>8)GOOG 4 P565</td><td>21.80</td><td>22.50</td><td>20.50</td><td>50.64</td><td>-58</td><td>1</td><td>29</td><td></td></tr><tr><td>13)GOOG 4 C570</td><td>10.50</td><td>10.70</td><td>10.51</td><td>50.74</td><td>.38</td><td>154</td><td>652</td><td>570.00</td><td>8)GOOG 4 P570</td><td>24.90</td><td>25.70</td><td>23.82</td><td>50.26</td><td>-62</td><td>1</td><td>51</td><td></td></tr><tr><td>14)GOOG 4 C575</td><td>8.80</td><td>9.20</td><td>9.20</td><td>50.26</td><td>.34</td><td>244</td><td>317</td><td>575.00</td><td>8)GOOG 4 P575</td><td>28.00</td><td>28.80</td><td>31.60</td><td>49.87</td><td>-67</td><td>8</td><td>8</td><td></td></tr><tr><td>15)GOOG 4 C580</td><td>7.30</td><td>7.80</td><td>7.50</td><td>50.28</td><td>.30</td><td>124</td><td>431</td><td>580.00</td><td>8)GOOG 4 P580</td><td>31.40</td><td>32.30</td><td>29.10</td><td>49.19</td><td>-71</td><td>11</td><td>47</td><td></td></tr><tr><td>16)GOOG 4 C585</td><td>5.90</td><td>6.30</td><td>6.43</td><td>50.02</td><td>.25</td><td>28</td><td>211</td><td>585.00</td><td>8)GOOG 4 P585</td><td>34.80</td><td>36.00</td><td>38.00</td><td>48.78</td><td>-75</td><td>11</td><td>11</td><td></td></tr><tr><td>17)GOOG 4 C590</td><td>4.80</td><td>5.30</td><td>5.07</td><td>50.20</td><td>.22</td><td>71</td><td>333</td><td>590.00</td><td>8)GOOG 4 P590</td><td>37.70</td><td>40.20</td><td>36.23</td><td>46.97</td><td>-80</td><td>8</td><td>21</td><td></td></tr><tr><td>18)GOOG 4 C595</td><td>3.90</td><td>4.40</td><td>4.15</td><td>50.05</td><td>.19</td><td>91</td><td>136</td><td>595.00</td><td>8)GOOG 4 P595</td><td>41.60</td><td>44.10</td><td>40.20</td><td>44.85</td><td>-84</td><td>8</td><td>13</td><td></td></tr><tr><td>19)GOOG 4 C600</td><td>3.20</td><td>3.60</td><td>3.39</td><td>49.94</td><td>.16</td><td>80</td><td>837</td><td>600.00</td><td>8)GOOG 4 P600</td><td>45.90</td><td>48.30</td><td>63.95y</td><td>44.80</td><td>-87</td><td>1</td><td>35</td><td></td></tr><tr><td colspan="8">17 May 14 (38d): CSize 10D: IVF d556.62</td><td>19</td><td colspan="8">May 14 (38d): CSize 10D: IVF d556.22</td><td></td></tr><tr><td colspan="8">20) GOOG 5 C510 52.10 54.80 51.30 36.10 .79</td><td>15</td><td colspan="8">May 14 (38d): CSize 10D: IVF d556.20</td><td></td></tr></table>

# Volatility surface: GOOG

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/64f6493f0f844fc97137a07022b5fcc923e4066944d4c539811c810f3d5de59a.jpg)

<table><tr><td colspan="2">Expiry</td><td colspan="4">19 April 2014</td><td colspan="4">17 May 2014</td><td colspan="4">21 Jun 2014</td><td colspan="4">20 Sep 2014</td><td colspan="4">17 Jan 2015</td></tr><tr><td colspan="2">Calls/Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td></tr><tr><td>Strike</td><td>DM</td><td>IVM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td></tr><tr><td>505.00</td><td>.91</td><td>51.46</td><td>-.11</td><td>56.24</td><td>.83</td><td>33.50</td><td>-.17</td><td>34.07</td><td>.80</td><td>28.63</td><td>-.20</td><td>28.79</td><td>.74</td><td>26.46</td><td>-.26</td><td>26.02</td><td>.71</td><td>25.49</td><td>-.29</td><td>25.08</td><td></td></tr><tr><td>510.00</td><td>.88</td><td>50.89</td><td>-.14</td><td>55.57</td><td>.81</td><td>33.13</td><td>-.20</td><td>34.25</td><td>.77</td><td>28.55</td><td>-.23</td><td>28.69</td><td>.72</td><td>26.38</td><td>-.28</td><td>26.03</td><td>.70</td><td>25.20</td><td>-.30</td><td>24.56</td><td></td></tr><tr><td>515.00</td><td>.85</td><td>51.33</td><td>-.16</td><td>55.34</td><td>.79</td><td>32.84</td><td>-.22</td><td>33.86</td><td>.75</td><td>28.26</td><td>-.25</td><td>28.51</td><td>.70</td><td>26.34</td><td>-.29</td><td>25.96</td><td>.68</td><td>25.16</td><td>-.32</td><td>24.68</td><td></td></tr><tr><td>520.00</td><td>.82</td><td>51.42</td><td>-.19</td><td>54.24</td><td>.76</td><td>33.23</td><td>-.24</td><td>33.63</td><td>.73</td><td>28.38</td><td>-.27</td><td>28.43</td><td>.68</td><td>26.45</td><td>-.31</td><td>25.86</td><td>.66</td><td>25.12</td><td>-.33</td><td>24.60</td><td></td></tr><tr><td>525.00</td><td>.79</td><td>51.53</td><td>-.22</td><td>54.26</td><td>.73</td><td>33.14</td><td>-.27</td><td>33.50</td><td>.70</td><td>28.74</td><td>-.30</td><td>28.37</td><td>.66</td><td>26.29</td><td>-.33</td><td>25.68</td><td>.65</td><td>25.21</td><td>-.35</td><td>24.43</td><td></td></tr><tr><td>530.00</td><td>.75</td><td>51.68</td><td>-.26</td><td>53.59</td><td>.70</td><td>33.56</td><td>-.30</td><td>33.37</td><td>.67</td><td>28.54</td><td>-.32</td><td>28.27</td><td>.64</td><td>26.18</td><td>-.35</td><td>25.61</td><td>.63</td><td>24.98</td><td>-.37</td><td>24.60</td><td></td></tr><tr><td>535.00</td><td>.71</td><td>52.68</td><td>-.29</td><td>53.02</td><td>.67</td><td>33.28</td><td>-.33</td><td>33.16</td><td>.65</td><td>28.54</td><td>-.35</td><td>28.08</td><td>.62</td><td>26.24</td><td>-.37</td><td>25.49</td><td>.62</td><td>25.14</td><td>-.38</td><td>24.31</td><td></td></tr><tr><td>540.00</td><td>.67</td><td>52.50</td><td>-.33</td><td>52.64</td><td>.63</td><td>33.20</td><td>-.37</td><td>32.79</td><td>.62</td><td>28.27</td><td>-.38</td><td>27.94</td><td>.60</td><td>26.08</td><td>-.39</td><td>25.46</td><td>.60</td><td>25.08</td><td>-.40</td><td>24.43</td><td></td></tr><tr><td>545.00</td><td>.62</td><td>52.27</td><td>-.38</td><td>52.45</td><td>.60</td><td>32.95</td><td>-.40</td><td>32.84</td><td>.59</td><td>28.20</td><td>-.41</td><td>27.78</td><td>.58</td><td>26.14</td><td>-.42</td><td>25.45</td><td>.58</td><td>25.15</td><td>-.42</td><td>24.24</td><td></td></tr><tr><td>550.00</td><td>.58</td><td>51.82</td><td>-.42</td><td>51.92</td><td>.57</td><td>32.76</td><td>-.43</td><td>32.58</td><td>.56</td><td>28.04</td><td>-.44</td><td>27.75</td><td>.56</td><td>25.98</td><td>-.44</td><td>25.37</td><td>.57</td><td>24.96</td><td>-.43</td><td>24.37</td><td></td></tr><tr><td>555.00</td><td>.53</td><td>51.92</td><td>-.47</td><td>51.67</td><td>.53</td><td>32.61</td><td>-.47</td><td>32.44</td><td>.53</td><td>27.99</td><td>-.46</td><td>27.64</td><td>.54</td><td>26.03</td><td>-.46</td><td>25.25</td><td>.55</td><td>25.07</td><td>-.45</td><td>24.23</td><td></td></tr><tr><td>560.00</td><td>.48</td><td>50.99</td><td>-.52</td><td>51.18</td><td>.50</td><td>32.35</td><td>-.50</td><td>32.40</td><td>.51</td><td>27.99</td><td>-.49</td><td>27.55</td><td>.52</td><td>25.97</td><td>-.48</td><td>25.30</td><td>.53</td><td>25.01</td><td>-.47</td><td>24.27</td><td></td></tr><tr><td>565.00</td><td>.44</td><td>50.88</td><td>-.56</td><td>50.90</td><td>.46</td><td>32.34</td><td>-.54</td><td>32.05</td><td>.48</td><td>27.74</td><td>-.52</td><td>27.41</td><td>.50</td><td>25.95</td><td>-.50</td><td>25.28</td><td>.52</td><td>25.00</td><td>-.48</td><td>24.20</td><td></td></tr><tr><td>570.00</td><td>.39</td><td>50.26</td><td>-.61</td><td>50.53</td><td>.43</td><td>32.02</td><td>-.57</td><td>32.02</td><td>.45</td><td>27.70</td><td>-.55</td><td>27.48</td><td>.48</td><td>25.86</td><td>-.52</td><td>25.22</td><td>.50</td><td>24.83</td><td>-.50</td><td>24.31</td><td></td></tr><tr><td>575.00</td><td>.35</td><td>49.95</td><td>-.65</td><td>50.23</td><td>.39</td><td>31.85</td><td>-.61</td><td>31.75</td><td>.42</td><td>27.58</td><td>-.58</td><td>27.31</td><td>.46</td><td>25.80</td><td>-.54</td><td>25.13</td><td>.49</td><td>24.90</td><td>-.52</td><td>24.28</td><td></td></tr><tr><td>580.00</td><td>.30</td><td>49.76</td><td>-.69</td><td>50.05</td><td>.36</td><td>31.95</td><td>-.64</td><td>31.76</td><td>.39</td><td>27.49</td><td>-.61</td><td>27.20</td><td>.44</td><td>25.71</td><td>-.56</td><td>25.17</td><td>.47</td><td>24.86</td><td>-.53</td><td>24.03</td><td></td></tr><tr><td>585.00</td><td>.26</td><td>49.38</td><td>-.73</td><td>50.06</td><td>.33</td><td>31.86</td><td>-.67</td><td>31.66</td><td>.36</td><td>27.40</td><td>-.64</td><td>27.10</td><td>.42</td><td>25.63</td><td>-.58</td><td>25.28</td><td>.45</td><td>24.83</td><td>-.55</td><td>24.02</td><td></td></tr><tr><td>590.00</td><td>.23</td><td>49.41</td><td>-.76</td><td>51.33</td><td>.30</td><td>31.71</td><td>-.70</td><td>31.47</td><td>.34</td><td>27.28</td><td>-.66</td><td>27.28</td><td>.40</td><td>25.76</td><td>-.60</td><td>25.23</td><td>.44</td><td>24.78</td><td>-.57</td><td>23.95</td><td></td></tr><tr><td>595.00</td><td>.19</td><td>49.62</td><td>-.79</td><td>51.70</td><td>.27</td><td>31.30</td><td>-.73</td><td>31.21</td><td>.31</td><td>27.35</td><td>-.69</td><td>27.23</td><td>.38</td><td>25.89</td><td>-.62</td><td>25.18</td><td>.42</td><td>24.39</td><td>-.58</td><td>23.86</td><td></td></tr><tr><td>600.00</td><td>.16</td><td>49.15</td><td>-.82</td><td>51.71</td><td>.24</td><td>31.34</td><td>-.76</td><td>31.59</td><td>.29</td><td>27.29</td><td>-.71</td><td>27.10</td><td>.37</td><td>25.86</td><td>-.64</td><td>25.20</td><td>.41</td><td>24.59</td><td>-.60</td><td>23.87</td><td></td></tr><tr><td>605.00</td><td>.14</td><td>49.64</td><td>-.85</td><td>51.82</td><td>.22</td><td>31.06</td><td>-.78</td><td>31.40</td><td>.27</td><td>27.28</td><td>-.74</td><td>26.76</td><td>.35</td><td>25.87</td><td>-.66</td><td>25.24</td><td>.39</td><td>24.74</td><td>-.61</td><td>23.91</td><td></td></tr><tr><td>610.00</td><td>.12</td><td>49.72</td><td>-.88</td><td>50.09</td><td>.19</td><td>31.02</td><td>-.80</td><td>31.89</td><td>.24</td><td>27.21</td><td>-.76</td><td>27.17</td><td>.33</td><td>25.94</td><td>-.68</td><td>25.11</td><td>.38</td><td>24.65</td><td>-.63</td><td>23.79</td><td></td></tr></table>

NaN. Default color legend  
Australia 61 2 9777 8600 Brazil 5511 3048 4500 Europe 44 20 7330 7500 Germany 49 69 9204 1210 Hong Kong 852 2977 6000  
Japan 81 3 3201 8900 Singapore 65 6212 1000 U.S. 1 212 318 2000 Copyright 2014 Bloomberg Finance L.P.  
SN 785509 EDT GMT-4:00 H177-3818-0 09-Apr-2014 12:47:46

# Volatility surface: AMZN

<table><tr><td>Expiry</td><td colspan="4">19 Apr 2014</td><td colspan="4">17 May 2014</td><td colspan="4">21 Jun 2014</td><td colspan="4">19 Jul 2014</td><td colspan="4">18 Oct 2014</td></tr><tr><td>Calls/Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td><td colspan="2">Calls</td><td colspan="2">Puts</td></tr><tr><td>Strike</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td><td>DM</td><td>IVM</td></tr><tr><td>280.00</td><td>.98</td><td>55.66</td><td>-.02</td><td>53.40</td><td>.86</td><td>48.25</td><td>-.14</td><td>46.67</td><td>.83</td><td>40.35</td><td>-.16</td><td>38.61</td><td>.81</td><td>36.77</td><td>-.18</td><td>35.63</td><td>.77</td><td>34.48</td><td>-.22</td><td>33.08</td></tr><tr><td>285.00</td><td>.98</td><td>47.38</td><td>-.03</td><td>50.74</td><td>.83</td><td>48.31</td><td>-.16</td><td>45.71</td><td>.81</td><td>39.40</td><td>-.19</td><td>38.04</td><td>.79</td><td>36.61</td><td>-.20</td><td>35.10</td><td>.75</td><td>34.06</td><td>-.24</td><td>32.75</td></tr><tr><td>290.00</td><td>.94</td><td>53.36</td><td>-.05</td><td>48.05</td><td>.81</td><td>47.17</td><td>-.19</td><td>44.94</td><td>.78</td><td>39.05</td><td>-.21</td><td>37.48</td><td>.76</td><td>36.34</td><td>-.23</td><td>34.44</td><td>.73</td><td>33.43</td><td>-.27</td><td>32.50</td></tr><tr><td>295.00</td><td>.93</td><td>47.70</td><td>-.06</td><td>45.69</td><td>.78</td><td>45.17</td><td>-.22</td><td>44.18</td><td>.75</td><td>38.71</td><td>-.24</td><td>37.02</td><td>.74</td><td>35.31</td><td>-.26</td><td>34.08</td><td>.71</td><td>32.87</td><td>-.29</td><td>32.11</td></tr><tr><td>300.00</td><td>.89</td><td>47.88</td><td>-.09</td><td>43.23</td><td>.75</td><td>44.56</td><td>-.25</td><td>43.42</td><td>.72</td><td>38.21</td><td>-.27</td><td>36.51</td><td>.71</td><td>34.87</td><td>-.29</td><td>34.00</td><td>.68</td><td>32.81</td><td>-.31</td><td>31.80</td></tr><tr><td>305.00</td><td>.85</td><td>45.62</td><td>-.13</td><td>41.09</td><td>.71</td><td>43.74</td><td>-.29</td><td>42.74</td><td>.69</td><td>37.40</td><td>-.31</td><td>36.07</td><td>.68</td><td>34.48</td><td>-.32</td><td>33.54</td><td>.66</td><td>32.30</td><td>-.34</td><td>31.68</td></tr><tr><td>310.00</td><td>.82</td><td>39.98</td><td>-.18</td><td>39.65</td><td>.67</td><td>43.80</td><td>-.33</td><td>42.16</td><td>.65</td><td>37.05</td><td>-.34</td><td>35.56</td><td>.65</td><td>33.86</td><td>-.35</td><td>33.14</td><td>.63</td><td>32.05</td><td>-.37</td><td>31.33</td></tr><tr><td>315.00</td><td>.74</td><td>38.38</td><td>-.26</td><td>38.31</td><td>.63</td><td>42.99</td><td>-.37</td><td>41.56</td><td>.61</td><td>36.59</td><td>-.38</td><td>35.35</td><td>.62</td><td>33.54</td><td>-.38</td><td>32.92</td><td>.61</td><td>32.05</td><td>-.39</td><td>31.12</td></tr><tr><td>320.00</td><td>.65</td><td>37.84</td><td>-.35</td><td>37.21</td><td>.58</td><td>42.54</td><td>-.42</td><td>41.19</td><td>.58</td><td>36.16</td><td>.42</td><td>34.67</td><td>.58</td><td>33.56</td><td>-.42</td><td>32.66</td><td>.58</td><td>31.64</td><td>-.42</td><td>30.93</td></tr><tr><td>325.00</td><td>.54</td><td>36.78</td><td>-.46</td><td>36.31</td><td>.54</td><td>41.87</td><td>-.46</td><td>40.53</td><td>.54</td><td>35.78</td><td>-.46</td><td>34.46</td><td>.54</td><td>33.18</td><td>-.46</td><td>32.43</td><td>.55</td><td>31.49</td><td>-.45</td><td>30.69</td></tr><tr><td>330.00</td><td>.43</td><td>35.57</td><td>-.57</td><td>34.99</td><td>.49</td><td>41.35</td><td>-.51</td><td>40.00</td><td>.50</td><td>35.45</td><td>-.50</td><td>33.89</td><td>.51</td><td>33.00</td><td>-.49</td><td>32.16</td><td>.53</td><td>31.53</td><td>-.47</td><td>30.65</td></tr><tr><td>335.00</td><td>.32</td><td>34.82</td><td>-.69</td><td>34.19</td><td>.44</td><td>40.81</td><td>-.56</td><td>39.45</td><td>.46</td><td>35.01</td><td>-.54</td><td>33.67</td><td>.47</td><td>32.67</td><td>-.53</td><td>31.98</td><td>.50</td><td>31.29</td><td>-.50</td><td>30.59</td></tr><tr><td>340.00</td><td>.22</td><td>34.59</td><td>-.78</td><td>33.80</td><td>.40</td><td>40.58</td><td>-.60</td><td>39.57</td><td>.42</td><td>34.77</td><td>-.58</td><td>33.26</td><td>.44</td><td>32.63</td><td>-.57</td><td>31.62</td><td>.47</td><td>31.21</td><td>-.53</td><td>30.29</td></tr><tr><td>345.00</td><td>.15</td><td>34.47</td><td>-.85</td><td>34.14</td><td>.35</td><td>40.18</td><td>-.65</td><td>38.82</td><td>.39</td><td>34.63</td><td>-.61</td><td>33.73</td><td>.40</td><td>32.40</td><td>-.60</td><td>31.50</td><td>.45</td><td>31.09</td><td>-.56</td><td>30.05</td></tr><tr><td>350.00</td><td>.09</td><td>34.92</td><td>-.91</td><td>33.55</td><td>.31</td><td>40.07</td><td>-.70</td><td>38.37</td><td>.35</td><td>34.56</td><td>-.65</td><td>33.51</td><td>.37</td><td>32.30</td><td>-.63</td><td>31.43</td><td>.42</td><td>30.80</td><td>-.58</td><td>30.03</td></tr><tr><td>355.00</td><td>.06</td><td>35.90</td><td>-.97</td><td>28.83</td><td>.27</td><td>39.71</td><td>-.73</td><td>38.86</td><td>.31</td><td>34.42</td><td>-.70</td><td>32.51</td><td>.34</td><td>32.17</td><td>-.67</td><td>31.27</td><td>.40</td><td>30.93</td><td>-.61</td><td>30.04</td></tr><tr><td>360.00</td><td>.04</td><td>37.29</td><td>-.99</td><td>29.45</td><td>.24</td><td>39.64</td><td>-.77</td><td>38.67</td><td>.28</td><td>34.01</td><td>-.72</td><td>33.19</td><td>.31</td><td>32.09</td><td>-.70</td><td>31.04</td><td>.37</td><td>30.75</td><td>-.63</td><td>29.83</td></tr><tr><td>365.00</td><td>.03</td><td>38.73</td><td></td><td></td><td>.20</td><td>39.53</td><td>-.80</td><td>38.60</td><td>.25</td><td>33.81</td><td>-.75</td><td>32.76</td><td>.28</td><td>31.82</td><td>-.73</td><td>30.85</td><td>.35</td><td>30.49</td><td>-.66</td><td>29.60</td></tr><tr><td>370.00</td><td>.02</td><td>40.89</td><td>-1.0</td><td></td><td>.17</td><td>39.55</td><td>-.84</td><td>37.03</td><td>.22</td><td>33.96</td><td>-.79</td><td>31.97</td><td>.25</td><td>31.75</td><td>-.76</td><td>30.72</td><td>.32</td><td>30.37</td><td>-.68</td><td>29.49</td></tr></table>

# Volatility smile: possible explanations

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/53cdde68-4326-4fa7-ae7a-c124d8711fdd/fa104ef08e2d6e817afe43db680cc9ba8c63c7adcd211e4a187af5c0d3e2a946.jpg)

Why does the smile exist?

The market prices options using a risk-neutral distribution of log-returns with fatter tails than the Normal (excess kurtosis).

What contributes to those fat tails?

$\triangleright$  Clustering of volatility.  
Jumps introduce extreme outcomes into return distributions, especially short-term.

# Volatility skew: possible explanations in equity markets

Why's the smile skewed? (Why fatter tails on left?) Physical causes:

Negative correlation between price and instantaneous volatility. Empirically, instantaneous volatility increases as price decreases. This fattens the left tail of the distribution (negative skewness).  
$\triangleright$  Possibility of big down-jumps (crashes) also fattens the left tail.  
The bull walks up the stairs, the bear jumps out the window.

Combined with risk preferences:

- "Supply and demand": Fear of downside leads to demand for protection/insurance, driving up the prices (hence implied vols) of OTM puts. And willingness to sell part of the upside leads (covered-) call writers to supply OTM calls, driving prices down.

# Volatility skew: possible explanations in equity markets

Why is the smile skewed? Another way to think about it:

$\triangleright$  Implied volatility at strike  $K$  depends on the option price, which depends on expected future volatility - specifically, on expected future volatility along paths near  $K$ . Why? Future volatility along paths away from  $K$  does not help the option holder, because linear payoffs (e.g. zero, forward) are insensitive to vol. Only the convex part of the payoff brings benefits from volatility.  

- Future volatility along paths near downside strikes is likely higher than future volatility along paths near upside strikes. So by the above logic, downside-strike options should trade higher above their intrinsic lower bound than upside-strike options do.