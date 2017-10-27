Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe
  
  Die beiden Baumdiagramme gehören zum selben Zufallsexperiment mit den
  Ergebnissen :math:`A` und :math:`B`.

  Berechnen Sie die Wahrscheinlichkeit :math:`P(B)` und ergänzen Sie anschließend
  an allen Ästen des rechten Baumdiagramms die zugehörigen Wahrscheinlichkeiten.

  *(Teilergebnis: P(B)=0,5)*
     
  .. image:: ../figs/baumdiagramme.png

**Lösung**     

Die Wahrscheinlichkeit :math:`P(B)` ergibt sich aus den Angaben im Baumdiagramm
zu

.. math::

   P(B) = P(B\cap A)+P(B\cap \bar{A}) = P(B|A)\cdot P(A) + P(B|\bar{A})\cdot P(\bar{A}) = \frac{3}{4}\cdot 0{,}4 + \frac{1}{3}\cdot 0{,}6
                                      = 0{,}5

Mit der Bedingung :math:`P(B)+P(\bar{B})=1` folgt
:math:`P(\bar{B})=0{,}5`.

Die zu den übrigen Ästen gehörenden Wahrscheinlichkeiten lassen sich mit dem Satz
von Bayes bestimmen.

.. math::

   P(A|B) = \frac{P(B|A)\cdot P(A)}{P(B)} = \frac{\frac{3}{4}\cdot 0{,}4}{0{,}5} = \frac{3}{5}

   P(\bar{A}|B) = \frac{P(B|\bar{A})\cdot P(\bar{A})}{P(B)} = \frac{\frac{1}{3}\cdot 0{,}6}{0{,}5} = \frac{2}{5}

   P(A|\bar{B}) = \frac{P(\bar{B}|A)\cdot P(A)}{P(\bar{B})} = \frac{\frac{1}{4}\cdot 0{,}4}{0{,}5} = \frac{1}{5}

   P(\bar{A}|\bar{B}) = \frac{P(\bar{B}|\bar{A})\cdot P(\bar{A})}{P(\bar{B})} = \frac{\frac{2}{3}\cdot 0{,}6}{0{,}5} = \frac{4}{5}

Wir benutzen nun Sage, um aus den gegebenen Wahrscheinlichkeiten mit Hilfe
der Bedingungen

.. math::

   P(B)+P(\bar{B}) = 1

   P(A|B)+P(\bar{A}|B) = 1

   P(A|\bar{B})+P(\bar{A}|\bar{B}) = 1

   P(A|B) \cdot P(B) = P(B|A) \cdot P(A)

   P(A|\bar{B}) \cdot P(\bar{B}) = P(\bar{B}|A) \cdot P(A)

   P(\bar{A}|B) \cdot P(B) = P(B|\bar{A}) \cdot P(\bar{A})

   P(\bar{A}|\bar{B}) \cdot P(\bar{B}) = P(\bar{B}|\bar{A}) \cdot P(\bar{A})
   
sämtliche Wahrscheinlichkeiten im rechten Baumdiagramm zu berechnen. In der Liste
``wahrscheinlichkeiten`` können die Werte aus dem linken Baumdiagramm
gesetzt werden.

.. sagecellserver::

    sage: var('p_a p_ab p_b_if_a p_bb_if_a p_b_if_ab p_bb_if_ab')
    sage: var('p_b p_bb p_a_if_b p_ab_if_b p_a_if_bb p_ab_if_bb')
    sage: wahrscheinlichkeiten = [p_a == 0.4,
    sage:                         p_ab == 0.6,
    sage:                         p_b_if_a == 3/4,
    sage:                         p_bb_if_a == 1/4,
    sage:                         p_b_if_ab == 1/3,
    sage:                         p_bb_if_ab == 2/3]
    sage: gleichungen = [p_b+p_bb == 1,
    sage:                p_a_if_b+p_ab_if_b == 1,
    sage:                p_a_if_bb+p_ab_if_bb == 1,
    sage:                p_a_if_b*p_b == p_b_if_a*p_a,
    sage:                p_ab_if_b*p_b == p_b_if_ab*p_ab,
    sage:                p_a_if_bb*p_bb == p_bb_if_a*p_a,
    sage:                p_ab_if_bb*p_bb == p_bb_if_ab*p_ab]
    sage: loesung = solve(wahrscheinlichkeiten+gleichungen,
    sage:                 p_a, p_ab, p_b_if_a, p_bb_if_a, p_b_if_ab, p_bb_if_ab,
    sage:                 p_b, p_bb, p_a_if_b, p_ab_if_b, p_a_if_bb, p_ab_if_bb,
    sage:                 solution_dict=True)[0]
    sage: print 'P(B) =', loesung[p_b]
    sage: print '   P(A|B) =', loesung[p_a_if_b],
    sage: print '   P(̅A|B) =', loesung[p_ab_if_b],
    sage: print '\nP(̅B) =', loesung[p_bb]
    sage: print '   P(A|̅B) =', loesung[p_a_if_bb],
    sage: print '   P(̅A|̅B) =', loesung[p_ab_if_bb]
