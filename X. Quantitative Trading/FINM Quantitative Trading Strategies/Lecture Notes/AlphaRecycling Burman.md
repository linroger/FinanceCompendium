---
parent_directory:
title: A recycling framework for the construction of Bonferroni-based multiple tests
tags:
aliases:
parent_folder: Advanced Investments
subfolder:
key_concepts:
cssclasses: academia
linter-yaml-title-alias: A recycling framework for the construction of Bonferroni-based multiple tests
---

# A recycling framework for the construction of Bonferroni-based multiple tests

C.-F. Burman $^{1,*,\dagger}$ , C. Sonesson $^{1}$  and O. Guilbaud $^{2}$

$^{1}$ AstraZeneca R&D, SE-43183 Mölndal, Sweden

$^{2}$ AstraZeneca R&D, SE-15185 Södertälje, Sweden

# SUMMARY

In this paper we describe Bonferroni-based multiple testing procedures (MTPs) as strategies to split and recycle test mass. Here, 'test mass' refers to (parts of) the nominal level  $\alpha$  at which the family-wise error rate is controlled. Briefly, test mass is split between different null hypotheses, and whenever a null hypothesis is rejected, the part of  $\alpha$  allocated to it may be recycled to the testing of other hypotheses. These recycling MTPs are closed testing procedures based on raw  $p$ -values associated with testing the individual null hypotheses, and the class of such MTPs includes, for example, serial and parallel gatekeeping, fallback and Holm procedures. Graphical displays and a concise algebraic notation are provided for such MTPs. This recycling approach has pedagogical advantages and may facilitate the tailoring of MTPs for different purposes. Copyright © 2009 John Wiley & Sons, Ltd.

KEY WORDS: multiplicity; Bonferroni; Holm; family-wise error rate; gatekeeping; closed tests

# 1. INTRODUCTION

The testing of multiple hypotheses is common in scientific experiments. If interest lies in controlling the risk of drawing any false-positive conclusions, i.e. controlling the family-wise error rate (FWER) in the strong sense at a pre-specified level  $\alpha$ , one needs to use appropriate multiple testing procedures (MTPs), see [1, p. 3] and [2, Section 1.2]. To develop a new MTP is challenging and the field is not easily accessible, not even to all statisticians. In order to have a clear understanding of how MTPs work and how to choose a method in a certain application, there is a need for describing different MTPs in an easy way. In this paper we present a 'recycling' framework to serve such purpose. All MTPs studied here control the FWER at a pre-specified level  $\alpha$ .

When constructing MTPs, we start with a total test mass of  $\alpha$ . Our framework is based on two simple operations: splitting test mass and recycling (or reusing) test mass. As a simple example, the

(possibly weighted) Bonferroni test procedure splits the test mass on a number of hypotheses. In a fixed-sequence procedure, on the other hand, the recycling operation is used. In such a procedure, the most important null hypothesis is first tested at level  $\alpha$ . If and only if this test is significant, the test mass  $\alpha$  may be recycled and a second null hypothesis can then be tested at the full level  $\alpha$ . The two operations of splitting and recycling test mass can be combined. Furthermore, they can be applied not only to single hypotheses, but also to units, where each unit in its turn is composed by a number of hypotheses using splitting and/or recycling test mass within the unit. We will develop a graphical display and a corresponding algebraic notation to describe a recycling MTP and show how the graphical framework aids in developing new MTPs.

The development of new methods within the field of multiple inference has been rapid in recent years. The MTPs suggested in the literature have become more and more intricate to meet the demands of more elaborate study designs. Several types of MTPs are constructed as multi-stage procedures, where families of null hypotheses are tested in a hierarchical fashion. In serial gatekeeping [3-6], all hypotheses in a family of higher order have to be rejected before any testing can be performed in a family of lower order. Another type of gatekeeping is parallel gatekeeping [6, 7], where only a subset of the hypotheses in a family needs to be rejected before allowing for testing in families of lower order. A way to allow for testing of hypotheses in families of lower order without any of the hypotheses in the higher ranked family being rejected is to use a multi-stage fallback MTP [8]. In such an MTP,  $\alpha$  is split and parts of it are retained and used in families of lower order, no matter what the results are in the higher ranked families. The simple framework presented in this paper brings all these types of procedures together and it also contains many MTPs that are not based on hierarchical families. As will become clear in Section 3, the tests within the recycling framework can be seen as closed tests [9] using weighted Bonferroni tests for the intersection hypotheses. The recycling approach may also be viewed as a way to generate useful short-cut procedures [10].

The main benefits of the recycling framework lie first in the presentation of the methods. The graphical displays are very easy to interpret, both for statisticians and non-statisticians and we argue that they are easier to interpret than, for example, a typical description of a closed test procedure. Another benefit is the ease with which you can create and tailor new types of MTPs within the recycling framework by the splitting and recycling operations, and also illustrate the MTPs graphically. We believe that this benefit is essential even if you are familiar with the general closed testing framework. In this paper, we also develop a concise algebraic notation of every recycling MTP, which can be used, for example, in a clinical study protocol to clearly specify which MTP is to be used.

In Section 2 the recycling framework is presented by introducing gradually more complicated examples. Examples 1 and 2 illustrate the basic operations, splitting and recycling test mass. These operations are combined in Examples 3 and 4. Test mass from different routes can be added, which is demonstrated in Examples 4-6. We encounter graphical loops for the graphs in Examples 6-7 and discuss their interpretation. In Section 3 we give some general results, for example that the recycling MTPs control the FWER in the strong sense and belong to the class of consonant closed tests. Section 4 contains a number of examples from recent papers of new types of MTPs and we show how they can be viewed as recycling MTPs. We also show by examples how easy it is to construct alternative MTPs within the recycling framework. Some brief conclusions are given in Section 5 together with a discussion on the relation to tree-gatekeeping procedures [11]. Some technical details are given in the appendix together with an algorithm for the calculation of adjusted  $p$ -values.

# 2. THE RECYCLING FRAMEWORK

# 2.1. Splitting and recycling test mass

We are interested in MTPs for a given family  $S = \{1, \dots, n\}$  of  $n$  null hypotheses labeled  $1, \dots, n$ . It is assumed that for each  $k \in S$ , a raw, i.e. unadjusted,  $p$ -value  $p_k$  (corresponding to an underlying statistical test of hypothesis  $k$ ) is available such that  $\operatorname*{Pr}(p_k \leq u) \leq u$  for any  $0 \leq u \leq 1$  if hypothesis  $k$  is true. The  $p_k$ -based test that rejects hypothesis  $k$  if and only if  $p_k \leq u$  then has marginal level  $u$ . We will not assume any specific dependency structure between  $p_1, \dots, p_n$ . The MTPs considered in this paper are based on these raw  $p$ -values and the method of splitting and recycling test mass presented below. Here, 'test mass' refers to (parts of) the nominal level  $\alpha$  at which the FWER is controlled in the strong sense (cf. Section 3.3). We will make extensive use of examples to develop this framework, and start by some basic examples of splitting and recycling test mass. The algebraic notation will be expanded and discussed further in Section 3.4, but we will include it in each example to follow.

# Example 1 (Bonferroni procedure; splitting test mass)

Using the Bonferroni MTP for  $S$ , the total test mass  $\alpha$  is split into parts  $\alpha_{k} = w_{k}\alpha$  where the weights  $w_{1},\ldots ,w_{n}$  are nonnegative and have a sum of at most 1. This MTP rejects any null hypothesis  $k$  for which the corresponding raw  $p$ -value satisfies  $p_k\leqslant \alpha_k$ ; i.e. hypothesis  $k$  is tested at marginal level  $\alpha_{k}$  through its  $p$ -based test. The risk of rejecting any true null hypothesis with this MTP is then at most  $\Sigma_{k}\alpha_{k}\leqslant \alpha$ . Suppose, for example, that  $n = 3$ ,  $\alpha = 0.05$ , and  $w_{1} = 0.7$ ,  $w_{2} = 0.2$  and  $w_{3} = 0.1$ . Then hypotheses 1, 2 and 3 are tested through their  $p$ -based test at marginal levels  $\alpha_{1} = 0.035$ ,  $\alpha_{2} = 0.010$  and  $\alpha_{3} = 0.005$ , respectively. The graphical representation of such a procedure is given in Figure 1(a). The weights  $w_{k}$  are displayed next to the arrows in the figure, indicating how the total test mass  $\alpha$  is split between the hypotheses. Most often, such a Bonferroni MTP is used with equal weights,  $w_{k} = 1 / n$ ,  $1\leqslant k\leqslant n$ . For simplicity, equal weights will usually be suppressed in graphs, unless there can be a misinterpretation. Unequal  $w_{k}$ 's may, for example, reflect the relative importance of the hypotheses, with larger  $w_{k}$ 's for more important hypotheses.

The basic idea in the recycling framework is that whenever a hypothesis is rejected, you are able to recycle the associated test mass to another hypothesis. This principle is applied in the following example.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/193e918b6d86c1389270d9f9409e08807ba1e72e113583350d1d8ae901b26b64.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/53f5295b33993eb2d7c7fc8e82abd622a68784eb35ae4800745a46869e97f381.jpg)  
Figure 1. Graphical display of: (a) the weighted Bonferroni procedure in Example 1; (b) the fixed-sequence MTP in Example 2; and (c) the combination of Bonferroni and fixed-sequence MTPs in Example 3.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/568b362704e142923621d024f9f27fea5aba6beff17e5dcb0772c2d4adb90d8a.jpg)

# Example 2 (Fixed-sequence procedure; recycling test mass)

