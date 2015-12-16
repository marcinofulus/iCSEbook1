Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die Funktion :math:`f: x\mapsto \frac{x}{\ln(x)}` 
  mit Definitionsmenge :math:`\mathbb{R}^+\backslash\{1\}`. Bestimmen Sie Lage und Art des
  Extrempunkts des Graphen von f. 

**Lösung**

Um den Extrempunkt der Funktion zu finden, müssen wir ihre Ableitung gleich Null setzen.
Wir bestimmen hierfür die Ableitung :math:`f'(x)=\frac{\ln(x)-1}{\ln(x)^2}`.
Gleichsetzen mit Null liefert uns das einzige Extremum an der Stelle :math:`x_0=e` mit dem Wert :math:`f(x_0)=e`.
Um die Art des Extremwerts zu erhalten, können wir die zweite Ableitung der Funktion bestimmen. Hieraus erfahren wir das Krümmungsverhalten
der Funktion. Wir erhalten :math:`f''(x)=\frac{-\ln(x)+2}{x\ln(x)^3}`
und daraus :math:`f''(x_0)=1/e>0`. Die Funktion :math:`f(x)` ist also an der Extremstelle :math:`(e|e)`
linksgekrümmt. Es handelt sich daher um ein Minimum.

Wir können denselben Rechenweg mit Sage überprüfen. Wir bestimmen zunächst die Nullstelle der ersten Ableitung unserer Funktion

.. sagecellserver::

     sage: g(x)=x/ln(x)
     sage: dg(x)=diff(g,x)
     sage: print 'Ableitung von f(x): ', dg
     sage: solve(dg(x)==0,x)
     sage: print 'Extremwert an der Stelle: ( e |', g(e), ')' 

.. end of output

Der Extremwert liegt also an der Stelle :math:`(e|e)`. Das Krümmungsverhalten erhalten wir anschließend aus der 
zweiten Ableitung der Funktion an der Stelle :math:`e`.

.. sagecellserver::

     sage: ddg(x)=diff(dg,x)
     sage: print 'zweite Ableitung von f(x): ', ddg
     sage: print 'Wert von f''(e): ', ddg(e)	

.. end of output
