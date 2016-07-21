Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  In einem kartesischen Koordinatensystem legen die Punkte :math:`A(4|0|0)`,
  :math:`B(0|4|0)` und :math:`C(0|0|4)` das Dreieck :math:`ABC` fest, das in
  der Ebene :math:`E: x_1+x_2+x_3=4` liegt.

  a) Bestimmen Sie den Flächeninhalt des Dreiecks :math:`ABC`.

  Das Dreieck :math:`ABC` stellt modellhaft einen Spiegel dar. Der Punkt
  :math:`P(2|2|3)` gibt im Modell die Position einer Lichtquelle an, von der
  ein Lichtstrahl ausgeht. Die Richtung dieses Lichtstrahls wird im Modell
  durch den Vektor

  .. math::

    \vec{v}=\begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}

  beschrieben.

  b) Geben Sie eine Gleichung der Geraden :math:`g` an, entlang derer der
     Lichtstrahl im Modell verläuft. Bestimmen Sie die Koordinaten des Punkts
     :math:`R`, in dem :math:`g` die Ebene :math:`E` schneidet, und begründen
     Sie, dass der Lichtstrahl auf dem dreieckigen Spiegel auftrifft.

  Der einfallende Lichtstrahl wird in demjenigen Punkt des Spiegels
  reflektiert, der im Modell durch den Punkt :math:`R` dargestellt wird. Der
  reflektierte Lichtstrahl geht für einen Beobachter scheinbar von einer
  Lichtquelle aus, deren Position im Modell durch den Punkt :math:`Q(0|0|1)`
  beschrieben wird (vgl. Abbildung).

  .. image:: ../figs/dreieck.png
     :align: center

  c) Zeigen Sie, dass die Punkte :math:`P` und :math:`Q` bezüglich der Ebene
     :math:`E` symmetrisch sind.
 
  Das Lot zur Ebene :math:`E` im Punkt :math:`R` wird als Einfallslot bezeichnet.

  d) Die beiden Geraden, entlang derer der einfallende und der reflektierte
     Lichtstrahl im Modell verlaufen, liegen in einer Ebene :math:`F`.
     Ermitteln Sie eine Gleichung von :math:`F` in Normalenform. Weisen Sie
     nach, dass das Einfallslot ebenfalls in der Ebene :math:`F` liegt.

  e) Zeigen Sie, dass die Größe des Winkels :math:`\beta` zwischen
     reflektiertem Lichtstrahl und Einfallslot mit der Größe des Winkels
     :math:`\alpha` zwischen einfallendem Lichtstrahl und Einfallslot
     übereinstimmt.

**Lösung zu Teil a**

Um den Flächeninhalt des Dreiecks zu bestimmen, müssen wir zunächst die
Verbindungsvektoren :math:`\vec{AB}` und :math:`\vec{AC}` bestimmen:

.. math::

  \vec{AB} = \vec{B} - \vec{A} = \begin{pmatrix} -4\\ 4\\ 0\end{pmatrix},\\
  \vec{AC} = \vec{C} - \vec{A} = \begin{pmatrix} -4\\ 0\\ 4\end{pmatrix},

Mit Hilfe des Kreuzprodukts können wir anschließend den Flächeninhalt des
Dreiecks bestimmen:

.. math::

  A = \frac{1}{2}\cdot\left|\vec{AB}\times\vec{AC}\right| = 
  \frac{1}{2}\cdot\left|\begin{pmatrix} 16\\ 16\\ 16\end{pmatrix}\right| =
  8\sqrt{3}

Wir überprüfen das Ergebnis mit Sage:

.. sagecellserver::

  sage: a = vector([4, 0, 0])
  sage: b = vector([0, 4, 0])
  sage: c = vector([0, 0, 4])
  sage: ab = b - a
  sage: ac = c - a
  sage: A = 1/2 * abs(ab.cross_product(ac))
  sage: print "Flächeninhalt des Dreiecks:", A

.. end of output

Wir zeichnen zusätzlich das Dreieck mit Hilfe von Sage:

