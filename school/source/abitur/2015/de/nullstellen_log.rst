Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Bestimmen Sie für :math:`x\in\mathbb{R}` die Lösungen der Gleichung
  :math:`(4x-3)\cdot\ln\left(x^2-5x+7\right)=0`.

**Lösung**

Die Nullstellen der Funktion auf der linken Seite erhält man durch Bestimmung
der Nullstellen der beiden Faktoren.

Aus der Forderung :math:`4x-3=0` folgt durch Auflösen nach :math:`x`
unmittelbar die Nullstelle :math:`x_1 = 3/4`.

Der zweite Faktor verschwindet, wenn das Argument des Logarithmus gleich Eins
ist. Daraus ergibt sich die Forderung :math:`x^2-5x+7=1`. Die Lösung der daraus 
resultierenden quadratischen Gleichung :math:`x^2-5x+6=0` ergibt sich zu

.. math::

   x_{2,3} = \frac{5\pm\sqrt{25-24}}{2}.

Damit erhalten wir zwei weitere Nullstellen :math:`x_2=2` und :math:`x_3=3`.

Dieses Ergebnis lässt sich leicht mit Sage überprüfen:

.. sagecellserver::

  sage: solve((4*x-3)*ln(x^2-5*x+7) == 0, x)

.. end of output
