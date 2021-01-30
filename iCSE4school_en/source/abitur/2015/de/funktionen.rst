Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen :math:`f, g` und
  :math:`h` mit :math:`f(x)=x^2-x+1`, :math:`g(x)=x^3-x+1` und
  :math:`h(x)=x^4+x^2+1`.

  a) Die Abbildung zeigt den Graphen einer der drei Funktionen. Geben Sie an, um
     welche Funktion es sich handelt. Begründen Sie, dass der Graph die anderen
     beiden Funktionen nicht darstellt.

  .. image:: ../figs/funktionen.png
     :align: center

  b) Die erste Ableitungsfunktion von :math:`h` ist :math:`h'`. Bestimmen Sie
     den Wert von :math:`\int_0^1h'(x)\mathrm{d}x`.

**Lösung zu Teil a**

Die vorgegebene Funktion hat zwei Extrema. Damit kommt die Funktion
:math:`f(x)` nicht in Frage, da die Ableitung einer quadratischen Funktion nur
eine Nullstelle besitzt. Zudem kann die vorgegebene Funktion negative Werte
annehmen. Dies schließt die Funktion :math:`h(x)` aus. Bei der dargestellten
Funktion handelt es sich also offenbar um die Funktion :math:`g(x)`. Wir
überprüfen die Vermutung mit Sage:

.. sagecellserver::

    sage: ranges = {'xmin': -2, 'xmax': 2.5, 'ymin': -2.5, 'ymax': 2.5}
    sage: p = sum([plot(x^2-x+1, color='blue', **ranges),
    ...            plot(x^3-x+1, color='red', **ranges),
    ...            plot(x^4+x^2+1, color='green', **ranges)])
    sage: p.show(figsize=(2.7, 3))

.. end of output

In der Tat passt der rot dargestellte Funktionsgraph der Funktion :math:`g(x)`
zu der Vorgabe.

**Lösung zu Teil b**

Die Stammfunktion der Ableitung einer Funktion ist die Funktion selbst. Daher
folgt

.. math::

   \int_0^1h'(x)\mathrm{d}x = h(1)-h(0) = 3-1 = 2.

In Sage differenzieren wir zur Überprüfung zunächst die Funktion
:math:`h(x)` und bestimmen dann das gesuchte bestimmte Integral:

.. sagecellserver::

    sage: h(x) = x^4+x^2+1
    sage: dh(x) = diff(h, x)
    sage: print('Ableitung von h(x):', dh)
    sage: print('Wert des bestimmten Integrals:', integrate(dh(x), x, 0, 1))

.. end of output

Dieses Ergebnis erhalten wir natürlich auch, wenn wir entsprechend der obigen
Überlegung die Funktionswerte an den Integrationsgrenzen voneinander abziehen:

.. sagecellserver::

    sage: h(x) = x^4+x^2+1
    sage: h(1)-h(0)

.. end of output
