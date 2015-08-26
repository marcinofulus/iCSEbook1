================================================================
Bavarian final secondary-school examinations in mathematics 2015
================================================================

Examination Part A (CAS)
========================

Source of the problem set (in German): `http://www.isb.bayern.de/download/16164/abiturpruefung_mathematik_cas_2015_pruefungsteil_a.pdf <http://www.isb.bayern.de/download/16164/abiturpruefung_mathematik_cas_2015_pruefungsteil_a.pdf>`_

*Problem group 1*
=================

Analysis
--------
Problem 1
.........

Determine the solutions of :math:`(4x-3)\cdot\ln\left(x^2-5x+7\right)=0` for
:math:`x\in\mathbb{R}`.

.. admonition:: Solution

  The zeros of the function on the left-hand side are determined by the zeros
  of the two factors.

  Solving the requirement :math:`4x-3=0` for :math:`x` immediately yields the
  first zero :math:`x_1 = 3/4`.

  The second factor vanishes provided the argument of the logarithm equals one.
  One thus needs to find solutions of :math:`x^2-5x+7=1`. The solutions of
  the resulting quadratic equation :math:`x^2-5x+6=0` are obtained by means of

  .. math::

     x_{2,3} = \frac{5\pm\sqrt{25-24}}{2}.

  We thus obtain two more zeros :math:`x_2=2` and :math:`x_3=3`.

  These results can easily be checked with Sage:

  .. sagecellserver::

    sage: x = var('x')
    sage: solve((4*x-3)*ln(x^2-5*x+7) == 0, x)

  .. end of output

Problem 2
.........

Given are the functions :math:`f, g` and :math:`h` defined on :math:`\mathbb{R}`
by :math:`f(x)=x^2-x+1`, :math:`g(x)=x^3-x+1`, and :math:`h(x)=x^4+x^2+1`.

a) The figure depicts the graph of one of the three functions. Indicate which
   functions is represented by the graph. Argue why the graph cannot represent
   the other two functions.

.. image:: figs/abiturpruefung_mathematik_cas_2015_pruefungsteil_a_1_2_a.png
   :align: center

.. admonition:: Solution

  The graph displays two extrema. Therefore, it cannot represent the function
  :math:`f(x)` because the derivative of a quadratic function possesses only
  one zero. Furthermore, the function displayes in the figure takes on negative
  values, excluding the function :math:`h(x)` aus. As a consequence the graph
  represents the function :math:`g(x)`. We check our conjecture with the help
  of Sage:
  
  .. sagecellserver::
  
      sage: ranges = {'xmin': -2, 'xmax': 2.5, 'ymin': -2.5, 'ymax': 2.5}
      sage: p = sum([plot(x^2-x+1, color='blue', **ranges),
      ...            plot(x^3-x+1, color='red', **ranges),
      ...            plot(x^4+x^2+1, color='green', **ranges)])
      sage: p.show(figsize=(2.7, 3))
  
  .. end of output
  
  The graph of the function :math:`g(x)` shown in red indeed fits the graph
  in the original figure.

b) The first derivative of the function :math:`h` is given by :math:`h'`.
   Evalute :math:`\int_0^1h'(x)\mathrm{d}x`.

.. admonition:: Solution

  The antiderivative of the derivative of a function is the function itself.
  It follows
  
  .. math::
  
     \int_0^1h'(x)\mathrm{d}x = h(1)-h(0) = 3-1 = 2.
  
  In Sage, we start by differentiating the function :math:`h(x)` as a check
  and continue by evaluating the required definite integral:
  
  .. sagecellserver::
  
      sage: from sage.symbolic.integration.integral import definite_integral
      sage: h(x) = x^4+x^2+1
      sage: dh(x) = diff(h, x)
      sage: print 'Derivative of h(x):', dh
      sage: print 'Value of the definite integral:', definite_integral(dh(x), x, 0, 1)
  
  .. end of output
  
  Of course, according to our reasoning above, we obtain the same result by
  subtracting the function taken at the limits of integration:
  
  .. sagecellserver::
  
      sage: h(x) = x^4+x^2+1
      sage: h(1)-h(0)
  
  .. end of output

Problem 3
.........

We are given the function :math:`f: x\mapsto \sin(2x)` defined on
:math:`\mathbb{R}`. What are the amplitude, period, and its range.

