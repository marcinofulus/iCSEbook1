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

  F(0) = \int_0^0 f(t)\mathrm{d}t = 0 .

Für :math:`F(2)` wird über die Fläche eines Halbkreises mit Radius :math:`1`
integriert. Ausgehend von der Fläche :math:`\pi r^2` eines Kreises mit
Radius :math:`r` ergibt sich

.. math::

  F(2) = \frac{\pi}{2} .

Aus der Symmetrie der Funktion :math:`f(x)` folgt die Antisymmetrie der
Stammfunktion

.. math::

  F(-x) = \int_0^{-x} f(t)\mathrm{d}t
        = -\int_{-x}^0 f(t)\mathrm{d}t
        = -\int_0^x f(-t)\mathrm{d}t
        = -\int_0^x f(t)\mathrm{d}t
        = -F(x)

Damit folgt :math:`F(-2) = -\frac{\pi}{2}`.

Diese Lösung lässt sich mit Hilfe von Sage überprüfen:

.. sagecellserver::

    sage: f1(t) = sqrt(1 - (t - 1)^2)
    sage: f2(t) = sqrt(1 - (t + 1)^2)
    sage: f = Piecewise([[(-2, 0), f2], [(0, 2), f1]], t)
    sage: print("F(0) = " + str(integrate(f, t, 0, 0)))
    sage: print("F(2) = " + str(integrate(f, t, 0, 2)))
    sage: print("F(-2) = " + str(integrate(f, t, 0, -2)))

.. end of output

**Lösung zu Teil b**

Da die Funktion stückweise definiert ist, führt man die
symbolische Integration in Sage am besten ebenfalls stückweise
aus. Damit lassen sich dann die Funktion :math:`f` und ihre
Stammfunktion darstellen.

.. sagecellserver::

    sage: x = var('x')
    sage: assume(x > 0)
    sage: F1(x) = integrate(f1, t, 0, x)
    sage: forget()
    sage: assume(x < 0)
    sage: F2(x) = integrate(f2, t, 0, x)
    sage: F = Piecewise([[(-2, 0), F2], [(0, 2), F1]], x)
    sage: pf = plot(f)
    sage: pF = plot(F, color='red')
    sage: show(pf + pF, aspect_ratio=1, figsize=4)

.. end of output
