Bayerisches Abitur in Mathematik 2014
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
Wahrscheinlichkeitsterms.

.. sagecellserver::

  sage: p = 0.9
  sage: q = 0.1
  sage: p_E = p^20 + 20*q*p^19
  sage: print "Wahrscheinlichkeit p(E) =", p_E

.. end of output

Nun bestimmen wir die Wahrscheinlichkeit in Abhängigkeit von der Trefferzahl aus 50000 
Realisierungen und vergleichen am Ende die Wahrscheinlichkeit :math:`p(\mathrm{E})`, 
mindestens 19 Treffer zu erzielen, mit dem exakten Ergebnis.

.. sagecellserver::

  sage: import numpy as np
  sage: schwelle = 19
  sage: haeufigkeit_e = np.zeros(21)
  sage: wiederholungen = 50000
  sage: for _ in range(wiederholungen):
  ...       treffer = sum(np.random.random(20) < p)
  ...       haeufigkeit_e[treffer] = haeufigkeit_e[treffer]+1
  sage: wahrscheinlichkeiten = haeufigkeit_e/wiederholungen
  sage: ueberschrift = ' Treffer  Wahrscheinlichkeit'
  sage: print ueberschrift
  sage: print "-"*len(ueberschrift)
  sage: for treffer, p_von_e in enumerate(wahrscheinlichkeiten):
  ...       print "%6i       %g" % (treffer, p_von_e)
  sage: p_geq_19 = wahrscheinlichkeiten[19]+wahrscheinlichkeiten[20]
  sage: print "Näherung für die Wahrscheinlichkeit p(E) =", p_geq_19

.. end of output

