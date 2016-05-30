Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

Problem 1
^^^^^^^^^

.. admonition:: Problem 1

  Given the function :math:`f` with

  .. math::

    f(x)=\frac{20x}{x^2-25}

  and a maximal domain of definition :math:`D_f`, the figure shows a part of the
  the graph :math:`G_f` of this function :math:`f`.

  .. image:: ../figs/gebrochenrational.png
     :align: center

  a) Prove that :math:`D_f=\mathbb{R}\backslash\{-5;5\}` is fulfilled and that
     :math:`G_f` is symmetric relative to the point (0|0). Denote the zeros of 
     :math:`f` and the equations of the three asymptotes of :math:`G_f`.

  b) Prove that the slope of :math:`G_f` is negative in every point. Calculate
     the angle between :math:`G_f` and the :math:`x`-axis at their intersection
     point.

  c) Draw the missing parts of the graph into the figure above, considering
     the obtained results.

  d) The function :math:`f^*:x\mapsto f(x)` with the domain of definition 
     :math:`]5;+\infty[` differs only in its domain of definition from the
     function :math:`f`. Explain, why the function :math:`f` is not reversible,
     but why the function :math:`f^*` is. Draw the graph of the reversed
     function :math:`f^*` into the figure.

  e) The graph :math:`f`, the :math:`x`-axis and the lines, given by the
     equations :math:`x=10` and :math:`x=s` with :math:`s>10` include an area
     with the content :math:`A(s)`. Calculate :math:`A(s)`.

  f) Determine :math:`s` so that the content of the area from part 1e equals to
     100.

  g) Determine the behavior of :math:`A(s)` in the limes
     :math:`s\rightarrow \infty`.


**Solution of part 1a**

First we will complete the graph of :math:`f` with Sage:

.. sagecellserver::

  sage: f(x)=20*x/(x^2-25)
  sage: plot(f(x), x, (-10,10), exclude=(-5,5), ymax=12, ymin=-12, figsize=(4, 2.8), aspect_ratio=1)

.. end of output

The graph already indicates the lack of definition at the points :math:`x_1=-5`
and :math:`x_2=5`, where the poles of :math:`f` are located. We can verify this
by looking at the factorized form of :math:`f`

.. math::

  f(x)=\frac{20x}{(x-5)(x+5)},

which indicates the zeros of the denominator. The zero of the function is
identical to the zero of the numerator, which is located at (:math:`x_0=0`).
The antisymmetric behavior of the function corresponds to the condition
:math:`f(-x)=-f(x)`, which is obviously fulfilled:

.. math::

    f(-x)=\frac{20(-x)}{(-x)^2-25}=-\frac{20x}{x^2-25}=-f(x)

The two asymptotes, which result from the poles, are given by the equations
:math:`x=-5` and :math:`x=5`. Due to the fact that the order of the polynomial
in the denominator is greater than the order of the polynomial in the
numerator, we can assume that the function vanishes in the limes
:math:`x\rightarrow-\infty` and :math:`x\rightarrow\infty`. Therefore, the
third assymptote is the :math:`x`-axis, given by the equation :math:`y=0`.

We draw the asymptotes into the graph of :math:`f`.

.. sagecellserver::

  sage: g(x) = 0
  sage: p1 = plot(f(x), x, (-20,20), exclude=(-5,5), ymax=12, ymin=-12)
  sage: p2 = line([[-5, -13], [-5,13]], color = 'red')
  sage: p3 = line([[5, -13], [5,13]], color = 'red')
  sage: p4 = plot(g(x), x, (-20,20), aspect_ratio=1, color = 'red')
  sage: show(p1 + p2 + p3 + p4, aspect_ratio=1, figsize=(4, 2.8))

.. end of output

**Solution of part 1b**

First, we calculate the derivative of :math:`f` using the quotient rule:

