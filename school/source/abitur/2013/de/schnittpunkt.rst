Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen
  :math:`g:x \mapsto e^{-x}` und :math:`h:x \mapsto x^3`.

  a) Veranschaulichen Sie durch eine Skizze, dass die Graphen von :math:`g` und
     :math:`h` genau einen Schnittpunkt haben

  b) Bestimmen Sie einen Näherungswert :math:`\kappa_1` für die
     :math:`x`-Koordinate dieses Schnittpunktes, indem Sie für die in
     :math:`\mathbb{R}` definierte Funktion :math:`d:x \mapsto g(x)-h(x)` den
     ersten Schritt des Newton-Verfahrens mit dem Startwert :math:`x_0=1`
     durchführen.


**Lösung zu Teil a**

Die Grahen lassen sich mit Hilfe von Sage leicht zeichnen:

.. sagecellserver::

    sage: g(x) = exp(-x)
    sage: h(x) = x**3
    sage: pg = plot(g, color='blue')
    sage: ph = plot(h, color='red')
    sage: show(pg + ph, aspect_ratio=1, ymax=1.5)

.. end of output

**Lösung zu Teil b**

Das Newton Verfahren berrechnet für ein gut gewählten Startpunkt einen
Näherungswert für eine Nullstelle. Dafür muss mehrfach die Formel

.. math::

  x_{n+1} = x_n - \frac{d(x_n)}{d'(x_n)}

ausgeführt werden. Für den ersten Schritt erhält man:

.. math::

  \kappa_1 = 1 - \frac{g(1) - h(1)}{g'(1) - h'(1)} 
  = 1 - \frac{e^{-1} - 1}{-e^{-1}-3}

Mit Sage lässt sich dieser Wert berechen. Eine geneaure Lösung für die
Nullstelle ist ebenso möglich.

.. sagecellserver::

    sage: d(x) = g(x) - h(x)
    sage: dd(x) = derivative(d, x)
    sage: k1(x) = x - d(x) / dd(x)
    sage: print(u"\u03BA_1 = " + str(k1(1)) + " = " + str(float(k1(1))))
    sage: print("Numerische Lösung: d(0) = " + str(find_root(d(x), -1, 1)))

.. end of output

