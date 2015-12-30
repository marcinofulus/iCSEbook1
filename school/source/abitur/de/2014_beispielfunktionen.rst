Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Geben Sie jeweils den Term einer in :math:`\mathbb{R}` definierten periodischen Funktion an, die die angegebene Eigenschaft hat.

    a) Der Graph der Funktion :math:`g` geht aus dem Graphen der in :math:`\mathbb{R}` definierten Funktion :math:`x\mapsto \sin(x)` durch
       Spiegelung an der :math:`y`-Achse hervor.
    b) Die Funktion :math:`h` hat den Wertebereich :math:`[1;3]`.
    c) Die Funktion :math:`k` besitzt die Periode :math:`\pi`.

**Lösung zu Teil a**

Soll eine Funktion :math:`g` durch Spiegelung der Funktion :math:`f` an der :math:`y`-Achse entstehen, so muss gelten :math:`g(x)=f(-x)`, in unserem Fall also :math:`g(x)=sin(-x)`. Wegen der Punktsymmetrie der Sinusfunktion zum Ursprung ist :math:`g` von der Form :math:`g(x)=-sin(x)`.

Dies können wir leicht mit Hilfe von Sage überprüfen, indem wir uns die Sinusfunktion (grün) und deren Spiegelung (blau) in einen Graph zeichnen lassen.

.. sagecellserver::

     sage: var('x')
     sage: f(x) = sin(x)
     sage: g(x) = -sin(x)
     sage: p1 = plot(f(x), x, (-2*pi,2*pi), rgbcolor=hue(0.4))     
     sage: p2 = plot(g(x), x, (-2*pi,2*pi), rgbcolor=hue(0.6))

.. end of output

**Lösung zu Teil b**

Auch in dieser Teilaufgabe werden wir die periodische Sinusfunktion zur Lösung verwenden. Der Wertebereich der Sinusfunktion mit Amplitude 1 ist das Intervall :math:`[-1;1]`. Um den gewünschten Wertebereich zu erhalten, können wir die Sinusfunktion jedoch zusammen mit ihrem Wertebereich um die Konstante 2 nach oben verschieben. Wir erhalten also :math:`h(x)=\sin(x)+2`.

Wir überprüfen den Wertebereich der Funktion mit Hilfe von Sage:

.. sagecellserver::

     sage: var('x')
     sage: h(x) = sin(x) + 2
     sage: plot(h(x), x, (-2*pi,2*pi))

.. end of output

**Lösung zu Teil c**

Auch in dieser Teilaufgabe werden wir die periodische Sinusfunktion zur Lösung verwenden. Die Periode der Sinusfunktion, kann durch einen Parameter :math:`a` vor dem Argument der Funktion geändert werden. Unsere Funktion wird daher die Form :math:`k(x)=sin(ax)` haben. Die Periode der normalen Sinusfunktion (:math:`a=1`) beträgt :math:`2\pi`. Wir können die Periode halbieren um die gewünschte Periode zu erhalten, indem wir das Argument zu jedem Zeitpunkt verdoppeln. Wir erhalten also :math:`k(x)=sin(2x)`

Wir überprüfen den Wertebereich der Funktion mit Hilfe von Sage:

.. sagecellserver::

     sage: var('x')
     sage: k(x) = sin(2*x)
     sage: plot(k(x), x, (-2*pi,2*pi))

.. end of output
