The wheel of fortune
====================

.. admonition:: Problem

  A supermarket organizes a competition in order to raise money for the
  equipement of the local kindergarden. The five sectors of the wheel of
  fortune used for this purpose are numbered from 1 to 5. The size of the
  sectors is proportional to the value of the numbers, e.g., the sector with
  number 3 is three times as large as the sector with the number 1. After
  the player has paid six euros, the wheel of fortune will be turned once.
  Does the player obtain one of the numbers 1 to 4, he will receive the 
  corresponding value in a corresponding amount of euros. If he obtains
  the number 5, he receives a ticket for a leisure park with a value of
  fifteen euros.

  a) Determine the angle spanned by the sector with number 1 as well as
     the probability that the player will win the ticket in a single game.

     *(Partial result: Size of angle: 24°)*

  b) Determine the expectation value for the payment per game if winning
     a ticket is equivalent to receiving a payment of fifteen euros. 
     Interprete the result.

  c) The supermarket needs to pay to the leisure park only ten euros per
     ticket. Therefore, as a result of the competition, one can expect a
     surplus to be donated to the local kindergarden. Determine the expected
     surplus provided that the game is played 6000 times.


**Solution of part 1a**

The angle spanned by sector 1 can be obtained as follows:

.. math::

  x+2x+3x+4x+5x =360°\quad\Leftrightarrow\quad x=24°\,.

The probability to win a ticket is given by

.. math::

  \frac{5}{1+2+3+4+5}=\frac{5}{15}=\frac{1}{3}.

**Solution of part 1b**

The expectation value is determined by means of the formula

.. math::

  E=\sum\limits_{X}P(X)\cdot X,

where :math:`X` is the amount of the payment. Assuming that winning the ticket
is equivalent to a payment of fifteen euros, we obtain

.. math::

  E=\frac{1}{15}+\frac{2}{15}\cdot2+\frac{3}{15}\cdot3+\frac{4}{15}\cdot4+\frac{5}{15}\cdot15=7\,.

A player on average receives seven euros per round.

A corresponding simulation can be carried out with Sage.

.. sagecellserver::

    import random
    amounts = [1]*1+[2]*2+[3]*3+[4]*4+[15]*5
    games = 6000
    total_win = 0
    for _ in range(games):
        total_win = total_win+random.choice(amounts)
    print("expectation value = {:4.2f} euros".format(float(total_win)/games))

.. end of output

**Solution of part 1c**

In contrast to part b, the payment now has to be replaced by the yield
for the supermarket, i.e., :math:`5`, :math:`4`, :math:`3`, :math:`2` and :math:`-4`.
We thus obtain for the expectation value

.. math::

  E=\frac{1}{15}\cdot5+\frac{2}{15}\cdot4+\frac{3}{15}\cdot3+\frac{4}{15}\cdot2+\frac{5}{15}\cdot(-4)=\frac{2}{3}.

The yield per game for the supermarket amounts to 67 cents.
On the basis of 6000 games, a surplus of about

.. math::

  6000\cdot\frac{2}{3}\,\mathrm{euros}=4000\,\mathrm{euros}

should result. For such a large number of repetitions, the actual result
should not deviate by too much from the expectation value.

We simulate the game with Sage as seen from the supermarket or the kindergarden.

.. sagecellserver::

   amounts = [5]*1+[4]*2+[3]*3+[2]*4+[-4]*5
   games = 6000
   surplus = 0
   for _ in range(games):
       surplus = surplus+random.choice(amounts)
   print("Surplus for the kindergarden: {} euros".format(surplus))
   print("Average surplus per game for the kindergarden: {:4.2f} euros".format()
         float(surplus/games))


.. end of output

An impression of the bandwidth of the results can be obtained by means
of a simulation. A series of 6000 games is repeated many times and the
frequency of surplusses is displayed in a histogram.

.. sagecellserver::

   import matplotlib.pyplot as plt
   repetitions = 500
   games = 6000
   surplusses = []
   for repetition in range(repetitions):
       surplus = 0
       for _ in range(games):
           surplus = surplus+random.choice(amounts)
       surplusses.append(surplus)
   plt.hist(surplusses, bins=30)
   plt.show()


.. end of output
