Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Eine Kugel besitzt den Mittelpunkt :math:`M(-3|2|7)`. Der Punkt :math:`P(3|4|4)`
  liegt auf der Kugel.

  a) Der Punkt :math:`Q` liegt ebenfalls auf der Kugel, die Strecke :math:`[PQ]`
     verläuft durch deren Mittelpunkt. Ermitteln Sie die Koordinaten von :math:`Q`.

  b) Weisen Sie nach, dass die Kugel die :math:`x_1x_2`-Ebene berührt.

**Lösung zu Teil a**

Da die beiden Punkte :math:`P` und :math:`Q` sich auf der Kugeloberfläche befinden
und ihre Verbindungsstrecke durch den Mittelpunkt verläuft, lässt sich :math:`Q`
darstellen als

.. math::

  \vec{Q} = \vec{M} + \left(\vec{M}-\vec{P}\right).

Wir erhalten 

.. math::

  Q(-9|0|10)

Selbiges Ergebnis erhalten wir mit Sage:

.. sagecellserver::

  sage: M = vector([-3, 2, 7])
  sage: P = vector([3, 4, 4])
  sage: print "Q:", M + M - P

.. end of output

**Lösung zu Teil b**

Um zu überprüfen, ob die Kugel die :math:`x_1x_2`-Ebene berührt, reicht es aus, den Abstand zwischen
der Ebene und dem Kugelmittelpunkt mit dem Radius der Kugel zu vergleichen. Die Ebenengleichung
in Hessescher Normalform lautet:

.. math::

  0 \cdot x_1 + 0 \cdot x_2 + x_3 = 0

Um den Abstand zum Mittelpunkt der Kugel zu berechnen muss der Punkt :math:`M(-3|2|7)` in die
Gleichung eingesetzt werden:

.. math::

  d = \vert 0 \cdot (-3) + 0 \cdot 2 + 7 \vert = 7

Den Radius der Kugel erhält man durch den Abstand zwischen dem Punkt :math:`P`, der sich auf der Kugeloberfläche
befindet, und dem Mittelpunkt der Kugel:

.. math::

  r = \left\vert\vec{M}-\vec{P}\right\vert = \sqrt{(-3-3)^2 + (2-4)^2 + (7-4)^2} = 7

Da der Abstand der Kugel zur Ebene gleich dem Radius der Kugel ist, berührt die Kugel die Ebene in genau
einem Punkt. Der Berührungspunkt ist dabei die Projektion des Kugelmittelpunkts auf die :math:`x_1x_2`-Ebene:
:math:`S(-3|2|0)`.

Dies wollen wir uns mit Sage veranschaulichen. Die 3-dimensionale Darstellung von Kugel und Ebene
lässt sich dabei mit der Maus rotieren.
	
.. sagecellserver::

  sage: var('x')
  sage: var('y')
  sage: z = 0
  sage: radius = norm(M-P)
  sage: p1 = plot3d(z, (x,-15,15), (y,-15,15), opacity=0.7)
  sage: p2 = sphere(center=(-3,2,7), size=radius, color='red', opacity=0.7)
  sage: show(p1 + p2, aspect_ratio=1)

.. end of output

