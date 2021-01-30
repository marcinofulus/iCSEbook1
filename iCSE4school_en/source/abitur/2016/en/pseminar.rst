Seminar problem
===============

.. admonition:: Problem
  
  Eight girls and six boys, among them Anna and Tobias, participate in a seminar.
  For a presentation, a team of four persons is formed by drawing from the participants at random.
  
  a) For each of the following events, give an expression allowing to compute the
     respective probability.

     :math:`A`: "Anna and Tobias are in the team."

     :math:`B`: "The team consists of the same number of boys and girls."
  
  b) Describe an event in this context which has the probability
     represented by the following expression:
     
  .. math::

    \frac{\binom{14}{4}-\binom{6}{4}}{\binom{14}{4}}

**Solution of part a**

The combinatorial problem of forming a team of four persons from 14 participants,
corresponds to drawing 4 balls from 14 without replacement and disregarding the order.
Accordingly, there are

.. math::

  \binom{14}{4} = 1001

possibilities to form a team.

Because in event :math:`A`, the team members besides Anna and Tobias are arbitrary,
there are :math:`\binom{12}{2}=66` possibilities to realize that event. 

Accordingly, the probability for event :math:`A` is

.. math::

  P(A) = \frac{66}{1001} \approx 6.6\%\,.

We can check this value by means of a simulation with Sage.
In doing so, 4 elements from the numbers 1 to 14 are drawn and Anna and Tobias
are assigned to the values :math:`1` and :math:`2`, respectively.

.. sagecellserver::

   iterations = 30000
   frequency = 0
   for _ in range(iterations):
       team = Subsets(14, 4).random_element()
       if 1 in team and 2 in team:
           frequency = frequency+1
   print('Approximation for the probability P(A) = %4.1f%%' % float(100*frequency/iterations))

When realizing event :math:`B`, there are :math:`\binom{8}{2}=28` different possibilities
to choose two girls and :math:`\binom{6}{2}=15` for the boys.

Together there are thus :math:`28\cdot 15 = 420` possibilities to form a team of
two girls and two boys. The corresponding probability is

.. math::

  P(B) = \frac{420}{1001} \approx 42.0\%\,. 

As before, this result can be checked by means of a simulation.
The girls are assigned to the numbers smaller or equal to :math:`8` and
the numbers above :math:`8` correspond to boys.

.. sagecellserver::

   iterations = 30000
   frequency = 0
   for _ in range(iterations):
       team = Subsets(14, 4).random_element()
       number_girls = 0
       number_boys = 0
       for member in team:
           if member <= 8:
               number_girls = number_girls+1
           else:
               number_boys = number_boys+1
       if number_girls == number_boys:
           frequency = frequency+1
   print('Approximation for the probability P(B) = %4.1f%%' % float(100*frequency/iterations))

**Solution of part b**

The given probability can be simplified to

.. math::

  1-\frac{\binom{6}{4}}{\binom{14}{4}}\,.

The corresponding event is hence complementary to an event with the probability

.. math::

  \frac{\binom{6}{4}}{\binom{14}{4}}\,.

The latter corresponds for example to the event "The team contains only boys." because
the number of possibilities to choose 4 boys equals :math:`\binom{6}{4}`.
The complementary event to this then is "The team has at least one girl."

The second simulation from part a can be easily ajusted to check our interpretation.

.. sagecellserver::

   iterations = 30000
   frequency = 0
   for _ in range(iterations):
       team = Subsets(14, 4).random_element()
       for member in team:
           if member <= 8:
               frequency = frequency+1
               break
   p = (binomial(14, 4)-binomial(6, 4))/binomial(14, 4)
   print('given probability = %6.3f' % float(p))
   print('simulated probability = %6.3f' % float(frequency/iterations))
