.. -*- coding: utf-8 -*-


.. **0:08\-0:20**

Parrondo's paradox
==================

.. admonition:: Abstract

  Parrondo's paradox is a combination of games which behaves quite
  counterintuively. Beyond its curious behavior, it provides a simple
  illustration of a physical system, the so-called flashing ratchet.
  After giving some background information on Parrondo's paradox, we
  will explore several approaches to a numerical implementation. An
  object-oriented approach will finally allow us to study in some
  detail various aspects of Parrondo's paradox. Readers less
  interested in the programming aspects can skip that part and after
  having read the introduction can go directly to the last section.

  Literature:

  - `J. M. R. Parrondo and Luis Dinís, Contemp. Phys. 45, 147 (2004)
    <http://dx.doi.org/10.1080/00107510310001644836>`_ 
  - `Parrondo's paradox – Wikipedia, The Free Encyclopedia
    <http://en.wikipedia.org/wiki/Parrondo%27s_paradox>`_ 



.. sidebar:: What is Parrondo's paradox?

   .. raw:: html

       <iframe width="420" height="280" src="https://www.youtube.com/embed/TQ31Md9KPRM?start=8&end=585&version=3&loop=1&controls=2" frameborder="0" allowfullscreen></iframe>

In Parrondo's paradox, a flashing ratchet is simulated by two games
representing the situations with the potential switched on and off. In
both cases, the player will loose on average, thereby mimicking a
tilted potential with an average motion to the left as explained
above. The question to be explored in the following is how the
situation changes for the player when one switches between the two
games.


.. **1:20\-4:40**


Parrondo's paradox serves as an illustration of Brownian ratchets by
means of appropriately combining two games where tossing a coin
represents the random Brownian motion.


Brownian motion of particles leads to a broadening of their
distribution. An initially sharp distribution (red curve) will be
significantly broader (green curve) after some time.


.. image:: figs/diffusion.png
    :align: center



.. **4:40\-5:35**


If the potential is slightly tilted to the left, the distribution will
not only broaden but also move to the left in the course of time.


.. **5:35\-7:40**


A specific type of a Brownian ratchet is the so\-called *flashing
ratchet*, where during certain periods of time a sawtooth potential
(see figure below) is switched on. If the sawtooth potential is
permanently switched on, the diffusive motion will not have a
preferential direction. If the potential is tilted to the left,
particles on average will move to the left as was the case in the
absence of an external potential.

.. image:: figs/sawtoothpotential.png
    :align: center


.. **7:40\-9:45**


However, in the operational mode of a flashing ratchet, when the
sawtooth potential is switched on and off appropriately, one can
observe an average motion to the right.


.. **12:34\-14:30**


Tossing a coin
--------------


.. sidebar:: Let's play a game!

   .. raw:: html

       <iframe width="420" height="280" src="https://www.youtube.com/embed/TQ31Md9KPRM?start=585&end=1600&version=3&loop=1&controls=2" frameborder="0" allowfullscreen></iframe>


Let us try out the creation of random numbers. The numbers are
generated in a way that they are equally distributed between 0
and 1. For the simplest fair game, we would define a threshold of 0.5
where the player wins if the random number is below the threshold and
looses otherwise.


.. **14:30\-16:00**


.. sagecellserver::

    print random()

.. end of output

.. **16:00\-17:50**


.. sagecellserver::

   for n in range(10):
       print random()


.. end of output

.. admonition:: Note on Python 

  Indentation is used as a syntax markup. As long as the code is indented
  relative to the for :code:`loop` statement (first line above), the code is
  repeated within the loop. Once the indented block terminates, Python knows
  that the following code is no longer part of the loop. The same indentation
  concept holds for example for :code:`if/else` constructs and function and
  class definitions, all of which we will encounter below. Indentation needs to
  be consistent. Make it a rule to always indent by 4 spaces per indentation
  level.


.. **18:00\-19:50**


