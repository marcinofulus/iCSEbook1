Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Abbildung 1 zeigt den Graphen :math:`G_f` der Funktion :math:`f` mit
  Definitionsbereich :math:`[-2;2]`. Der Graph besteht aus zwei Halbkreisen,
  die die Mittelpunkte :math:`(-1\vert 0)` bzw. :math:`(1\vert 0)` sowie
  jeweils den Radius :math:`1` besitzen. Betrachtet wird die in :math:`[-2;2]`
  definierte Integralfunktion 
  :math:`F: x \mapsto \int\limits_0^x f(t)\mathrm{d}t`.

  a) Geben Sie :math:`F(0)`, :math:`F(2)` und :math:`F(-2)` an.
  b) Skizzieren Sie den Graphen von :math:`F` in Abbildung 1.

  .. image:: ../figs/inthalbkreis.png
     :align: center


**Lösung zu Teil a**

Betrachtet man die Integrationsgrenzen von :math:`F` so ergibt sich für
:math:`F(0)`:

.. math::

  F(0) = \int\limits_0^0 f(t)\mathrm{d}t = 0.

Für :math:`F(2)` wird über die Fläche eines Halbkreises mit Radius :math:`1`
integriert. Dadurch ergibt sich der Wert:

.. math::

  F(2)=\frac{1}{2} \cdot \pi r^2 = \frac{1}{2} \cdot \pi

Aufgrund der Antisymmetrie von :math:`F` gilt :math:`F(x) = -F(-x)` und damit
:math:`F(-2) = -\frac{1}{2} \cdot \pi`.

Diese Lösung lässt sich durch Sage prüfen:

.. sagecellserver::

    sage: f1(x) = sqrt(1 - (x - 1)^2)
    sage: f2(x) = sqrt(1 - (x + 1)^2)
    sage: f = Piecewise([[(-2,0), f2], [(0,2), f1]], x)
    sage: print("F(0) = " + str(integrate(f, x, 0, 0)))
    sage: print("F(2) = " + str(integrate(f, x, 0, 2)))
    sage: print("F(-2) = " + str(integrate(f, x, 0, -2)))

.. end of output

**Lösung zu Teil b**

In Sage können beide Funktionen in einem Koordinatensystem gezeichnet werden.

.. sagecellserver::

    sage: pf = plot(f)
    sage: intf = integrate(f, x)
    sage: pintf = plot(intf, color='red')
    sage: show(pf + pintf, aspect_ratio=1)

.. end of output

