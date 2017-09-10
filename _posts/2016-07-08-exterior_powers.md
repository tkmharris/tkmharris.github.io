---
title: Exterior powers via binary complexes
layout: post
date: 2016-07-08
tag: maths
---


During the last year I have been writing a paper with Bernhard K&ouml;ck and Lenny Taelman about a new approach to exterior power operations on higher algebraic K-groups.
Yesterday we uploaded a preprint of the article to the arXiv: [Exterior power operations on higher K-groups via binary complexes](https://arxiv.org/pdf/1607.01685v1.pdf).
Here I'll try to explain a little bit of what it's about.</p>

If \\( X \\) is a scheme, then its Grothendieck group \\( K_0(X) \\) comes equipped with the structure of a *\\( \lambda \\)-ring* induced from the exterior powers of bundles over \\( X\\).
This structure also induces *Adams operations*, and a descending *\\(\gamma\\)-filtration* \\( F_i K_0(X) \\), which often yield strong results about the structure of \\( K_0(X) \\) (at least, up to torsion).
For instance, Grothendieck proved that if \\(X\\) is smooth over a field, then the quotient \\( F_i K_0(X) / F_{i+1} K_0(X)\\) is isomorphic (rationally) to the Chow group \\( \operatorname{CH}^i (X) \\). These structures are the heart of Grothendieck--Riemann--Roch theory.

Following Quillen's invention of higher algebraic K-groups, exterior power operations on \\( K_n(X) \\) were defined in the affine case by Hiller and Quillen, and the theory was extended to schemes by Kratzer and Soul&eacute;.[^1]
Other approaches to the \\( \lambda\\)-ring structure on \\( K_n(X) \\) have been given by Grayson and Levine.
Common to all of these definitions is the use of homotopy theory.
Indeed, until recently it was assumed necessary to use homotopy theory, since all constructions of higher algebraic K-groups were homotopical in nature.

In a 2012 paper Grayson gave the first purely algebraic description of the higher K-groups, in terms of *acyclic binary multicomplexes*.[^2]
My PhD work was an investigation of this new approach to algebraic K-theory.
In the final chapter of my thesis I started the work of constructing the \\(\lambda\\)-ring structure on \\( K_n(X) \\) entirely algebraically, and this is the work that this paper completes. Let \\( K_* (X) \\) be the graded ring of all K-groups of \\(X\\). Then we have:

**Theorem.** *Let \\(X\\) be a quasi-compact scheme. Then exterior powers of acyclic binary multicomplexes endow \\( K_{\*} (X) \\) with the structure of a \\(\lambda\\)-ring.*

What is new about our work is that our \\(\lambda\\)-operations are entirely explicit on generators, leaving the door open to new calculations.

In my thesis I used the Dold&mdash;Kan correspondence to construct the required operations on binary multicomplexes and show that they induce a pre-\\(\lambda\\)-ring structure on \\( K_{\*} (X) \\) in the affine case.
With Bernhard's help I extended this to general quasi-compact schemes and proved the \\(\lambda\\)-ring axiom relating to products.
Bernhard noticed that the final \\(\lambda\\)-ring axiom, which relates to compositions, would follow from my work in the first half of the paper if we could solve a problem related to the well-known *plethysm problem* in representation theory.
However such problems are usually intractable and we were not optimistic.

But we were lucky, and Lenny Taelman saw a way to solve our problem by calculating the Grothendieck group of the exact category of integral polynomial functors, using methods of Krause, Serre, and Green.

**Theorem.** *\\(K_0 \operatorname{Pol}(\mathbb{Z})\\) is isomorphic to the free \\(\lambda\\)-ring on one variable.*

Lenny joined us as a third author on the paper, and we had an enjoyable few days all working together on these ideas in Southampton.
We also received some useful feedback on early drafts from Dan Grayson and Marco Schlichting.

We have some work in progress towards another paper devoted to examples of calculations with our operations.
I hope to develop some good results in this direction in the coming year.

<hr>
<div style="font-size: 80%">
[^1]: See: Howard L. Hiller, *\\(\lambda\\)-rings and algebraic K-theory*; C. Kratzer, *\\(\lambda\\)-structure en K-th&eacute;orie alg&eacute;brique*; Christophe Soul&eacute;, *Opérations en K-th&eacute;orie alg&eacute;brique*.  
[^2]: Daniel R. Grayson, *Algebraic K-theory via binary complexes*.
</div>
