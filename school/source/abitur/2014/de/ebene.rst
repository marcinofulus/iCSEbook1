Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Ebene :math:`E:3x_2+4x_3=5`.

  a) Beschreiben Sie die besondere Lage von :math:`E` im Koordinatensystem.

  b) Untersuchen Sie rechnerisch, ob die Kugel mit Mittelpunkt :math:`Z(1|6|3)`
     und Radius 7 die Ebene :math:`E` schneidet.

**Lösung zu Teil a**

Die Ebene :math:`E` verläuft parallel zur :math:`x_1`-Achse. Dies lässt sich 
daran erkennen, dass die Ebenengleichung keine :math:`x_1<`-Komponente enthält.

**Lösung zu Teil b**



.. math::

  y_K=1

Selbiges Ergebnis erhalten wir mit wenig Aufwand durch Sage:

.. sagecellserver::

    sage: k = vector([0 , y, 4])
    sage: pm =  norm(p-m)
    sage: pk =  norm(p-k)
    sage: mk =  norm(m-k)
    sage: solve(pm^2 + mk^2 == pk^2, y)
