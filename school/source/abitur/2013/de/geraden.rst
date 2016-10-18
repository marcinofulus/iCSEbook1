
Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  In einem kartesischen Koordinatensystem sind die Geraden
  :math:`g: \vec{X} = \begin{pmatrix}8\\1\\7\end{pmatrix} + \lambda\cdot
  \begin{pmatrix}3\\1\\2\end{pmatrix}`, :math:`\lambda \in \mathrm{R}`, und
  :math:`h: \vec{X} = \begin{pmatrix}-1\\5\\-9\end{pmatrix} + \mu \cdot 
  \begin{pmatrix}1\\-2\\4\end{pmatrix}`, :math:`\mu \in \mathrm{R}`, gegeben.
  Die Geraden :math:`g` und :math:`h` schneiden sich im Punkt :math:`T`.
  
  a) Bestimmen Sie die Koordinaten von :math:`T`.

     *(Ergebnis:* :math:`T(2|-1|3)`\ *)*
  
  b) Geben Sie die Koordinaten zweier Punkte :math:`P` und :math:`Q` an, die
     auf :math:`g` liegen und von :math:`T` gleich weit entfernt sind.
  
  c) Zwei Punkte :math:`U` und :math:`V` der Geraden h bilden zusammen mit
     :math:`P` und :math:`Q` das Rechteck :math:`PUQV`. Beschreiben Sie einen
     Weg zur Ermittlung der Koordinaten von :math:`U` und :math:`V`
  
**Lösung zu Teil a**

Der Schnittpunkt der Geraden :math:`g` und :math:`h` erhält man, indem die
Geradengleichungen gleich gesetzt werden. Insgesamt ergeben sich drei
Gleichungen, jeweils eine für die :math:`x_1`-, :math:`x_2`- und
:math:`x_3`-Koordinate. Das Gleichungssystem wird mit Sage gelöst. Um den
Schnittpunkt :math:`T` zu bestimmen, müssen die Werte für :math:`\lambda`
beziehungsweise :math:`\mu` in die Geradengleichung eingesetzt werden.

.. sagecellserver::

    sage: var("lamb")
    sage: var("mu")
    sage: g = vector([8, 1, 7]) + lamb * vector([3, 1, 2])
    sage: h = vector([-1, 5, -9]) + mu * vector([1, -2, 4])
    sage: result = solve([g[0] == h[0], g[1] == h[1], g[2] == h[2]],mu, lamb)
    sage: print("Werte für den Schnittpunkt: {}".format(result[0]))
    sage: t = h(mu = result[0][0].right())
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
    sage: pt = point(h(mu = result[0][0].right()), size=10, color='red')
    sage: tt = text3d("T", t + labeloffset, color='red', horizontal_alignment='left')
    sage: show(pg + tg + ph + th+ pt + tt, aspect_ratio=1)

.. end of output

**Lösung zu Teil b**

Für den Schnittpunkt :math:`T` wurde in Aufgabe a ein entsprechender Wert für
:math:`\lambda` berechnet, sodass man durch einsetzen dieses Wertes in die
Geradengleichung von :math:`g` den Punkt erhält. Nun sollen zwei Punkte die
sich auf :math:`g` und gleich weit weg von :math:`T` befinden, gefunden werden.
Dafür muss einfach der gleiche Wert zu :math:`\lambda` addiert beziehungsweise
von :math:`\lambda` subtrahiert werden.

:math:`\lambda` wurde zuvor zu :math:`\lambda = -2` bestimmt. Zwei Punkte
:math:`P` und :math:`Q` erhält man nun etwa indem man in die Geradengleichung
für :math:`g`, :math:`\lambda = -1` und :math:`\lambda = -3` einsetzt.
Diese Punkte werden zusätzlich in das Koordinatensystem eingezeichnet.

.. sagecellserver::

    sage: p = g(lamb = result[0][1].right() + 1)
    sage: pp = point(p, size=10, color='green')
    sage: tp = text3d("P", p + labeloffset, color='green', horizontal_alignment='left')
    sage: q = g(lamb = result[0][1].right() - 1)
    sage: pq = point(q, size=10, color='green')
    sage: tq = text3d("Q", q + labeloffset, color='green', horizontal_alignment='left')
    sage: print(p, q)
    sage: show(pg + tg + ph + th+ pt + tt + pp + tp + pq + tq, aspect_ratio=1)


.. end of output

**Lösung zu Teil c**

Im Folgenden wird eine Methode beschrieben, wie es möglich ist zwei weitere
Punkte :math:`U` und :math:`V` zu finden, welche auf der Geraden :math:`h`
liegen, sodass :math:`PUQV` ein Rechteck bilden.

Die Punkte :math:`P` und :math:`Q` sind sich gegenüberliegende Eckpunkte in dem
Rechteck. Daraus folgt das die gerade :math:`g` zwischen den Punkten eine
Diagonale des Rechtecks ist. Da :math:`T` genau in der Mitte der beiden Punkte
liegt, muss es sich dabei um den Mittelpunkt des Rechtecks handeln.

Die beiden anderen Punkte sollen auf der Geraden :math:`h` liegen. Aus der
gleichen Überlegung wie zuvor ergibt sich, dass die Gerade :math:`h`
zwischen den Punkten :math:`U` und :math:`V` eine weitere Diagonale des
Rechtecks bildet.

Damit aus einem Viereck mit bekannten Diagonalen ein Rechteck wird, muss
folgende Eigenschaft erfüllt sein: Beide Diagonalen müssen gleich lang sein
und der Mittelpunkt der Diagonalen muss der gemeinsame Schnittpunkt sein.
Daraus folgt für unser Rechteck das die Punkte :math:`U` und :math:`V` genauso
weit von :math:`T` entfernt sein müssen, wie die Punkte :math:`P` und
:math:`Q`.

Mit Sage kann man ausgehen vom Punkt :math:`T` den Wert von :math:`\mu` für den
Richtungsvektor von :math:`h` bestimmen, sodass der Punkt den Gleichen Abstand
zu :math:`T` hat wie der Punkt :math:`Q`. Multipliziert man nun den
Richtungsvektor von :math:`h` mit dem berechneten :math:`\mu` und addiert dazu
:math:`T` erhält man den neuen Punkt :math:`U`. Für :math:`V` muss man die
selbe Berechnung mit :math:`-\mu` durchführen.

.. sagecellserver::

    sage: from sage.plot.polygon import Polygon

    sage: abstand = (t-q).norm()
    sage: print("Abstand zwischen T und Q : {}".format(abstand))
    sage: result = solve([mu * vector([1, -2, 4]).norm() == abstand], mu)
    sage: print("{}".format(result[0]))
    sage: mu_1 = result[0].right()
    sage: mu_2 = -result[0].right()

    sage: rechteck = line3d([q, t + mu_1 * vector([1, -2, 4]), p, t + mu_2 * vector([1, -2, 4]), q], color='orange', thickness=5)
    sage: show(pg + tg + ph + th+ pt + tt + pp + tp + pq + tq + rechteck, aspect_ratio=1)


.. end of output
