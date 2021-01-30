JIM - survey data analysis
==========================

.. admonition:: Problem 1

  In the course of the so-called JIM survey, in 2012 the use of information and media
  by adolescents of an age between 12 and 19 years was studied in Germany. The
  following table represents a subset of results for a representative sample of
  adolescents, among them 102 boys. For four kinds of devices, the number of
  girls and boys within the sample of 200 adolescents possessing the respective
  device is given.
  
   +-------------------------+-------+------+
   |                         | Girls | Boys |
   +-------------------------+-------+------+
   | Smart phone             |  42   | 52   |
   +-------------------------+-------+------+
   | Computer                |  77   | 87   |
   +-------------------------+-------+------+
   | TV set                  |  54   | 65   |
   +-------------------------+-------+------+
   | Stationary game console |  37   | 62   |
   +-------------------------+-------+------+
  
  a) Determine the probability that one person chosen at random out of the 200
     adolescents is female and does not possess a TV set.

  b) Out of the 200 adolescents, one person possessing a TV set was chosen at
     random. Find the probability that this person is female.

  c) Justify that the events ”One person chosen at random out of 200 adolescents
     possesses a TV set“ and ”One person chosen at random out of 200 adolescents
     is a girl.“ are not independent.

  d) According to the survey, 55% of the girls of an age between 12 and 19 years
     possess a TV set. Give the value of the sum
  
     .. math::

       \sum\limits_{i=0}^{12}B(25;0.55;i)

     in percent. Justify that this value in general does not represent the
     probability that among 25 girls of a class in 9th grade less than half
     possess a TV set.


**Solution of part 1a**

There is a total of 98 girls in the group, 54 of them owning a TV set.
Accordingly, 44 girls do not own a TV set. The probability to find a
girl not owning a TV set therefore is given by

.. math::

  \frac{44}{200}=22\%.

We check the result by generating a list of 200 adolescents either being a girl
with or without a TV set or a boy with or without a TV set. Then we draw at
random out of this list and compile the number of persons in each category.

.. sagecellserver::

   import random
   girls = 98
   boys = 102
   girls_with_tv = 54
   boys_with_tv = 65
   adolescents = (["Girls with TV"]*girls_with_tv
                  + ["Girls without TV"]*(girls-girls_with_tv)
                  + ["Boys with TV"]*boys_with_tv
                  + ["Boys without TV"]*(boys-boys_with_tv)
                  )
   iterations = 60000
   frequencies = {"Girls with TV": 0,
                  "Girls without TV": 0,
                  "Boys with TV": 0,
                  "Boys without TV": 0}
   for _ in range(iterations):
       key = random.choice(adolescents)
       frequencies[key] = frequencies[key]+1
   table(list(frequencies.items()))

.. end of output

Now we can determine the probability of finding a girl without a TV set.

.. sagecellserver::

   print("Probability for a girl without TV set: {:4.1%}".format(
         (float(frequencies["Girls without TV"])/iterations)))

.. end of output

**Solution of part 1b**

It is stated in the problem text that the randomly chosen person owns a TV
set and thus is either one of the 65 boys owning a TV set or one of the 54 girls
with a TV set. The total number of persons owning a TV set thus amounts to 119.
The probability that this person is a girl then is found as

.. math::

  \frac{54}{119}\approx 45.4\%

We make use of the simulation of part a) in order to empirically check this result.

.. sagecellserver::

   with_tv = frequencies["Girls with TV"]+frequencies["Boys with TV"]
   print("Probability for a person with TV to be female: {:4.1%}".format(
         (float(frequencies["Girls with TV"])/with_tv)))

.. end of output

**Solution of part 1c**

The two events :math:`A` ”One person chosen at random out of 200 adolescents
possesses a TV set“ and :math:`B` ”One person chosen at random out of 200 adolescents
is a girl.“ were independent provided
 
.. math::

  P(B|A) = P(B|\bar{A}) = P(B)

holds.

In part b) we already evaluated the probability for a person owning a TV set
to be a girl. This value corresponds to :math:`P(B|A)`. It remains to determine
the probability that a person chosen at random is a girl:

.. math::

  P(B)=\frac{98}{200} = 49\%.

It follows

.. math::

    P(B|A) = \frac{54}{119} \neq \frac{49}{100} = P(B)

and therefore the events :math:`A` und :math:`B` are not independent.

**Solution of part 1d**

We determine the sum by means of Sage and obtain approximately 30.6%.

.. sagecellserver::

   def bernoulli(N, p, n):
       return p^n*(1-p)^(N-n)*binomial(N, n)

   p = 0.55
   ntot = 25
   nmax = 12
   probsum = 0
   for i in range(nmax+1):
       probsum = probsum+bernoulli(ntot, p, i)
   print("The sum amounts to {:4.1%}".format(float(probsum)))

.. end of output

Alternatively, the result can be obtained directly as:

.. sagecellserver::

   from scipy.special import bdtr
   print("The sum amounts to {:4.1%}".format(bdtr(nmax, ntot, p)))

The survey was carried out with adolescents between the ages of 12 and 19.
However, it is not known whether it is representative for the 9th grade (about
14 to 15 years of age). Therefore, it is not premissible to make use of the
value of the sum as the probability that out of 25 girls of 9th grade less
than half own a TV set.

If, however, we assume that indeed 55% of the girls in 9th grade possess a
TV set, we can use Sage to empirically check that the sum represents the
probability that less then half of 25 girls possess a TV set.

.. sagecellserver::

   import numpy as np
   threshold = 12
   p = 0.55
   frequency = 0
   iterations = 50000
   for _ in range(iterations):
       girls_with = sum(np.random.random(25) < p)
       if girls_with <= threshold:
           frequency = frequency+1
   print("Probability that less than half of the girls possess "
         "a TV: {:4.1%}".format(float(frequency)/iterations))