Let us now toss some coins in a fair game. Since the outcomes are random,
you should not expect to win in exactly half of the cases even though this
may happen. For comparison, you might try the same game with a real coin.


.. sagecellserver::

    sage: for n in range(10):
    ...       if random() < 0.5:
    ...           print "you win"
    ...       else:
    ...           print "you loose"


.. end of output

.. **19:50\-26:40**


Game A
------ 

Now we take a look at the individual games which are part of Parrondo's
paradox and start with game A. The rule is simple: We win if the random
number is below :math:`0.5-\epsilon`, otherwise we loose. For
:math:`\epsilon>0`, we have to face it: We will loose in the long run. For
our numerical runs, let us use :math:`\epsilon=0.005`.

We are not interested in the absolute amount of money which we have after
a certain number of games. Only changes are important, how much money have
we won or lost? Therefore, it is fine to start without any money at the
beginning.

Running the following code several times, you will notice that in some
cases you are lucky and win money for some time. However, if you continue
to play, you will end up loosing money. In order to show this, we have to
play the game often. Setting the number of games to 100000, the code will
run for a couple of seconds. You can try a different number of games by
changing the value of :code:`ngames`, but if :code:`ngames` is too large,
the code might need a long time to terminate.


.. sagecellserver::

    sage: eps = 0.005
    sage: ngames = 100000
    sage: money = 0
    sage: evolution = [money]

    sage: for ngame in range(ngames):
    ...       if random() < 0.5-eps:
    ...           money = money+1
    ...       else:
    ...           money = money-1
    ...       evolution.append(money)

    sage: list_plot(evolution, pointsize=1)


.. end of output


Game B
------ 


The rules of the second game are slightly more complicated because
they depend on the amount of money in our possession at the time the
game is played. There are two rules:

#. Our money is not a multiple of :math:`m`:
   We win if the random number is below :math:`\frac{3}{4}-\epsilon`.
   Otherwise we loose. This sounds extremely good…
#. Our money is a multiple of :math:`m`:
   We win only if the random number is below :math:`\frac{1}{10}-\epsilon`.
   Otherwise we loose. A pretty bad situation…


But: For :math:`\epsilon>0`, we still loose in the long run. While this
statement can be rigorously proven, we will simply try it out numerically.

:math:`m` is an integer which we choose to be 3 in the following.

.. sagecellserver::

    sage: eps = 0.005
    sage: m = 3
    sage: ngames = 100000
    sage: money = 0
    sage: evolution = [money]

    sage: for ngame in range(ngames):
    ...        if money % m:
    ...            if random() < 0.75-eps:
    ...                money = money+1
    ...            else:
    ...                money = money-1
    ...        else:
    ...            if random() < 0.1-eps:
    ...                money = money+1
    ...            else:
    ...                money = money-1
    ...        evolution.append(money)

    sage: list_plot(evolution, pointsize=1)

.. end of output

.. admonition:: Note on Python 

   The character :code:`%` represents the modulo operator. In the previous
   code the :code:`if`-branch is chosen if :code:`money` is not divisible by
   :code:`m` without rest while the :code:`else`-branch is chosen if
   the division is possible without rest.


Combining two loosing games
--------------------------- 

We now play a series of games alternating between two games A and
two games B in a row: A\-A\-B\-B\-A\-A\-B\-B\-…

What do you expect? Will we loose again? Let's try it out.

.. sagecellserver::

    sage: eps = 0.005
    sage: m = 3
    sage: ngames = 100000
    sage: money = 0
    sage: evolution = [money]

    sage: for ngame in range(ngames):
    ...       if ngame % 4 < 2:      
    ...           # game A
    ...           if random() < 0.5-eps:
    ...               money = money+1
    ...           else:
    ...               money = money-1
    ...       else:
    ...           # game B
    ...           if money % m:
    ...               if random() < 0.75-eps:
    ...                   money = money+1
    ...               else:
    ...                   money = money-1
    ...           else:
    ...               if random() < 0.1-eps:
    ...                   money = money+1
    ...               else:
    ...                   money = money-1
    ...       evolution.append(money)

    sage: list_plot(evolution, pointsize=1)


