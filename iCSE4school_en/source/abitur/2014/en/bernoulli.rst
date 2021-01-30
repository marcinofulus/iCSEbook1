Bernoulli process
=================

.. admonition:: Problem

  Consider a Bernoulli process with a probability of 0,9
  and a length of 20. Specify an event with the probability given by

  .. math::

    0{,}9^{20}+20\cdot0{,}1\cdot0{,}9^{19}

**Solution**

The probability of having exactly :math:`n` hits in a Bernoulli process with probability
:math:`p` and length :math:`N` equals

.. math::
  
  P(n) = \binom{N}{n}\cdot p^n\cdot (1-p)^{N-n}.
 

The probability specified in this problem therefore corresponds to the sum of the probabilities
of having exactly 20 hits

.. math::
  
  \binom{20}{20}\cdot 0{,}9^{20}\cdot 0{,}1^0=0{,}9^{20}

and having exactly 19 hits

.. math::

  \binom{20}{19}\cdot 0{,}9^{19}\cdot 0{,}1^1=20\cdot 0{,}9^{19}\cdot 0{,}1.

In other words, the corresponding event consists in having at least 19 hits.

We will simulate the Bernoulli process by means of Sage and evaluate
the probability of having at least 19 hits. Before doing so, we calculate the decimal value
of the given probability.

.. sagecellserver::

   p = 0.9
   q = 0.1
   p_E = p^20 + 20*q*p^19
   print("Probability p(E) =", p_E)

.. end of output


Now, we determine the probability for finding a given number of hits
based on 50000 repetitions of the Bernoulli process. Finally, we compare
the probability :math:`p(E)` of finding at least 19 hits with the exact
result.

.. sagecellserver::

   import numpy as np
   threshold_value = 19
   frequency_e = np.zeros(21)
   iterations = 50000
   for _ in range(iterations):
       hits = sum(np.random.random(20) < p)
       frequency_e[hits] = frequency_e[hits]+1
   probabilities = frequency_e/iterations
   headline = ' Hit  probability'
   print(headline)
   print("-"*len(headline))
   for hits, p_of_e in enumerate(probabilities):
       print("%6i       %g" % (hits, p_of_e))
   p_geq_19 = probabilities[19]+probabilities[20]
   print("Approximation of the probability p(E) =", p_geq_19)

.. end of output

The result is close to the exact result. The difference arises from the
finite number of realizations.