.. sagecellserver::

  sage: from sage.plot.polygon import Polygon
  sage: labeloffset = vector([0, 0, 0.3])
  sage: A = point(a, size=10)
  sage: At = text3d("A", a + labeloffset, color='black', horizontal_alignment='left')
  sage: B = point(b, size=10)
  sage: Bt = text3d("B", b + labeloffset, color='black', horizontal_alignment='left')
  sage: C = point(c, size=10)
  sage: Ct = text3d("C", c + labeloffset, color='black', horizontal_alignment='left')
  sage: tri = polygon([a, b, c])
  sage: p1 = plot(tri + A + At + B + Bt + C + Ct)
  sage: p1

.. end of output

**Lösung zu Teil b**

Die Gerade muss durch den Punkt :math:`P` laufen und entlang des Vektors
:math:`\vec{v}` verlaufen. Eine Geradendarstellung ergibt sich als

.. math::

  \vec{g} = \vec{P}+\lambda\cdot\vec{v} = 
  \begin{pmatrix} 2\\ 2\\ 3\end{pmatrix} + \lambda\cdot
  \begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}

Für den Schnittpunkt :math:`R` setzen wir die Koordinaten der Gerade in die
Ebenengleichung ein:

.. math::

  &2 + \lambda\cdot (-1) + 2 + \lambda\cdot(-1) + 3 + \lambda\cdot (-4) = 4\Leftrightarrow\\
  &\lambda = 0{,}5

Der Schnittpunkt ergibt sich dadurch als 

.. math::

  \vec{R} = \vec{P} + \frac{1}{2}\vec{v} = \begin{pmatrix} 1{,}5\\ 1{,}5\\ 1\end{pmatrix}

Wir überprüfen diesen Schnittpunkt mit Sage

.. sagecellserver::

  sage: p = vector([2, 2, 3])
  sage: v = vector([-1, -1, -4])
  sage: plane = Polyhedron(eqns=[(-4,1,1,1)])
  sage: L = Polyhedron([p, p + v])
  sage: print L.intersection(plane).vertices()

.. end of output

und zeichnen die Gerade anschließend in unsere Graphik aus Teilaufgabe a) ein.
Wir sehen, dass die Gerade auf dem dreieckigen Spiegel auftritt.

.. sagecellserver::

  sage: r = p + 0.5*v
  sage: g = line([p, r], color='red', thickness=2)
  sage: P = point(p, size=10)
  sage: Pt = text3d("P", p + labeloffset, color='black', horizontal_alignment='left')
  sage: R = point(r, size=10)
  sage: Rt = text3d("R", r + labeloffset, color='black', horizontal_alignment='left')
  sage: p2 = plot(g + P + Pt + R + Rt)
  sage: p2 + p1

.. end of output

**Lösung zu Teil c**

Zunächst sehen wir uns den Verbindungsvektor :math:`\vec{PQ}` an:

.. math::

  \vec{PQ} = \vec{Q} - \vec{P} = \begin{pmatrix} -2\\ -2\\ -2\end{pmatrix}

Aus der Ebenengleichung von :math:`E` lässt sich leicht ablesen, dass der
nicht normierte Normalenvektor von :math:`E` durch

.. math::

  \vec{n} = \begin{pmatrix} 1\\ 1\\ 1\end{pmatrix}

gegeben ist, welcher offensichtlich parallel zum Verbindungsvektor
:math:`\vec{PQ}` ist. Die Punkte :math:`P` und :math:`Q` liegen also auf der
selben Normale zu :math:`E`. Damit die Punkte symmetrisch bezüglich :math:`E`
sind, müssen sie noch den gleichen Abstand zur Ebene haben. Wir überprüfen
dies, indem wir die Mitte der Verbindungsstrecke in die Ebenengleichung 
einsetzen:

.. math::

  \vec{M} = \vec{P} + \frac{1}{2}\vec{PQ} = \begin{pmatrix} 1\\ 1\\ 2\end{pmatrix}\\
  E:\quad 1 + 1 + 2 = 4

Die Punkte sind also symmetrisch bezüglich der Ebene.