.. end of output


Unless you have been extremely unlucky, the combination of two loosing
game should yield a winning situation.


Refactoring
----------- 

We have been repeating code. That is not a good idea. Let us follow the DRY principle: Don't Repeat Yourself.


We implement some functions to make life easier and to make the code
more readable. Also adding some documentation is always a good idea.


.. admonition:: Hint  

  Function names can be used like variables. Below we will define functions
  called :code:`game_a` and :code:`game_b`. It therefore makes sense to define
  a tuple (:code:`game_a`, :code:`game_b`, :code:`game_a`, :code:`game_b`)
  indicating which games should be played in turn. Addressing the tuple is done
  by appending :code:`[`\ *index*:code:`]`, where *index* has to be replaced by
  an expression determining the index. Note that the first entry is accessed by
  index 0, not 1! Since an element of our specific tuple is a function name, it
  can be called like any other function by appending arguments in parentheses.


.. sagecellserver::

    sage: def singlegame(threshold):
    ...       '''return the change in capital in a single game

    ...          The game is won if the drawn random number is smaller
    ...          than the threshold. It is lost otherwise.

    ...       '''
    ...       if random() < threshold:
    ...           return 1
    ...       else:
    ...           return -1

    sage: def game_a(capital):
    ...       '''return the new capital after a single game A

    ...          A global variable EPS is expected to be defined in order
    ...          to determine the winning threshold.

    ...       '''
    sage: # <--- use the function singlegame to determine the new capital
    sage: #      and return it
    sage: #      Don't be surprised: This is really only a one-liner.

    sage: def game_b(capital):
    ...       '''return the new capital after a single game B

    ...          Global variables EPS and M are expected to be defined in
    ...          order to determine the winning threshold and the branch
    ...          of the game to be used.

    ...       '''
    sage: # <--- proceed as in game_b. However, a one-liner will not be
    sage: #      enough here, because the winning threshold depends on the
    sage: #      capital.
    ...           
    sage: def play_games(gametype, ngames):
    ...       '''return the evolution of the capital for a series of games

    ...          gametype - a tuple containing the names of the game to be
    ...                     played in a sequence
    ...          ngames   - the number of games to be played 

    ...       '''
    sage: # <--- define initial values as needed
    ...       period = len(gametype) # Here, we determine the number of games
    ...                              # contained in the list of games

    sage: # <--- generate the list of capital after each game and return it

    sage: # We define global variables with capital letters to make the more
    sage: # visible. Generally, it is a good idea to avoid global variables.
    sage: # One way to do so it by using an object oriented approach (see
    sage: # below)
    sage: EPS = 0.005
    sage: M = 3
    sage: ngames = 100000

    sage: # The following code generates a graph where game A corresponds
    sage: # to the blue line, game B to the green line, and the sequence
    sage: # of games AABB to the red line.
    sage: G = Graphics()
    sage: for gamelist, color in (((game_a,), 'blue'),
    ...                           ((game_b,), 'green'),
    ...                           ((game_a, game_a, game_b, game_b), 'red')):
    ...       G = G+list_plot(play_games(gamelist, ngames),
    ...                       color=color, pointsize=1)
    sage: G.show()


.. end of output


.. admonition:: Hint
  
  The docstrings which we have included in our function definitions can be
  utilized by means of the help method. Try for example :code:`help(play_games)`.


Object oriented approach
------------------------ 

The object oriented approach presents a few advantages in our
case. New sequences of games A and B can be defined in a simple
way. An instance of a game also remembers the capital whereas the
local variable capital used in the functions above is forgotten after
the function has been executed. You can run several instances of a
game in parallel, each having automatically its own capital and game
parameters :math:`\epsilon` and :math:`m`.


