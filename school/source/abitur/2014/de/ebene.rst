Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Ebene :math:`E:3x_2+4x_3=5`.

  a) Beschreiben Sie die besondere Lage von :math:`E` im Koordinatensystem.

  b) Untersuchen Sie rechnerisch, ob die Kugel mit Mittelpunkt :math:`Z(1|6|3)`
     und Radius :math:`7` die Ebene :math:`E` schneidet.

**Lösung zu Teil a**

Die Ebene :math:`E` verläuft parallel zur :math:`x_1`-Achse. Dies lässt sich 
daran erkennen, dass die Ebenengleichung keine :math:`x_1`-Komponente enthält.

Mit Sage können wir die Ebene im Dreidimensionalen darstellen. Hierfür lösen
wir zunächst die Ebenengleichung nach der Variablen :math:`x_3` auf.

.. sagecellserver::

  sage: var('x1')
  sage: var('x2')
  sage: var('x3')
  sage: solution = solve(3*x2+4*x3 == 5, x3, solution_dict=1)[0]
  sage: p1 = plot3d(solution[x3], (x1, -10, 10), (x2, -10, 10))
  sage: p1

**Lösung zu Teil b**

Mit Sage wollen wir uns zunächst einen Überblick über die Lage der Ebene und der Kugel
im dreidimensionalen Raum verschaffen.

.. sagecellserver::

  sage: p2 = sphere(center=(1, 6, 3), size=7, color='red', opacity=1)
  sage: show(p1 + p2, aspect_ratio=1)

Wir können leicht erkennen, dass die Kugel die Ebene schneidet.

Um dies rechnerisch zu überprüfen, bestimmen wir zunächst den Abstand zwischen
dem Kugelmittelpunkt und der Ebene.

Aus der Hesse-Normalform der Ebene erhalten wir den Normalenvektor

.. math::

  \vec{n} = \left( \begin{matrix}
    			0\\
    			3\\
    			4
  	     	    \end{matrix} \right),

bzw. den normierten Normalenvektor

.. math::

  \vec{n}_0 = \left( \begin{matrix}
    			0\\
    			\frac{3}{5}\\
    			\frac{4}{5}
  	     	    \end{matrix} \right).

Um den Abstand des Kugelmittelpunkts zur Ebene zu bestimmen, definieren wir nun Punkte 
auf der Gerade in Richtung der Ebenennormale :math:`\vec{n}_0`, die 
durch den Kugelmittelpunkt verläuft als

.. math::

  \left( \begin{matrix}
    			x_1\\
    			x_2\\
    			x_3
  	     	    \end{matrix} \right) = \left( \begin{matrix}
    			1\\
    			6\\
    			3
  	     	    \end{matrix} \right) + t\cdot \left( \begin{matrix}
    			0\\
    			\frac{3}{5}\\
    			\frac{4}{5}
  	     	    \end{matrix} \right).

Der Wert :math:`|t|` gibt dabei an, welchen Abstand der Geradenpunkt vom Kugelmittelpunkt hat.
Wir bestimmen den Wert :math:`t`, für den die Gerade die Ebene schneidet, indem wir die 
Geradenkoordinaten in die Ebenengleichung einsetzen. Wir erhalten

.. math::

  &3 \cdot (6+\frac{3}{5}t) + 4 \cdot (3+\frac{4}{5}t)-5=0 \quad\Leftrightarrow\\
  &t=-5 \quad\Leftrightarrow\\
  &|t|=5.

Der Abstand des Kugelmittelpunkts von der Ebene beträgt also 5 und ist kleiner
als der Kugelradius 7. Somit schneidet die Kugel die Ebene. Die gerade
durchgeführte Rechnung kann man folgendermaßen in Sage nachvollziehen:

.. sagecellserver::

  sage: t = var('t')
  sage: n = vector([0, 3, 4])
  sage: n0 = n/norm(n)
  sage: z = vector([1, 6, 3])
  sage: radius = 7
  sage: gerade = z+t*n0
  sage: solution = solve(3*gerade[1]+4*gerade[2] == 5, t, solution_dict=True)[0]
  sage: abstand = abs(solution[t])
  sage: print "Abstand Kugelmittelpunkt - Ebene:", abstand
  sage: if abstand < radius:
  ...       print('Ebene schneidet Kugel')
  sage: else:
  ...       print('Ebene schneidet Kugel nicht')
