#let q7 = [
7. Which of the following languages are regular? Justify each answer.

  + $L = {w c w | w in {a, b}^ast}$.

    Not regular, proof:

    Let language $L$ be regular, pumping length $p$.

    Let $|w| = p, w = x y, c w = z$, $x y^i != w "if" i > 1 qed$.

  + $L = {x y | x, y in {a, b}^ast "and" |x| = |y|}$.
  
    Not regular, proof:

    Let language $L$ be regular, pumping length $p$.

    Let $|x| = p, x = i j, y = k, |i j^n| != |k| "if" n > 1 qed$ 

  + $L = {a^n | n "is a prime number"}$.

    Not regular, proof:

    Let language $L$ be regular, pumping length $p$.

    Let $a^p = a^x a^1 a^z, a^x a^(1i) a^z $

    $ &"If" x+1+z >= 3 and i = 2, a^p in.not L \
      because &"For all prime number" p >= 3, p + 1 = 2n, (n in NN) \
      &"If" x+1+z = 2 and i = 3, a^p in.not L \
      because &2 + 2 = 4 "not a prime" $

  + $L = {a^m b^n | gcd(m, n) = 17}$.
]
