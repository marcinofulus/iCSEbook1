Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Geben Sie jeweils den Term und den Definitionsbereich einer Funktion an, die
  die angegebene(n) Eigenschaft(en) besitzt.

  a) Der Punkt (2|0) is ein Wendepunkt des Graphen von :math:`g`

  b) Der Graph der Funktion :math:`h` ist streng monoton fallend und
     rechtsgekrümmt

**Lösung zu Teil a**

Die einfachste Lösung lässt sich mit Hilfe einer Sinusfunktion herleiten.
Die Sinusfunktion hat einen einen Wendepunkt am Nulldurchlauf:

.. math::

  f(x) = \sin(x)	\\
  f(0) = 0		\\
  f''(0) = -sin(0) = 0	\\
  f'''(0) = -cos(0) = 1	\\

Eine Verschiebung der Sinusfunktion liefert uns also die gewünschte
Eigenschaft:

.. math::

  g(x) = \sin(x-2)

Eine Zeichnung mit Sage kann den Wendepunkt bestätigen:

.. sagecellserver::

  sage: g(x) = sin(x-2)
  sage: plot(g(x), (0,5), x, figsize=(4, 2.8))
     
.. end of output


**Lösung zu Teil b**

Die einfachste Lösung für eine streng monoton wachsende und linksgekrümmte
Funktion ist die Exponentialfunktion. Durch ein negatives Vorzeichen lässt
sich diese in eine streng monoton fallende rechtsgekrümmte Funktion 
umwandeln, wie sich durch Rechnung bestätigen lässt:

.. math::

  h(x) = -e^x		\\
  h'(x) = -e^x < 0	\\
  h''(x) = -e^x < 0

Auch eine Zeichnung mit Sage bestätigt dies:

.. sagecellserver::

  sage: h(x) = -e**x
  sage: plot(h(x), (-5,5), x, figsize=(4, 2.8))
     
.. end of output