.. end of output


.. admonition:: Problem 2

  According to the JIM survey, considerably less than 90% of the adolescents
  own a computer. Therefore, the city council of a provincial town is approached
  to install a workspace with computers in the local youth centre. The city
  council is only willing to invest the requested funds if less than 90% of
  the adolescents in the provincial town own a computer.

  a) The decision on the approval of the funds shall be based on an inquiry
     in the provincial town among 100 randomly chosen adolescents between 12 and
     19 years of age. The probability that the funds are mistakenly approved,
     shall be at most 5%. Determine the corresponding rule for which at the same
     time the probability is minimal that the funds are mistakenly not approved.

  b) Determine the probability that exactly 85 among the 100 adolescents
     interviewed own a computer, provided the percentage of adolescents owning
     a computer among the adolescents in the provincial town is as large as 
     among the adolescents represented in the table.

**Solution of part 2a**

For the given hypothesis test, we need to check how many of the 100
adolescents interviewed may own a coomputer such that the probability
that more than 90% of the adolescents own a computer is at most 5%.

We assume that the random variable :math:`X` representing the number of
adolescents owning a computer is binomially distributed. Assuming a
threshold of 90% of adolescents owning a computer, we determine the maximum
value :math:`C` for a sample size of 100 for which the probability does not
exceed 5%:

.. math::

  \sum\limits_{i=0}^C B(100; 0.9; i)\leq 5\%

We determine the sum by means of Sage:

.. sagecellserver::

   p = 0.9
   adolescents = 100
   C = 0
   probsum = bernoulli(adolescents, p, C)
   while probsum < 0.05:
       C = C+1
       probsum = probsum+bernoulli(adolescents, p, C)
   C = C-1
   print("The workspace should be approved if {} or fewer "
         "adolescents own a computer.").format(C)

.. end of output

We can check the limiting value :math:`C=84` by means of a simulation.

.. sagecellserver::

   frequency_C = 0
   frequency_Cp1 = 0
   iterations = 50000
   C = 84
   for _ in range(iterations):
       adolescents_with = sum(np.random.random(100) < p)
       if adolescents_with <= C:
           frequency_C = frequency_C+1
       if adolescents_with <= C + 1:
           frequency_Cp1 = frequency_Cp1+1
   print("Empirical probability, that at 90% probability to own a computer "
         "{} out of 100 adolescents or less own a computer: {:3.1%}".format(
         C, float(frequency_C)/iterations))
   print("Empirical probability, that at 90% probability to own a computer "
         "{} out of 100 adolescents or less own a computer: {:3.1%}".format(
         C+1, float(frequency_Cp1)/iterations))

.. end of output

**Solution of part 2b**

The percentage recorded in the table of adolescents owning a computer is

.. math::

  \frac{77+87}{200} = 82\%.

At a probability of 82% for owning a computer, the probability that exactly
85 out 100 adolescents own a computer amounts to

.. math::

  P(X=85) = B(100;0.82;85)

With Sage we find :math:`P(X=85) \approx8.1\%`.

.. sagecellserver::

   print("Probability to find exactly 85 adolescents owning a computer: {:3.1%}".format(
          float(bernoulli(100, 0.82, 85))))

.. end of output


.. admonition:: Problem 3

  It can be assumed that among the adolescents owning a smart phone, the
  percentage of those owning a stationary game console is larger than among
  those not owning a smart phone. Determine for the 200 adolescents recorded
  in the table, how big the number of persons owning, both, a smart phone and
  a stationary game console must be, so that the assumption is valid for the
  adolescents recorded in the table.

**Solution of part 3**

This problem is concerned with the dependence of events. For the following, we
introduce the events :math:`A` „One person chosen at random out of 200
adolescents owns a stationary game console.“ and :math:`B` „One person
chosen at random out of 200 adolescents owns a smart phone.“

We demand that the two events are statistically dependent in a way that

.. math::

  P(A|B) > P(A|\bar{B})

is fulfilled. From the table we obtain :math:`P(A) = (37+62)/200 = 49.5\%` and
:math:`P(B) = (42+52)/200 = 47\%`.

By means of

.. math::

  P(A|B) = \frac{P(A\cap B)}{P(B)}

and

.. math::

  P(A\cap B) + P(A \cap \bar{B}) = P(A)

the above condition can be transformed into

.. math::

  \frac{P(A\cap B)}{P(B)} > \frac{P(A)-P(A\cap B)}{P(\bar{B})}\\
  P(A\cap B)P(\bar{B}) > P(A)P(B)-P(A\cap B)P(B)\\
  P(A\cap B)[P(\bar{B})+P(B)] > P(A)P(B)\\
  P(A\cap B) > P(A)P(B)\\
  P(A\cap B) > 0.495\cdot0.47

Out of 200 adolescents, at least 23.3% must own a smart phone and a stationary
game console for the hypothesis formulated in the problem to hold. This
threshold amounts to 47 adolescents.

The limit for :math:`P(A\cap B)` beyond which :math:`A` and :math:`B` depend
on each other as requested, can also be determined with the help of Sage by
solving a linear system of equations:

.. sagecellserver::

   var('p_aub p_aunb p_b p_nb p_a')
   probabilities = [p_a == 0.47, p_b == 0.495]
   equations = [p_b + p_nb == 1,
                p_aub + p_aunb == p_a,
                p_aub/p_b == p_aunb/p_nb]
   solution = solve(equations + probabilities, p_aub, p_aunb, p_b, p_nb, p_a,
                solution_dict=True)[0]
   print("Statistical independence requires P(A∩B) = {:4.1%}".format(
         float(solution[p_aub])))

.. end of output
