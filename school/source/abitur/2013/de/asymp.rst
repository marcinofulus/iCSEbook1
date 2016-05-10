Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Angabe

  Gegeben ist die Funktion :math:`f:x\mapsto \frac{1}{2}x -\frac{1}{2}
  + \frac{8}{x+1}` mit Definitionsbereich :math:`\mathbb{R} \backslash \{-1\}`.
  Abbildung 2 zeigt den Graphen :math:`G_f` von :math:`f`.

  .. image:: ../figs/asymp.png
     :align: center

Aufgabe 1
^^^^^^^^^

.. admonition:: Aufgabe 1

  a) Geben Sie die Gleichungen der Asymptoten von :math:`G_f` an und zeigen Sie
     rechnerisch, dass :math:`G_f` seine schräge Asymptote nicht schneidet.
     Zeichnen Sie die Asymptoten in Abbildung 2 ein.
  b) Bestimmen Sie rechnerisch Lage und Art der Extrempunkte von :math:`G_f`

**Lösung zum Teil a**

Am Punkt :math:`x=-1` hat :math:`f(x)` eine Polstelle. Damit ergibt sich die
Gleichung der ersten Asymptoten zu: :math:`x=-1`. Die zweite Asymptote
ergibt sich aus der Betrachtung von :math:`f(x)` für sehr große Werte. Der
Summand :math:`\frac{8}{x+1}` geht hierfür gegen Null. Die Funktion nähert sich
der Geraden :math:`g(x) = \frac{1}{2}x -\frac{1}{2}` an. Für negative Werte von
:math:`x` ergibt sich das gleiche verhalten.

Mit Sage lassen sich alle Graphen darstellen.

.. sagecellserver::

  sage: f(x) = x/2- 1/2 + 8/(x+1)
  sage: t = var('t')
  sage: pasymp0 = parametric_plot((-1, t), (t, -11, 11), color='red')
  sage: asymp1 = x/2 - 1/2
  sage: pasymp1 = plot(asymp1, color='green', xmin=-10, xmax=10, ymin=-10, ymax=10) 
  sage: pf = plot(f, exclude=[-1], xmin=-10, xmax=10, ymin=-10, ymax=10)
  sage: show(pf + pasymp0 + pasymp1, aspect_ratio=1)

.. end of output

Wir überprüfen außerdem, dass der Graph mit der Assymptote keine gemeinsamen
Schnittpunkte hat:

.. sagecellserver::

  sage: solve(asymp1(x) == f(x), x)

.. end of output

**Lösung zum Teil b**

Um die Lage der Extrempunkte zu bestimmen, muss die Ableitung von :math:`f`
gleich Null gesetzt werden. Die Art ergibt sich dann aus dem Vorzeichen der
zweiten Ableitungen an diesen Punkten.

.. sagecellserver::

  sage: df = derivative(f)
  sage: extrema = solve(df==0, x)
  sage: ddf = derivative(df)
  sage: print("Zweite Ableitung des Extremums" + str(extrema[0]) + ": " + str(ddf(extrema[0].right())))
  sage: print("Zweite Ableitung des Extremums" + str(extrema[1]) + ": " + str(ddf(extrema[1].right())))

.. end of output

Es ergibt sich also ein Minimum am Punkt :math:`x=3` und ein Maximum am Punkt
:math:`x=-5`.

Aufgabe 2
^^^^^^^^^
.. admonition:: Aufgabe 2

  Abbildung 2 legt die Vermutung nahe, dass :math:`G_f` bezüglich des
  Schnittpunkts :math:`P(-1\vert -1)` seiner Asymptoten symmetrisch ist. Zum
  Nachweis dieser Symmetrie von :math:`G_f` kann die Funktion :math:`g`
  betrachtet werden, deren Graph aus :math:`G_f` durch Verschiebung um
  :math:`1` in positive :math:`x`-Richtung und um :math:`1` in positive
  :math:`y`-Richtung hervorgeht.
  
  a) Bestimmen Sie einen Funktionsterm von :math:`g`. Weisen Sie anschließend
     die Punktsymmetrie von :math:`G_f` nach, indem Sie zeigen, dass der Graph
     von :math:`g` punktsymmetrisch bezüglich des Koordinatenursprungs ist.
  b) Zeigen Sie, dass :math:`\int\limits_0^4 f(x)\mathrm{d}x=2+8\cdot\ln 5`
     gilt. Bestimmen Sie nun ohne weitere Integration den Wert des Integrals
     :math:`\int\limits_{-6}^{-2} f(x) \mathrm{d}x`; veranschaulichen Sie Ihr
     Vorgehen durch geeignete Eintragung in Abbildung 2.

**Lösung zum Teil a**

Eine positive Verschiebung um :math:`1` in :math:`x`-Richtung erhält man, 
indem  :math:`x` durch :math:`x-1` ersetzt wird. Durch Addition von :math:`1`
erhält man die Verschiebung in :math:`y`-Richtung. Es ergibt sich für
:math:`g`:

.. sagecellserver::

  sage: g(x) = f(x-1) + 1
  sage: print(g)

.. end of output

Die Symmetrie von :math:`g` lässt sich dann in Sage wie folgt zeigen:

.. sagecellserver::

  sage: print("g(x) = -g(-x): " + str(g(x)==-g(-x)))
  sage: print("g(x) ist punktsymmetrisch: " + str(bool(g(x)==-g(-x))))

.. end of output

**Lösung zum Teil b**

Die bestimmte Integration lässt sich in Sage leicht durchführen:

.. sagecellserver::

  sage: f.integrate(x,0,4)

.. end of output

Aufgrund der vorher bestimmen Punktsymmetrie zum Punkt :math:`P(-1\vert1)`
sind die :math:`y`-Werte: von :math:`f` für den Bereich :math:`0\leq x\leq 4`
symmetrisch bezüglich :math`y=-1`: zum Bereich :math:`-2\geq x \geq -6\}`.
Wäre die Funktion zum Punkt :math:`\bar{P}(-1\vert0)` punktsymmetrisch, so
würde sich der Wert des Integrals nur im Vorzeichen unterscheiden.

Die Verschiebung in :math:`y`-Richtung wird berücksichtigt durch subtrahieren
von :math:`4\cdot 2`. Es ergibt sich also:

.. math::

  \int\limits_{-6}^{-2} f(x) \mathrm{d}x = - (2 + 8 \cdot \ln 5) - 4\cdot 2

Dieser Wert lässt sich durch Sage bestätigen:

.. sagecellserver::

  sage: f.integrate(x,-6,-2)

.. end of output

In Sage kann dies graphisch dargestellt werden. Die rot eingezeichnete Fläche
mit dem Inhalt :math:`4\cdot2` ist die Korrektur zum Integral, die aus der 
Punktsymmetrie zu einem Punkt mit :math:`y=-1` folgt.

.. sagecellserver::

  sage: pf = plot(f, exclude=[-1], xmin=-10, xmax=10, ymin=-10, ymax=10)
  sage: pf1 = plot(f, -6, -2, fill=-2)
  sage: pf2 = plot(f, 0, 4, fill='axis')
  sage: rec = polygon([[-6,0],[-2,0],[-2,-2],[-6,-2]], color='red')
  sage: show(pf + pf1 + pf2 + rec, aspect_ratio=1)

.. end of output