.. admonition:: Solution

  The sine function has amplitude 1, period :math:`2\pi` and the range
  :math:`[-1, 1]`. The given function :math:`f` has the same amplitude and
  range. Due the factor of 2 in the argument, its period is only :math:`\pi`.
  
  We can check these statements by means of Sage:
  
  .. sagecellserver::
  
       sage: plot(sin(2*x), (0, 2*pi), figsize=(4, 2.5))
  
  .. end of output

Problem 4
.........

For each of the following sets of requirements name a function satisfying them.

a) The function :math:`g` has a maximum domain given by :math:`]-\infty; 5]`.

.. admonition:: Solution

  A function with domain :math:`[0; \infty[` is given by
  :math:`x\mapsto\sqrt{x}`. Therefore, :math:`g(x)=\sqrt{5-x}` is one of the
  functions with the given domain.

b) The function :math:`k` has a zero at :math:`x=2` as well as pole at
   :math:`x=-3` without changing its sign. The graph of :math:`k` has an
   asymptote the straight line given by :math:`y=1` als Asymptote.

.. admonition:: Solution

  The function :math:`k(x)` can be chosen as rational function. Beacuase of
  the zero at :math:`x=2` the numerator must contain at least a factor
  :math:`x-2`. The pole at :math:`x=-3` without change of sign is obtained
  by means of a factor :math:`(x+3)^2` in the denominator. In order to obtain
  the desired asymptotic behavior for :math:`\vert x\vert\to\infty`, the factor
  in the numerator must be squares. We thus arrive at
  
  .. math::
  
     k(x)=\frac{(x-2)^2}{(x+3)^2}.
  
  We demonstrate with the help of Sage that this function indeed has the
  required properties.
  
  Zero at :math:`x=2`:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: plot(k, xmin=0, xmax=4, ymin=-0.1, ymax=0.5, figsize=(4, 2.5))
  
  .. end of output
  
  Pole at :math:`x=-3` without change of sign:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: plot(k, xmin=-6, xmax=0, ymin=0, ymax=1000, figsize=(4, 2.5))
  
  .. end of output
  
  Asymptotic approach to the straight line :math:`y=1` for
  :math:`\vert x\vert\to 1`:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: xmax = 1000
      sage: xmin = -xmax
      sage: p = plot(k, xmin=xmin, xmax=xmax, ymin=0.5, ymax=1.5)
      sage: p = p+line([(xmin, 1), (xmax, 1)], linestyle='dashed')
      sage: p.show(figsize=(4, 2.5))
  
  .. end of output

Problem 5
.........

We are given the set of functions :math:`f_a : x\mapsto x\mathrm{e}^{ax}`
defined on :math:`\mathbb{R}` with :math:`a\in\mathbb{R}\backslash\{0\}`.
Determine the value of :math:`a` for which the derivative of :math:`f_a` at 
:math:`x=2` vanishes.

.. admonition:: Solution

  The derivative of the given function is obtained as
  
  .. math::
  
     \frac{\mathrm{d}f_a}{\mathrm{d}x} = (1+ax)\mathrm{e}^{ax}
  
  so that
  
  .. math::
  
     \left.\frac{\mathrm{d}f_a}{\mathrm{d}x}\right\vert_{x=2} =
      (1+2a)\mathrm{e}^{2a}.
  
  As a consquence, the derivate vanishes provided :math:`1+2a=0`, i.e. for
  :math:`a=-1/2`.
  
  This calculation can be checked by means of Sage:
  
  .. sagecellserver::
  
      sage: a = var('a')
      sage: f(x, a) = x*exp(a*x)
      sage: df = f.derivative(x)
      sage: print 'Derivative of f:', df
      sage: solve(df(2, a) == 0, a)
  
  .. end of output

Stochastics
-----------

Problem 1
.........

In the winter sport biathlon, during each shooting round, five targets have
to be hit. In the course of an individual race, a biathlet executes a shooting
round by shooting on each target once. This shooting round is modeled by
a Bernoulli chain of length 5 with a probablity :math:`p` to score a hit.

a) Give an expressions for the following events A and B which described the
   probability for the event as a function of math:`p`.
 | A: „The biathlete scores exactly four hits.“   
 | B: „The biathlete scores a hit only for the first two shots.“