A fixed-sequence procedure allocates all test mass to one hypothesis at a time. The testing order for the hypotheses in  $S$ , say the order 1, 2, 3, is prespecified. In the first step, the first hypothesis, 1, is tested at significance level  $\alpha$ . If 1 is rejected, i.e. if  $p_1 \leqslant \alpha$ , all the test mass is recycled to test hypothesis 2. If also 2 is rejected, i.e.  $p_2 \leqslant \alpha$ , then hypothesis 3 is tested at significance level  $\alpha$ . Figure 1(b) shows the graphical description of this MTP. A fixed-sequence procedure may continue with arbitrarily many hypotheses, stopping as soon as one null hypothesis is not rejected.

The splitting and recycling operations from the previous examples can be combined to generate increasingly complex MTPs. Wherever a single hypothesis occurs in a graph, it can be replaced by a more complex unit, such as a sequence of hypotheses or a Bonferroni procedure over a number of hypotheses. In Example 3, a Bonferroni MTP of two elementary hypotheses is modified by replacing one of the hypotheses by a sequence of two hypotheses. Similarly, in Example 4 in the next subsection, a sequential procedure is modified by replacing one of the hypotheses by a Bonferroni procedure.

# Example 3 (Bonferroni procedure over groups)

Figure 1(c) shows an MTP for  $S = \{1,2,3\}$  that splits the total test mass  $\alpha$  into two equal parts. One part of the test mass,  $\alpha /2$ , is used to test hypothesis 3. The rest of the test mass,  $\alpha /2$ , is used to test the fix sequence 1, 2. In this sequence (similar to Example 2), hypothesis 1 is first tested at level  $\alpha /2$  and this test mass can be recycled to test also the hypothesis 2 if and only if 1 is rejected. This type of testing procedure may be reasonable when hypotheses 1 and 2 are closely related, whereas hypothesis 3 is related to another dimension. In a diabetes trial, hypotheses 1 and 2 could concern variables indicating lipid control, such as LDL and HDL cholesterol, whereas hypothesis 3 concerns glycemic control. This example can be generalized to split the test mass over an arbitrary number of sequences, each including an arbitrary number of hypotheses.

The graphical display in Figure 1 shows how the MTPs in Examples 1-3 can be represented. The arrows show how the total test mass  $\alpha$  is split between tests and how test mass  $\alpha$  is recycled after the rejection of a hypothesis. If no weights are assigned to the arrows, the test mass is split equally between the alternatives to which the arrows go. Using these kinds of graphical displays clearly aids in the understanding of the procedure, which will become even clearer in Section 4 when we describe more complicated MTPs. Forming the graphical display of how you want the test mass to be split and recycled is the only step needed when defining new recycling MTPs. Note that the graphical representation of how to recycle the test mass is not the same as the graphs of, for example, Dmitrienko et al. [11], which describe the logical restrictions among the null hypotheses.

The graphical display is enough to define an MTP, but it is sometimes convenient to be able to use a concise algebraic notation as an alternative or complement. The sequence of hypotheses 1,2,3 is simply written as 123 and similarly for other sequences. The unweighted Bonferroni MTP of hypotheses 1-3 is denoted by  $B(1,2,3)$  and the MTP of Example 3 is denoted by  $B(12,3)$ . When test mass is split unequally, we indicate this by providing the weights  $w_{k}$  within brackets. For example,  $B(1,2,3)[0.7,0.2,0.1]$  denotes the MTP in Figure 1(a). In a graph we generally allow multiple boxes for the same hypothesis. We use the convention that the test mass allocated to the boxes corresponding to the same hypothesis,  $k$ , is added when testing  $k$ . If  $k$  is rejected, the test mass from each of the boxes containing  $k$  is recycled to other hypotheses, according to the arrows from each box.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/d285c738b6263f0a6603e5e6fcaca86b59ef6f610733dea23e40b5bc881e842c.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/de0050814df18cb0de21ac34eec11ee961fac62b902dc79e0f2b065d901098f5.jpg)  
(c) B(123,23,3)[0.7,0.2,0.1]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/cadcd8969f5d02a1a89e10032ace4ecfa47e340b33a8d548f4ba4aca5755276e.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/d7e3b88b7de1a35f8d3b41055c289bae6e9c1dbea29e4ef44903abe05d99b0ab.jpg)  
(d) B(123,23,3)[0.7,0.2,0.1]  
Figure 2. The graphical display of the parallel gatekeeping procedure in Example 4 is shown in (a)-(b) and the fallback procedure in Example 5 is shown in (c) and (d). In (a) and (c), respectively, the compact version of the graphs is displayed and in (b) and (d) we show the corresponding default graphs.

In several of the examples to follow, we will display the same MTP by two (or more) graphical representations. Every recycling MTP can be displayed by something we refer to as a default graph. Such a graph splits the test mass into several parts (not necessarily of equal size), each allocated to a fixed-sequence of hypotheses. All graphs in Figure 1 are simple examples of graphs of that form. Default graphs are typical examples where multiple boxes can be used for the same hypothesis. The default graph is a way to display a recycling test graphically as a Bonferroni split over a number of sequences of hypotheses. This will be further elaborated in the coming sections. However, most often we prefer a compact graphical notation, which describe how the test mass is split and recycled in a straighter way than the default graph. This is illustrated, for example, in Figure 2 in the next section, which gives compact and default graphs for the parallel gatekeeping and fallback MTPs considered in Examples 4 and 5.

# 2.2.Adding test mass

In the previous examples, test mass has been allocated to each hypothesis in  $S$  through a single route. The test mass has either been allocated to a certain hypothesis in the first split in the graph, allowing it to be tested at a fixed level irrespectively of the result of other tests, or it could be tested if and only if some of the other hypotheses were rejected and if so, this was done at a fixed level. However, it is also possible to combine test mass from different sources. In parallel gatekeeping, any significant test in a higher family of hypotheses is enough to recycle some test

mass to the testing of hypotheses in a lower family (see Example 4). In Example 5 we present a fallback procedure, which is a modified fixed-sequence procedure, guaranteeing that some initial test mass (that one can fall back on) is available for each hypothesis. This initial test mass can be increased (i.e. added to) if prior hypotheses in the sequence are rejected. Fallback procedures may also have a number of sequentially ordered families of hypotheses, see Dmitrienko et al. [8] and Example 10 below.

# Example 4 (Parallel gatekeeping)

As in the previous examples, let  $S = \{1,2,3\}$ . In Figure 2(a), a Bonferroni unit (containing hypotheses 1 and 2) is placed in sequence prior to the single hypothesis 3. The resulting procedure is the simplest example of a parallel gatekeeping procedure [6], where a lower family (in our case consisting only of hypothesis 3) is tested if and only if any of the hypotheses in a higher family (hypotheses 1 and 2) is rejected. Following Figure 2(a), the test mass  $\alpha$  is split between hypotheses 1 and 2, testing both at level  $\alpha /2$ . The test mass from any rejected hypotheses is recycled to test hypothesis 3. That is, hypothesis 3 is tested at level  $\alpha$ ,  $\alpha /2$  or 0, depending on whether two, one or none of the hypotheses 1 and 2 is rejected. The corresponding default graph can be found in Figure 2(b).

# Example 5 (Fallback procedure)

A fallback procedure for  $S = \{1,2,3\}$  is described in Figure 2(c). Suppose  $\alpha = 0.05$ . Hypothesis 1 is then tested at level  $0.7 \cdot \alpha = 0.035$ . By allocating some test mass directly to hypothesis 2, it is guaranteed to be tested at least at level  $0.2 \cdot \alpha = 0.010$ . However, if 1 is rejected, the test mass from that hypothesis is recycled to hypothesis 2, which is then tested at level  $0.010 + 0.035 = 0.045$ . Similarly, hypothesis 3 is tested at level 0.005, 0.015 or 0.05, respectively, depending on whether 2 is accepted, 2 is rejected but 1 accepted, or both 1 and 2 are rejected. The default graph is displayed in Figure 2(d). The interpretation of the default graph is natural. Suppose, for example, that  $p_1 \leqslant 0.7 \cdot \alpha$ , whereas  $p_2 > 0.2 \cdot \alpha$  and  $p_3 > 0.9 \cdot \alpha$ . Hypothesis 1 is then rejected at level  $0.7 \cdot \alpha$ , i.e.  $p_1 \leqslant 0.7 \cdot \alpha$ , and the test mass  $0.7 \cdot \alpha$  is recycled to hypothesis 2 in the first sequence. Graphically, one may think of this as reducing the first sequence to 23 by removing the 'rejected' 1-box, so that the total test mass available for hypothesis 2 becomes  $(0.7 + 0.2) \cdot \alpha$ , where  $0.7 \cdot \alpha$  comes from the first, reduced sequence and  $0.2 \cdot \alpha$  from the second one. If in addition hypothesis 2 is rejected at level  $0.9 \cdot \alpha$ , i.e. if  $p_2 \leqslant 0.9 \cdot \alpha$ , then the test mass recycled to hypothesis 3 is  $0.7 \cdot \alpha$  from the first sequence, and  $0.2 \cdot \alpha$  from the second sequence. Graphically, one may think of this as reducing the first sequence further to 3, and the second sequence to 3, by removing the 'rejected' 2-boxes. The total test mass available for hypothesis 3 from the three sequences then becomes  $(0.7 + 0.2 + 0.1) \cdot \alpha$ . See Algorithm 1 in Section 3.2 for a general description of how rejections are made in terms of the default graph. Note that the procedure in this example can be seen as an improvement of the weighted Bonferroni MTP of Example 1, and as an alternative to the fixed-sequence MTP of Example 2.

# 2.3. Graphical loops

In some cases, the compact graphical display can contain loops. Often this can occur if the test mass is recycled to the top of the graph. The interpretation should always follow the general rule that the test mass is split according to the arrows displayed in the graph. Thus, if all test mass, or parts of it, is recycled to the top of the graph, it will continue to be split according to the graphical display. As soon as some of the test mass is distributed to a hypothesis (i.e. box) that has already

