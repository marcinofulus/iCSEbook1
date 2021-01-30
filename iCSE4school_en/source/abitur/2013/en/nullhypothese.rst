Null hypothesis
===============

.. admonition:: Problem

  According to the survey, the candidate of party A would have received
  about 50% of the votes if the election had taken place at the time of
  the survey.
  A success at the first ballot, for which more than 50% of all votes are 
  required, is hence questionable. Thus, the election campaign consultant
  put in place by party A suggests an additional campaign in the final stage
  of the election battle. However, the treasurer of party A would prefer
  to avoid the high costs caused by an additional campaign, if possible.
  
  a) In order to come to a decision on the realization of an additional
     campaign, the null hypothesis "The candidate of party A would currently
     receive at most 50% of all votes." is to be tested by means of a sample
     of 200 eligible voters on a level of significance of 5%. Determine the
     associated decision rule.

  b) Justify that the choice of the null hypothesis for the described test
     is in accordance with the concern of the election campaign consultant
     to achieve a success already at the first ballot.

**Solution of part a**

We want to disprove the null hypothesis. For that we assume that 50% of the
voters vote for the candidate of party A. In a survey of 200 people, we have to
determine the number :math:`k` of people who vote for our candidate such that
the level of significance is 5%. Thus, the equation

.. math::

  1- P^{200}_{0.5}(X \leq k) \leq 0.05


has to be solved for :math:`k`. From a mathematical table for the binomial
distribution, we can determine :math:`k\approx112`. Alternatively, we can
use Sage:

.. sagecellserver::

   from scipy.stats import binom
   total = 200
   p = 0.5
   for approving in (111, 112, 113):
       print("Level of significance for {} approvals: {:4.2f}%".format(
           approving, (1-binom.cdf(approving-1, total, p))*100))

.. end of output

Furthermore, we can simulate the survey and check in how many surveys at least
112 people would indicate to vote for candidate A, although the probability
that a person votes for candidate A is 50%.


.. sagecellserver::

   import numpy as np
   from numpy.random import random_sample
   repetitions = 10000
   p = 0.5
   people = 200
   threshold = 112
   for_A = random_sample((people, repetitions)) < p
   above_threshold = np.sum(for_A, axis=0) >= threshold
   cases = np.sum(above_threshold)

   print(("The probability that at a survey of {} people at least "
               "{} people vote for candidate A\nif the probability to "
               "decide for candidate A is {:2.0%}, equals:  {:3.2%} ").format(
            people, threshold, float(p), float(cases)/repetitions))


.. end of output

**Solution of part b**

With the chosen null hypothesis one can relatively safely say that with at least
112 positive statements the candidate of party A will be elected.
If the first survey is correct about the candidate receiving only about 50% of the
votes, the null hypothesis will probably be disproven and the funds for an additional
campaign get approved.