Wir zeichnen die Verbindung der Punkte :math:`P` und :math:`Q`, sowie
den reflektierten Lichtstrahl in unsere Skizze ein:

.. sagecellserver::

  sage: q = vector([0, 0, 1])
  sage: labeloffset = vector([0, 0, 0.3])
  sage: Q = point(q, size=10)
  sage: Qt = text3d("Q", q + labeloffset, color='black', horizontal_alignment='left')
  sage: pq = line([p, q], color='black', legend_label='bla', thickness=2)
  sage: g_refl = line([r, r + r-q], color='red', thickness=2)
  sage: g_refl_q = line([q, r], color='red', thickness=1, linestyle='--')
  sage: p3 = plot(pq + g_refl + g_refl_q + Q + Qt)
  sage: p1 + p2 + p3

.. end of output

**Lösung zu Teil d**

Wir betrachten die beiden geraden

.. math::

  \vec{g}_1 = \vec{R} + \lambda\cdot\vec{v} =
  \begin{pmatrix} 1{,}5\\ 1{,}5\\ 1\end{pmatrix} +
  \lambda \cdot \begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}

und

.. math::

  \vec{g}_2 = \vec{R} + \mu\cdot(\vec{R}-\vec{Q}) =
  \begin{pmatrix} 1{,}5\\ 1{,}5\\ 1\end{pmatrix} + 
  \mu\cdot \begin{pmatrix} 1{,}5\\ 1{,}5\\ 0\end{pmatrix}

Eine Ebenengleichung lässt sich mit dem gemeinsamen Schnittpunkt :math:`R`
leicht aufstellen:

.. math::

  F:\quad \vec{X} = \begin{pmatrix} 1{,}5\\ 1{,}5\\ 1\end{pmatrix} + 
  \lambda \cdot \begin{pmatrix} -1\\ -1\\ -4\end{pmatrix} +
  \mu\cdot \begin{pmatrix} 1{,}5\\ 1{,}5\\ 0\end{pmatrix}

Diese Ebenengleichung lässt sich offenbar auch das Wegkürzen der :math:`x_1`-
und :math:`x_2`-Komponente darstellen:

.. math::

  E:\quad x_1 - x_2 = 0

Das Einfallslot, welches senkrecht zur Ebene :math:`E` durch den Punkt
 :math:`R` verläuft, lässt sich darstellen als

.. math::

  \vec{e} = \begin{pmatrix} 1{,}5\\ 1{,}5\\ 1\end{pmatrix} +
  \lambda \cdot \begin{pmatrix} 1\\ 1\\ 1\end{pmatrix}.

Die :math:`x_1`- und :math:`x_2`-Koordinate von :math:`e` erfüllt
offensichtlich die Ebenengleichung :math:`F`, womit :math:`e` in :math:`F`
liegt.

Wir zeichnen auch die Ebene :math:`F` und das Einfallslot :math:`e` in die 
Zeichnung ein:

.. sagecellserver::

  sage: lotvektor = vector([1,1,1])
  sage: F = polygon((vector([0,0,0]), vector([4,4,0]), vector([4,4,4]), vector([0,0,4])), color='green')
  sage: e = line([r, r + lotvektor], color='black', thickness=2)
  sage: p4 = plot(e + F)
  sage: p1 + p2 + p3 + p4

.. end of output

**Lösung zu Teil e**

Die Winkel :math:`\alpha` und :math:`\beta` können einfach über das
Skalarproduk berechnet werden:

.. math::

  \cos(\alpha) = 
  \frac{-\vec{v}\cdot\vec{n}}{\left|\vec{v}\right|\left|\vec{n}\right|}=
  \frac{6}{3\sqrt{6}}

und analog:

.. math::

  \cos(\beta) = 
  \frac{\vec{QR}\cdot\vec{n}}{\left|\vec{QR}\right|\left|\vec{n}\right|}=
  \frac{6}{3\sqrt{6}}
  
Die Winkel :math:`\alpha` und :math:`\beta` sind also gleich groß, was auch
durch unsere Skizze bestätigt wird.
