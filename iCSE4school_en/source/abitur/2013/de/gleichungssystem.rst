Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Geben sie für :math:`x\in\mathbb{R}^+` die Lösungen der folgenden
  Gleichung an:

  .. math::

     (\ln x-1) \cdot \left( \mathrm{e}^x -2 \right) \cdot
     \left( \dfrac{1}{x} -3 \right)=0

**Lösung**

Die Nullstellen der Funktion erhält man durch Bestimmung der Nullstellen
der drei Faktoren.

Aus der Forderung :math:`\ln x - 1=0` folgt durch Umformen, dass
:math:`\ln x = 1` gelten muss. Um dies zu lösen, wendet man die
Exponentialfunktion auf beiden Seiten an: :math:`\mathrm{e}^{\ln x} =
\mathrm{e}^1 = \mathrm{e}`. Da der Logarithmus
die Umkehrfunktion zur Exponentialfunktion ist, gilt
:math:`\mathrm{e}^{\ln x}=x`. Es ergibt sich somit als erste Nullstelle
:math:`x_1 = \mathrm{e}`.

Auflösen des zweiten Faktors ergibt :math:`\mathrm{e}^x = 2`. Hier muss
der Logarithmus auf beide Seiten angewendet werden. Analog zur vorherigen Begründung
gilt :math:`\ln \mathrm{e}^x = x`. Daraus folgt als zweite Nullstelle :math:`x_2=\ln 2`.

Der letzte Faktor liefert durch einfaches Auflösen die Nullstelle
:math:`x_3 = \frac{1}{3}`.

Dieses Ergebnis lässt sich leicht mit Sage überpüfen

.. sagecellserver::

    solve((ln(x)-1) * (exp(x)-2) * (1/x-3) == 0, x)

.. end of output

