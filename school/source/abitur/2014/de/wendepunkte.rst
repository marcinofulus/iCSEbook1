Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Der Graph einer in :math:`\mathbb R` definierten Funktion 
  :math:`g : x\mapsto g(x)` besitzt für :math:`-5\leq x\leq 5` zwei
  Wendepunkte. Entscheiden Sie, welcher der Graphen I, II und III zur zweiten
  Ableitungsfunktion :math:`g''` von :math:`g` gehört. Begründen Sie Ihre
  Entscheidung.
  
  .. image:: ../figs/wendepunkte.png
     :align: center

**Lösung**

In der zweiten Ableitung einer Funktion lässt sich das Krümmungsverhalten ablesen. Da die Funktion :math:`g` zwei Wendepunkte im beschriebenen
Intervall haben soll, muss die zweite Ableitung :math:`g''` hier zwei Nullstellen mit Vorzeichenwechsel aufweisen, also Übergänge von einer
Linkskrümmung (:math:`g''>0`) zu einer Rechtskrümmung (:math:`g''<0`), bzw. von einer Rechtskrümmung zu einer Linkskrümmung hervorrufen. Der einzige Graph, der dies erfüllt ist I.

Mit Sage wollen wir nun versuchen, mögliche Formen von :math:`g` aus den vorgegebenen zweiten Ableitungsfunktionen zu konstruieren. Die zweiten
Ableitungsfunktionen haben die Form von Polynomen zweiter (I), dritter (II) und vierter Ordnung (III). Durch Verwenden der Nullstellen können
wir Polynome mit ähnlichem Verhalten konstruieren: 

.. math::

   \begin{aligned}
   g''_I(x) &= (x+4)(x-4)=x^2-16\\
   g''_{II}(x) &= (x+4)(x+1{,}5)(x-4)-50\\
   g''_{III}(x)& = -(x+3)^2(x-3)^2\\
   \end{aligned}

In den folgenden Funktionsgraphen sind die Nullstellen, die zu Wendepunkten
gehören, durch rote Punkte markiert.

.. sagecellserver::

     sage: def wendepunkte(f):
     sage:     df = f.diff()
     sage:     return [r[0] for r in f.roots() if r[0] in RR and df(r[0]) !=0]

     sage: dd_i(x) = x^2 - 16
     sage: p = plot(dd_i(x), x, (-6, 6), figsize=(4, 2.8))
     sage: wp = point([(x, 0) for x in wendepunkte(dd_i)], size=30, color='red')
     sage: show(p+wp)

.. end of output

.. sagecellserver::

     sage: dd_ii(x) = (x+4) * (x+1.5) * (x-4) - 50
     sage: p = plot(dd_ii(x), x, (-6, 6), figsize=(4, 2.8))
     sage: wp = point([(x, 0) for x in wendepunkte(dd_ii)], size=30, color='red')
     sage: show(p+wp)

.. end of output

.. sagecellserver::

     sage: dd_iii(x) = -(x+3)^2 * (x-3)^2
     sage: p = plot(dd_iii(x), x, (-6, 6), figsize=(4, 2.8))
     sage: wp = point([(x, 0) for x in wendepunkte(dd_iii)], size=30, color='red')
     sage: show(p+wp)

.. end of output

Abschließend bestätigen wir unsere Überlegung, indem wir die Funktionen zweifach
integrieren. In den Graphen sind die Wendepunkte durch rote Punkte markiert.

.. sagecellserver::

     sage: d_i(x) = integrate(dd_i(x), x)
     sage: g_i(x) = integrate(d_i(x), x)
     sage: p = plot(g_i(x), x, (-8, 8), figsize=(4, 2.8))
     sage: wp = point([(x, g_i(x))  for x in wendepunkte(dd_i)], size=30, color='red')
     sage: show(p+wp)

.. end of output


.. sagecellserver::

     sage: d_ii(x) = integrate(dd_ii(x), x)
     sage: g_ii(x) = integrate(d_ii(x), x)
     sage: p = plot(g_ii(x), x, (-6, 8), figsize=(4, 2.8))
     sage: wp = point([(x, g_ii(x))  for x in wendepunkte(dd_ii)], size=30, color='red')
     sage: show(p+wp)

.. end of output

.. sagecellserver::

     sage: d_iii(x) = integrate(dd_iii(x), x)
     sage: g_iii(x) = integrate(d_iii(x), x)
     sage: p = plot(g_iii(x), x, (-6, 6), figsize=(4, 2.8))
     sage: wp = point([(x, g_iii(x))  for x in wendepunkte(dd_iii)], size=30, color='red')
     sage: show(p+wp)

.. end of output

