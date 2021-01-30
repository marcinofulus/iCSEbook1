Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Vektoren 

  .. math::
     \vec{a} = \left(\begin{matrix} 2\\1\\2 \end{matrix} \right),\quad
     \vec{b} = \left(\begin{matrix} -1\\2\\0 \end{matrix} \right),\quad
     \vec{c_t} = \left(\begin{matrix} 4t\\2t\\-5t \end{matrix} \right),

  spannen für jeden Wert von :math:`t` mit :math:`t\in\mathbb{R}\backslash\{0\}`
  einen Körper auf. Die Abbildung zeigt den Sachverhalt beispielhaft für einen
  Wert von :math:`t`.

  a) Zeigen Sie, dass die aufgespannten Körper Quader sind.

  b) Bestimmen Sie diejenigen Werte von :math:`t`, für die der jeweils zugehörige
     Quader das Volumen 15 besitzt.

  .. image:: ../figs/quader.png
     :align: center

**Lösung zu Teil a**

Bei dem Körper handelt es sich genau dann um einen Quader, wenn die drei Vektoren
:math:`\vec{a}`, :math:`\vec{b}` und :math:`\vec{c}` paarweise senkrecht aufeinander
stehen. Wir überprüfen dies durch die Berechnung des jeweiligen Skalarprodukts zwischen
zwei Vektoren, welches in allen Fällen :math:`0` ergeben muss.

.. math::

  \vec{a}\cdot\vec{b} &= 2\cdot(-1) + 1\cdot2 + 2\cdot0 &= 0\\
  \vec{a}\cdot\vec{c} &= 2\cdot4t + 1\cdot2t + 2\cdot(-5t) &= 0\\
  \vec{b}\cdot\vec{c} &= (-1)\cdot4t + 2\cdot2t + 0\cdot(-5t) &= 0\\

Wir überprüfen die Skalarprodukte mit Sage:

.. sagecellserver::

  sage: t = var('t')
  sage: a = vector([2, 1, 2])
  sage: b = vector([-1, 2, 0])
  sage: c = vector([4*t, 2*t, -5*t])
  sage: print(u"a\u00b7b =", a.dot_product(b))
  sage: print(u"a\u00b7c =", a.dot_product(c))
  sage: print(u"b\u00b7c =", b.dot_product(c))

.. end of output

**Lösung zu Teil b**

Das Volumen des Quaders ergibt sich aus dem Betrag des Spatprodukts

.. math::

  V &= \left\vert\vec{a}\cdot(\vec{b}\times\vec{c})\right\vert\\
    &=\left\vert\left(\begin{matrix} 2\\1\\2 \end{matrix} \right)
  \cdot\left(\begin{matrix} 2\cdot(-5t)-0\cdot2t \\ 0\cdot4t-(-1)\cdot(-5t) \\ (-1)\cdot2t-2\cdot4t
  \end{matrix}\right)\right\vert \\
  &=\left\vert 2\cdot(-10t) + 1\cdot(-5t)+2\cdot(-10t) \right\vert\\
  &= 45\left\vert t \right\vert.
  
Mit der Vorgabe, dass das Volumen des Quaders gleich 15 sein soll, erhalten wir

.. math::

  V = 45\left\vert t \right\vert \overset{!}{=} 15

und daraus

.. math::

  \left\vert t \right\vert = \frac{1}{3} \Leftrightarrow t=\pm\frac{1}{3}

Es gibt also zwei mögliche Lösungen für das Problem. In einem Fall zeigt der
Vektor :math:`\vec{c}` in die obere Halbebene und im anderen Fall in die untere
Halbebene.

Mit Hilfe von Sage lässt sich das Ergebnis leicht überprüfen. Insbesondere bei
der Berechnung des Spatprodukts liefert Sage eine deutliche Erleichterung.

.. sagecellserver::

  sage: V = abs(a.dot_product(b.cross_product(c)))
  sage: print("Volumen =", V)
  sage: solve(V == 15, t) 

.. end of output

