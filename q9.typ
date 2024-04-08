#import "@preview/finite:0.3.0": automaton, layout

#let q9 = [
9. Let $Sigma = {a_1,...,a_n}$ be an alphabet of $n$ symbols.

  + Construct an `NFA` with $2n + 1$ states accepting the set $L_n$ of strings over $Sigma$ such that, every string in $L_n$ has an odd number of $a_i$, for some $a_i in Sigma$. Equivalently, if $L^i_n$ is the set of strings over $Sigma$ with an odd number of $a_i$, then $L_n = L^1_n union...union L^n_n$.

    #automaton(
      (
        q: (q11:"2", q21:"2", qn1:"2"),
        q11: (q12:"1"),
        q12: (q11:"1"),
        q21: (q22:"1"),
        q22: (q21:"1"),
        qn1: (qn2:"1"),
        qn2: (qn1:"1"),
        d:()
      ),
      labels: (
        q: $ q $,
        q11: $ q_11 $,
        q12: $ q_12 $,
        q21: $ q_21 $,
        q22: $ q_22 $,
        qn1: $ q_(n 1) $,
        qn2: $ q_(n 2) $,
        d: $ dots.v $
      ),
      final: ("q12", "q22", "qn2"),
      style: (
        state: (
          stroke: 0.5pt,
        ),
        transition: (
          stroke: 0.5pt,
          curve: 0,
          label: (
            angle: 0deg
          )
        ),
        q-q11: (label: (text: $epsilon.alt$)),
        q-q21: (label: (text: $epsilon.alt$)),
        q-qn1: (label: (text: $epsilon.alt$)),
        q11-q12: (curve: 0.5, label: (text: $a_1$)),
        q12-q11: (curve: 0.5, label: (text: $a_1$)),
        q21-q22: (curve: 0.5, label: (text: $a_2$)),
        q22-q21: (curve: 0.5, label: (text: $a_2$)),
        qn1-qn2: (curve: 0.5, label: (text: $a_n$)),
        qn2-qn1: (curve: 0.5, label: (text: $a_n$)),
        d: (stroke: 0.0pt)
      ),
      layout: layout.custom.with(
        positions: (..) => (
          q: (0, -3),
          q11: (2, 0),
          q12: (4, 0),
          q21: (2, -2.5),
          q22: (4, -2.5),
          qn1: (2, -6),
          qn2: (4, -6),
          d: (3, -4.25)
        )
      )
    )

  + Prove that there is a `DFA` with $2^n$ states accepting the language $L_n$.

    See (c)

  + Prove that every `DFA` accepting $L_n$ has at least $2^n$ states.

    For every symbol $a_i in Sigma$, the `DFA` has to keep track of whether the count is odd or not. This would result in at least 2 states for each symbol, which is at least $2^n$ states in total.
]
