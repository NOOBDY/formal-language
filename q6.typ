#let q6 = [
6.
  + Given an alphabet $Sigma$, for any language $L subset.eq Sigma^ast$, prove that $L^(**) = L^*$ and $L^*L^* = L^*$.

    Proof $L^(**) = L^*$

    $ because L^*L^* &= L^* \
      therefore L^(**) &= L^*L^* ... L^* \
      &= L^* $

    Proof $L^*L^* = L^*$

    $ L^* L^* &= (L^+ union epsilon.alt)(L^+ union epsilon.alt) \
      &= L L^+ union L^+ union epsilon.alt \
      &= L^* $

  + Prove that every finite language is regular.

    Every finite language can be accepted by a finite automata.

  + Given an example of a non-regular language $A$ and a regular language $B$ such that $A subset.eq B$.

    $ A &= {0^n 1^n | n in NN} \
      B &= {0^n 1^m | n, m in NN} $

  + Given an example of a non-regular language $A$ and a regular language $B$ such that $B subset.eq A$.

    $ A &= {0^n 1^n | n in NN} \
      B &= {01} $

  Let $L$ be any regular language over some $Sigma$. Define the languages:

  $ L^oo &:= union.big_(k >= 1){w^k | w in L}, \
    L^(1/oo) &:= {w | w^k in L "for all" k >= 1}, \
    sqrt(L) &:= {w^k in L "for some" k >= 1}. $

  And also for any $k in NN$, let

  $ L^((k)) &:= {w^k | w in L}, \
    L^((1/k)) &:= {w | w^k in L}. $

  5. Prove that $L^((1/3))$ is regular.

  + What about $L^((3))$?

  + Let $k in NN$. Prove that there are only finitely many languages of the form $L^((1/k))$ and that they are all regular.

  + Is $L^(1/oo)$ regular or not?

  + Is $sqrt(L)$ regular of not?

  + What about $L^oo$?
]
