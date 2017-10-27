Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen
  :math:`g:x \mapsto e^{-x}` und :math:`h:x \mapsto x^3`.

  a) Veranschaulichen Sie durch eine Skizze, dass die Graphen von :math:`g` und
     :math:`h` genau einen Schnittpunkt haben.

  b) Bestimmen Sie einen Näherungswert :math:`x_1` für die
     :math:`x`-Koordinate dieses Schnittpunkts, indem Sie für die in
     :math:`\mathbb{R}` definierte Funktion :math:`d:x \mapsto g(x)-h(x)` den
     ersten Schritt des Newton-Verfahrens mit dem Startwert :math:`x_0=1`
     durchführen.


**Lösung zu Teil a**

Die Graphen lassen sich mit Hilfe von Sage leicht zeichnen:

.. sagecellserver::

    sage: g(x) = exp(-x)
    sage: h(x) = x**3
    sage: pg = plot(g, color='blue')
    sage: ph = plot(h, color='red')
    sage: show(pg + ph, ymax=1.5, aspect_ratio=1, figsize=4)

.. end of output

**Lösung zu Teil b**

Das Newton-Verfahren berechnet für einen gut gewählten Startpunkt einen
Näherungswert für die in der Nähe liegende Nullstelle. Zur Bestimmung
der Nullstelle der Funktion :math:`f(x)` muss in jedem Schritt die Formel

.. math::

  x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}

ausgewertet werden. Für den ersten Schritt erhält man mit
:math:`f(x)=d(x)=g(x)-h(x)` und :math:`x_0=1`:

.. math::

  x_1 = 1 - \frac{g(1) - h(1)}{g'(1) - h'(1)} 
  = 1 - \frac{e^{-1} - 1}{-e^{-1}-3}\approx 0{,}812

Mit Sage lassen sich auch einfach mehrere Schritte des Newton-Verfahrens
durchführen. Hierbei lässt sich erkennen, dass das Newton-Verfahren in
diesem Fall bereits nach fünf Schritten einen Wert liefert, der bis auf
die 12. Nachkommastelle mit der Nullstelle übereinstimmt, die von Sage
numerisch berechnet wurde.

.. sagecellserver::

    sage: f(x) = g(x) - h(x)
    sage: df(x) = derivative(f, x)
    sage: nullst_approx = 1 
    sage: newton(x) = x - f(x) / df(x)
    sage: for i in range(5):
    ...       nullst_approx = newton(nullst_approx)
    ...       pretty_print(html("$x_%i = %s$" % (i+1, str(float(nullst_approx)))))
    sage: pretty_print(html("Numerische Nullstelle mit Sage: $x_\mathrm{S} = %s$"
    ...                     % str(find_root(f(x), -1, 1))))

.. end of output

