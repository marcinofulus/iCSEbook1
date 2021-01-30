Rational function
=================

Problem 1
^^^^^^^^^

.. admonition:: Problem 1

  Given the function :math:`f` with

  .. math::

    f(x)=\frac{20x}{x^2-25}

  and a maximal domain :math:`D_f`, the figure shows part of its
  graph :math:`G_f`.

  .. image:: ../figs/gebrochenrational.png
     :width: 35%
     :align: center

  a) Prove that :math:`D_f=\mathbb{R}\backslash\{-5;5\}` and that
     :math:`G_f` is symmetric relative to the point :math:`\left(0\vert0\right)`.
     Specify the zeros of :math:`f` and the equations of the three asymptotes
     of :math:`G_f`.

  b) Prove that the slope of :math:`G_f` is negative in every point. Calculate
     the angle between :math:`G_f` and the :math:`x`-axis at their intersection
     point.

  c) Draw the missing parts of the graph into the figure above, considering
     the results obtained so far.

  d) The function :math:`f^*:x\mapsto f(x)` with the domain :math:`]5;+\infty[`
     differs from the function :math:`f` only in terms of its domain.
     Explain, why the function :math:`f` is not invertible, incontrast
     to the function :math:`f^*`. Draw the graph of the inverted function
     :math:`f^*` into the figure.

  e) The graph of :math:`f`, the :math:`x`-axis and the lines given by the
     :math:`x=10` and :math:`x=s` with :math:`s>10` enclose an area
     with the content :math:`A(s)`. Determine :math:`A(s)`.

  f) Determine :math:`s` so that the content of the area from problem 1e equals
     100.

  g) Determine the behavior of :math:`A(s)` in the limit :math:`s\rightarrow \infty`.


**Solution of part 1a**

First we will complete the graph of :math:`f` with the help of Sage:

.. sagecellserver::

   f(x)=20*x/(x^2-25)
   plot(f(x), x, (-10, 10), exclude=(-5, 5), ymax=12, ymin=-12, figsize=4, aspect_ratio=1)

.. end of output

The graph already indicates that the points :math:`x_1=-5` and
:math:`x_2=5` are to be excluded from the domain, because
they correspond to the poles of :math:`f`. We can verify this
by inspecting the factorized form of :math:`f`

.. math::

  f(x)=\frac{20x}{(x-5)(x+5)},

and reading off the zeros of the denominator. The zero of the function is
identical to the zero of the numerator, which is located at :math:`x_0=0`.
The symmetry with respect to the origin corresponds to the condition
:math:`f(-x)=-f(x)`, which is obviously fulfilled:

.. math::

    f(-x)=\frac{20(-x)}{(-x)^2-25}=-\frac{20x}{x^2-25}=-f(x)

The two asymptotes resulting from the poles are given by the equations
:math:`x=-5` and :math:`x=5`. The function :math:`f` vanishes in the limits
:math:`x\rightarrow-\infty` and :math:`x\rightarrow\infty`, because the
order of the polynomial in the denominator exceeds the order of the
polynomial in the numerator. Therefore, the third asymptote corresponds
to the :math:`x`-axis, given by the equation :math:`y=0`.

We draw the asymptotes into the graph of :math:`f`.

.. sagecellserver::

   g(x) = 0
   p1 = plot(f(x), x, (-20, 20), exclude=(-5, 5), ymax=12, ymin=-12)
   p2 = line([[-5, -13], [-5, 13]], color = 'red')
   p3 = line([[5, -13], [5, 13]], color = 'red')
   p4 = plot(g(x), x, (-20, 20), aspect_ratio=1, color = 'red')
   show(p1+p2+p3+p4, aspect_ratio=1, figsize=4)

.. end of output

**Solution of part 1b**

First, we calculate the derivative of :math:`f` using the quotient rule:

.. math::

  f'(x)=\frac{(x^2-25)\cdot 20 -
  20x\cdot2x}{(x^2-25)^2}=\frac{-20x^2-500}{(x^2-25)^2}.

As we can see, the numerator is always negative while the denominator is always
greater or equal zero. Therefore, the derivative :math:`f'(x)` is 
-- except for the zeros of the denominator, which are not included in the
domain -- always negative.

The graph of :math:`f'(x)` confirms this result.

.. sagecellserver::

   df = derivative(f, x)
   p5 = plot(df(x), x, (-20, 20), ymax=12, ymin=-12)
   show(p5, aspect_ratio=1, figsize=4)

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

   m = df(0)
   print(u"\u03b1 =", RDF(180/pi*arctan(m)))
   w(x) = m*x
   p6 = plot(f(x), x, (-4, 4), ymax=5, ymin=-5)
   p7 = plot(w(x), x, (-4, 4), color='green')
   show(p6+p7, aspect_ratio=1, figsize=4)

.. end of output

**Solution of part 1c**

The graph was already completed in part 1a.

**Solution of part 1d**