.. admonition:: Solution

  We start by considering the probability for event B. Since the probability
  of a hit is given by math:`p`, the probability for a miss equals :math:`1-p`. 
  Correspondingly, the probability for scoring a hit for exactly the first two
  shots is obtained as :math:`p^2(1-p)^3`. We check this statement by means of
  simulation. However, we should not expect perfect agreement.
  
  .. sagecellserver::
  
      sage: p = 0.7
      sage: rounds = 1000000
      sage: goal = [True, True, False, False, False]
      sage: successes = 0
      sage: for round in range(rounds):
      ...       result = [random() < p for _ in range(5)]
      ...       if result == goal:
      ...           successes = successes+1
      sage: print N(successes/rounds), p^2*(1-p)^3
  
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
  
      sage: binomial(5, 4)
  
  .. end of output
  
  we once more check our result for the probability by means of a simulation:
  
  .. sagecellserver::
  
      sage: p = 0.7
      sage: rounds = 1000000
      sage: successes = 0
      sage: for round in range(rounds):
      ...       result = [random() < p for _ in range(5)]
      ...       if sum(result) == 4:
      ...           successes = successes+1
      sage: print N(successes/rounds), 5*p^4*(1-p)
  
  .. end of output

b) Explain by way of example why modeling a shooting round by means of
   a Bernoulli chain might disagree with reality.

.. admonition:: Solution

  The Bernoulli chain assumes that the probability of a hit is the same for
  each shot. However, in reality the probability of a hit might for example
  decrease after a miss.

Problem 2
.........

A talkshow host invites three politicians, a newswoman and two members of a
citizens' action committee. During the discussion round, the participants
will be sitting in a semi-circle with the host in the middle and each 
participant taken as an individual.

a) Give an expression which allows to determine the number of possible seating
arrangements if no other constraints need to be taken into account.

.. admonition:: Solution

  If we want to generate all possible seating arrangements, we start with the
  first seat for which we the choice among six person. For the second seat,
  five person are left and so on. In total, we obtain
  
  .. math::
  
     6!=6\cdot5\cdot4\cdot3\cdot2\cdot1=720
  
  possibilities.
  
  If we indicate the host by H, the politicans by 1, 2, and 3, the newswoman
  by N and the members of the citizens' action committee by C and c, we can
  list all seating arrangements:
  
  .. sagecellserver::
  
      sage: for n, a in enumerate(Arrangements(["1", "2", "3", "N", "C", "c"], 6)):
      ...       if not n % 8:
      ...           print "%3i" % (n/8+1),
      ...       print "%sH%s" % ("".join(a[:3]), "".join(a[3:])),
      ...       if not (n+1) % 8:
      ...           print
  
  .. end of output
  
  Our list indeed comprises :math:`8\cdot90=720` different seating
  arrangements.

b) The station has decided that the newswoman will take a seat next to the
   host and that to the other side of the host, a politician shall be seated.
   Determine the number of possible seating arrangements accounting for these
   constraints.

.. admonition:: Solution

  We can attribute the seats by proceeding as follows: The newswoman is placed on
  one of the two seats next to the host (2 possibilities) and one of the three
  politicians is seated on the other side of the host (3 possibilities). It remains
  to place four persons on four seats which, in analogy to our reasoning in part a,
  yields :math:`4\cdot3\cdot2\cdot1=24` possiblities. In total, we obtain 
  :math:`2\cdot3\cdot24` different seating arrangements which we can list:
  
  .. sagecellserver::
  
      sage: persons = set(["1", "2", "3", "B", "b"])
      sage: n = 0
      ...   for jleft in (True, False):
      ...       for pmiddle in ("1", "2", "3"): 
      ...           for others in Arrangements(persons-set([pmiddle]), 4):
      ...               if jleft:
      ...                   a = "".join(others[:2])+"JM"+pmiddle+"".join(others[2:])
      ...               else:
      ...                   a = "".join(others[:2])+pmiddle+"MJ"+"".join(others[2:])
      ...               if not n % 8:
      ...                   print "%3i" % (n/8+1),
      ...               print a,
      ...               if not (n+1) % 8:
      ...                   print
      ...               n = n+1
  
  We obtain :math:`18\cdot8=144` seating arrangements as expected.

Geometry
--------

Problem 1
.........

A straight line g goes through the points A(0|1|2) and B(2|5|6).