been rejected, it will continue to be recycled according to the weights associated with the arrows going out from the box containing the rejected hypothesis. To avoid misinterpretations we also give the corresponding default graphs in Examples 6-7. The general interpretation of infinite graphical loops is discussed in connection to a somewhat more complicated example in Appendix A.

# Example 6 (A simple graphical loop)

In many of the previous examples, test mass is sometimes unused, i.e. not recycled, after a hypothesis has been rejected. This is not an efficient use of the test mass. We will call a recycling test procedure alpha-exhaustive if and only if each sequence in its default graph contains all hypotheses, see Section 3.3. In such a procedure, the test mass that becomes available after each rejected hypothesis is always recycled to hypotheses not yet rejected, as long as there are non-rejected hypotheses left. The MTP stops rejecting when the entire test mass is allocated to non-rejected hypotheses and none of these can be rejected. Recycling tests that are not alpha-exhaustive can be improved by adding hypotheses to the sequences of the default graph. The fallback procedure of Example 5 can be improved and made alpha-exhaustive, e.g. by recycling test mass from hypothesis 3 to the top of the graph. The resulting MTP is given in Figure 3, and in the default graph we see that each sequence now contains all hypotheses. The compact graph includes an infinite loop, from 1 to 2 to 3, back to 1, etc. The general interpretation of infinite loops is described in Appendix A. However, in this particular case the interpretation is simple: test mass from rejected hypotheses is recycled and summed up according to the arrows, and after at most one loop backwards from 3 to 1 no further hypotheses can be rejected. The corresponding graphical interpretation of the default graph is analogous to that given in Example 5 for the graph in Figure 2(d). For example, if hypothesis 1 is rejected at level  $0.7\cdot \alpha$ , then one may think of reducing the sequences by removing the 'rejected' 1-boxes, and so on; cf. Algorithm 1 in Section 3.2.

# Example 7 (Holm procedure, with and without weights)

The Holm procedure [12] is generally more powerful than the Bonferroni procedure. As with the unweighted Bonferroni MTP, the unweighted Holm MTP divides the test mass equally on all hypotheses. Unlike the Bonferroni MTP, however, the Holm MTP recycles the test mass from rejected hypotheses and divides it equally between the non-rejected hypotheses. With  $S = \{1, 2, 3\}$ , each hypothesis is tested at level  $\alpha / 3$  in the first step. In case one of them is rejected, its test mass is recycled, and split equally, to the other two tests. The two remaining tests then receive a total test mass of  $\alpha / 2$  each. If one of these two hypotheses is rejected at this higher level, the remaining hypothesis is tested using all of  $\alpha$ . The default graph is given in Figure 4(a), and Algorithm 1 in Section 3.2 describes how rejections are made in terms of this graph. Figure 4(b) gives another, more compact but equivalent description of the Holm MTP, using an infinite loop. The test mass from rejected hypotheses is looped back to the top of the graph and split on the hypotheses. If, e.g., hypothesis 1 is rejected at level  $\alpha / 3$ , while the other hypotheses are not, the test mass from hypothesis 1 is split equally. In this example, it is straightforward to split this test mass equally on the two other hypotheses. The test mass  $\alpha / 6$  is added to each of the hypotheses 2 and 3. For each of these hypotheses, the total test mass is therefore  $\alpha / 3 + \alpha / 6 = \alpha / 2$ . Since the Holm procedure is quite common, it is useful to have a graphical shortcut notation. We use the convention that when boxes are placed adjacent to each other, it should be interpreted as a Holm procedure. All the graphs in Figure 4(a)-(c) thus correspond to the same, unweighted Holm procedure. There is also the possibility to use weights in a Holm procedure [12]. One example is displayed in Figure 4(d), with weights 0.7, 0.2 and 0.1. The interpretation of the weights is briefly that the test mass is

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/1c4b9bf3c057fa554006e228c412621a0be27b2253353708d54d71b1bc413157.jpg)  
(a) B(123,231,312)[0.7,0.2,0.1]  
Figure 3. Equivalent graphical displays of the alpha-exhaustive testing procedure in Example 6.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/0e094b06e5f0d07bd546a999e7bdefadfdf7a9c04985a2869faf3787c495f32a.jpg)  
(b) B(123,231,312)[0.7,0.2,0.1]

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/407ac5b430f43327fcc2f22a937435c35bedb140f774d5a8ad1688a1cb81cd87.jpg)  
(a)  $\mathbf{H}(1,2,3)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/6b9e9b3ed86029150a3e13f49204e013b2a99549e394a1c8e838c3955c13858e.jpg)  
(b)  $\mathsf{H}(1,2,3)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/8ac308615ba887d6a9c1acd2856682e6eae53a55b592795b9972686baadc3a65.jpg)  
(c)  $\mathsf{H}(1,2,3)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/43cbe27d75aab82a9506fa49eb1427ea79a3d73448b1b74179d05ce8494a8507.jpg)  
(d) H(1,2,3)[0.7,0.2,0.1]  
Figure 4. Three different, equivalent graphical displays of the unweighted Holm procedure and one display of the weighted Holm procedure in Example 7 are found in (a)-(c) and (d), respectively.

split according to the weights and, after initial hypothesis rejections, recycled in proportion to the weights.

# 3. MAIN RESULTS ABOUT RECYCLING MTPs

In this section, we state the main results concerning the recycling MTPs. In particular, we give a precise description in Section 3.2 of how rejections are made, and in Section 3.3 we provide

a short direct proof of the fact that the FWER is controlled in the strong sense. However, we start by summarizing some of the key elements of the recycling framework that we introduced by examples in Section 2.

# 3.1. Sequences, collections and default graphs

A sequence is simply defined as a sequence, of any length, of hypotheses in the family  $S$  considered. We write sequences algebraically on the form  $s = h_1, h_2, \ldots, h_K$ , where  $h_1, \ldots, h_K$  are hypotheses. For example, the sequence of hypotheses 3, 1 and 2 is written as 312 (cf. Example 2 and Figure 1(b)).

A collection consists of a number  $m$  of sequences,  $s_1, \ldots, s_m$ , with associated positive weights  $w_1, \ldots, w_m$ . The sum of the weights is required to be one. A collection may be displayed as a default graph (cf. Section 2.2), or in algebraic notation as  $\{s_1[w_1], \ldots, s_m[w_m]\}$ . Thus to each collection, there is a recycling test procedure defined through the default graph; cf. Figures 1-4. For simplicity, the weights may be omitted and the collection written on the form  $\{s_1, \ldots, s_m\}$  in case all weights are equal, i.e. equal to  $1/m$ . Furthermore, if the collection contains only one sequence, say 312, also the brackets may be omitted. The collection can then equivalently be written as  $\{312[1]\}$ , {312} or simply 312.

A number of collections may be combined in sequence or in parallel to form a new collection. Let us first consider the combination in series. If  $s$  and  $t$  are two sequences, we use the notation  $st$  to denote the sequence of the hypotheses in  $s$  (taken in order) followed by the hypothesis in  $t$  (also taken in order). For example, if  $s = 312$  and  $t = 34$ , then  $st = 31234$ . Note that  $st \neq ts$ , that is, the operation is not commutative. In general, a collection consists of several sequences with associated weights. Let  $c_{1} = \{s_{1}[w_{1}],\ldots ,s_{m}[w_{m}]\}$  and  $c_{2} = \{t_{1}[v_{1}],\ldots ,t_{n}[v_{n}]\}$  be two collections. Then the serial combination  $c = c_{1}c_{2}$  of  $c_{1}$  and  $c_{2}$  is defined to be the collection of all sequences  $s_{j}t_{k}$  ( $1 \leqslant j \leqslant m, 1 \leqslant k \leqslant n$ ) with associated weights  $w_{j}v_{k}$ . That is

$$
c = \left\{s _ {1} t _ {1} \left[ w _ {1} v _ {1} \right], \dots , s _ {1} t _ {\mathrm {n}} \left[ w _ {1} v _ {\mathrm {n}} \right], s _ {2} t _ {1} \left[ w _ {2} v _ {1} \right], \dots , s _ {2} t _ {\mathrm {n}} \left[ w _ {2} v _ {\mathrm {n}} \right], \dots , s _ {m} t _ {1} \left[ w _ {m} v _ {1} \right], \dots , s _ {m} t _ {\mathrm {n}} \left[ w _ {m} v _ {\mathrm {n}} \right] \right\}
$$

The product rule used here to obtain  $c = c_{1}c_{2}$  from  $c_{1}$  and  $c_{2}$  is similar to a Kronecker product of two row vectors with elements consisting of sequences with weights, but we will not use this similarity formally.

Next, let us consider combination in parallel. The parallel combination  $c = u_1c_1 + u_2c_2$  of  $c_1$  and  $c_2$  with weights  $u_1, 0 \leqslant u_1 \leqslant 1$  and  $u_2 = 1 - u_1$ , respectively, is defined to be the collection of all the sequences of  $c_1$  and  $c_2$  with new weights  $u_1w_j$  ( $1 \leqslant j \leqslant m$ ) and  $u_2v_k$  ( $1 \leqslant k \leqslant n$ ), respectively. That is,  $c = \{s_1[u_1w_1], \ldots, s_m[u_1w_m], t_1[u_2v_1], \ldots, t_n[u_2v_n]\}$ . The parallel combination of multiple collections (with nonnegative weights  $u_i$ , such that  $\Sigma_iu_i = 1$ ) is defined in a similar way, or through recursion.

Note that a combination may result in a collection that includes the same sequence more than once, possibly with different weights. This is allowed, but we will see in Section 3.4 that the collection in this case can be simplified by adding weights. In Section 3.4 we will also see that if a hypothesis occurs more than once in a sequence, all occurrences after the first can be deleted without changing the corresponding MTP and thus we write, for example,  $1214 = 124$ . Clearly, there is a one-to-one correspondence between default graphs and collections: to any default graph there is a unique collection (of sequences with weights), and to any collection (of sequences with weights), there is a default graph. Note also that the definitions imply that the class of collections is closed under serial and parallel combinations.

