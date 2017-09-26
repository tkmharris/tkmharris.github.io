---
title: Axel Thue's proof of Fermat's theorem on sums of two squares
layout: post
date: 2016-12-08
tag: maths
---

Fermat's theorem on sums of two squares is a mainstay of undergraduate maths courses:

***Theorem.** If p is a prime number that is congruent to 1 modulo 4, then p is a sum of two integer squares:
$$p = a^{2} + b^{2}$$.*

Fermat announced the theorem in 1640, but didn't supply a proof.
Euler gave the first complete proof in 1747.
Further proofs have been given by many others, including Lagrange and Dedekind.
I first saw the theorem proved as an application of Minkowski's lattice theorem, although this is surely overkill.
There is now even a 'one-sentence proof' due to Don Zagier.[^1]
For my money though, the best proof is due to the Norwegian mathematician Axel Thue (1863&ndash;
1922).[^2] Thue's proof rests on the following well-known lemma:

***Lemma.** If p is a prime number that is congruent to 1 modulo 4, then there is a $$u$$ such that
$$u^{2} \equiv -1 \mod p$$.*

The lemma follows easily once you know that the group of units of a finite field is cyclic.
Alternatively one can give a direct proof using Wilson's theorem.

***Proof of the theorem.***  
Let $$k$$ be the integer part of $$\sqrt{p}$$, so that $$k^{2} < p < (k+1)^{2}$$, and let $$u$$ be a square root of -1 modulo $$p$$ as above.
We consider the values $$a - ub \mod \quad p$$, where $$ 0 \le a,b \le k$$.
There are $$(k+1)^{2}$$ such pairs $$(a,b)$$ and only $$p$$ congruence classes, so there exist distinct pairs $$(a_1,b_1) \ne (a_2,b_2)$$ such that $$a_1 - ub_1 \equiv a_2 - ub_2 \mod \quad p$$.
Then by setting $$a = a_1 - a_2$$ and $$b = b_1 - b_2$$ we have $$a - ub \equiv 0 \mod \quad p$$ with $$a, b$$ not both zero and $$|a|, |b| \le k$$.
Now $$a^{2} \equiv (ub)^{2} \equiv -b^{2} \mod \quad p $$, so $$p$$ divides $$a^{2}+b^{2}$$.
But $$0 < a^{2} + b^{2} \le 2k^{2} < 2p$$, so $$a^{2} + b^{2} = p$$.
**QED**.

What I like about this proof is that is short and elementary, but the result doesn't appear from nowhere as in Zagier's one-liner.
Unlike the proofs of Dedekind or Minkowski, it could be presented in a very first introduction to number theory.

Thue himself is little-remembered these days; his proof of Fermat's theorem at least deserves to be more widely known.

<div style="font-size: 80%">
[^1]: D. Zagier, *A one-sentence proof that every prime p congruent to 1 modulo 4 is a sum of two squares*, Am. Math. Monthly **97** (1990), no. 2, p144.
[^2]: A. Thue, *Et par antydninger til en taltheoretisk metode*, Kra. Vidensk. Selsk. Forh. **7** (1902), pp57–75.
</div>
