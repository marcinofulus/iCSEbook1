Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`f: x\mapsto \frac{x}{\ln(x)}` 
  mit Definitionsmenge :math:`\mathbb{R}^+\backslash\{1\}`. Bestimmen Sie Lage und Art des
  Extrempunkts des Graphen von :math:`f`. 

**Lösung**

Wir verschaffen uns mit Sage zunächst einen Überblick über die gegebene Funktion.

.. sagecellserver::

   sage: p = plot(x/ln(x), xmin=0, xmax=10, ymin=-2, ymax=5, color='blue', detect_poles='show')
   sage: p.show(figsize=(4, 2.8))

.. end of output

Um den Extrempunkt der Funktion zu finden, müssen wir ihre Ableitung gleich Null setzen.
Die Ableitung ergibt sich zu

.. math::

   f'(x)=\frac{\ln(x)-1}{\ln(x)^2}

wie man mit Sage leicht überprüft:

.. sagecellserver::

   sage: f(x) = x/ln(x)
   sage: df(x) = f.derivative(x).log_simplify()
   sage: print(df(x))

.. end of output

Nullsetzen der Ableitung liefert uns den einzigen Extrempunkt an der Stelle
:math:`x_0=e` mit dem Wert :math:`f(x_0)=e`.

.. sagecellserver::

   sage: x0 = solve(df(x)==0, x)[0].lhs()
   sage: print('Extrempunkt an der Stelle (', x0, '|', f(x0), ')')

.. end of output

Um die Art des Extrempunkts zu bestimmen, berechnen wir die zweite Ableitung der
Funktion :math:`f(x)`

.. math::

   f''(x) = \frac{-\ln(x)+2}{x\ln(x)^3}

und werten diese am Extrempunkt aus

.. math::

   f''(x_0) = \frac{1}{\mathrm{e}} > 0

Dies lässt sich wiederum mit Sage überprüfen:

.. sagecellserver::

   sage: ddf(x) = df.derivative(x).log_simplify()
   sage: print(ddf(x))
   sage: print(ddf(x0))

.. end of output

Bei dem Extrempunkt handelt es sich somit um ein Minimum, wie man auch schon dem
obigen Funktionsgraphen entnehmen konnte.