.. sagecellserver::

    sage: import itertools
    sage: class Game(object):
    ...       '''The Game class knows how to toss a coin and how to play a series
    ...          of games. However, there is no definition of a single game. This
    ...          class should be used as a generic parent class for specific games.

    ...       '''
    ...       def __init__(self, capital=0):
    ...           self.capital = capital

    ...       def toss_coin(self, threshold):
    ...           if random() < threshold:
    ...               self.capital = self.capital+1
    ...           else:
    ...               self.capital = self.capital-1

    ...       def play(self):
    ...           raise NotImplementedError

    ...       def play_series(self, repetitions):
    ...           evolution = [self.capital]
    ...           for r in range(repetitions):
    ...               self.play()
    ...               evolution.append(self.capital)
    ...           return evolution

    sage: class ParrondoGame(Game):
    ...       '''This class provides games A and B of Parrondo's paradox.

    ...       '''
    ...       def __init__(self, epsilon=0.005, m=3, **kwargs):
    ...           self.epsilon = epsilon
    ...           self.m = m
    ...           Game.__init__(self, **kwargs)

    ...       def play_a(self):
    ...           self.toss_coin(0.5-self.epsilon)

    ...       def play_b(self):
    ...           if self.capital % self.m:
    ...               self.toss_coin(0.75-self.epsilon)
    ...           else:
    ...               self.toss_coin(0.10-self.epsilon)

    sage: class GameA(ParrondoGame):
    ...       '''Game A of Parrondo's paradox

    ...       '''
    ...       def __init__(self, **kwargs):
    ...           ParrondoGame.__init__(self, **kwargs)

    ...       def play(self):
    ...           self.play_a()

    sage: class GameB(ParrondoGame):
    ...       '''Game B of Parrondo's paradox

    ...       '''
    ...       def __init__(self, **kwargs):
    ...           ParrondoGame.__init__(self, **kwargs)

    ...       def play(self):
    ...           self.play_b()

    sage: class GameAABB(ParrondoGame):
    ...       '''Sequence of games AABB of Parrondo's paraodxon

    ...       '''
    ...       def __init__(self, **kwargs):
    ...           ParrondoGame.__init__(self, **kwargs)
    ...           self.gametype = itertools.cycle((
    ...                               self.play_a, self.play_a,
    ...                               self.play_b, self.play_b))

    ...       def play(self):
    ...           game = self.gametype.next()
    ...           game()

    sage: class GameABRandom(ParrondoGame):
    ...       '''Random sequence of games A and B of Parrondo's paradox

    ...       '''
    ...       def __init__(self, **kwargs):
    ...           ParrondoGame.__init__(self, **kwargs)

    ...       def play(self):
    ...           game = choice((self.play_a, self.play_b))
    ...           game()


.. end of output

Single realizations of a game can be treacherous. Here we evaluate the average and standard deviation for a number of realizations of a game.


.. sagecellserver::

    sage: ngames = 10000
    sage: nrealizations = 50
    sage: results = [GameA().play_series(ngames)[-1] for n in range(nrealizations)]
    sage: print 'average capital:    %8.2f' % N(mean(results))
    sage: print 'standard deviation: %8.2f' % N(std(results))


.. end of output

Suggestions for further numerical experiments
--------------------------------------------- 



- What happens if the number of A and B games is changed in the sequence? 
- What happens for random switching between games A and B? 
- What happens when parameters like :math:`\epsilon` and  :math:`m` are changed? 



       	
..
   [('**0:08\\-0:20**', [8, 20]),
    ('**0:20\\-0:50**', [20, 50]),
    ('**1:20\\-4:40**', [80, 280]),
    ('**4:40\\-5:35**', [280, 335]),
    ('**5:35\\-7:40**', [335, 460]),
    ('**7:40\\-9:45**', [460, 585]),
    ('**12:34\\-14:30**', [754, 870]),
    ('**14:30\\-16:00**', [870, 960]),
    ('**16:00\\-17:50**', [960, 1070]),
    ('**18:00\\-19:50**', [1080, 1190]),
    ('**19:50\\-26:40**', [1190, 1600])]
