Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`f:x\mapsto\sqrt{1-\ln x}` mit maximaler
  Definitionsmenge :math:`\mathbb{D}`.

  a) Bestimmen Sie :math:`\mathbb{D}`.

  b) Bestimmen Sie den Wert :math:`x\in \mathbb{D}` mit :math:`f(x)=2`.

**Lösung zu Teil a**

Der Logarithmus ist nur für Argumente :math:`x>0` definiert, die Wurzelfunktion
nur für Argumente :math:`x\geq0`. Für Werte :math:`x>e` nimmt der Logarithmus
von :math:`x` Werte größer 1 an, womit das Argument der Wurzel kleiner als 0
würde. Im Bereich :math:`0<x\leq e` nimmt der Logarithmus jedoch stets Werte
kleiner oder gleich 1 an, womit das Argument der Wurzel größer oder gleich Null
wird. Der maximale Definitionsbereich ist also durch

.. math::

  \mathbb{D}=]0;e]

gegeben. Wir zeichnen die Funktion mit Sage.

.. sagecellserver::

  sage: f(x) = sqrt(1-ln(x))
  sage: plot(f(x), (0, e), figsize=(4, 2.8))
     
.. end of output

**Lösung zu Teil b**

Um den entsprechenden Wert für :math:`x` zu erhalten, lösen wir die Gleichung
nach :math:`x` auf:

.. math::

  \sqrt{1-\ln x} = 2\Rightarrow
  \ln(x) = -3 \Rightarrow
  x = e^{-3}

Das Ergebnis wird durch Sage bestätigt:

.. sagecellserver::

  sage: solve(f(x)==2, x)
     
.. end of output