# 3.2. Rejection algorithm for a recycling MTP in terms of the default graph

We have defined collections and equivalent default graphs in Section 3.1. It remains to interpret these collections and graphs as recycling MTPs. Thus, let the level  $\alpha$  ( $0 < \alpha < 1$ ) be given, and let  $c = \{s_1[w_1], \ldots, s_m[w_m]\}$  be a given collection, with associated default graph. We now first introduce certain test masses  $\alpha_k(A)$  in terms of the default graph. As will be seen,  $\alpha_k(A)$  will represent the available test mass for hypothesis  $k$  if the hypotheses in  $A \subset S$  are rejected. The rejection rule for the recycling MTP is then stated as Algorithm 1 in terms of these test masses.

Let  $A \subset S$  be given. Reduce the sequences in the default graph by removing all boxes corresponding to hypotheses in  $A$  from the sequences (while retaining relations within sequences for remaining boxes, as well as the original weights  $w_{i}$  for the sequences). Consider the first hypothesis in each of the resulting sequences that remain. Then for each hypothesis  $k \in S \backslash A$ , define  $\alpha_{k}(A)$  to be equal to  $\alpha$  multiplied by the sum of the weights  $w_{i}$  of the sequences for which  $k$  is the first hypothesis. It is understood here that  $\alpha_{k}(A) = 0$  if  $k$  is not the first hypothesis in any sequence.

In the particular case with  $A$  equal to the empty set  $\emptyset$ , no reduction of sequences takes place, and  $\alpha_{k}(\emptyset)$  is well defined as just described for each  $k \in S$  in terms of the first hypotheses in the original sequences of the default graph.

# Algorithm 1

Step 1: Reject each hypothesis  $k \in S$  for which  $p_k \leqslant \alpha_k(\emptyset)$  and  $\alpha_k(\emptyset) > 0$ . If no or all  $k \in S$  can be rejected then stop; otherwise: let  $R_1$  be the set of these rejected hypotheses, set  $A_1 = R_1$ , and go to Step 2.

Step  $i \geqslant 2$ : Reject each hypothesis  $k \in S \setminus A_{i-1}$  for which  $p_k \leqslant \alpha_k(A_{i-1})$  and  $\alpha_k(A_{i-1}) > 0$ . If no or all  $k \in S \setminus A_{i-1}$  can be rejected then stop; otherwise: let  $R_i$  be the set of these rejected hypotheses, set  $A_i = A_{i-1} \cup R_i$ , and go to Step  $i+1$ .

Note for example that if  $k$  is not among the rejected hypotheses in Step 1, so that  $k \in S \setminus A_1$ , then hypothesis  $k$  may possibly be rejected in Step 2, because after the removal of all boxes corresponding to  $A_1$  from the default graph, possibly more sequences have  $k$  as their first hypothesis, so  $\alpha_k(A_1) \geqslant \alpha_k(\emptyset)$ . This inequality reflects the recycling of test mass that becomes available for hypothesis  $k$  in Step 2 given the rejections in Step 1. More generally, the recycling of test mass is reflected in the following monotonousness of  $\alpha_k(A)$  as a function of  $A$ : if  $A_* \subset A_{**} \subset S$  and  $k \in S \setminus A_{**}$ , then  $\alpha_k(A_{**}) \geqslant \alpha_k(A_*)$ .

Algorithm 1 provides a precise description of how rejections are made with the recycling MTP, and of the relation with the given collection  $c = \{s_1[w_1],\dots ,s_m[w_m]\}$  and associated default graph. It can be verified that the rejection rules briefly described previously in connection with examples are in accordance with this algorithm.

We now return to the Examples 4-7 and see how the algorithm works using the default graphs. Let  $p_1 = 0.02$ ,  $p_2 = 0.048$  and  $p_3 = 0.001$  and assume that  $\alpha = 0.05$ . In Example 4 we have  $\alpha_1(\emptyset) = 0.025$ ,  $\alpha_2(\emptyset) = 0.025$  and  $\alpha_3(\emptyset) = 0$  in Step 1. Hypothesis 1 can be rejected in this step, so  $R_1 = \{1\}$ . The test mass allocated to hypothesis 1 can now be recycled to hypothesis 3. In Step 2 we have  $\alpha_2(\{1\}) = 0.025$  and  $\alpha_3(\{1\}) = 0.025$  and hypothesis 3 can be rejected, but then the algorithm stops. In Example 5 we have  $\alpha_1(\emptyset) = 0.035$ ,  $\alpha_2(\emptyset) = 0.01$  and  $\alpha_3(\emptyset) = 0.005$  in Step 1. Both 1 and 3 are rejected and in Step 2 we get  $\alpha_2(\{1,3\}) = 0.045$ . However, the algorithm stops without

rejecting hypothesis 2. Example 6 is similar to Example 5 in the first step, but in Step 2 we have  $\alpha_{2}(\{1,3\}) = 0.05$  and in this step we can now reject also hypothesis 2. The Holm procedure in Example 7 starts by splitting the test mass as  $\alpha_{1}(\emptyset) = 0.05 / 3 \approx 0.017$ ,  $\alpha_{2}(\emptyset) \approx 0.017$  and  $\alpha_{3}(\emptyset) \approx 0.017$  in Step 1. Hypothesis 3 is rejected and in Step 2 we get  $\alpha_{1}(\{3\}) = 0.025$ ,  $\alpha_{2}(\{3\}) = 0.025$ . Hypothesis 1 can be rejected in Step 2 and finally hypothesis 2 is rejected in Step 3 of the algorithm after receiving the total test mass.

# 3.3. Recycling tests strongly control the FWER

In the next paragraph, we will give a short direct proof of the important fact that the MTP defined through Algorithm 1 strongly controls its type-I FWER to be  $\leqslant \alpha$ . This proof does not refer to the closed test procedure. However, readers familiar with closed tests may note that for any nonempty subset  $A^C = S \setminus A$  of hypotheses, a collection (or default graph) defines a weighted Bonferroni test for the intersection of the hypotheses in  $A^C$ . The Bonferroni test rejects the intersection hypothesis if and only if for at least one  $k \in A^C$ ,  $p_k \leqslant \alpha_k(A)$  and  $\alpha_k(A) > 0$ . Based on this test for an intersection hypothesis, a closed test procedure can be constructed that: (a) is equivalent to the recycling MTP defined through Algorithm 1; (b) is consonant in the sense described in Reference [10]; and (c) is alpha-exhaustive in the sense used in [10] if each sequence in the collection  $c$  contains all hypotheses in the family  $S$  considered.

For the direct proof, let  $T$  denote the unknown set of true hypotheses in  $S$ . Let  $E_1$  be the event that Algorithm 1 rejects at least one hypothesis in  $T$ . The problem is thus to prove that  $\operatorname{Pr}(E_1) \leqslant \alpha$ . This is done by showing first that  $E_2 = \bigcup_{k \in T} [p_k \leqslant \alpha_k(S \setminus T)]$  occurs whenever  $E_1$  occurs, and then that  $\operatorname{Pr}(E_2) \leqslant \alpha$ . Suppose  $E_1$  occurs. There is then a first Step  $i \geqslant 1$  in Algorithm 1 in which the rejection set  $R_i \subset S \setminus A_{i-1}$  contains at least one hypothesis  $k \in T$ . For this step  $i$  and this hypothesis  $k$ , it follows from Algorithm 1 that  $p_k \leqslant \alpha_k(A_{i-1})$ . Furthermore, because no hypothesis in  $T$  is rejected before Step  $i$ ,  $A_{i-1} \subset S \setminus T$ , so it follows from the monotonicity of  $\alpha_k(A)$  as a function of  $A$  that  $\alpha_k(A_{i-1}) \leqslant \alpha_k(S \setminus T)$ ; cf. Section 3.2. Thus there is a  $k \in T$  for which  $p_k \leqslant \alpha_k(S \setminus T)$ , which means that the event  $E_2$  occurs. It remains only to show that  $\operatorname{Pr}(E_2) \leqslant \alpha$ , because  $\operatorname{Pr}(E_1) \leqslant \operatorname{Pr}(E_2)$ . From Boole's inequality, and the fact that  $\operatorname{Pr}[p_k \leqslant u] \leqslant u$  if  $u \in [0, 1]$  and  $k \in T$ , it follows that  $\operatorname{Pr}(E_2) \leqslant \sum_{k \in T} \alpha_k(S \setminus T)$ . Moreover, each  $\alpha_k(S \setminus T)$  with  $k \in T$  is based on the reduced sequences from the default graph that consist only of true hypotheses in  $T$ , so their sum over  $k \in T$  is at most equal to  $\alpha$  multiplied by the sum of the weights  $w_i$  of the original sequences in the default graph, that is  $\operatorname{Pr}(E_2) \leqslant \alpha$ .

It is no surprise that the adjusted  $p$ -values can be calculated for a recycling MTP. By gradually increasing the total test mass  $\alpha$ , one may observe the smallest value of  $\alpha$  for which a certain hypothesis  $k$  is rejected. This value is the multiplicity adjusted  $p$ -value for hypothesis  $k$ . Appendix B gives an algorithm for calculating adjusted  $p$ -values.

# 3.4. More about notation

According to the developments in Sections 3.2 and 3.3, only the first occurrence of any hypothesis in a sequence is of relevance. Thus, later, duplicate occurrences of a hypothesis in a sequence can be removed without changing the MTP defined through Algorithm 1. For example, the sequence 31234 can be reduced to the sequence 3124, and we will write  $31234 = 3124$ .

Moreover, a collection may contain duplicate sequences, especially when duplicated hypotheses are removed from the sequences. Clearly, the MTP remains unchanged if such duplicate sequences are replaced by one occurrence of the sequence with associated weight equal to the sum of