a) Demonstrate that the distance between points A and B is 6. The points C and D
   lie on g and have each the distance 12 from A. Determine the coordinates of
   C and D.

.. admonition:: Solution

  The vector connecting points A and B has the coordinates (2, 4, 4). Its length
  is therefore given by :math:`\sqrt{2^2+4^2+4^2}=\sqrt{36}=6`. The points C and
  D can be obtained by adding or subtracting twice the vector from A to B to the
  position vector of A. We thus obtain the points C (4|9|10) and D(-4|-7|-6).
  
  We now implement this reasoning in Sage. First we calculate the distance between
  points A and B. then we determine the coordinates of points C and D. Finally,
  we verify that the distance between points C and D on the one hand and the
  point A on the other hand equals indeed 12.

  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: print 'Length of vector from A to B:', norm(b-a)
      sage: c = a+2*(b-a)
      sage: d = a-2*(b-a)
      sage: print 'Coordinates of C:', c
      sage: print 'Coordinates of D:', d
      sage: print 'Distance of points A and C:', norm(c-a)
      sage: print 'Distance of points A and D:', norm(d-a)
  
  .. end of output

b) The points A, B and E(1|2|5) together with one more point shall form the
   vertices of a parallelogram. There exist several possibilities for the
   position of the fourth vertex. State the coordinates of two of the possible
   fourth vertices.

.. admonition:: Solution

  Choosing two of three possible vectors between the given points, one adds
  one vector to the end of the other one to obtain the fourth point.
  
  We start by using the vector from A to B and from A to E:
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: a_to_b = b-a
      sage: a_to_e = e-a
      sage: f1 = b+a_to_e
      sage: f2 = e+a_to_b
      sage: f1, f2
  
  .. end of output
  
  The two ways to obtain the fourth vertex F yield the same result as it should
  be. One possible fourth vertex therefore is given by F(3|6|9).
  
  Another parallelogram is obtained, if point B as being diagonally opposite to
  the new point.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: b_to_a = a-b
      sage: b_to_e = e-b
      sage: f1 = a+b_to_e
      sage: f2 = e+b_to_a
      sage: f1, f2
  
  .. end of output
  
  For the sake of completeness we also determine the third possible vertex.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: e_to_a = a-e
      sage: e_to_b = b-e
      sage: f1 = a+e_to_b
      sage: f2 = b+e_to_a
      sage: f1, f2

  .. end of output

Problem 2
.........

We consider the pyramid ABCDS with A(0|0|0), B(4|4|2), C(8|0|2), D(4|-4|0),
and S(1|1|-4). Its base is a parallelogram.

a) Prove that the parallelogram ABCD is a rectangle.

.. admonition:: Solution

  ABCD forms a rectangle if starting from one of the vertices the angle between
  the shortest vectors to the othe vertices is a right angle.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: print ' Distance A-B:', N(norm(b-a))
      sage: print ' Distance A-C:', N(norm(c-a))
      sage: print ' Distance A-D:', N(norm(d-a))
      sage: (b-a).dot_product(d-a)
  
  .. end of output
  
  It follows that the vectors from A to B and from A to D are orthogonal
  to each other. The point C lies diagonally opposite of A. Therfore, the
  parallelogram is indeed a rectangle. Since this solution depends on the
  information that ABCD is a parallelogram, we check alos the other three
  inner angles.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: (c-b).dot_product(a-b), (d-c).dot_product(b-c), (a-d).dot_product(c-d)
  
  .. end of output

b) The edge [AS] is normal to the base ABCD. The area of the base is :math:`24\sqrt{2}`.
   Determine the volume of the pyramid.

.. admonition:: Solution

  Since the vector from A to S is normal to the base, its length :math:`h` equals
  the height of the pyramid. The area of the base is given as :math:`A=24\sqrt{2}`.
  We first briefly check the latter result.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: d = vector([4, -4, 0])
      sage: norm(a-b)*norm(a-d)
  
  .. end of output
  
  The height of the pyramid is obtained as
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: s = vector([1, 1, -4])
      sage: norm(s-a)
  
  .. end of output
  
  Then, volume takes on the value :math:`V=\frac{h}{3}A=48`. This result can be
  confirmed directly with the help of Sage.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: s = vector([1, 1, -4])
      sage: Polyhedron(vertices=[a, b, c, d, s]).volume()
  
  .. end of output
