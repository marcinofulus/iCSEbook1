Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Aufgabe

  We consider a Bernoulli process with a hit probability of 0,9
  and a length of 20. Specify an event with the given probability

  .. math::

    0{,}9^{20}+20\cdot0{,}1\cdot0{,}9^{19}

**Lösung**     

The probability of having exactly :math:`n` hits in a Bernoulli process with the hit probability
:math:`p` and the length :math:`N` equals to

.. math::
  
  P(n) = \binom{N}{n}\cdot p^n\cdot (1-p)^{N-n}.
 

The given probability therefore matches to the sum of the probabilities of having exactly 20 hits

.. math::
  
  \binom{20}{20}\cdot 0{,}9^{20}\cdot 0{,}1^0=0{,}9^{20}

and having exactly 19 hits

.. math::

  \binom{20}{19}\cdot 0{,}9^{19}\cdot 0{,}1^1=20\cdot 0{,}9^{19}\cdot 0{,}1.

In other words, the desired event is 'having at least 19 hits'.

In the following, we want to simulate the Bernoulli process with Sage and to evaluate
the probability of having at least 19 hits. But first, we calculate the decimal value
of the given probability

.. sagecellserver::

  sage: p = 0.9
  sage: q = 0.1
  sage: p_E = p^20 + 20*q*p^19
  sage: print "Wahrscheinlichkeit p(E) =", p_E

.. end of output


We simulate 50000 repitions of the Bernoulli process and count the appearence
of 'having at least 19 hits'.

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

The value of the simulated probability is very close to the value of the 
expected probability. The difference arises from the empiric calculation.