the weights of all the equivalent sequences. For example,  $\{31234[0.5], 3124[0.2], 1234[0.3]\} = \{3124[0.5], 3124[0.2], 1234[0.3]\} = \{3124[0.7], 1234[0.3]\}$ , and the MTPs based on any of these three collections are equivalent.

As a recycling MTP based on a given collection  $c = \{s_1[w_1],\dots,s_m[w_m]\}$  can be seen as a Bonferroni procedure over the sequences in  $c$ , we will alternatively use the notation  $B_{[w_1,\dots,w_m]}(s_1,\dots,s_m)$  or  $B(s_1,\dots,s_m)[w_1,\dots,w_m]$  to denote the collection  $c$ . Similarly, we allow the Bonferroni operator  $B$  to act on collections. If  $c_1,\ldots ,c_m$  are collections, we define  $B_{[w_1,\dots,w_m]}(c_1,\ldots ,c_m)$  as the parallel combination of the collections, with associated weights  $w_{1},\ldots ,w_{m}$ , respectively. If the weights are equal (that is,  $1 / m$ ) we use the simplified notation  $B(c_{1},\ldots ,c_{m})$ .

The Holm procedure is often a useful building block in more complicated procedures. We will therefore use the shortcut notation  $H(c_{1},\ldots ,c_{m})$  to mean the collection of all  $m!$  serial combinations of the permutation of the collections, all with equal weight  $1 / m!$ .

We use serial combination (e.g.  $c_{1}c_{2}$ ), Bonferroni and Holm operators to describe the examples presented in the following section. The notation is also used in the figures in Section 2.

# 4. EXAMPLES OF RECYCLING TEST PROCEDURES

In this section, we will construct a number of somewhat more elaborate recycling tests. We will take examples of several newer methods and describe them with the aid of the graphical framework and the equivalent algebraic notation. For most examples in this section, Appendix D shows how the notation may be rewritten on a form that corresponds to a default graph.

# Example 8 (Serial gatekeeping procedure)

Assume that  $S = \{1,2,3,4\}$  and that we would like to have a serial gatekeeping procedure [3-6] with hypotheses 1 and 2 in the first family and hypotheses 3 and 4 in the second family. Both these families will use a Holm procedure, and thus both hypotheses 1 and 2 must be rejected before any testing in the second family can occur. The relevant collection for the recycling MTP can be expressed as the serial combination  $H(1,2)H(3,4)$  of the two collections  $H(1,2) = \{12,21\}$  and  $H(3,4) = \{34,43\}$ , that is as the collection  $\{1234,1243,2134,2143\}$  of four sequences. These relations between collections are also briefly stated in Appendix D. The graphical display can be found in Figure 5(a). As  $\alpha$  is split equally within the first family, hypotheses 1 and 2 are both tested at level  $\alpha /2$ . In case one of the two, say hypothesis 1, is rejected, the corresponding test mass is added to the test mass already used for the test of hypothesis 2. Thus, 2 can be tested at level  $\alpha$ . As the test mass is recycled within the first family, the second family will only be tested in case all hypotheses in the first family is rejected. In that case, a Holm procedure with test mass  $\alpha$  is used within the second family. Of course, the default graph (not shown) corresponds to the collection of four sequences given previously.

# Example 9 (Parallel gatekeeping procedure)

Suppose that we instead would like to have a parallel gatekeeping procedure [6] with hypotheses 1 and 2 in the first family and hypotheses 3 and 4 in the second family. The first family uses a Bonferroni procedure, whereas the second family uses a Holm procedure. The corresponding notation is  $B(1,2)H(3,4)$  and the graphical display can be found in Figure 5(b). In this case it is enough to reject one of the hypotheses in the first family in order to be able to test the hypotheses in the second family, in that case with a Holm procedure at level  $\alpha / 2$ . If both hypotheses in the

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/a04e0e360c0fcc167e4a43457e9f22efe446e3cdf750770e170bd2b5520722db.jpg)  
(a)  $\mathsf{H}(1,2)\mathsf{H}(3,4)$  
Figure 5. Graphical display of: (a) the serial gatekeeping procedure in Example 8 and (b) the parallel gatekeeping procedure in Example 9.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/021f541c94776b06f6e451a62acdf9760fc3c922d5af0e028c37ff3397805d0b.jpg)  
(b)  $\mathsf{B}(1,2)\mathsf{H}(3,4)$

first family are rejected at level  $\alpha /2$ , the second family is tested at the full level  $\alpha$ . Note that the procedure is not alpha-exhaustive. Test mass won back after the rejection of both hypotheses in the second family is not used to reject a potentially unrejected hypothesis in the first family.

The gatekeeping procedures can be extended to include an arbitrary number of hierarchical families and an arbitrary number of hypotheses per family. The presentation in the recycling graphical framework is straightforward.

# Example 10 (QoL with two further endpoints)

Hommel et al. [10, Section 3.2] presented a clinical trial comparing two treatments with respect to three different primary endpoints (hypotheses 1-3). Endpoint 3, an overall quality of life score (QoL), is a summary measure of four different domain scores. Separate hypothesis testing of the individual domain scores (hypotheses 4-7) is only of interest if hypothesis 3 regarding overall QoL is rejected. The graphical description of the MTP suggested in [10] is presented in Figure 6; the corresponding notation is  $B(13,23,3)H(4,5,6,7)$ . In this procedure, the test mass  $\alpha$  is split equally between the three primary hypotheses 1-3. If any of hypotheses 1 or 2 is significant, the test masses from those tests are recycled to testing hypothesis 3 (QoL). If the test of QoL is significant, this hypothesis' test mass will be used in a Holm procedure for hypotheses 4-7. As an example, let  $p_1 = 0.010$ ,  $p_2 = 0.020$  and  $p_3 = 0.001$ . The total test mass,  $\alpha = 0.05$  say, is first split equally as  $0.05 / 3 \approx 0.017$ , on hypotheses 1-3. Hypotheses 1 and 3 can be rejected directly, as both  $p_1$  and  $p_3$  are lower than  $0.05 / 3$ . The test mass from hypotheses 1 is recycled first to hypothesis 3, and then, since 3 is already rejected, to the testing of hypotheses 4-7. The test mass initially allocated to hypothesis 3 also contributes to this testing. Thus, a Holm MTP on level  $2 \cdot 0.05 / 3$  can be applied to hypotheses 4-7.

Although not mentioned in [10], the suggested MTP in this QoL example is an improved multi-stage fallback procedure [8] based on the three families  $F_{1} = \{1,2\}$ ,  $F_{2} = \{3\}$ ,  $F_{3} = \{4,5,6,7\}$  of hypotheses, with: (a) equal weights within families; (b) the weights  $\frac{2}{3}, \frac{1}{3}, 0$  for  $F_{1}, F_{2}, F_{3}$ , respectively; (c) a Bonferroni MTP within  $F_{1}$  and  $F_{2}$ , and a Holm MTP within  $F_{3}$  (instead of a Bonferroni MTP, which constitutes the improvement).

In addition, for this example, the procedure is not alpha-exhaustive. Test masses won back after rejection of other hypotheses are never used to increase the test mass for hypotheses 1 and 2. In the procedure by Hommel et al. [10], the rejection of primary hypotheses does not depend on the rejection of secondary hypotheses. However, more powerful MTPs are possible that would

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/edfe1701bc88eb594a4c06291394d50fc7145fa95068e87c52b99c0944bfda03.jpg)  
Figure 6. Graphical display of an MTP suggested by Hommel et al. [10] to be used in Example 10. The secondary endpoints (4-7) are only tested if hypothesis 3 (QoL) is rejected.

introduce such a dependency. This aspect is discussed in References [10, Section 4] and [13, Section 2] and we will describe such procedures in Examples 12 and 13.

# Example 11 (Insulin therapy example)

A tree-gatekeeping example from an insulin therapy trial is given by Dmitrienko and Tamhane [13], where patients are allocated to three different treatment groups:  $A =$  new formulation,  $B =$  standard formulation or  $A + B$ . The primary variable is change in HbA1c, indicating long-term glycemic control. All comparisons among treatment arms are of interest and ranked in the order of their clinical relevance as:  $A$  versus  $B$ ,  $A + B$  versus  $B$  and  $A + B$  versus  $A$ . In each comparison one aims at first establishing non-inferiority and only if that has been achieved, to test for superiority.

The procedure suggested by Dmitrienko and Tamhane [13] is a tree-gatekeeping procedure consisting of four families,  $F1 - F4$  as described in Table I. The families are tested sequentially, starting with  $F1$ . The decision on whether or not to test a hypothesis in the lower ranked families depends on which hypotheses have been rejected in some or all previous families. In tree-gatekeeping, a hypothesis is testable only if all hypotheses in the associated serial rejection set are rejected and at least one hypothesis is rejected in the associated parallel rejection set. The logical relations among the hypotheses can be found in Table I, where the serial rejection sets associated with hypotheses are presented. The parallel rejection sets are empty in this example. Thus, for example, hypothesis 3 must be rejected before hypothesis 4 is allowed to be tested since the serial rejection set for hypothesis 4 consists of hypothesis 3. The total test mass  $\alpha$  is split equally between all testable hypotheses in a family. For a detailed description of how to perform tree-gatekeeping, see [11, 13].

To describe such a tree-gatekeeping procedure in the recycling framework, one has to introduce a notation displaying the logical restrictions in the testing procedure. Let  $\lceil k\rceil$  denote a blocking hypothesis in a sequence, indicating that hypothesis  $k$  must be rejected in order for the test mass assigned to the sequence to be able to continue to the hypothesis after  $k$ , while at the same time,

Table I. Raw and adjusted  $p$ -values for the testing procedures in Example 11.  

