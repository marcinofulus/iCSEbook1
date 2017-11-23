Random Game
===========

.. admonition:: Problem

  In order to earn money for the equipment of the playing area in the
  children's unit of the hospital a prize draw is offered. After the player
  paid two euros, three balls are drawn at random without replacement from a
  container in which there are three red, three green and three blue balls.  If
  the three balls have the same colour, the player wins and receives a
  certain amount of money; otherwise he looses and obtains no money.
  Afterwards, the drawn balls are put back into the container.
  
  a) Show that the probability for winning one game equals :math:`\frac{1}{28}`.
  
  b) Compute which amount of money, in case of winning, has to be paid out 
     so that an average gain of 1.25 euros per game for the equipment
     of the playing area can be expected.

**Solution of part a**

The probability that three balls with the same colour are drawn can be computed
as follows. First, there are 9 balls in the container. Now, one ball is drawn
at random. Consequently, eight balls remain in the container.
Two of these balls have the same colour as the already drawn ball.
The probability of drawing one of these two balls in the next turn thus
is :math:`\frac{2}{8}`. Afterwards, the last ball with the same colour has to
be drawn from the container with the remaining seven balls. The corresponding
probability is :math:`\frac{1}{7}`.

The total probability of winning hence is:

.. math::

  \frac{2}{8} \cdot \frac{1}{7} = \frac{1}{28} \approx 0.0357\,.

This prize draw can be simulated with Sage. For that purpose, we shuffle the balls
and consider the colour of the first three balls.

.. sagecellserver::

   from random import choice

   def game():
      urn = ['r', 'r', 'r', 'g', 'g', 'g', 'b', 'b', 'b']
      shuffle(urn)
      return urn[0] == urn[1] == urn[2]

   games = 100000
   winnings = 0

   for _ in range(games):
      if game():
          winnings = winnings+1

   print("In {} of {} cases, the three balls had the same colour.".format(winnings, games))

.. end of output

**Solution of part b**

The expected earnings :math:`E` per game are computed for a stake of 2 euros
per game and a prize money of :math:`x` euro to be

.. math:: 

  E(x) = 2 - \frac{1}{28} \cdot x\,.

If the earnings per game are to be 1.25 euros, i.e. :math:`E(x)=1{,}25`, the result
is :math:`x=21`. The prize money hence has to be 21 euros.

With Sage, we can test what impact a prize money of 21 euros has on the
earnings per game.

.. sagecellserver::

   games = 100000
   stake = 2
   prize = 21
   earnings = 0

   for _ in range(games):
       earnings = earnings+stake
       if game():
           earnings = earnings-prize

   print("{} games have been played and {} euros have been earned. "
              "This corresponds to {:.2f} euros per game.".format(
                        games, earnings, float(earnings/games)))

.. end of output
