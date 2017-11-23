Statistics of a medical test
============================

.. admonition:: Problem

  0.074% of newborn children have a specific metabolic disorder. If this disorder
  is identified at an early stage, a future disease can be prevented by means of
  an appropriate treatment. For an early diagnosis, one can begin with a simple test.
  If the test result indicates a metabolic disorder, we call it positive.
  
  If a newborn child has a metabolic disorder, the test result is positive with
  a probability of 99.5%.  If a newborn child does not have a metabolic
  disorder, the probability that the test result is erroneously positive is
  0.78%.
  
  The test is conducted with a randomly selected newborn child.
  One considers the following results:
  
  :math:`S`: „There is a metabolic disorder.“
  
  :math:`T`: „The test is positive.“
  
  a) Describe the event :math:`\overline{S\cup T}` in the present context.
  
  b) Calculate the probabilities :math:`P(T)` and :math:`P_T (S)`.
     Interpret the result for :math:`P_T(S)` in the present context.

     *(for checking purposes:* :math:`P(T)\approx 0{.}85\%, P_T(S)<0{.}1`\ *)*
  
  c) During a screening, a huge number of randomly selected newborn children is tested.
     Determine the number of children per million tested newborn children expected on
     average to have a metabolic disorder while the test shows a negative result.
  

**Solution of part a**

First, we simplify the statement:

.. math::

  \overline{S\cup T} = \overline{S} \cap \overline{T}.

This formula thus describes the event that there is no metabolic disorder
and the test result is negative.

**Solution of part b**

:math:`P(T)` describes the probability for a positive test result.
It results from the probability of a positive test for a healthy newborn child as well
as the probability of a positive test for an ill newborn child.

.. math::

  P(T) = (1-0{.}00074)\cdot 0{.}0078 + 0{.}00074 \cdot 0{.}995 \approx
  0{.}00853\,.

:math:`P_T(S)` is computed as follows:

.. math::

  P_T(S) = \frac{P(S \cap T)}{P(T)} = \frac{0{.}00074\cdot 0{.}995}{0{.}00853} \approx 0{.}0863\,.

This means that for a positive test, only in 8.63%  of all cases a metabolic disorder is found.

**Solution of part c**

The probability that a randomly selected child has a metabolic disorder and is tested positively is:

.. math::

  P(S\cap\overline{T}) = 0{.}00074\cdot (1-0{.}995) \approx 3{.}7 \cdot 10^{-6}

Thus, for one million tested children this event occurs for about four children.

With Sage, we can simulate the test and determine the number of all occuring events.

.. sagecellserver::

   import numpy as np
   from numpy.random import random_sample
   children = 1000000
   ps = 0.00074
   pst = 0.995
   pnst = 0.0078

   test_s = random_sample(children)
   ill_children = np.sum(random_sample(children) < ps)
   ill_children_pos = np.sum(random_sample(ill_children) < pst)
   ill_children_neg = ill_children-ill_children_pos
   healthy_children = children-ill_children
   healthy_children_pos = np.sum(random_sample(healthy_children) < pnst)
   healthy_children_neg = healthy_children-healthy_children_pos

   print("""{} children were tested as follows:
   {} children were ill and were tested positively.
   {} children were ill and were tested negatively.
   {} children were healthy and were tested positively.
   {} children were healthy and were tested negatively.""").format(
       children, ill_children_pos, ill_children_neg, healthy_children_pos, healthy_children_neg)
