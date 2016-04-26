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

Hat die Funktion eine Nullstelle mit Vorzeichenwechsel, so besitzt die
zugehörige Stammfunktion an dieser Stelle ein lokales Extremum. Dabei
handelt es sich um ein Maximum, wenn die Steigung der Funktion an der
Nullstelle negativ ist. Ist die Steigung der Funktion positiv, so hat
die Stammfunktion dort ein Minimum.

Betrachtet man die Funktion in der Aufgabenstellung, so erkennt man 
Nullstellen von :math:`f(x)` bei :math:`x_1=0` und bei :math:`x_2\approx 2,25`.
Im ersten Fall ist die Steigung negativ, so dass :math:`F(0)` ein lokales 
Maximum der Stammfunktion ist. An der Stelle :math:`x_2` ist die Steigung von
:math:`f` positiv und somit handelt es sich bei :math:`F(x_2)` um ein lokales Minimum.

Eine weitere Eigenschaft von :math:`F(x)` ergibt sich aus der unteren
Integrationsgrenze bei :math:`t=1`. Damit ist :math:`F(1)=0`.

Mit Sage lässt sich eine Integration bei bekannter Funktion :math:`f` durchführen.
Für :math:`f` wählen wir

.. math::

  f(x)=\frac{5x(4x-9)}{(2x-9)^2},

da diese Funktion die Eigenschaften besitzt, die wir in der obigen
Argumentation verwendet haben, und ihr qualitativer Verlauf der
Darstellung in Abbildung 1 entspricht.


.. sagecellserver::

  sage: var('t')
  sage: f(x) = 5*x*(4*x-9)/(2*x-9)^2
  sage: assume(1 < x, 2*x-7 < 0)
  sage: F(x) = integrate(f(t), t, 1, x)
  sage: ranges = {'xmin': -3, 'xmax': 4, 'ymin': -2, 'ymax': 7}
  sage: show(plot(f, color='blue', **ranges)+plot(F, color='red', **ranges),
             figsize=(3.5, 4.5))

.. end of output
