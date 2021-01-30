Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  In einem Koordinatensystem (vgl. Abbildung 1) werden alle Rechtecke betrachtet, die folgende Bedingungen erfüllen:
  
  1. Zwei Seiten liegen auf den Koordinatenachsen.

  2. Ein Eckpunkt liegt auf dem Graphen :math:`G_f` der Funktion :math:`f : x\mapsto -\ln x` mit :math:`0<x<1`.

  Abbildung 1 zeigt ein solches Rechteck.

  Unter den betrachteten Rechtecken gibt es eines mit größtem Flächeninhalt. Berechnen Sie die Seitenlängen dieses Rechtecks.

  .. image:: ../figs/rechteck.png
     :align: center


**Lösung**

Der Flächeninhalt der betrachteten Rechtecke ergibt sich aus der Multiplikation von
Höhe und Breite. Die Breite ist hierbei immer durch den :math:`x`-Wert des Eckpunktes,
der auf dem Funktionsgraphen liegt, gegeben. Die Höhe ist durch den :math:`y`-Wert des
Eckpunktes, also :math:`f(x)`, bestimmt. Der Flächeninhalt eines Rechtecks zu einem
gegbenen :math:`x`-Wert beträgt somit 

.. math::

  A(x)=xf(x)=-x\ln(x). 

Um den maximalen Flächeninhalt zu bestimmen, suchen
wir also ein Extremum von :math:`A(x)`, das durch

.. math::

  A'(x_0)=-\ln(x_0)-1 = 0 

gegeben ist. Wegen :math:`A''(x)=-1/x <0` ist das Extremum immer ein Maximum. Es
liegt bei :math:`x_0=1/\mathrm{e}` mit :math:`f(x_0)=1`. Das zugehörige Rechteck
hat demnach die Breite :math:`1/\mathrm{e}` und Höhe :math:`1` und schließt 
eine Fläche von :math:`1/\mathrm{e}` ein.

Auch mit Hilfe von Sage können wir den maximalen Flächeninhalt durch Gleichsetzen der Ableitung mit Null bestimmen.

.. sagecellserver::

     sage: f(x) = -ln(x)
     sage: a(x) = x*f(x)
     sage: da(x) = a.derivative(x).log_simplify()
     sage: x0 = solve(da(x)==0, x)[0].rhs()
     sage: print('Breite:', x0)
     sage: print('Höhe  :', f(x0))
     sage: print('Fläche:', a(x0))

.. end of output

Die folgenden beiden Abbildungen zeigen links das Rechteck unter dem Graphen
:math:`G_f` und rechts als grünen Punkt die zugehörige Fläche für einen
variablen Wert der Breite :math:`x_0`.

.. sagecellserver::

     sage: @interact
     sage: def _(x0=slider(0.1, 1.)):
     sage:     f(x) = -ln(x)
     sage:     a(x) = -x*ln(x)
     sage:     p1 = plot(f(x), x, (0.1, 1), color='blue')
     sage:     p1 = p1+polygon([(0, 0), (0, f(x0)), (x0, f(x0)), (x0, 0)], color = 'green')
     sage:     p2 = plot(a(x), x, (0, 1), color='blue')
     sage:     p2 = p2+point((x0, a(x0)), size=40, color='green')
     sage:     G = graphics_array([p1, p2], nrows=1)
     sage:     G.show(figsize=[7, 3])

..  end of output