<table><tr><td>Treatment comparison</td><td>Type of test</td><td>Hypothesis number</td><td>Family*</td><td>Serial rejection†</td><td>Raw p-value</td><td>Adjusted p-values‡</td><td>Adjusted p-values§</td></tr><tr><td>A versus B</td><td>Non-inferiority</td><td>1</td><td>F1</td><td>NA</td><td>0.011</td><td>0.011</td><td>0.011</td></tr><tr><td>A versus B</td><td>Superiority</td><td>2</td><td>F2</td><td>1</td><td>0.023</td><td>0.046</td><td>0.046</td></tr><tr><td>A+B versus B</td><td>Non-inferiority</td><td>3</td><td>F2</td><td>1</td><td>0.006</td><td>0.012</td><td>0.012</td></tr><tr><td>A+B versus B</td><td>Superiority</td><td>4</td><td>F3</td><td>3</td><td>0.018</td><td>0.046</td><td>0.046</td></tr><tr><td>A+B versus A</td><td>Non-inferiority</td><td>5</td><td>F3</td><td>3</td><td>0.042</td><td>0.084</td><td>0.046</td></tr><tr><td>A+B versus A</td><td>Superiority</td><td>6</td><td>F4</td><td>5</td><td>0.088</td><td>0.088</td><td>0.088</td></tr></table>

*Family for tree-gatekeeping procedure in Figure 7(a).  
Serial rejection set for tree-gatekeeping procedure in Figure 7(a).  
$^\ddagger$ Adjusted  $p$ -values using the tree-gatekeeping procedure in Figure 7(a).  
Adjusted  $p$  -values using method in Figure 7(b).

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/7a9c574d5811bab49e35769f73da41b9823ffbfda913060008bdcb5f6fb22dc8.jpg)  
(a) Tree-gatekeeping procedure  
Figure 7. Graphical display of: (a) the tree-gatekeeping procedure in Example 11 suggested by Dmitrienko and Tamhane [13] and (b) an alternative testing procedure that recycles the test mass  $\alpha$  in an alternative way and still tests for superiority only after the corresponding non-inferiority has been established.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/aeda5a59b02d0aeae9569cdafb7b9f2d44ccab6a2b0d5adfc6ff9ab07457a768.jpg)  
(b) 1B(23,3)B(45,5)6

the sequence itself does not contribute with the test mass to the testing of hypothesis  $k$ . The tree-gatekeeping procedure suggested by Dmitrienko and Tamhane [13] can then be described by the collection  $\{12\lceil 3\rceil 4\lceil 5\rceil 6, 12\lceil 3\rceil 56, 134\lceil 5\rceil 6, 1356\}$ , see Figure 7(a).

An alternative recycling MTP can be found in Figure 7(b). The difference between the two procedures lies in how the test mass potentially won back is used. In this alternative testing

procedure, no blocking hypotheses are needed. In Table I we can find the raw  $p$ -values from [13] for the tests together with adjusted  $p$ -values for the two procedures. Using the MTP suggested in [13], hypotheses 1-4 can be rejected at the 0.05 level. For the recycling test in Figure 7(b), all test mass,  $\alpha = 0.05$ , is allocated to hypothesis 1. Since  $p_1 < 0.05$ , the hypothesis is rejected. The test mass is now split such that  $\alpha / 2$  is recycled to 2 and 3, respectively. Hypothesis 2 is rejected since  $p_2 < 0.025$ . This test mass can now be recycled to hypothesis 3. The total test mass allocated to hypothesis 3 is thus 0.05 (0.025 recycled after rejection of 1 and 0.025 after rejection of 2) and 3 can be rejected since  $p_3 < 0.05$ . (Note that 3 could have been rejected even if 2 was not.) After rejection of 3, the test mass is split and recycled to 4 and 5, which receives 0.025 each. Hypothesis 4 can be rejected,  $p_4 < 0.025$ , and its test mass is recycled to hypothesis 5. Also 5 can be rejected since  $p_5 < 0.05$ . It can be seen that the alternative recycling test rejects one hypothesis more than the tree-gatekeeping procedure at the 0.05 level, namely hypothesis 5. Adjusted  $p$ -values for the recycling test can be calculated using the method described in Appendix B.

# Example 12 (Generalized Bonferroni parallel gatekeeping)

Certain generalized Bonferroni parallel gatekeeping MTPs were introduced by Guilbaud [14]. As an example of such a procedure, we take the situation where we have three primary hypotheses (labeled 1-3) and one secondary hypothesis (4). In a first step we would like to use a Bonferroni procedure as a parallel gatekeeper to be passed before any testing of the secondary hypothesis can occur. In case we reject any of the three primary hypotheses, testing of the secondary hypothesis occurs in a second step at a significance level  $\alpha / 3$ ,  $2\alpha / 3$  or  $\alpha$ , depending on how many (1, 2 or 3, respectively) of the primary hypotheses were rejected. One idea in the generalized Bonferroni parallel gatekeeping is that if the secondary hypothesis is rejected, additional rejections are possible among the primary hypotheses by recycling test mass to them in a third step. One may use any MTP in this third step at full significance level  $\alpha$  provided this MTP is more powerful than the Bonferroni MTP used originally in the first step, e.g. an unweighted Holm MTP [14]. In case a Holm MTP is used in this way in the third step, the corresponding recycling test is denoted by  $B(1,2,3)4H(1,2,3)$ . Figure 8(a) shows the same MTP graphically. An equivalent graphical description is given in Figure 8(b), see the derivation in Appendix D. This graph starts with a Bonferroni unit, where the test mass is split on hypotheses 1-3. If any of these hypotheses are rejected, the corresponding test mass is recycled to hypothesis 4. In case 4 is rejected, the test mass is recycled to the top of the graph and split on hypotheses 1-3 again, in the same way as in Figure 4(b). This feedback loop to the Bonferroni unit is equivalent to a Holm unit.

The graphical display of the recycling procedures is an important aid in understanding how the procedures work and how one can suggest alternative procedures, which we have seen in the previous examples. However, since the flexibility of the recycling procedures is virtually infinite, the graphical display can become challenging sometimes.

# Example 13 (Clinical trial with several doses and primary and secondary variables)

Suppose we have a clinical trial with two primary variables, body weight (BW) and total cholesterol (TC), and one secondary variable, QoL. In the trial we have two doses of the active treatment, a high dose (H) and a low dose (L), against an active comparator (C). In total we have 6 hypotheses of interest: H versus C on each of the three variables (hypotheses 1-3), and L versus C on each of the three variables, (hypotheses 4-6). The  $H$  versus  $C$  comparisons are the most important ones and we expect the higher dose to have better effect than the lower. Three potential recycling

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/e016306929756f95b4c3323a47f4d281b8b9f7bc55dce47ff871b63c8d08c899.jpg)  
(a)  $\mathsf{B}(1,2,3)\mathsf{4H}(1,2,3)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/c10af23171d1d8d96eca97c8aedd6b56bd878fcb9d6d7fda7e619a09fc963cad.jpg)  
(b)  $\mathsf{B}(1,2,3)\mathsf{4H}(1,2,3)$  
Figure 8. Graphical display of the generalized Bonferroni parallel gatekeeping procedure in Example 12.

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/9724a78aaa58f954b0159e73e0b1c04d3878ffaf31399bc2309334f865b15225.jpg)  
(a) B(1346,2356)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/842c1bc289b3ccdce1270e54d5fddc5640fe377c55faca2c22089b189740a849.jpg)  
(b) B(146,1346,256,2356)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/ad79207398ce253761386e43863d33bc172d02eaeaef53fecb088296df1e1fb2.jpg)  
(c) H(1B(34,4),2B(35,5))36  
Figure 9. Graphical display of three potential recycling procedures to use in Example 13.

procedures are presented in Figure 9 to address this situation. Note that we have used an alternative way of using multiple boxes for hypothesis 3 in these graphs. The dotted lines running through the box containing hypothesis 3 shows how (parts of) the test mass should be allocated if hypothesis 3 is rejected. This type of description is sometimes preferable as it could result in a more compact graph.

In (a) we have taken as a starting point that we would not like to test a hypothesis for the low dose if the corresponding hypothesis for the high dose has not been rejected. The testing procedure suggested in (b) emphasizes the important primary variables, BW and TC more than the procedure in (a), allowing for testing of hypotheses 4 and 5 without hypothesis 3 being rejected. In (c), the large box containing all the hypotheses 1-5 is a serial gatekeeper for the test of hypothesis 6. One can only test the hypothesis 6 if all of the hypotheses 1-5 are rejected. Within the serial gatekeeper, a similar procedure to the one in (b) is used. However, note that in (c) the test mass regained after

rejecting hypotheses 4 and 5, respectively, is now used for the other tests in the gatekeeper by distributing the test mass to the top of the graph instead of distributing it to hypothesis 6.

# 5. DISCUSSION

In this paper we have described the recycling approach to multiple testing. This framework defines a class of MTPs that are weighted Bonferroni-based closed testing procedures. They are consonant by construction. The basic idea in the recycling framework is that whenever a hypothesis  $k$  is rejected, you are able to reallocate the corresponding test mass to the testing of other hypotheses. As soon as the total test mass on a hypothesis exceeds its raw  $p$ -value, this hypothesis is rejected and all the test mass from the hypothesis may in turn be recycled. Alpha-exhaustive recycling tests are easily constructed by allowing all sequences that (different parts of) the test mass can follow, after being recycled, to pass every hypothesis in  $S$ . We believe that the compact graphical display of an MTP increases the understanding of how the method works and is a quite useful tool for the construction of new MTPs. Although rejection of hypotheses can in general easily be done using the compact graphs, we have provided an algorithm in terms of default graphs to avoid any misinterpretations of the graphical display.

The recycling procedures control the FWER in the strong sense. However, ignoring the conditions imposed by the graphical construction, one might pose the question whether test mass can be recycled without restrictions. The answer is no. As seen in Example C1 in Appendix C, some restriction on the reallocation of test mass is needed to guarantee control of the FWER. In general, it is allowed to reallocate the test mass from one rejected hypothesis to any other hypothesis. However, to which hypothesis this test mass should be allocated may not, without restrictions, depend on the result of another hypothesis test. This result may give information about whether other hypotheses will be rejected, and using this information can inflate the FWER.

