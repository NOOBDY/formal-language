#let q5 = [
5. If $n in NN$ and $w = a_1...a_n$ is a string, for each $i in [n − 1] union {0}$, the string $a_1...a_i$ is called a _proper prefix_ of $w$. For any language $L$, we define

  $ mono("MIN")(L) := {w in L | "no proper prefix of" w "belongs to" L}. $

  Prove that if $L$ is regular, then $mono("MIN")(L)$ is regular as well.

  Every proper prefix in any word $w$ can be constructed into a fintie automaton by modifying the original finite automaton regardless of whether it belongs to $L$ or not.
]