.. math::

  f'(x)=\frac{(x^2-25)\cdot 20 - 20x\cdot2x}{(x^2-25)^2}=\frac{-20x^2-500}{(x^2-25)^2}

We can see, that the numerator is always negative and the demoninator is always
greater or equal zero. Therefore, the derivatve :math:`f'(x)` is 
-- except for the zeros of the denominator, which are not included in the
domain of definition -- always negative.

The graph of :math:`f'(x)` verifies this result.

.. sagecellserver::

  sage: df = derivative(f, x)
  sage: p5 = plot(df(x), x, (-20, 20), ymax=12, ymin=-12)
  sage: show(p5, aspect_ratio=1, figsize=4)

.. end of output

In order to determine the angle between :math:`G_f` and the :math:`x`-axis at
their intersection point, we calculate the slope of
:math:`f` at the point :math:`x=0`:

.. math ::

  f'(0)=\frac{-500}{(-25)^2}=-\frac{4}{5}

The angle is then given by

.. math::

  \alpha = \arctan\left(-\frac{4}{5}\right)=-38,7°.

We check the result with Sage and draw the tangent of :math:`f` at the point
:math:`x=0`.

.. sagecellserver::

  sage: m = df(0)
  sage: print u"\u03b1 =", RDF(180/pi*arctan(m))
  sage: w(x) = m*x
  sage: p6 = plot(f(x), x, (-4, 4), ymax=5, ymin=-5)
  sage: p7 = plot(w(x), x, (-4, 4), color='green')
  sage: show(p6+p7, aspect_ratio=1, figsize=4)

.. end of output

**Solution of part 1c**

The graph was already completed in part 1a.

**Solution of part 1d**

The function :math:`f` assigns multiple :math:`x`-values to the same
:math:`y`-values and is therefore not injective on its complete domain of
definition. Thus, the function :math:`f` is not revertible.

:math:`f^*` on the other hand is injective on its complete domain of defintion
and is therefore invertible. The reversed function :math:`f^{*-1}` can be
calculated by solving :math:`y=f^*(x)` for  :math:`x`. We obtain the quadratic
equation

.. math::

  x^2y-20x-25y = 0

for :math:`x`, whose solutions are given by

.. math::

  x_{1/2}= \frac{5\left(2\pm\sqrt{y^2+4}\right)}{y}.

These solutions can also be obtained with Sage:

.. sagecellserver::

  sage: y = var('y')
  sage: solve(f(x)==y, x)

.. end of output

Due to the domain of definition of :math:`f^*`, :math:`f^{*-1}` can only take
values :math:`\geq5`. Thus, we have to choose the solution with the plus sign
in front of the square root. The reverse function then has the form

.. math::

  f^{*-1}= \frac{5\left(2+\sqrt{x^2+4}\right)}{x}.

We will use Sage to draw :math:`f^*` and :math:`f^{*-1}`.

.. sagecellserver::

  sage: f_inv(x) = 5*(sqrt(x^2 + 4) + 2)/x
  sage: p8 = plot(f(x), x, (5, 20))
  sage: p9 = plot(f_inv(x), x, (0, 20))
  sage: show(p8+p9, aspect_ratio=1, ymax=20, figsize=4)

.. end of output

**Solution of part 1e**

Due to the fact that :math:`f` is always positive for :math:`x>10`, the
described area can be calculated as the integral of the function :math:`f`
from 10 to :math:`s`:

.. math::

  A(s)=\int\limits_{10}^sf(x)\mathrm{d}x.

We denote that the numerator of :math:`f` is except for a constant factor the
derivation of the denominator. Therefore, we can find the logarithm as an
antiderivative:

.. math::

  A(s) = \int\limits_{10}^s\frac{20x}{x^2-25}\mathrm{d}x 
  = 10\int\limits_{10}^s\frac{2x}{x^2-25}\mathrm{d}x
  = 10 \left.\ln(x^2-25) \right\vert^s_{10}=10\ln\left(\frac{s^2-25}{75}\right)