The function :math:`f` assigns multiple :math:`x`-values to the same
:math:`y`-values and is therefore not injective on its complete domain.
Thus, the function :math:`f` is not invertible.

:math:`f^*` on the other hand is injective on its complete domain
and is therefore invertible. The reversed function :math:`f^{*-1}` can be
calculated by solving :math:`y=f^*(x)` for  :math:`x`. We obtain the quadratic
equation

.. math::

  x^2y-20x-25y = 0

for :math:`x`, which is solved by

.. math::

  x_{1/2}= \frac{5\left(2\pm\sqrt{y^2+4}\right)}{y}.

These solutions can also be obtained with Sage:

.. sagecellserver::

   y = var('y')
   solve(f(x)==y, x)

.. end of output

Due to the domain of :math:`f^*`, :math:`f^{*-1}` can only take
values :math:`\geq5`. Thus, we have to choose the plus sign in the
solution given above. The inverse function then reads

.. math::

  f^{*-1}= \frac{5\left(2+\sqrt{x^2+4}\right)}{x}.

We will use Sage to draw :math:`f^*` and :math:`f^{*-1}`.

.. sagecellserver::

   f_inv(x) = 5*(sqrt(x^2 + 4) + 2)/x
   p8 = plot(f(x), x, (5, 20))
   p9 = plot(f_inv(x), x, (0, 20))
   show(p8+p9, aspect_ratio=1, ymax=20, figsize=4)

.. end of output

**Solution of part 1e**

Due to the fact that :math:`f` is always positive for :math:`x>10`, the
described area can be calculated as the integral of the function :math:`f`
from 10 to :math:`s`:

.. math::

  A(s)=\int\limits_{10}^sf(x)\mathrm{d}x.

We note that the numerator of :math:`f` corresponds to the derivative of
the denominator up to a constant factor. Therefore, the antiderivative
can be expressed in terms of a logarithm:

.. math::

  A(s) = \int\limits_{10}^s\frac{20x}{x^2-25}\mathrm{d}x 
  = 10\int\limits_{10}^s\frac{2x}{x^2-25}\mathrm{d}x
  = 10 \left.\ln(x^2-25) \right\vert^s_{10}=10\ln\left(\frac{s^2-25}{75}\right)

Sage confirms this solution:

.. sagecellserver::

   from sage.symbolic.integration.integral import definite_integral
   s = var('s')
   assume(s > 10)
   A(s) = definite_integral(f(x), x, 10, s)
   print("The area is given by A(s) =", A(s))

.. end of output

In the following figure, the area is highlighted in yellow. The value of
:math:`s` can be changed dynamically and the content of the area is calculated
and presented under the figure.

.. sagecellserver::

   @interact
   def _(s=slider(10.1, 19.9, 0.1)):
       p10 = plot(f(x), x, (5, 10))
       p11 = plot(f(x), x, (10, s), fill = 0, fillcolor='yellow')
       p12 = plot(f(x), x, (s, 20))
       show(p10+p11+p12, aspect_ratio=1, ymax=10, figsize=4)
       print("Area of the yellow region:", float(A(s)))

.. end of output

**Solution of part 1f**

The area with the content 100 can be calculated by solving the equation

.. math::

  A(s) = 100

with Sage. At this point, it is important that we had specified
:math:`s>10` in the code above. The requested value of :math:`s` is
found as

.. sagecellserver::

   print(float(solve(A(s) == 100, s)[0].right()))

.. end of output

**Solution of part 1g**

In the limit :math:`x\rightarrow\infty` the logarithm goes to
infinity. Therefore, the content of the area :math:`A(s)` also goes to infinity
in this case.

We verify this result with Sage:

.. sagecellserver::

   html("$\lim_{s=\infty} A(s) = %s$" % latex(A(infinity)))

.. end of output


Problem 2
^^^^^^^^^

.. admonition:: Problem 2

  A motorboat cruises with constant motor power along a river. First, the boat 
  travels a distance of 10 km down the river before returning the same way up
  the river. The proper speed denotes the speed with which the boat would
  travel on water at rest.

  In the following, it shall be assumed that the proper speed of the
  boat be constant and the water of the river flows at a constant speed of
  :math:`5\frac{\mathrm{km}}{\mathrm{h}}`. The time needed for the
  transposition maneuver shall be neglected.

  The total time (in hours) for the boat's roundtrip, within the model, is given
  by the term

  .. math::

    t(x) = \frac{10}{x+5}+\frac{10}{x-5},

  for :math:`x>5`. :math:`x` denotes the proper speed of the boat in units of
  :math:`\frac{\mathrm{km}}{\mathrm{h}}`.

  a) Based on the model, determine the total time in minutes for a journey with the
     proper speeds :math:`10\,\frac{\mathrm{km}}{\mathrm{h}}` and
     :math:`20\,\frac{\mathrm{km}}{\mathrm{h}}`.

  b) Explain, why the first and second summand of the term :math:`t(x)` describe the time
     needed to travel down and up the river, respectively.

  c) Explain, why the term :math:`t(x)` cannot be used to calculate the total
     time when :math:`0<x<5`.

  d) Demonstrate that the terms :math:`f(x)` and :math:`t(x)` are equivalent.

  e) Describe how one can use the graph in order to get an approximate value
     for the proper speed of the boat based on the total time taken
     between 2 and 14 hours. Based on the model, calculate the proper speed of
     the boat if four hours are needed for the whole journey.