The examples in the paper clearly illustrate the flexibility in the recycling framework and how it simplifies the construction of new MTPs in several settings. The recycling framework covers methods such as serial and parallel gatekeeping and fallback procedures. The graphical description can be used to generate a large class of consonant Bonferroni-based closed tests. However, it does not cover all possibilities. The MTPs that can be generated with the recycling method constitutes a subclass of the short-cut Bonferroni-based closed tests considered in [10, Section 2.2]. Another subclass of MTPs is the tree-gatekeeping procedures [11]. Neither the class of recycling procedures studied in this article nor the class of tree-gatekeeping procedures is a subclass of the other. The logical restrictions (whether a hypothesis is testable or not) imposed by a tree-gatekeeping procedure can in some cases be handled in the recycling framework. Example 12 describes one such situation using the notion of blocking hypotheses. However, there are tree-gatekeeping procedures that are not covered by recycling MTPs. As an example, take the tree-gatekeeping procedure where  $\alpha$  is first divided equally between two hypotheses, 1 and 2, in the first family. In the second family, hypothesis 3, 4 and 5 may be tested if and only if: 1 is rejected, 1 or 2 are rejected, 2 is rejected, respectively. The test mass regained from the first family, after one or two hypotheses are rejected, is distributed equally between the testable hypotheses in the second family. Although this tree-gatekeeping example can easily be described in terms of reallocating test mass, it cannot be described in the recycling framework of this article. At the same time, all recycling procedures are not covered by the class of tree-gatekeeping procedures. Tree-gatekeeping procedures always

use Bonferroni procedures in all families, except for the last one where a Holm procedure is used. This means that the serial gatekeeping procedure  $H(1,2)3$  is a recycling MTP, but it is not a tree-gatekeeping procedure. Moreover, by construction, the tree-gatekeeping procedures are restricted to satisfy the 'independence condition' that a decision to reject a hypothesis in a certain family does not depend on rejections in families of lower rank (i.e. with higher number). In general the recycling framework does not impose such a restriction, but procedures with that 'independence' property can be constructed if deemed appropriate. It is a question for further research whether it is possible to generalize the class of recycling procedures, beyond what can be described in the graphical framework provided in this paper, to cover a broader class of Bonferroni-based tests.

Generalizations that are possible include allowing the set  $S$  of hypotheses to be infinite countable, and considering different recycling tests for different values of  $\alpha$ , when determining adjusted  $p$ -values. We have implicitly assumed that a hypothesis is not tested unless positive test mass is allocated to it. However, as a technical comment, it is sometimes possible to reject a null hypothesis at level 0. A simple example is when a parent distribution is uniform over the interval  $(0, \theta)$ , and one tests the null hypothesis  $\theta \leqslant \theta_0$  against  $\theta > \theta_0$ . If we make one observation that is greater than  $\theta_0$ , we know that the null hypothesis is false, that is, the  $p$ -value is 0.

Recycling MTPs and other Bonferroni-based procedures can often be improved somewhat when the variables underlying the tests are correlated [13]. The Bonferroni-based recycling approach may be useful to suggest sensible MTPs, which can then be improved by utilizing the correlation structure.

We have presented a clear graphical description that in many situations can aid the communication in e.g. clinical teams and among statisticians. In a practical application one would generally search for the most powerful procedure, while controlling the FWER in the strong sense. In multiple inference, this is not straightforward as the power function is multi-dimensional and depends both on the MTP and on the alternative(s) considered. Modeling and utilization of prior information may help determine a one-point alternative hypothesis or, alternatively, a set of plausible alternatives, possibly with an associated Bayesian prior. If a utility function is formulated, to reflect the importance of rejecting different sets of hypotheses, an optimality criterion can be set up for the choice of MTP. In practice, however, the choice of the MTP is often done in a less formal manner. It is still crucial that different MTPs can easily be suggested and their properties investigated, for example by means of simulations. We believe that the recycling framework is a powerful tool in constructing new MTPs. Each recycling MTP can be defined using the algebraic notation or graphical description presented in the paper. This notation could serve as a substitute or complement to a lengthy MTP description, and for example be used in the clinical study protocol or the statistical analysis plan.

# APPENDIX A: INTERPRETING INFINITE GRAPHICAL LOOPS

In more complicated graphs, we need a rule for interpreting infinite loops. The general rule states that any test mass from a rejected hypothesis should be recycled according to the weights associated with the arrows going out from a box. In Figure 4(b), the test mass initially allocated to hypothesis 1 should therefore be split equally on all three hypotheses, 1, 2 and 3 after hypothesis 1 has been rejected. The test mass returning to hypothesis 1, which is  $\alpha /9$ , is then again split between all three hypotheses. Continuing with more loops, the test mass returning to hypothesis 1 will gradually decrease, forming a geometric series. Continuing with infinitely many loops, the total test mass

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/c57d27771ce3fee7084bbf3fed1ac4331100b97892c62846249f5b0794e90e16.jpg)

