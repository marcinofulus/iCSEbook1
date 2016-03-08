Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Problem

  Urn A contains two red and three white balls. Urn B contains three
  red and two white balls. We will assume the following experiment:

     We choose a random ball from urn A and put it into urn B. Afterwards, 
     we choose a random ball from urn B and put it into urn A. 

  a) Determine all possible contents of urn A after the experiment.

  b) Consider the following event E: "After the experiment, urn A contains 
     the same amount of white balls as before the experiment."

**Solution of part a**   

The experiment consists of two steps. As there are two types of balls that can be chosen
in each step, we have to consider four different sequences of the experiment. In the following,
the ball movement, as well as the end configuration of urn A, are displayed for each of the 
four sequences.

  1. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\color{red}{\bullet}}{\underset{\color{\red}{\bullet}}{\rightleftarrows}}
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

The first and the fourth sequence provide the same end configuration. Therefore,
we have three possible end configurations for urn A: :math:`\color{red}{\bullet} \circ 
\circ \circ \circ`, :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ` and
:math:`\color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ`.

**Solution of part b**

The probability of an end configuration with three white balls in urn A is given by the sum
of the probabilities of the first and the fourth sequence from part a).

  1. The probability of drawing a red ball in the first step equals to :math:`\frac{2}{5}`,
     because of the fact that two of the five balls in urn A are red. Urn B then contains
     four red balls and two white balls. Therefore, the probability of 
     drawing one of the four red balls in the second step equals to 
     :math:`\frac{4}{6}=\frac{2}{3}`. The probability of this sequence can be calculated as
     :math:`\frac{2}{5}\cdot\frac{2}{3}=\frac{4}{15}`.

  2. Equivalent, the probability of drawing a white ball in both steps can be calculated as
     :math:`\frac{3}{5}\cdot\frac{1}{2}=\frac{3}{10}`.

The probability of the event E is the sum of the probabilities of these two sequences:

.. math::

  p(\mathrm{E}) = \frac{4}{15}+\frac{3}{10}=\frac{17}{30}\approx0.5667

The probability of the complementary event :math:`\bar{E}`

.. math::

  p(\bar{\mathrm{E}})=1-p(\mathrm{E})=\frac{13}{30}

is smaller than the probability of the event E.

The probability of the event E can be computed with Sage in two different ways. The first possibility
is to simulate every possible sequence of the experiment with distinguishable balls. We therefore
consider that every ball will be chosen with the same probability. This approach will lead to an
exact result and will also prove our solution of part a).	

.. sagecellserver::

    sage: haeufigkeit_e = 0
    sage: gesamtzahl = 0
    sage: A0 = ['w', 'w', 'w', 'r', 'r']
    sage: B0 = ['w', 'w', 'r', 'r', 'r']
    sage: for a_kugel in A0:
    ...       A1 = A0[::]
    ...       B1 = B0[::]
    ...       A1.remove(a_kugel)
    ...       B1.append(a_kugel)
    ...       for b_kugel in B1:
    ...           print 'A->B:', a_kugel,
    ...           A2 = A1[::]
    ...           A2.append(b_kugel)
    ...           print '  B->A:', b_kugel,
    ...           gesamtzahl = gesamtzahl+1
    ...           if A2.count('w') == 3:
    ...               haeufigkeit_e = haeufigkeit_e+1
    ...               print "   A: ", A2, "<==="
    ...           else:
    ...               print "   A: ", A2
    sage: print "p(E) = %s/%s" % (haeufigkeit_e, gesamtzahl)

The second possibility is to repeatedly simulate the experiment of randomly drawing 
balls from the two urns and to check if the event E occurs. This approach is faster 
to compute, but it will give us only an empiric approximation of the result. 
The runtime of the program will exceed the runtime of the first program, 
in order to reach a good approximation. 

.. sagecellserver::

    sage: import random
    sage: def verschiebe_kugel(urne1, urne2):
    ...       kugel = random.choice(urne1)
    ...       urne1.remove(kugel)
    ...       urne2.append(kugel)
    ...       return urne1, urne2
    sage: haeufigkeit_e = 0
    sage: iterationen = 100000
    sage: for _ in range(iterationen):
    ...       A = ['w', 'w', 'w', 'r', 'r']
    ...       B = ['w', 'w', 'r', 'r', 'r']
    ...       verschiebe_kugel(A, B)
    ...       verschiebe_kugel(B, A)
    ...       if A.count('w') == 3 :
    ...           haeufigkeit_e = haeufigkeit_e+1
    sage: print "Näherung für die Wahrscheinlichkeit p(E) = ", float(haeufigkeit_e/iterationen)









