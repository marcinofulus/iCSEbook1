Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Geben Sie jeweils den Term und den Definitionsbereich einer Funktion an, die
  die angegebene(n) Eigenschaft(en) besitzt.

  a) Der Punkt (2|0) is ein Wendepunkt des Graphen von :math:`g`.

  b) Der Graph der Funktion :math:`h` ist streng monoton fallend und
     rechtsgekrümmt.

**Lösung zu Teil a**

Eine Funktion mit dem gewünschten Wendepunkt lässt sich aus den folgenden
Forderungen erhalten:

.. math::

  f(2) &= 0\\
  f''(2) &= 0

Außerdem fordern wir, dass :math:`f'''(2)\neq0`, speziell :math:`f'''(2)=1`.
Die Aufintegration unter Beachtung dieser Forderungen liefert

.. math::

  f(x) = \frac{1}{6}(x-2)^3+c(x-2)\,.

Eine Zeichnung mit Sage kann den Wendepunkt bestätigen:

.. sagecellserver::

  sage: g(x, c) = (x-2)^3/6+c*(x-2)
  sage: p1 = plot(g(x, 0), (0, 4), color='red', legend_label="$f'(2)=0$")
  sage: p2 = plot(g(x, 1), (0, 4), color='green', legend_label="$f'(2)=1$")
  sage: p3 = plot(g(x, -1), (0, 4), color='blue', legend_label="$f'(2)=-1$")
  sage: show(p1+p2+p3, figsize=(4, 2.8))
     
.. end of output


**Lösung zu Teil b**

Die einfachste Lösung für eine streng monoton wachsende und linksgekrümmte
Funktion ist die Exponentialfunktion. Durch ein negatives Vorzeichen lässt
sich diese in eine streng monoton fallende rechtsgekrümmte Funktion 
umwandeln, wie sich durch Rechnung bestätigen lässt:

.. math::

  h(x) &= -e^x		\\
  h'(x) &= -e^x < 0	\\
  h''(x) &= -e^x < 0

Auch eine Zeichnung mit Sage bestätigt dies:

.. sagecellserver::

  sage: h(x) = -exp(x)
  sage: plot(h(x), (-2, 2), figsize=(4, 2.8))
     
.. end of output
