Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  In einem Koordinatensystem (vgl. Abbildung 1) werden alle Rechtecke betrachtet, die folgende Bedingungen erfüllen:
  
  1. Zwei Seiten liegen auf den Koordinatenachsen.

  2. Ein Eckpunkt liegt auf dem Graphen :math:`G_f` der Funktion :math:`f\mapsto -\ln x` mit :math:`0<x<1`.

  Abbildung 1 zeigt ein solches Rechteck.

  Unter den betrachteten Rechtecken gibt es eines mit größtem Flächeninhalt. Berechnen Sie die Seitenlängen des Rechtecks.

  .. image:: ../figs/abiturpruefung_mathematik_cas_2014_pruefungsteil_a2_analysis_a4.png
     :align: center


**Lösung**

Der Flächeninhalt der betrachteten Rechtecke ergibt sich aus der Multiplikation von Länge und Breite. Die Breite ist hierbei immer der x-Wer des Eckpunktes, der auf dem Funktionsgraphen liegt. Die Länge ist durch den y-Wert des Eckpunktes, also :math:`f(x)`, gegeben. Der Flächeninhalt eines Rechtecks zu gegbenem x-Wert beträgt also :math:`A(x)=xf(x)=-x\ln(x)`. Um den maximalen Flächeninhalt zu bestimmen, suchen wir ein Extremum des Flächeninhalts in :math:`x`. Wir erhalten also die Ableitung :math:`A'(x)=-\ln(x)-1`. Gleichsetzen der Ableitung mit Null liefert uns den Extremwert an der Stelle :math:`x_0=e^{-1}` und damit auch eine Breite von :math:`e^{-1}`. Die Länge des Rechtecks erhalten aus :math:`f(x_0)` als 1.

Auch mit Hilfe von Sage können wir den maximalen Flächeninhalt durch Gleichsetzen der Ableitung mit Null bestimmen. Anschließend zeichnen wir das gesuchte Rechteck in den Funktionsgraphen.

.. sagecellserver::

     sage: var('x')
     sage: f(x) = ln(x)
     sage: A(x) = -x*f(x)
     sage: dA(x) = diff(A(x), x)
     sage: solve(dA(x)==0, x)
     sage: print 'Die Länge des Rechtecks ist ', f(e^(-1))
     sage: p1 = plot(f(x), x, (0,1.5), ymax=3)
     sage: p2 = plot(f(e^(-1)))
     sage: 
     sage: 

.. end of output