Sage verifies this solution:

.. sagecellserver::

  sage: from sage.symbolic.integration.integral import definite_integral
  sage: s = var('s')
  sage: assume(s > 10)
  sage: A(s) = definite_integral(f(x), x, 10, s)
  sage: print "Die Fläche ist A(s) =", A(s)

.. end of output

The described area is emphasized with yellow color in the figure. The value of
:math:`s` can be changed dynamically and the content of the area is calculated
and presented under the figure.

.. sagecellserver::

  sage: @interact
  sage: def _(s=slider(10.1, 19.9, 0.1)):
  ...       p10 = plot(f(x), x, (5, 10))
  ...       p11 = plot(f(x), x, (10, s), fill = 0, fillcolor='yellow')
  ...       p12 = plot(f(x), x, (s, 20))
  ...       show(p10+p11+p12, aspect_ratio=1, ymax=10, figsize=4)
  ...       print "Die gelbe Fläche hat den Inhalt:", float(A(s))

.. end of output

**Solution of part 1f**

The area with the content 100 can be calculated by solving the equation

.. math::

  A(s) = 100

with Sage. It is important to deliver Sage the condition :math:`s>10` for this
purpose. The requested value of :math:`s` is then

.. sagecellserver::

  sage: print float(solve(A(s) == 100, s)[0].right())

.. end of output

**Solution of part 1g**

The value of the logarithm goes in the limes :math:`x\rightarrow\infty` to
infinity. Therefore, the content of the area :math:`A(s)` also goes to infinity
in this case.

We verify this result with Sage:

.. sagecellserver::

  sage: html("$\lim_{s=\infty} A(s) = %s$" % latex(A(infinity)))

.. end of output


Problem 2
^^^^^^^^^

.. admonition:: Problem 2

  A motorboat drives with constant speed along a river. First, the boat 
  travels a distance of 10 km down the river and afterwards the same way up
  the river. The proper speed denotes the speed with which the boat would
  travel on resting water.

  The following model describes the boat with a constant proper speed and the
  water of the river with a constant speed of
  :math:`5\frac{\mathrm{km}}{\mathrm{h}}`. The time needed to turn the
  boat's dircetion will be neglected.

  The total time for both ways of the boat's journey (in hours) are given
  by the term

  .. math::

    t(x) = \frac{10}{x+5}+\frac{10}{x-5},

  for :math:`x>5`. :math:`x` denotes the proper speed of the boat in units of
  :math:`\frac{\mathrm{km}}{\mathrm{h}}`.

  a) Based on the model, determine the total time for a journey with the
     proper speeds :math:`10\,\frac{\mathrm{km}}{\mathrm{h}}` and
     :math:`20\,\frac{\mathrm{km}}{\mathrm{h}}` in minutes.

  b) Explain, why the first summand of the term :math:`t(x)` describes the time
     needed to travel down the river and the second summand the time to travel
     up the river.

  c) Explain, why the term :math:`t(x)` can not be used to calculate the total
     time if :math:`0<x<5` is fulfilled.

  d) Prove that the terms :math:`f(x)` and :math:`t(x)` are equivalent.

  e) Describe how you can use the graph in order to get an approximate value
     for the proper speed of the boat based on the total time for a total time
     between 2 and 14 hours. Based on the model, calculate the proper speed of
     the boat if it needs four hours for the whole journey.

**Solution of part 2a**

In order to calculate the total time, we simply have to insert the values
:math:`x=10` and :math:`x=20` in :math:`t(x)` and multiply it with 60
(1 hour = 60 minutes).

We obtain a total time of 

.. math::

  60t(10) = 60\left(\frac{10}{15}+\frac{10}{5}\right) = 160 \mathrm{min}

for a proper speed of :math:`10\frac{\mathrm{km}}{\mathrm{h}}` and a total time
of

.. math::

  60t(20) = 60\left(\frac{10}{25}+\frac{10}{15}\right) = 64 \mathrm{min}