![](https://cdn-mineru.openxlab.org.cn/result/2025-12-02/f25d0d5d-c98b-4f9a-9e34-cb6a268cfe2c/36da3bba1dc9e98ba5e9448eb6de305ae688f440518d3769e54d581a98147cfb.jpg)  
Figure A1. Graphical display of the procedure in Example A1. The graph in (a) is a short version containing an infinite loop, which corresponds to the default graph found in (b).

allocated to hypothesis 1 will tend to zero and the test mass allocated to hypotheses 2 and 3 will be  $\alpha / 2$ . In Example A1 we show a somewhat more intricate recycling. However, the interpretation of the graphical loop is the same as in the earlier examples.

# Example A1 (Nested splitting)

In Figure A1(a), the test mass  $\alpha$  is first split equally between hypotheses 1 and 2. If hypothesis 2 is rejected, its test mass is recycled to hypothesis 1 (to be precise, this is done through infinitely many loops as described above). The continued testing is easy to understand. However, if hypothesis 1 is rejected in the first step (and hypothesis 2 is not) its test mass is first split equally, as  $\alpha /4$ , between 3 and 4. Say that hypothesis 3 is rejected but 4 is not. Then the test mass,  $\alpha /4$ , from 3 recycles to the top. One may be tempted to move it all to hypothesis 2 as 1 has already been rejected. However, based on the arrows, it should be split equally between hypotheses 1 and 2. The test mass that has now returned to the rejected hypothesis 1 will continue along the route and be split between 3 and 4. Any test mass reaching the rejected hypothesis 3 is recycled to the top and split between 1 and 2. Continuing this reallocating and splitting infinitely many times, and summing up the test masses for hypotheses 2 and 4, we end up with  $2\alpha /3$  being allocated to hypothesis 2 and  $\alpha /3$  allocated to hypothesis 4. These two hypotheses are now tested, and the procedure may continue in case any of them is rejected.

# APPENDIX B: ALGORITHM FOR ADJUSTED  $p$ -VALUES

An algorithm for determining adjusted  $p$ -values is based on calculating the ratio of the raw  $p$ -value and the fraction of the test mass allocated to a hypothesis. Let  $f_{k}(A) = \alpha_{k}(A) / \alpha$ , where  $\alpha_{k}(A)$  is the test mass introduced in Section 3.2. We can determine  $f_{k}(A)$  directly by setting  $\alpha = 1$  when distributing test mass on the hypotheses  $k \in S \backslash A$  after having removed all boxes corresponding to hypotheses in  $A$  in the default graph.

(i) To start the algorithm, let  $A_0 = \emptyset$ . Calculate tentative adjusted  $p$ -values, for each hypothesis  $k \in S \backslash A_0 (= S)$ , as  $p_k^*(A_0) = p_k / f_k(A_0)$ . The hypothesis  $k$  corresponding to the smallest value of the tentative adjusted  $p$ -value,  $p_k^*(A_0)$ , will in fact have this adjusted  $p$ -value,  $\tilde{p}_k = p_k^*(A_0)$ .

(ii) The next step in the algorithm is to add this hypothesis to  $A_0$ ,  $A_1 = A_0 \cup \{k\}$ , and to calculate new tentative adjusted  $p$ -values, for each hypothesis  $k \in S \setminus A_1$ , as  $p_k^*(A_1) = p_k / f_k(A_1)$ . The adjusted  $p$ -value for the hypothesis with the lowest of these tentative values will be the maximum of the tentative adjusted  $p$ -value and the adjusted  $p$ -value determined in the preceding step of the algorithm.  
(iii) This hypothesis is added to  $A_{1}$ , and the algorithm continues in this way until all adjusted  $p$ -values have been determined.

Note that if multiple hypotheses give the same smallest ratio in any step of the algorithm, anyone, e.g. the one with lowest number, may be chosen, without changing the final adjusted  $p$ -values.

It can be verified that for the fixed-sequence MTP, the equal-weight Bonferroni MTP, and the equal-weight Holm MTP, this is equivalent to the usual expressions for adjusted  $p$ -values; cf. [2, p. 44, 64] for the latter two MTPs.

# APPENDIX C: UNRESTRICTED RECYCLING MAY INFLATE THE TYPE I ERROR

# Example C1 (Forbidden snooping)

We will construct an example showing that it is not generally allowed to let the result of one hypothesis test determine to which hypothesis the test mass from another hypothesis should be reallocated. Assume that  $S = \{1, 2, 3, 4\}$  and that the test statistics,  $Z_{1}$  and  $Z_{2}$ , are independent and normally distributed with mean  $\mu$  and  $\nu$ , respectively, and common variance 1. We will assume that both hypothesis 3 (stating that  $\mu = 0$ ) and hypothesis 4 ( $\nu = 0$ ) are true, and show that the risk of rejecting any of them may be much larger than  $\alpha = 0.05$ . We construct null hypotheses 1 and 2 to have implausible values of the means, namely that  $\mu$  and  $\nu$  are very small, equal to  $-5$ . We start the MTP by testing hypotheses 1 and 2 using a weighted Bonferroni-procedure, with only a small fraction of the  $\alpha$  allocated to hypothesis 1. If hypothesis 2 is rejected, its test mass will be reallocated to either hypothesis 3 or 4, depending on whether hypothesis 1 is rejected or not. If we choose to reject hypothesis 1 exactly when hypothesis 3 will be rejected, if it is tested, we will know whether or not it is worthwhile to test hypothesis 3 in the second stage. Table CI provides the details, regarding rejection region and naive significance levels for the different tests. It is easy to see that the total test mass used is less than  $\alpha = 0.05$ .

Let  $\Phi$  denote the standard normal distribution function. Assuming that hypotheses 3 and 4 are true, the probability of rejecting any of these hypotheses is then

$\operatorname{Pr}(\text{Hypothesis 3 is rejected}) + \operatorname{Pr}(\text{Hypothesis 4 is rejected})$

$$
\begin{array}{l} = \Pr \left(Z _ {1} > 1. 6 4 5 \text {a n d} Z _ {2} > - 5 + 1. 6 4 5\right) + \Pr \left(Z _ {1} <   1. 6 4 5 \text {a n d} Z _ {2} > 1. 6 4 5\right) \\ = \Phi (- 1. 6 4 5) \cdot \Phi (3. 3 5 5) + \Phi (1. 6 4 5) \cdot \Phi (- 1. 6 4 5) \\ \approx 0. 0 5 \cdot 1 + 0. 9 5 \cdot 0. 0 5 \\ \gg 0. 0 5 \\ \end{array}
$$

Thus, the MTP does not protect the FWER in the strong sense. The conclusion is that some restrictions are needed for how test mass may be reallocated. Sufficient restrictions are implicitly imposed on the MTP when it is constructed using the graphical framework.

Table CI. Summary of the MTP in Example C1.  

<table><tr><td>Hypothesis</td><td>Null hypothesis</td><td>Test if</td><td>Reject if</td><td>Significance level</td></tr><tr><td># 1</td><td>μ=-5</td><td></td><td>Z1&gt;1.645</td><td>2·10-11≈0</td></tr><tr><td># 2</td><td>v=-5</td><td></td><td>Z2&gt;-5+1.645</td><td>0.04998≈0.05</td></tr><tr><td># 3</td><td>μ=0</td><td>2 and 1 are rejected</td><td>Z1&gt;1.645</td><td>0.04998≈0.05</td></tr><tr><td># 4</td><td>v=0</td><td>2 rejected, 1 accepted</td><td>Z2&gt;1.645</td><td>0.04998≈0.05</td></tr></table>

# APPENDIX D: FURTHER DETAILS ON COLLECTIONS IN EXAMPLES

Example 8 (Serial gatekeeping procedure)

$$
H (1, 2) H (3, 4) = \{1 2, 2 1 \} \{3 4, 4 3 \} = \{1 2 3 4, 1 2 4 3, 2 1 3 4, 2 1 4 3 \}
$$

Example 9 (Parallel gatekeeping procedure)

$$
B (1, 2) H (3, 4) = \{1, 2 \} \{3 4, 4 3 \} = \{1 3 4, 1 4 3, 2 3 4, 2 4 3 \}
$$

Example 11 (Insulin therapy example)

$$
\begin{array}{l} 1 B (2 3 B (5 6, 4 5 6), 3 B (5 6, 4 5 6)) = 1 \{2 3, 3 \} \{4 5, 5 \} 6 = \{1 2 3, 1 3 \} \{4 5 6, 5 6 \} \\ = \{1 2 3 4 5 6, 1 2 3 5 6, 1 3 4 5 6, 1 3 5 6 \} \\ \end{array}
$$

Example 12 (Generalized Bonferroni parallel gatekeeping)

$$
\begin{array}{l} B (1, 2, 3) 4 H (1, 2, 3) = \{1 4, 2 4, 3 4 \} \{1 2 3, 1 3 2, 2 1 3, 2 3 1, 3 1 2, 3 2 1 \} \\ = \{1 4 1 2 3, 1 4 1 3 2, 1 4 2 1 3, 1 4 2 3 1, 1 4 3 1 2, 1 4 3 2 1, 2 4 1 2 3, 2 4 1 3 2, 2 4 2 1 3, \\ \left. \begin{array}{l} 2 4 2 3 1, 2 4 3 1 2, 2 4 3 2 1, 3 4 1 2 3, 3 4 1 3 2, 3 4 2 1 3, 3 4 2 3 1, 3 4 3 1 2, 3 4 3 2 1 \end{array} \right\} \\ = \{1 4 2 3, 1 4 3 2, 1 4 2 3, 1 4 2 3, 1 4 3 2, 1 4 3 2, 2 4 1 3, 2 4 1 3, 2 4 1 3, \\ 2 4 3 1, 2 4 3 1, 2 4 3 1, 3 4 1 2, 3 4 1 2, 3 4 2 1, 3 4 2 1, 3 4 1 2, 3 4 2 1 \} \\ = \{1 4 2 3, 1 4 3 2, 2 4 1 3, 2 4 3 1, 3 4 1 2, 3 4 2 1 \} \\ \end{array}
$$

Example 13 (Figure 9(c), Clinical trial with several doses)

$$
\begin{array}{l} H (1 B (3 4, 4), 2 B (3 5, 5)) 3 6 \\ = H (\{1 3 4, 1 4 \}, \{2 3 5, 2 5 \}) 3 6 \\ = \{\{1 3 4, 1 4 \} \{2 3 5, 2 5 \}, \{2 3 5, 2 5 \} \{1 3 4, 1 4 \} \} 3 6 \\ = \{1 3 4 2 3 5, 1 3 4 2 5, 1 4 2 3 5, 1 4 2 5, 2 3 5 1 3 4, 2 3 5 1 4, 2 5 1 3 4, 2 5 1 4 \} 3 6 \\ \end{array}
$$

$$
\begin{array}{l} = \{1 3 4 2 5 [ \frac {1}{4} ], 1 4 2 3 5 [ \frac {1}{8} ], 1 4 2 5 [ \frac {1}{8} ], 2 3 5 1 4 [ \frac {1}{4} ], 2 5 1 3 4 [ \frac {1}{8} ], 2 5 1 4 [ \frac {1}{8} ] \} 3 6 \\ = \{1 3 4 2 5 6 [ \frac {1}{4} ], 1 4 2 3 5 6 [ \frac {1}{8} ], 1 4 2 5 3 6 [ \frac {1}{8} ], 2 3 5 1 4 6 [ \frac {1}{4} ], 2 5 1 3 4 6 [ \frac {1}{8} ], 2 5 1 4 3 6 [ \frac {1}{8} ] \} \\ \end{array}
$$

# ACKNOWLEDGEMENTS

We are grateful to the anonymous referees whose suggestions improved the content in this paper as well as its presentation.

# REFERENCES

1. Hochberg Y, Tamhane AC. Multiple Comparison Procedures. Wiley: New York, 1987.  
2. Westfall P, Young SS. Resampling-based Multiple Testing: Examples and Methods for  $P$ -value Adjustment. Wiley: New York, 1993.  
3. Westfall P, Krishen A. Optimally weighted, fixed sequence and gatekeeper multiple testing procedures. Journal of Statistical Planning and Inference 2001; 99:25-40.  
4. Maurer W, Hothorn LA, Lehmacher W. Multiple comparisons in drug clinical trials and preclinical assays: a-priori ordered hypotheses. In Biometrie in der Chemisch-Pharmaeutischen Industrie, Vollmar J (ed.), vol. 6. Fischer: Stuttgart, 1995; 3-18.  
5. Bauer P, Röhmel J, Maurer W, Hothorn L. Testing strategies in multi-dose experiments including active control. Statistics in Medicine 1998; 17:2133-2146.  
6. Dmitrienko A, Offen W, Westfall P. Gatekeeping strategies for clinical trials that do not require all primary effects to be significant. Statistics in Medicine 2003; 22:2387-2400. DOI: 10.1002/sim.1526.  
7. Dmitrienko A, Tamhane AC, Wang X, Chen X. Stepwise gatekeeping procedures in clinical trial applications. Biometrical Journal 2006; 48:984-991. DOI: 10.1002/bimj.200610274.  
8. Dmitrienko A, Wiens B, Westfall P. Fallback tests in dose-response clinical trials. Journal of Biopharmaceutical Statistics 2006; 16:745-755. DOI: 10.1080/10543400600860600.  
9. Marcus R, Peritz E, Gabriel KR. On closed testing procedures with special reference to ordered analysis of variance. Biometrika 1976; 63:655-660.  
10. Hommel G, Bretz F, Maurer W. Powerful short-cuts for multiple testing procedures with special reference to gatekeeping strategies. Statistics in Medicine 2007; 26:4063-4073. DOI: 10.1002/sim.2873.  
11. Dmitrienko A, Wiens B, Tamhane AC, Wang X. Tree-structured gatekeeping tests in clinical trials with hierarchically ordered multiple objectives. Statistics in Medicine 2007; 26:2465-2478. DOI: 10.1002/sim.2716.  
12. Holm S. A simple sequentially rejective multiple test procedure. Scandinavian Journal of Statistics 1979; 6:65-70.  
13. Dmitrienko A, Tamhane AC. Gatekeeping procedures with clinical trial applications. Pharmaceutical Statistics 2007; 6:171-180. DOI: 10.1002/pst.291.  
14. Guilbaud O. Bonferroni parallel gatekeeping—transparent generalizations, adjusted  $p$ -values, and short direct proofs. Biometrical Journal 2007; 49:917-927. DOI: 10.1002/bimj.200610361.