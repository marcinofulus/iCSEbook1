Two red and three white balls...
================================

.. admonition:: Problem

  Urn A contains two red and three white balls. Urn B contains three
  red and two white balls. We will assume the following experiment:

     We choose a random ball from urn A and put it into urn B. Then, 
     we choose a random ball from urn B and put it into urn A. 

  a) Determine all possible contents of urn A after the experiment.

  b) Consider the following event E: "After the experiment, urn A contains 
     the same amount of white balls as before the experiment."

**Solution of part a**   

The experiment consists of two steps. As there are two types of balls that can be chosen
in each step, we have to consider four different sequences of the experiment. In the following,
the ball movement as well as the final content of urn A are displayed for each of the 
four sequences.

  1. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\color{red}{\bullet}}{\underset{\color{red}{\bullet}}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ`

  2. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\color{red}{\bullet}}{\underset{\circ}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \circ \circ \circ \circ`

  3. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\circ}{\underset{\color{red}{\bullet}}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ`

  4. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\circ}{\underset{\circ}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ`

The first and the fourth sequence provide the same final content of urn
A. Therefore, the three possible final contents of urn A are: :math:`\color{red}{\bullet} \circ 
\circ \circ \circ`, :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ` and
:math:`\color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ`.

**Solution of part b**

The probability for urn A to finally contain three white balls is given by the sum
of the probabilities of the first and the fourth sequence from part a.

  1. The probability of drawing a red ball in the first step equals :math:`\frac{2}{5}`,
     because two of the five balls in urn A are red. Urn B then contains
     four red balls and two white balls. Therefore, the probability of 
     drawing one of the four red balls in the second step equals 
     :math:`\frac{4}{6}=\frac{2}{3}`. The probability for this sequence
     is thus obtained as :math:`\frac{2}{5}\cdot\frac{2}{3}=\frac{4}{15}`.

  2. Along the same lines, the probability of drawing a white ball in both steps can be calculated as
     :math:`\frac{3}{5}\cdot\frac{1}{2}=\frac{3}{10}`.

The probability for event E is the sum of the probabilities for these two sequences:

.. math::

  p(\mathrm{E}) = \frac{4}{15}+\frac{3}{10}=\frac{17}{30}\approx0.5667

The probability for the complementary event :math:`\bar{E}`

.. math::

  p(\bar{\mathrm{E}})=1-p(\mathrm{E})=\frac{13}{30}

is smaller than the probability of the event E.

The probability for event E can be computed with Sage in two different ways. The first possibility
is to simulate every possible sequence of the experiment with distinguishable balls. We therefore
consider that every ball will be chosen with the same probability. This approach will lead to an
exact result and will also prove our solution of part a.	

.. sagecellserver::

     frequency_e = 0
     total = 0
     A0 = ['w', 'w', 'w', 'r', 'r']
     B0 = ['w', 'w', 'r', 'r', 'r']
     for a_ball in A0:
         A1 = A0[::]
         B1 = B0[::]
         A1.remove(a_ball)
         B1.append(a_ball)
         for b_ball in B1:
             print 'A->B:', a_ball,
             A2 = A1[::]
             A2.append(b_ball)
             print '  B->A:', b_ball,
             total = total+1
             if A2.count('w') == 3:
                 frequency_e = frequency_e+1
                 print "   A: ", A2, "<==="
             else:
                 print "   A: ", A2
     print "p(E) = %s/%s" % (frequency_e, total)

A somewhat simpler solution consists in determining the probability for
E by means of a simulation. To this end, we move a randomly chosen ball
from urn A to urn B and another one in the opposite direction. The
number of occurrences of event E is counted. This approach will give us
only an approximation of the exact result. Furthermore, in order to
reach a satisfying approximation, many repetitions are needed so that
the runtime of this code exceeds the runtime of the first solution.

.. sagecellserver::

     import random
     def move_ball(urn1, urn2):
         ball = random.choice(urn1)
         urn1.remove(ball)
         urn2.append(ball)
         return urn1, urn2
     frequency_e = 0
     iterations = 100000
     for _ in range(iterations):
         A = ['w', 'w', 'w', 'r', 'r']
         B = ['w', 'w', 'r', 'r', 'r']
         move_ball(A, B)
         move_ball(B, A)
         if A.count('w') == 3 :
             frequency_e = frequency_e+1
     print "Approximation for the probability p(E) = ", float(frequency_e/iterations)









