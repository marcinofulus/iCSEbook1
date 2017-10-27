
Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  In einem kartesischen Koordinatensystem sind die Geraden
  :math:`g: \vec{X} = \begin{pmatrix}8\\1\\7\end{pmatrix} + \lambda\cdot
  \begin{pmatrix}3\\1\\2\end{pmatrix}`, :math:`\lambda \in \mathbb{R}`, und
  :math:`h: \vec{X} = \begin{pmatrix}-1\\5\\-9\end{pmatrix} + \mu \cdot 
  \begin{pmatrix}1\\-2\\4\end{pmatrix}`, :math:`\mu \in \mathbb{R}`, gegeben.
  Die Geraden :math:`g` und :math:`h` schneiden sich im Punkt :math:`T`.
  
  a) Bestimmen Sie die Koordinaten von :math:`T`.

     *(Ergebnis:* :math:`T(2|-1|3)`\ *)*
  
  b) Geben Sie die Koordinaten zweier Punkte :math:`P` und :math:`Q` an, die
     auf :math:`g` liegen und von :math:`T` gleich weit entfernt sind.
  
  c) Zwei Punkte :math:`U` und :math:`V` der Geraden :math:`h` bilden zusammen mit
     :math:`P` und :math:`Q` das Rechteck :math:`PUQV`. Beschreiben Sie einen
     Weg zur Ermittlung der Koordinaten von :math:`U` und :math:`V`
  
**Lösung zu Teil a**

Den Schnittpunkt der Geraden :math:`g` und :math:`h` erhält man durch
Gleichsetzen der beiden Geradengleichungen. Aus den Gleichungen für die drei
Koordinaten ergibt sich das lineare Gleichungssystem

.. math::

   3\lambda -\mu &= -9\\
   \lambda+2\mu &= 4\\
   2\lambda-4\mu &= -16

mit der Lösung :math:`\lambda=-2`, :math:`\mu=3`. Einsetzen in die
Geradengleichungen führt auf die angegebenen Koordinaten des Punktes :math:`T`.

Die Lösung lässt sich mit Hilfe von Sage bestimmen:

.. sagecellserver::

    sage: var("lamb, mu")
    sage: g = vector([8, 1, 7]) + lamb * vector([3, 1, 2])
    sage: h = vector([-1, 5, -9]) + mu * vector([1, -2, 4])
    sage: result = solve([g[0] == h[0],
    sage:                 g[1] == h[1],
    sage:                 g[2] == h[2]], mu, lamb)
    sage: print("Werte für den Schnittpunkt: {}".format(result[0]))
    sage: t = h.subs(result[0][0])
    sage: print("Schnittpunkt bei: T = {}".format(t))

.. end of output

Zur Veranschaulichung kann man Sage die Geraden in einem dreidimensionalen
Koordinatensystem zeichnen lassen.

.. sagecellserver::

    sage: labeloffset = vector([0, 0, 2])
    sage: pg = line([g(lamb = -4), g(lamb = 0)], color = 'blue')
    sage: tg = text3d("g", g(lamb = 0) + labeloffset, color='blue', horizontal_alignment='left')
    sage: ph = line([h(mu = 0), h(mu = 4)], color = 'purple')
    sage: th = text3d("h", h(mu = 0) + labeloffset, color='purple', horizontal_alignment='left')
    sage: pt = point(t, size=10, color='red')
    sage: tt = text3d("T", t + labeloffset, color='red', horizontal_alignment='left')
    sage: p1 = pg + tg + ph + th + pt + tt
    sage: show(p1, aspect_ratio=1)

.. end of output

**Lösung zu Teil b**

Den Schnittpunkt :math:`T` erhält man durch Einsetzen des in Teil a bestimmten
Werts für :math:`\lambda` in die Geradengleichung von :math:`g`. Nun sollen zwei
Punkte :math:`P` und :math:`Q` gefunden werden, die sich auf :math:`g` in
gleicher Entfernung von :math:`T` befinden. Dafür muss einfach der gleiche Wert zu
:math:`\lambda` addiert beziehungsweise von :math:`\lambda` subtrahiert werden.

In Teil a hatten wir :math:`\lambda = -2` gefunden. Zwei Punkte
:math:`P` und :math:`Q` erhält man nun etwa, indem man in die Geradengleichung
für :math:`g` die Werte :math:`\lambda = -1` und :math:`\lambda = -3` einsetzt.
Diese Punkte werden zusätzlich in das Koordinatensystem eingezeichnet.

.. sagecellserver::

    sage: p = g(lamb = result[0][1].right() + 1)
    sage: print("P {}".format(p))
    sage: pp = point(p, size=10, color='green')
    sage: tp = text3d("P", p + labeloffset, color='green', horizontal_alignment='left')
    sage: q = g(lamb = result[0][1].right() - 1)
    sage: print("Q {}".format(q))
    sage: pq = point(q, size=10, color='green')
    sage: tq = text3d("Q", q + labeloffset, color='green', horizontal_alignment='left')
    sage: p2 = p1 + pp + tp + pq + tq
    sage: show(p2, aspect_ratio=1)


.. end of output

**Lösung zu Teil c**

Im Folgenden wird eine Methode beschrieben, um zwei weitere
Punkte :math:`U` und :math:`V` zu finden, welche auf der Geraden :math:`h`
liegen, sodass :math:`PUQV` ein Rechteck bilden.

Die Punkte :math:`P` und :math:`Q` sind sich gegenüberliegende Eckpunkte in dem
Rechteck. Daraus folgt, dass die Gerade :math:`g` zwischen den Punkten eine
Diagonale des Rechtecks ist. Da :math:`T` genau in der Mitte der beiden Punkte
liegt, muss es sich dabei um den Mittelpunkt des Rechtecks handeln.

Die beiden anderen Punkte sollen auf der Geraden :math:`h` liegen. Aus der
gleichen Überlegung wie zuvor ergibt sich, dass die Gerade :math:`h`
zwischen den Punkten :math:`U` und :math:`V` die zweite Diagonale des
Rechtecks bildet.

Damit aus einem Viereck mit bekannten Diagonalen ein Rechteck wird, müssen
beide Diagonalen gleich lang sein und der Mittelpunkt der Diagonalen muss der
gemeinsame Schnittpunkt sein.  Daraus folgt für unser Rechteck, dass die Punkte
:math:`U` und :math:`V` genauso weit von :math:`T` entfernt sein müssen, wie
die Punkte :math:`P` und :math:`Q`.

Mit Sage berechnen wir zunächst den Abstand zwischen den Punkten :math:`T` und
:math:`Q`. Anschließend wird der Wert :math:`\mu` bestimmt, für den der
zugehörige Punkt auf der Geraden :math:`h` den gleichen Abstand von :math:`T`
hat wie der Punkt :math:`Q`. Damit lassen sich dann die Punkte :math:`U` und
:math:`V` durch Einsetzen von :math:`\pm\mu` in die Geradengleichung von :math:`h` erhalten.

.. sagecellserver::

    sage: from sage.plot.polygon import Polygon

    sage: abstand = (t-q).norm()
    sage: print("Abstand zwischen T und Q: {}".format(abstand))
    sage: result = solve(mu*vector([1, -2, 4]).norm() == abstand, mu)
    sage: print(result[0])
    sage: mu_1 = result[0].right()
    sage: mu_2 = -mu_1

    sage: rechteck = line3d([q, t+mu_1*vector([1, -2, 4]), p, t+mu_2*vector([1, -2, 4]), q], color='orange', thickness=5)
    sage: show(p2 + rechteck, aspect_ratio=1)


.. end of output
