Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Der Graph einer in :math:`\mathbb R` definierten Funktion :math:`g\mapsto g(x)` besitzt für :math:`-5\leq x\leq 5` zwei Wendepunkte.      
  Entscheiden Sie, welcher der Graphen I, II und III zur zweiten Ableitungsfunktion :math:`g''` von g gehört. Begründen Sie Ihre Entscheidung.
  
  .. image:: ../figs/abiturpruefung_mathematik_cas_2014_pruefungsteil_a2_analysis_a2.png
     :align: center

**Lösung**

In der zweite Ableitung einer Funktion lässt sich das Krümmungsverhalten ablesen. Da die Funktion :math:`g` zwei Wendepunkte im beschriebenen Intervall haben soll, muss die zweite Ableitung :math:`g''` hier zwei Nullstellen mit Vorzeichenwechsel aufweisen, also Übergänge von einer Linkskrümmung (:math:`g''>0`) zu einer Rechtskrümmung (:math:`g''<0`) vollziehen. Der einzige Graph, der dies erfüllt ist I.

Mit Sage wollen wir nun versuchen, mögliche Formen :math:`g` aus den vorgegebenen zweiten Ableitungsfunktionen zu konstruieren. Die zweiten Ableitungsfunktionen haben die Form von Polynomen zweiter (I), dritter (II) und vierter Ordnung (III). Durch Verwenden der Nullstellen können wir Polynome mit ähnlichem Verhalten konstruieren: 

 a) :math:`g''(x)=(x+4)(x-4)=x^2-16` (I)

 b) :math:`g''(x)=(x+4)(x+1.5)(x-4)-50` (II)

 c) :math:`g''(x)= -(x+3)^2(x-3)^2` (III)

Anschließend integrieren wir die Funktionen zweifach und untersuchen die entstehenden Graphen auf Wendepunkte. Wir sehen auch hier, dass lediglich die zweite Ableitungsfunktion I eine Fuktion mit zwei Wendepunkten liefert.

.. sagecellserver::

     sage: var('x')
     sage: ddg(x) = x^2 - 16
     sage: ddh(x) = (x+4) * (x+1.5) * (x-4) - 50
     sage: ddk(x) = -(x+3)^2 * (x-3)^2
     sage: plot(ddg(x), x, (-6,6))
     sage: plot(ddh(x), x, (-6,6))
     sage: plot(ddk(x), x, (-6,6))
     sage: dg(x) = integrate(ddg(x), x)
     sage: g(x) = integrate(dg(x), x)
     sage: dh(x) = integrate(ddh(x), x)
     sage: h(x) = integrate(dh(x), x)
     sage: dk(x) = integrate(ddk(x), x)
     sage: k(x) = integrate(dk(x), x)
     sage: plot(g(x), x, (-6,6))
     sage: plot(h(x), x, (-6,6))
     sage: plot(k(x), x, (-6,6))
 
.. end of output

