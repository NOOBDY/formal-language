#import "@preview/finite:0.3.0": automaton, layout

#let q2 = [
2. Convert the `DFA`s to a `regex`: 
  #automaton(
    (
      q0: (q0:"a", q1:"b"),
      q1: (q1:"b", q2:"a"),
      q2: (q0:"b", q2:"a")
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q0"),
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
      q2-q2: (anchor: left)
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 3),
        q1: (3, 3),
        q2: (3, 0),
      )
    )
  )
  1.
    $ &cases(
        q_0 &= epsilon.alt union a union q_2 b \
        q_1 &= b union q_0 b \
        q_2 &= a union q_1 a
      ) \
      => &cases(
        q_0 &= epsilon.alt union a union q_2 b \
        q_1 &= q_0 b b^* = q_0 b^+ \
        q_2 &= q_1 a a^* = q_1 a^+
      ) \
      => &q_0 = epsilon.alt union a union ((q_0 b^+)a^+)b \
      => &q_0 = epsilon.alt union a union q_0 b^+ a^+ b \
      => &q_0 = epsilon.alt union a (b^+ a^+ b)^* $

  #automaton(
    (
      q0: (q1:"a,b"),
      q1: (q1:"a", q2:"b"),
      q2: (q0:"a", q1:"b")
    ),
    labels: (
      q0: $ q_0 $,
      q1: $ q_1 $,
      q2: $ q_2 $
    ),
    final: ("q0", "q2"),
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
      q1-q2: (curve: 0.5),
      q2-q1: (curve: 0.5)
    ),
    layout: layout.custom.with(
      positions: (..) => (
        q0: (0, 3),
        q1: (3, 3),
        q2: (3, 0),
      )
    )
  )
  2. 
    $ &cases(
        q_0 &= epsilon.alt union q_2 a \ 
        q_1 &= a union q_0 (a union b) union q_2 b \
        q_2 &= q_1 b
      ) \
      => &cases(
        q_0 &= epsilon.alt union q_2 a \ 
        q_2 &= (a union q_0 (a union b) union q_2 b) b
      ) \
      => &cases(
        q_0 &= epsilon.alt union q_2 a \ 
        q_2 &= (a union q_0 (a union b)) b union q_2 b b
      ) \
      => &cases(
        q_0 &= epsilon.alt union q_2 a \ 
        q_2 &= (a union q_0 (a union b)) b(b b)^*
      ) \
      $
      = UNFINISHED
]
