#let q8 = [
8. Let $M = (Q, Sigma, delta, q_0, F)$ be a `DFA`. A state $q in Q$ is _reachable_ iff there is some string $w in Sigma^*$ such that $hat(delta)(q_0, w) = q$. Consider the following method for computing the set $Q_r subset.eq Q$ of reachable states: define the sequence of sets $Q^i_r subset.eq Q$ where

  $ Q^0_r &:= {q_0} \
    Q^(i+1)_r &:= {q in Q | exists p in Q^i_r, exists a in Sigma, q = delta(p, a)} $

  + Prove by induction on $i$ that $Q^i_r$ is the set of all reachable states from $q_0$ using paths of length $i$.

    Base case:

    $ Q^0_r &:= {q_0} $

    Inductive step:

    $ Q^(i+1)_r &:= {q in Q | exists p in Q^i_r, exists a in Sigma, q = delta(p, a)} $

  + Give an example of a `DFA` such that $Q^(i+1)_r != Q^i_r "for all" i >= 0$.

  + Change the inductive definition of $Q^i_r$ as follows:

    $ Q^(i+1)_r := Q^i_r union {q in Q | exists p in Q^i_r, exists a in Sigma, q = delta(p, a)} $

    Prove that there exists an $i_0$ such that $Q^(i_0+1)_r = Q^(i_0)_r = Q_r$.

  Define the `DFA` $M_r$ as follows: $M_r = (Q_r, Sigma, delta_r , q_0, F sect Q_r)$, where $delta_r : Q_r times Sigma -> Q_r$ is the restriction of $delta$ to $Q_r$ .

  4. Explain why $M_r$ is indeed a `DFA`.

  + Prove that $L(M_r) = L(M)$. A `DFA` is called _reachable_ or _trim_ if $M = M_r$.
]