**Solution of part 2a**

In order to calculate the total time of travel, we simply have to insert the values
:math:`x=10` and :math:`x=20` in :math:`t(x)` and multiply the result
with 60 to obtain the time in minutes.

We find a total time of 

.. math::

  60t(10) = 60\left(\frac{10}{15}+\frac{10}{5}\right) = 160\,\mathrm{min}

for a proper speed of :math:`10\frac{\mathrm{km}}{\mathrm{h}}` and

.. math::

  60t(20) = 60\left(\frac{10}{25}+\frac{10}{15}\right) = 64\,\mathrm{min}.

for a proper speed of :math:`20\frac{\mathrm{km}}{\mathrm{h}}`. We can verify
these results with Sage. Furthermore, we use Sage to plot the total time with
respect to the proper speed in the interval between
:math:`10\frac{\mathrm{km}}{\mathrm{h}}` and 
:math:`20\frac{\mathrm{km}}{\mathrm{h}}`.

.. sagecellserver::

   t(x) = 10/(x+5)+10/(x-5)
   print("Total time for 10 km/h:", 60*t(10), "minutes")
   print("Total time for 20 km/h:", 60*t(20), "minutes")
   p1 = plot(60*t(x), x, (10, 20))
   show(p1, figsize=(4, 2.8))

.. end of output

**Solution of part 2b**

The time needed to travel a distance :math:`s` with constant speed
:math:`x` can be expressed as :math:`\frac{s}{x}`. However, the boat
travels with its proper speed relative to the surrounding water.
Depending on the boat's direction of travel, its speed relative to
the shore is obtained by adding or subtracting the
speed of the water to or from the boat's proper speed. For a distance
:math:`s=10\,\mathrm{km}` and a flow velocity of
:math:`5\frac{\mathrm{km}}{\mathrm{h}}`, the two summands of the term
:math:`t(x)` correspond to the time needed to travel down and up the river.

**Solution of part 2c**

For :math:`0<x<5`, we can use the first part of the term :math:`t(x)` to
calculate the time needed for travelling down the river. However, the
second term cannot be used to calculate the time needed for the return
voyage because the water's flow velocity exceeds the speed of the boat.
Therefore, the boat will not be able to reach the point of departure.
:math:`t(x)` should therefore yield an infinitely large value.

However, the graph shows that the function yields negative values on the
interval :math:`0<x<5`, which obviously precludes an interpretation in
terms of a total time.

.. sagecellserver::

   p13 = plot(60*t(x), x, (0, 30), exclude=(5,), ymax=800, ymin=-800)
   show(p13, figsize=(4, 2.8))

.. end of output

**Solution of part 2d**

Finding the common denominator, we add up the two terms and find

.. math::

  t(x) &= \frac{10}{x+5}+\frac{10}{x-5}\\
  &= \frac{10(x-5)+10(x+5))}{(x+5)(x-5)}\\
  &=\frac{20x}{x^2-25}\\
  &=f(x)

With Sage, we can verify this result by calculating the difference of the two
functions. However, the method ``rational_simplify()`` is essential for the
program to work.

.. sagecellserver::

   print(t(x)-f(x))
   print((t(x)-f(x)).rational_simplify())

.. end of output

**Solution of part 2e**

The proper speed can be read off the graph by searching the point of the
curve where the :math:`y`-value matches the specified total time. The
corresponding :math:`x`-value represents the proper speed of the boat. 
For a total time of 4 hours one finds a proper speed of approximately
:math:`8\frac{\mathrm{km}}{\mathrm{h}}`. The exact value can be determined by
means of the inverse function :math:`f^{*-1}` defined in part 1d. We obtain

.. math::

  f^{*-1}(4) = 5\frac{1+\sqrt{5}}{2}.

Sage confirms this result:

.. sagecellserver::

   totaltime = 4
   print("Proper speed for a total time of {}h: {}km/h".format(
         totaltime, f_inv(totaltime).n(10)))

.. end of output

The graphic construction can be visualized with Sage as follows:

.. sagecellserver::

   p14 = plot(f(x), x, (5.1, 14))
   x4, y4 = f_inv(totaltime), totaltime
   l1 = line([(x4, y4), (0, y4)], color='red')
   l2 = line([(x4, y4), (x4, 0)], color='red')
   show(p14+l1+l2, aspect_ratio=1, xmin=0, ymin=0, ymax=14, figsize=4)

.. end of output
