Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Gegeben ist die in :math:`\mathbb{R}` definierte ganzrationale Funktion 
  :math:`f` dritten Grades, deren Graph :math:`G_f` an der Stelle :math:`x=1`
  einen Hochpunkt und an der Stelle :math:`x=4` einen Tiefpunkt besitzt.

  a) Begründen Sie, dass der Graph der Ableitungsfunktion :math:`f'` von
     :math:`f` eine Parabel ist, welche die :math:`x`-Achse in den Punkten
     (1|0) und (4|0) schneidet und nach oben geöffnet ist.

  b) Begründen Sie, dass 2,5 die :math:`x`-Koordinate des Wendepunkts von
     :math:`G_f` ist.

**Lösung zu Teil a**

Die Ableitung einer kubischen Funktion ist immer eine Parabel. Eine kubische
Funktion kann außerdem höchstens zwei Extrempunkte haben. Da die kubische
Funktion zuerst einen Hochpunkt besitzt, muss die Ableitung im Bereich
:math:`x<1` stets positiv sein. Auch nach dem Tiefpunkt, für :math:`x>4` muss
die Ableitung stets positiv sein. Die Ableitungsfunktion :math:`f'` muss also
eine nach oben geöffnete Parabel sein.

Die Schnittpunkte der Parabel mit der :math:`x`-Achse ergeben sich ebenfalls
durch die Positionen der Extrema, an denen die Ableitungsfunktion verschwinden
muss.

Eine Funktion, für die dieses Verhalten erfüllt ist, lautet:

.. math::

  \frac{1}{3}x^3-\frac{5}{2}x^2+4x

Durch eine Zeichnung mit Sage können wir leicht die in der Aufgabenstellung
beschriebenen Extrema erkennen.

.. sagecellserver::

  sage: f(x) = 1/3*x**3 - 5/2*x**2 + 4*x
  sage: plot(f(x), (-3,7), x, figsize=(4, 2.8), ymax = 10, ymin = -10)
     
.. end of output

Mit Sage können wir auch überprüfen, dass der Graph der Ableitung eine nach
oben geöffnete Parabel mit den Nullstellen (1|0) und (4|0) ist.

.. sagecellserver::

  sage: df = derivative(f(x), x)
  sage: plot(df(x), (-10,6), x, figsize=(4, 2.8), ymax = 10, ymin = -10)
     
.. end of output

**Lösung zu Teil b**

Für den Wendepunkt :math:`x_0` eines Graphen zur Funktion :math:`f` muss
gelten: 

.. math::

  f''(x_0)=0

Die Ableitung von :math:`f` muss also eine Nullstelle in der Ableitung haben.
Bei einer Parabel ist dies ausschließlich am Scheitelpunkt der Fall. Dieser
befindet sich aus Symmetrie-Gründen immer zwischen zwei Punkten mit gleichem
Funktionswert. Der Wendepunkt von :math:`f` muss also in der Mitte der beiden
Nullstellen liegen:

.. math::

  x_0 = \frac{1 + 4}{2} = 2,5

Der Wendepunkt von :math:`f` lässt sich bereits in der Zeichnung aus
Teilaufgabe a) erkennen. Wir überprüfen den genauen Punkt dennoch rechnerisch
mit Hilfe von Sage: 

.. sagecellserver::

  sage: ddf = derivative(df(x), x)
  sage: print "Wendepunkt bei", solve(ddf(x) == 0, x)[0]
     
.. end of output



