Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`g:x\rightarrow\sqrt{3x+9}` mit maximaler
  Definitionsmenge :math:`D`.

  a) Bestimmen Sie :math:`D` und geben Sie die Nullstelle von :math:`g` an.
  b) Ermitteln Sie die Gleichung der Tangente an den Graphen von :math:`g` im Punkt :math:`P(0|3)`.

**Lösung zu Teil a**

Aus der Forderung :math:`\sqrt{3x+9}=0` ergibt sich durch Auflösen nach
:math:`x` die Nullstelle :math:`x=-3`.

Dieses Ergebnis lässt sich leicht mit Sage überprüfen:

.. sagecellserver::

    sage: g(x) = sqrt(3*x+9)
    sage: solve(g == 0, x)

.. end of output

Die Definitionsmenge folgt aus der Forderung, dass das Argument der
Wurzel größer oder gleich Null sein muss. Die ist der Fall wenn
:math:`3x+9\geq0` oder :math:`x\geq-3`.  Damit ergibt sich die
Definitionsmenge zu :math:`D=[-3,\infty[`. Dies verdeutlicht der
folgende Graph der Funktion :math:`g(x)`.

.. sagecellserver::

    sage: plot(g, (-3, 3), figsize=(4, 2.8))

.. end of output

**Lösung zu Teil b**

Um die Tangentengleichung am Punkt :math:`P(0|3)` zu bestimmen,
muss die Ableitung von :math:`g` an diesem Punkt berechnet werden.
Diese ergibt sich zu 

.. math::

  \frac{\text{d}g}{\text{d}x} = g'(x) = \frac{3}{2\sqrt{3x+9}}.
  
Damit erhält man :math:`g'(0)=\frac{1}{2}`.

.. sagecellserver::

    sage: dg = g.derivative()
    sage: print "Ableitung von g(x) : ", dg
    sage: print "Ableitung bei x = 0: ", dg(0)

.. end of output

Wegen :math:`g(0)=3` ist die Tangente :math:`h` am Punkt :math:`P` durch 

.. math::

   h(x) = \frac{1}{2} x +3

gegeben.

Dieses Ergebnis lässt ich auch graphisch mittels Sage bestätigen.
Die Funktion :math:`g(x)` ist dabei blau dargestellt, 
die Tangente :math:`h(x)` rot.

.. sagecellserver::

    sage: pg = plot(g, (-3, 5), color='blue')
    sage: h(x) = dg(0)*x+g(0)
    sage: ph = plot(h, (-3,5), color='red')
    sage: show(pg+ph, figsize=(4, 2.8))

.. end of output

