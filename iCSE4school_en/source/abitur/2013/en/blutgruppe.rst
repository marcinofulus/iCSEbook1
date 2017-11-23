Blood types statistics
======================

.. admonition:: Problem

  The following table depicts the distribution of blood types and rhesus factors
  amongst the german population:
  
   +-------+----+----+----+----+
   |       |0   |A   |B   |AB  |
   +-------+----+----+----+----+
   |Rh+    |35% |37% |9%  |4%  |
   +-------+----+----+----+----+
   |Rh-    |6%  |6%  |2%  |1%  |
   +-------+----+----+----+----+
  
  During a morning, 25 people donate blood in a hospital. In the following it shall be
  assumed that those 25 people represent a random sample of the population.
  
  a) Determine the probability that exactly ten of the donors have blood
     type A.
  b) Find the probability that more than half of the donors have blood
     type A and rhesus factor Rh+.
  
  The following table shows which donor blood is suitable for the different recipients:
  
  +------------------+-----------------------------------------------------------------+
  |                  | Donor                                                           |
  |                  +-------+-------+-------+-------+-------+-------+--------+--------+
  |                  | 0 Rh- | 0 Rh+ | A Rh- | A Rh+ | B Rh- | B Rh+ | AB Rh- | AB Rh+ |
  +-----------+------+-------+-------+-------+-------+-------+-------+--------+--------+
  | Recipient |AB Rh+| ✓     | ✓     | ✓     | ✓     | ✓     | ✓     | ✓      | ✓      |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |AB Rh-| ✓     |       | ✓     |       | ✓     |       | ✓      |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |B Rh+ | ✓     | ✓     |       |       | ✓     | ✓     |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |B Rh- | ✓     |       |       |       | ✓     |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |A Rh+ | ✓     | ✓     | ✓     | ✓     |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |A Rh- | ✓     |       | ✓     |       |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |0 Rh+ | ✓     | ✓     |       |       |       |       |        |        |
  |           +------+-------+-------+-------+-------+-------+-------+--------+--------+
  |           |0 Rh- | ✓     |       |       |       |       |       |        |        |
  +-----------+------+-------+-------+-------+-------+-------+-------+--------+--------+
  
  c) A patient with blood type B and rhesus factor Rh- needs donor blood.
     Determine how many randomly selected people have to donate blood in order
     to obtain at least one suitable donor blood with a 
     probability higher than 95 %.
  

**Solution of part a**

The probability to find exactly ten people with blood type A from 25 blood donors
is given by the binomial distribution. The probability for each single donor to
have blood type A is:

.. math:: 

  P(\mathrm{A}) = P(\mathrm{A, Rh+}) + P(\mathrm{A, Rh-}) = 43 \%\,.

The desired probability is:

.. math::

  W^{25}_{0.43}(10) =& {25 \choose 10}\cdot0{.}43^{10}\cdot(1-0{.}43)^{15}\\
  =& \frac{25!}{10!\cdot 15!} 0{.}43^{10} \cdot 0{.}57^{15} \approx 15{.}4 \% \,.

This random experiment can be simulated with Sage:

.. sagecellserver::

   import numpy as np
   from numpy.random import random_sample
   repetitions = 100000
   people = 25
   people_a = 10
   p_a = 0.43
   hits = 0
   for _ in range(repetitions):
       if np.sum(random_sample(people) < p_a) == people_a:
           hits = hits+1
   print("Empirical probability to have 10 people with blood type A out of 25 people: {:5.2%}".format(
          float(hits)/repetitions))

.. end of output

**Solution of part b**

The probability that more than half of the donors have blood type 0 and rhesus factor Rh+ can easily be
determined with Sage by summation:

.. sagecellserver:: 

   def bernoulli(N, p, n):
       return p^n*(1-p)^(N-n)*binomial(N, n)

   p_0_rhneg = 0.35
   sum = 0
   for hits in range((people+1)//2, people+1):
       sum = sum+bernoulli(people, p_0_rhneg, hits)
   print("Probablity that more than half of the donors have blood type 0 Rh+: {:5.2%}".format(float(sum)))

.. end of output

**Solution of part c**

According to the table, people with blood type 0 Rh- as well as B Rh- can donate to
a recipient with blood type B and rhesus factor Rh-. The probability to find a suitable
donor thus equals

.. math::

  P(\mathrm{0, Rh-}) + P(\mathrm{B, Rh-}) = 8\%\,.

The probability that a person is not a suitable donor then equals :math:`92\%`.
The probability that there is no suitable donor amongst :math:`n` people
thus amounts to :math:`0.92^n`. 
We look for the smallest number :math:`n` for which

.. math::

  (0{.}92)^{n} \leq 0{.}05\,.

Taking the logarithm and bearing in mind that :math:`\ln(0.92)` is negative, one finds

.. math::

  n \geq \frac{\ln(0{.}05)}{\ln(0{.}92)} \approx 35{.}9\,.

One hence needs at least 36 donors.

With the help of a random experiment one can approximately determine with Sage the probability
that amongst 36 donors there is at least one suitable donor.

.. sagecellserver:: 

   repetitions = 100000
   n = 36
   p = 0.08
   hits = 0
   for _ in range(repetitions):
       if np.sum(random_sample(n) < p):
           hits = hist+1
   print("Probability that there is a suitable donor amongst {} people: {:5.2%}".format(n, float(hits)/repetitions))

.. end of output
