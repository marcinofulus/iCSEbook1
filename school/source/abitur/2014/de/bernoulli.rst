Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Betrachtet wird eine Bernoullikette mit der Trefferwahrscheinlichkeit 0,9 und
  der Länge 20. Beschreiben Sie zu dieser Bernoullikette ein Ereignis, dessen
  Wahrscheinlichkeit durch den Term 

  .. math::

    0{,}9^{20}+20\cdot0{,}1\cdot0{,}9^{19}

  angegeben wird.

**Lösung**     

Die Wahrscheinlichkeit für genau :math:`n` Treffer in einer Bernoullikette der Länge :math:`N` mit
Trefferwahrscheinlichkeit :math:`p` lässt sich bestimmen als

.. math::
  
  P(n) = \binom{N}{n}\cdot p^n\cdot (1-p)^{N-n}.
 
Der Wahrscheinlichkeitsterm der Aufgabenstellung lässt sich somit als die Summe der Wahrscheinlichkeiten
von genau 20 Treffern

.. math::
  
  \binom{20}{20}\cdot 0{,}9^{20}\cdot 0{,}1^0=0{,}9^{20}

und genau 19 Treffern 

.. math::

  \binom{20}{19}\cdot 0{,}9^{19}\cdot 0{,}1^1=20\cdot 0{,}9^{19}\cdot 0{,}1

darstellen. Er gibt also die Wahrscheinlichkeit an,
mindestens 19 Treffer zu erzielen.

Mit Sage wollen wir die Bernoullikette simulieren und zählen dabei die Durchläufe, bei denen
mindestens 19 Treffer erzielt wurden. Zunächst bestimmen wir aber den Dezimalwert des gegebenen
Wahrscheinlichkeitsterms und vergleichen ihn anschließend mit dem Ergebnis der Simulation.

.. sagecellserver::

  sage: p = 0.9
  sage: q = 0.1
  sage: p_E = p^20 + 20*q*p^19
  sage: print "probability P_E =", p_E

.. end of output

.. sagecellserver::

  sage: p = 0.9
  sage: successes = 0
  sage: rounds = 50000
  sage: for round in range(rounds):
  ...       hits = 0
  ...       for tries in range(20):
  ...           if (random() < p):
  ...               hits += 1
  ...       if(hits >= 19):
  ...           successes += 1
  sage: print "empiric probability =", float(successes/rounds)

.. end of output

