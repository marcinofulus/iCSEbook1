Biathlon
========

.. admonition:: Problem

  In the winter sport biathlon, during each shooting round, five targets have
  to be hit. In the course of an individual race, a biathlet executes a shooting
  round by shooting on each target once. This shooting round is modeled by
  a Bernoulli chain of length 5 with a probablity :math:`p` to score a hit.

  a) Give an expressions for the following events A and B which described the
     probability for the event as a function of :math:`p`.
   | A: „The biathlete scores exactly four hits.“   
   | B: „The biathlete scores a hit only for the first two shots.“

  b) Explain by way of example why modeling a shooting round by means of
     a Bernoulli chain might disagree with reality.

**Solution of part a**

We start by considering the probability for event B. Since the probability
of a hit is given by math:`p`, the probability for a miss equals :math:`1-p`. 
Correspondingly, the probability for scoring a hit for exactly the first two
shots is obtained as :math:`p^2(1-p)^3`. We check this statement by means of
simulation. However, we should not expect perfect agreement.

.. sagecellserver::

     p = 0.7
     rounds = 1000000
     goal = [True, True, False, False, False]
     successes = 0
     for round in range(rounds):
         result = [random() < p for _ in range(5)]
         if result == goal:
             successes = successes+1
     print(N(successes/rounds), p^2*(1-p)^3)

.. end of output

Let us now consider event A. In analogy to the previous consideration, the
probability for a given sequence of four hits and and one miss equals
:math:`p^4(1-p)`. However, the shot which misses is not fixed. The number of
possibilites to distribute :math:`M` events on :math:`N` positions is given
by the binomial coefficient

.. math::

   \binom{N}{M} = \frac{N!}{M!(N-M)!}.

In our case, the desired probability is obtained as

.. math::

   \binom{5}{4}p^4(1-p) = 5p^4(1-p).

After briefly verifying the binomial coefficient of which we make use here

.. sagecellserver::

     binomial(5, 4)

.. end of output

we once more check our result for the probability by means of a simulation:

.. sagecellserver::

     p = 0.7
     rounds = 1000000
     successes = 0
     for round in range(rounds):
         result = [random() < p for _ in range(5)]
         if sum(result) == 4:
             successes = successes+1
     print(N(successes/rounds), 5*p^4*(1-p))

.. end of output

**Solution of part b**

The Bernoulli chain assumes that the probability of a hit is the same for
each shot. However, in reality the probability of a hit might for example
decrease after a miss.
