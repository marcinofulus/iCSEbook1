Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Betrachtet wird die Pyramide ABCDS mit A(0|0|0), B(4|4|2), C(8|0|2), D(4|-4|0)
  und S(1|1|-4). Die Grundfläche ist ein Parallelogramm.

  a) Weisen Sie nach, dass das Parallelogramm ABCD ein Rechteck ist.

  b) Die Kante [AS] steht senkrecht auf der Grundfläche ABCD. Der Flächeninhalt
     der Grundfläche beträgt :math:`24\sqrt{2}`. Ermitteln Sie das Volumen der
     Pyramide.

**Lösung zu Teil a**

Ein Rechteck liegt vor, wenn ausgehend von einem Eckpunkt der Winkel zwischen
den beiden kürzesten Verbindungsvektoren zu den anderen Eckpunkten gleich
90 Grad ist.

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: b = vector([4, 4, 2])
    sage: c = vector([8, 0, 2])
    sage: d = vector([4, -4, 0])
    sage: print(' Abstand A-B:', N(norm(b-a)))
    sage: print(' Abstand A-C:', N(norm(c-a)))
    sage: print(' Abstand A-D:', N(norm(d-a)))
    sage: (b-a).dot_product(d-a)

.. end of output

Die Verbindungsvektoren von A nach B und D stehen demnach senkrecht
aufeinander. Der Punkt C liegt diagonal gegenüber A. Es liegt somit ein
Rechteck vor. Da diese Lösung von der Vorgabe abhängt, dass ABCD ein
Parallelogramm ist, überprüfen wir noch die anderen drei Innenwinkel.

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: b = vector([4, 4, 2])
    sage: c = vector([8, 0, 2])
    sage: d = vector([4, -4, 0])
    sage: (c-b).dot_product(a-b), (d-c).dot_product(b-c), (a-d).dot_product(c-d)

.. end of output

**Lösung zu Teil b**

Nachdem der Verbindungsvektor von A nach S senkrecht auf der Grundfläche steht, 
gibt seine Länge die Höhe :math:`h` der Pyramide an. Die Grundfläche ist als
:math:`A=24\sqrt{2}` vorgegeben, was wir kurz überprüfen wollen:

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: b = vector([4, 4, 2])
    sage: d = vector([4, -4, 0])
    sage: norm(a-b)*norm(a-d)

.. end of output

Die Höhe der Pyramide ist

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: s = vector([1, 1, -4])
    sage: norm(s-a)

.. end of output

Somit ergibt sich das Volumen zu :math:`V=\frac{h}{3}A=48`. Dieses Ergebnis
lässt sich auch direkt mit Hilfe von Sage bestätigen.

.. sagecellserver::

    sage: a = vector([0, 0, 0])
    sage: b = vector([4, 4, 2])
    sage: c = vector([8, 0, 2])
    sage: d = vector([4, -4, 0])
    sage: s = vector([1, 1, -4])
    sage: Polyhedron(vertices=[a, b, c, d, s]).volume()

.. end of output