for a proper speed of :math:`20\frac{\mathrm{km}}{\mathrm{h}}`. We can verify
these values with Sage. Further, we use Sage to plot the total time with
respect to the proper speed in the interval between
:math:`10\frac{\mathrm{km}}{\mathrm{h}}` and 
:math:`20\frac{\mathrm{km}}{\mathrm{h}}`.

.. sagecellserver::

  sage: t(x) = 10/(x+5)+10/(x-5)
  sage: print "Total time for 10 km/h:", 60*t(10), "minutes"
  sage: print "Total time for 20 km/h:", 60*t(20), "minutes"
  sage: p1 = plot(60*t(x), x, (10, 20))
  sage: show(p1, figsize=(4, 2.8))

.. end of output

**Solution of part 2b**

The time needed to travel a distance of the length :math:`s` with a constant
speed :math:`x`, can be expressed as :math:`\frac{s}{x}`. However, a  boat
travels with its proper speed relative to the water beneath it. Depending on
the direction of the boat, its speed relative to the boarder of the river can
be obtained by adding or subtracting the speed of the water to or from the
boat's proper speed. For a distance of :math:`s=10\mathrm{km}` and a water
speed of :math:`5\frac{\mathrm{km}}{\mathrm{h}}`, the two summands of the term
:math:`t(x)` denote the time needed to travel down and up the river.

**Solution of part 2c**

For :math:`0<x<5`, we can use the first part of the term :math:`t(x)` to
calculate the time needed to travel down the river. However, the second term
can not be used to calculate the time needed for the boat to return because the
boat's speed is lower than the speed of the water and the boat therefore can't
overcome the backward drift of the water. Thus, the boat will never return.
:math:`t(x)` should therefore have an infinitely large value.

However, the graph shows that the function has negative values on the interval
:math:`0<x<5`, which obviously can not be interpreted as total time.

.. sagecellserver::

  sage: p13 = plot(60*t(x), x, (0, 50), ymax=800, ymin=-800)
  sage: show(p13, figsize=(4, 2.8))

.. end of output

**Solution of part 2d**

We expand the two fractions in the term of :math:`t(x)`, in order to summarize
them:

.. math::

  t(x) &= \frac{10}{x+5}+\frac{10}{x-5}\\
  &= \frac{10(x-5)+10(x+5))}{(x+5)(x-5)}\\
  &=\frac{20x}{x^2-25}\\
  &=f(x)

With Sage, we can verify this result by calculating the difference of the two
functions. However, the method ``rational_simplify()`` is essential for the
program to work.

.. sagecellserver::

  sage: print t(x)-f(x)
  sage: print (t(x)-f(x)).rational_simplify()

.. end of output

**Solution of part 2e**

The proper distance can be read off the graph by searching the point of the
curve, where the :math:`y`-value matches the specified total time. The
corresponding :math:`x`-value represents the proper speed of the boat. The 
proper speed for a total time of 4 hours can be approximated as 
:math:`8\frac{\mathrm{km}}{\mathrm{h}}`. The exact value can be determined by
the reversed function :math:`f^{*-1}` from part 1d. We obtain

.. math::

  f^{*-1}(4) = 5\frac{1+\sqrt{5}}{2}.

Sage reproduces this value:

.. sagecellserver::

  sage: t = 4
  sage: print "Proper speed for a total time of", t, ": ", f_inv(t).n(10), "km/h"

.. end of output

The graphic construction with Sage can be implemented as follows:

.. sagecellserver::

  sage: p14 = plot(f(x), x, (5.1, 14))
  sage: x4, y4 = f_inv(t), t
  sage: l1 = line([(x4, y4), (0, y4)], color='red')
  sage: l2 = line([(x4, y4), (x4, 0)], color='red')
  sage: show(p14+l1+l2, aspect_ratio=1, xmin=0, ymin=0, ymax=14, figsize=4)

.. end of output
