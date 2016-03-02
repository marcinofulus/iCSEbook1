Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Abbildung 1 zeigt den Graphen :math:`G_f` einer in :math:`\mathbb{R}`
  definierten Funktion :math:`f`. Skizzieren Sie in Abbildung 1 den Graphen der
  in :math:`\mathbb{R}` definierten Integralfunktion
  :math:`F:x\mapsto \int\limits_1^x f(t)\mathrm{d}t`. Berücksichtigen
  Sie dabei mit jeweils angemessener Genauigkeit insbesondere die
  Nullstellen und Extremstellen von :math:`F` sowie :math:`F(0)`.
    
  .. image:: ../figs/intgraph.png
     :align: center


**Lösung**

Um diese Aufgabe zu lösen, muss man einen Zusammenhang zwischen Funktion
und Stammfunktion kennen:
  Hat die Funktion eine Nullstelle mit Vorzeichenwechsel, so gibt es hier in der Stammfunktion
  ein lokales Extremum. Ist die Steigung der Funkion an dieser Nullstelle negativ so
  handelt es sich um ein Maximum in der Stammfunktion, bei positiver Steigung
  um ein Minimum.

Betrachtet man die Funktion in der Aufgabenstellung, so erkennt man eine
Nullstelle von :math:`f(x)` bei :math:`x_1=0` und bei :math:`x_2\approx 2,25`.
Im ersten Fall ist die Steigung negativ also ist :math:`F(0)` ein lokales 
Maximum. An der Stelle :math:`x_2` ist die Steigung von :math:`f` positiv.
:math:`F(x_2)` ist also ein lokales Minimum.

Eine weitere Eigenschaft von :math:`F(x)` ergibt sich aus den Integralgrenzen.
Diese hat als untere Grenze :math:`x_3=1`. Dies bedeutet, dass :math:`F` hier eine
Nullstelle hat.

Mit Sage lässt sich eine Integration bei bekannter Funktion :math:`g` durchführen.
Für :math:`g` wurde hier 

.. math::

  g(x)=-3\cdot\left(e^{0.5\cdot x} + \frac{4}{x-4}\right)

gewählt, da dies etwa dem Verlauf der Funktion in Abbildung 1 folgt.


.. sagecellserver::

  sage: g(x) = -3*(e**(0.5*x) + 4/(x-4))
  sage: ig = g.integrate(x).real()
  sage: pg = plot(g, (-3,4), color='blue')
  sage: pig = plot(ig - ig(1), (-3,4), color='red')
  sage: show(pg + pig, figsize=(4,2.8), ymax=5)

.. end of output

