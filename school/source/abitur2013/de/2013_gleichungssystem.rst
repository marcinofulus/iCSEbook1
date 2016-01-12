Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Geben sie für :math:`x\in\mathrm{R}^+` die Lösungen der folgenden
  Gleichung an:

  :math:`(\ln x-1) \cdot \left( e^x -2 \right) \cdot \left( \frac{1}{x} -3 \right)=0`

**Lösung**

Die Nullstellen der Funktion erhält man durch Bestimmung der Nullstellen
der drei Faktoren.

Aus der Forderung :math:`\ln x - 1=0` folgt durch umformen das
:math:`\ln x = 1` gelten muss. Um dies zu lösen wendet man die :math:`e`
Funktion auf beiden Seiten an: :math:`e^{\ln x} = e^1 = e`. Da die :math:`\ln`
Funktion die Umkehrfunktion zur :math:`e`-Funktion ist gilt
:math:`e^{\ln x}=x`. Es ergibt sich die erste Nullstelle :math:`x_1 = e`.

Auflösen des zweiten Faktors ergibt :math:`e^x = 2`. Hier muss die
:math:`ln`-Funktion angewendet werden. Analog zur vorherigen Begründung
gilt :math:`\ln e^x = x`. Daraus folgt als zweite Nullstelle :math:`x_2=\ln 2`.

Der letzte Faktor liefert durch einfaches Auflösen die Nullstelle
:math:`x_3 = \frac{1}{3}`.

Dieses Ergbnis lässt sich leicht mit Sage überpüfen

.. sagecellserver::

    x = var('x')
    solve((ln(x)-1)*(exp(x)-2)*(1/x - 3)==0,x)

.. end of output

