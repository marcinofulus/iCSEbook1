Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Die Abbildung zeigt ein gerades Prisma :math:`ABCDEF` mit :math:`A(0|0|0)`,
  :math:`B(8|0|0)`, :math:`C(0|8|0)` und :math:`D(0|0|4)`.

  .. image:: ../figs/prisma.png
     :align: center

  a) Bestimmen Sie den Abstand der Eckpunkte :math:`B` und :math:`F`.

  b) Die Punkte :math:`M` und :math:`P` sind die Mittelpunkte der Kanten
     :math:`[AD]` bzw. :math:`[BC]`. Der Punkt :math:`K(0|y_K|4)` liegt auf
     der Kante :math:`[DF]`. Bestimmen Sie :math:`y_K` so, dass das Dreieck
     :math:`KMP` in :math:`M` rechtwinklig ist.

**Lösung zu Teil a**

Zunächst müssen wir den Eckpunkt :math:`F` bestimmen. Dieser befindet sich in
:math:`z`-Richtung oberhalb des Punktes :math:`C`, auf einer Höhe mit dem Punkt
:math:`D` und hat daher die Koordinaten :math:`F(0|8|4)`.

Der Abstand von :math:`B` und :math:`F` berechnet sich dann durch

.. math::

  \overline{BF} = |\vec{B} - \vec{F}| = \sqrt{8^2+(-8)^2+(-4)^2}=12.

Wir überprüfen das Ergebnis mit Sage. Hierfür konstruieren wir uns den Punkt
:math:`F` und berechnen anschließend den Abstand zum Punkt :math:`B`.

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: b = vector([8, 0, 0])
    sage: c = vector([0, 8, 0])
    sage: d = vector([0, 0, 4])
    sage: f = c + d - a
    sage: print 'Abstand B-F:', norm(b-f)

.. end of output

**Lösung zu Teil b**

Den Mittelpunkt :math:`M` der Strecke zwischen zwei Punkten :math:`A` und :math:`D`
erhält man durch

.. math::

  \vec{M} = \vec{A} + 1/2 \cdot (\vec{D} - \vec{A}).

Entsprechend erhalten wir die Koordinaten für die Punkte :math:`M(0|0|2)` und :math:`P(4|4|0)`.

.. sagecellserver::

    sage: m = a + 1/2 * (d - a)
    sage: p = b + 1/2 * (c - b)
    sage: print "m:", m, ", p:", p

Um den :math:`y`-Wert des Punktes :math:`K` zu bestimmen, nutzen wir die Bedingung, dass der
Winkel am Punkt :math:`M` :math:`90°` betragen soll. Dies bedeutet, dass das Dreieck :math:`PMK`
den Satz des Pythagoras erfüllen muss:

.. math::

  \overline{PM}^2 + \overline{MK}^2 = \overline{KP}^2\\

Das Einsetzen der Koordinaten liefert uns die Gleichung

.. math::

  (4^2+4^2+2^2) + (0^2+y_K^2+2^2) = (4^2 + (4-y_K)^2 + 4^2).

Auflösen nach :math:`y_K` liefert uns die gewünschte :math:`y`-Koordinate des Punktes
:math:`K`.

.. math::

  y_K=1

Selbiges Ergebnis erhalten wir mit wenig Aufwand durch Sage. Zunächst definieren wir 
uns eine Funktion, die den Betrag eines Vektors ausrechnet und testen diese für einen
einfachen Vektor.

.. sagecellserver::

  sage: def absolut(v):
  ...       return sqrt(v[0]^2 + v[1]^2 + v[2] ^2)
  sage: absolut(vector([1, 1, 1]))

Die :math:`y`-Koordinate :math:`y_K` erhalten wir wieder über den Satz des
Pythagoras.

.. sagecellserver::

  sage: y = var('y')
  sage: k = vector([0 , y, 4])
  sage: pm =  absolut(p-m)
  sage: pk =  absolut(p-k)
  sage: mk =  absolut(m-k)
  sage: solve(pm^2 + mk^2 == pk^2, y)
