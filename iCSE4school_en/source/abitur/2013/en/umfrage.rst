Survey
======

.. admonition:: Problem

  In a city the election of the mayor is approaching. 12% of the 
  eligible voters are young voters, i.e. persons aged between 18 and 24 years.
  Before the election campaign, a representative poll amongst the eligible voters
  is conducted. According to the poll, 44% of the polled eligible voters have
  already decided in favour of a candidate. One out of seven of the respondents,
  who have not yet decided in favour of a candidate, is a young voter.

  The following outcomes are considered:
  
  :math:`J`: "A person randomly selected from the respondents is a young voter."
  
  :math:`K`: "A person randomly selected from the respondents has decided already
  in favour of a candidate."
  
  a) Compile a completely filled fourfold table for the context described above.
  
  b) Demonstrate that :math:`P_J(\overline{K})>P_{\overline{J}}(\overline{K})`.
     Justify that, in spite of validity of this inequality, it
     is not reasonable to concentrate predominantly on young voters in the
     election campaign.
  
  c) On a specific day during his campaign, the candidate of party A speaks to
     48 randomly selected eligible voters. Determine the probability that there
     are exactly six young voters amongst them.

**Solution of part a**

The problem yields the following fourfold table:

+--------------------+---------+--------------------+------------+
|                    |:math:`K`|:math:`\overline{K}`|:math:`\sum`|
+--------------------+---------+--------------------+------------+
|:math:`J`           |         |:math:`X`           |12%         |
+--------------------+---------+--------------------+------------+
|:math:`\overline{J}`|         |:math:`6\cdot X`    |88%         |
+--------------------+---------+--------------------+------------+
|:math:`\sum`        |44%      |56%                 |100%        |
+--------------------+---------+--------------------+------------+

The statement "One out of seven respondents, who have not yet decided in favour
of a candidate, is a young voter." is considered in the column :math:`\overline{K}`.
The sum over the yet undecided eligible voters yields :math:`X=8\%`. The empty entries
in the rows :math:`J` and :math:`\overline{J}` can be completed by subtraction.

+--------------------+---------+--------------------+------------+
|                    |:math:`K`|:math:`\overline{K}`|:math:`\sum`|
+--------------------+---------+--------------------+------------+
|:math:`J`           |4%       |8%                  |12%         |
+--------------------+---------+--------------------+------------+
|:math:`\overline{J}`|40%      |48%                 |88%         |
+--------------------+---------+--------------------+------------+
|:math:`\sum`        |44%      |56%                 |100%        |
+--------------------+---------+--------------------+------------+

**Solution of part b**

To show the inequality, we compute :math:`P_J(\overline{K})` and
:math:`P_{\overline{J}}(\overline{K})`.

.. math::

  P_J(\overline{K}) = \frac{P(\overline{K} \cap J)}{P(J)}
  = \frac{8\%}{12\%} = 66.7\% \\
  P_{\overline{J}}(\overline{K}) = \frac{P(\overline{K} \cap \overline{J})}{P(\overline{J})}
  = \frac{48\%}{88\%} \approx 54.5\% \\

The inequality :math:`P_J(\overline{K})>P_{\overline{J}}(\overline{K})` is thus
fulfilled. Nevertheless, it is not reasonable to concentrate on the young
voters during the election campaign. For the outcome of the election, the total
number of voters has to be considered. Even though by percentage, more older
voters than young voters have already decided in favour of a candidate, this is
not the case in absolute numbers.  At 8% young voters and 48% older voters, who
have not yet taken their decision, the election campaign should better focus on
older voters.

**Solution of part c**

The probability for an eligible voter to be a young voter is 12%.
The probability that there are exactly six young voters amongst 48 voters can
be determined from the binomial distribution:

.. math::

  P^{48}_{0.12}(6) = {48 \choose 6} \cdot 0.12^6 \cdot (1-0.12)^{42} = 17.07\%

We can simulate this experiment with Sage.

.. sagecellserver::

   import numpy as np
   from numpy.random import random_sample
   iterations = 1000000
   people = 48
   young_voters = 6
   p = 0.12
   six_young_voters = np.sum(random_sample((people, iterations)) < p, axis=0) == 6
   hits = np.sum(six_young_voters)
   print("The probability that amongst {} randomly selected people there are exactly {} young voters is: {:4.2%}".format(
       people, young_voters, float(hits)/iterations))

.. end of output
