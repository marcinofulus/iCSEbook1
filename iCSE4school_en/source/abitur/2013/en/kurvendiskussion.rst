Properties of the graph of the function
=======================================

.. admonition:: Problem

  #.  We are given the function :math:`f:x\mapsto 2x\cdot e^{-0.5x^2}`
      defined in :math:`\mathbb{R}`. Figure 2 displays the graph
      :math:`G_f` of :math:`f`.
    
      .. image:: ../figs/kurvendiskussion.png
         :align: center

      a) Demonstrate by calculation that :math:`G_f` is point-symmetric
         with respect to the origin. On the basis of the function term
         of :math:`f` make plausible that
         :math:`\lim\limits_{x\rightarrow +\infty} f(x)=0`.
      b) Determine by calculation the position and nature of the extrema of
         :math:`G_f`.
      c) Determine the mean rate of change :math:`m_S` of :math:`f` in the
         interval :math:`[-0.5;0.5]` as well as the local rate of change
         :math:`m_T` of :math:`f` at :math:`x=0`. Determine by how many
         percent :math:`m_S` differs from :math:`m_T`.
      d) The graph of :math:`f`, the :math:`x`-axis and the straight line
         :math:`x=u` with :math:`u \in \mathbb{R}^+` enclose for
         :math:`0\leq x \leq u` a region with area :math:`A(u)`.
         
         Demonstrate that :math:`A(u)=2-2e^{-0.5u^2}`. Give
         :math:`\lim\limits_{u\rightarrow + \infty} A(u)` and interpret
         the result geometrically.
      e) The line :math:`h` through the origin defined by 
         :math:`y=\frac{2}{e^2}\cdot x` together with :math:`G_f`
         completely encloses for :math:`x\geq 0` a region with area :math:`B`.
         
         Determine the :math:`x`-coordinates of the three intersections of
         the straight line :math:`h` with :math:`G_f` and draw the straight
         line into figure 2. Calculate :math:`B`.

  #. In the following, the family of functions :math:`g_c: x\mapsto f(x) + c`
     defined in :math:`\mathbb{R}` with :math:`c\in \mathbb{R}` will be
     considered.

     a) State without any further calculation the coordinates of the maximum
        of the graph of :math:`g_c` as well as the behavior of :math:`g_c`
        for :math:`x\rightarrow + \infty` as a function of :math:`c`.

     b) The number of zeros of :math:`g_c` depends on :math:`c`.
        Give for each of the following cases a possible value of
        :math:`c` so that the respective condition holds:

        :math:`\alpha`) :math:`g_c` has no zero.

        :math:`\beta`) :math:`g_c` has exactly one zero.

        :math:`\gamma`) :math:`g_c` has exactly two zeros.

     c) Argue by means of an appropriate sketch that 
        :math:`\int\limits_0^3 g_c(x)\mathrm{d}x=\int\limits_0^3f(x)\mathrm{d}x+3c`.

  #.  The number of children to which a woman gives birth during her life is
      described by the so-called birth rate which is statistically determined
      each year.

      The function :math:`g_{1.4}: x \rightarrow 2x \cdot e^{-0.5x^2} + 1.4`
      for :math:`x\geq0` exemplarily describes the time evolution of the birth
      rate in a European country. Here, :math:`x` is the number of decades
      passed since 1955 (i.e., :math:`x=1` corresponds to the year 1965) and
      :math:`g_{1.4}(x)` is the birth rate. For the population to be
      approximately constant in the long run in that contry, a birth rate of
      approximately :math:`2.1` is required.

      a) Sketch the graph of :math:`g_{1{,}4}` in figure 2 and deduce with
         reasonable accuracy in which time period the birth rate is at least
         :math:`2.1`.

      b) What is to be expected on the basis of this model for the future
         evolution of the population? Justify your answer.

      c) In the time period considered, there exists a year in which the
         birth rate decreases most. Make use of figure 2 to give an approximate
         value for that year. Describe how on the basis of this model one could
         demonstrate by calculation that the decrease of the birth rate becomes
         continuously weaker from that year on.


Part 1
^^^^^^

**Solution of part a**

In order to prove the point-symmetry of :math:`G_f` we need to demonstrate
:math:`f(x)=-f(-x)` or, equivalently, :math:`f(x) + f(-x) = 0`.

.. math::
  
  f(x) + f(-x)  = 2x \cdot e^{-0.5x^2} + 2(-x) \cdot e^{-0.5(-x)^2}\\
  = 2x \cdot e^{-0.5x^2} - 2 x \cdot e^{-0.5x^2}\\
  = 0

This result can easily be checked by means of Sage:

.. sagecellserver::

   f(x) = 2*x*exp(-1/2*x**2)
   print("f(x) + f(-x) = " + str(f(x) + f(-x)))

.. end of output

**Solution of part b**

In order to identify the extrema of :math:`G_f`, one needs to determine
the zeros of the derivative of :math:`f`.

.. math::

  \frac{\mathrm{d}}{\mathrm{d}x}f(x) 
  &= \frac{\mathrm{d}}{\mathrm{d}x}\left(2x\cdot e^{-0{,}5x^2}\right)\\
  &= 2 \cdot e^{-0{,}5x^2} + 2x\cdot e^{-0{,}5x^2}\cdot (-x)\\
  &= 2\cdot e^{-0{,}5x^2}\left(1-x^2\right)

By means of Sage, the derivative may be obtained as follows:

.. sagecellserver::

   df(x) = derivative(f(x),x)
   print("Derivative of f(x): " + str(df(x).full_simplify()))

.. end of output

In order to determine the extrema, the equation

.. math::

  2\cdot e^{-0.5x^2}(1-x^2)=0

must be solved. As the exponential function does not possess zeros,
all zeros result from :math:`1-x^2=0`. We thus find the solutions
:math:`x_1=-1` and :math:`x_2=1`.

The solutions can be confirmed with Sage.

.. sagecellserver::

   nstn = solve(df(x)==0, x)
   print("Zeros of the derivative of f: " +repr(nstn))

.. end of output

In order to identify the nature of the extrema, one needs to consider the second
derivative of :math:`f` at the :math:`x` values determined above.  For a
positive second derivative , one has a minimum, while for a negative second
derivative, the extremum is a maximum. By means of the derivative of :math:`f`
already determined above, one obtains for the second derivative

.. math::

  f''(x) &= \frac{d^2}{dx^2}f(x)\\
         &= \frac{d}{dx}\left(2\cdot e^{-0.5x^2}\left(1-x^2\right)\right)\\
         &= - 2x\cdot e^{-0.5x^2}\left(3-x^2\right)

Inserting :math:`x_1` and :math:`x_2` yields:

.. math::

  f''(x_1) = f''(-1) = -2 \cdot (-1)\cdot e^{-0.5\cdot(-1)^2}\left(3-(-1)^2\right)\\
  = 4 \cdot e^{-0.5} > 0\\
  f''(x_2) = f''(1) = -2 \cdot 1\cdot e^{-0.5 \cdot 1^2}\left(3-1^2\right)\\
  = -4 \cdot e^{-0.5} < 0

Therefore, :math:`x_1` is a minimum while :math:`x_2` is a maximum. This result
is confirmed by figure 2.

By means of Sage, one obtains the second derivative and its values at the
points :math:`x_1` and :math:`x_2` as follows:

.. sagecellserver::

   ddf(x) = derivative(df(x),x)
   print("Second derivative of f(x): " + str(ddf(x).full_simplify()))
   print("ddf(-1) = " + str(ddf(-1)))
   print("ddf(1) = " + str(ddf(1)))

.. end of output

**Solution of part c**

The mean rate of change :math:`m_S` of :math:`f` in the interval :math:`[-0.5;0.5]`
is obtained as the difference of the function values at the borders of the
inervall divided by the length of the interval. Emplying the point-symmetry
with respect to the origin, one finds

.. math::

  m_S &=\frac{f(0.5)-f(-0.5)}{0.5 - (-0.5)}\\
      &= 2f(0.5)\\
      &= 4\cdot(0.5)\cdot e^{-0.5\cdot(0.5)^2}\\
      &= 2\cdot e^{-0.125}\\
      &\approx 1.76

In Sage, one can easily define a function which determines the mean slope for
two intervall borders.

.. sagecellserver::

   def ms(x1,x2):
      return (f(x2)-f(x1))/(x2-x1)
   print("Mean rate of change between -0.5 and 0.5: %4.2f" % ms(-0.5, 0.5))

.. end of output

The local rate of change :math:`m_T` at :math:`x=0` is the slope in
that point. The derivative has already been determined in the previous
subproblem. Thus we find:

.. math::

  m_T = f'(0) = 2 \cdot e^{-0.5\cdot0}(1-0) = 2

.. sagecellserver::

   print("Local rate of change at x=0: " + str(df(0)))

.. end of output

The deviation in percent thus amounts to

.. math::

  \left(\frac{m_S}{m_T}-1\right) = e^{-0.125} = 0.882 = 88.2\%.

.. sagecellserver::

   print("Deviation in percent between mean and local rate of change: %4.1f%%" % (100*ms(-0.5,0.5)/df(0)))

.. end of output

**Solution of part d**

The enclosed area :math:`A(u)` can be computed as integral over :math:`f(x)`
from the lower limit :math:`0` to the upper limit :math:`u`:

.. math::

  A(u) = \int\limits_0^u f(x) \mathrm{d}x

The area must vanish for :math:`u=0`.

.. math::

  A(0) = 2 - 2e^{-0.5\cdot 0^2} = 2 - 2 = 0

Taking the derivative of :math:`A(u)` with respect to :math:`u`, one finds:

.. math::

  \frac{\mathrm{d}}{\mathrm{d}u} A(u) 
  = \frac{\mathrm{d}}{\mathrm{d}u}\left(2-2e^{-0.5u^2}\right) 
  = 2u\cdot e^{-0.5 u^2} = f(u)

These two properties prove that :math:`A(u)` is the definite integral of
:math:`f(x)` on the interval :math:`[0;u]`.

The integration can be carried out directly by means of Sage.

.. sagecellserver::

   var('u')
   assume(u > 0)
   a(u) = f.integral(x, 0, u)
   print("A(u) = "+str(a(u)))

.. end of output

The limit of :math:`A(u)` for :math:`u\rightarrow +\infty` is found as:

.. math::

  \lim\limits_{u\rightarrow +\infty} A(u)
  = \lim\limits_{u\rightarrow +\infty}\left(2-2e^{-0.5u^2}\right)
  = 2 - 0 = 2

By means of Sage the limit is obtained as follows:

.. sagecellserver::

   print("A(inf) = " + str(limit(a(u), u=Infinity)))

.. end of output

The result implies that the area enclosed by the graph between
:math:`0` and :math:`+\infty` is finite and equals 2.

**Solution of part e**

The first intersection of the straight line :math:`y=\frac{2}{e^2}\cdot x` with :math:`G_f`
is found at :math:`x_1=0`, since both functions pass through the origin.
Additional intersections are obtained by equating the two functions.

.. math::

  \frac{2}{e^2}\cdot x = 2x \cdot e^{-0.5x^2} \left| \cdot \frac{e^2}{2x}\right. \\
  1 = e^{-0.5x^2 + 2} \left| \ln()\right. \\
  0 = -0.5x^2 + 2 \qquad \left| -2\right.\\
  4 = x^2 \left| \sqrt{\ } \right. \\
  x_{2/ 3} = \pm 2 \\

With the help of Sage, the intersections can be obtained as follows:

.. sagecellserver::

   h(x) = x * 2 / e^2
   solve(f(x) == h(x), x)

.. end of output

The intersection points can be identified graphically if both functions
are drawn in the same coordinate system.

.. sagecellserver::

   pf = plot(f, (0, 2), color='blue', fill=h, fillcolor='yellow')
   ppf = plot(f, (-4, 0), color='blue')
   pppf = plot(f, (2, 4), color='blue')
   ph = plot(h, (-4, 4), color='red')
   b = text("B",(1, 0.7))
   show(pf + ph + ppf + pppf + b, aspect_ratio=1)

.. end of output

The enclosed area :math:`B` results from taking the difference
between the area :math:`A(2)` under the function :math:`f` and
the triangular area below the straight line

.. math::

  B &= A(2)-\frac{1}{2}\cdot 2\cdot\frac{2}{e^2}\cdot 2\\
    &= 2-2e^{-2}-4e^{-2}\\
    & = 2 - 6 e^{-2}\\
    &\approx 1.19.

The integral can easily be evaluated by means of Sage.

.. sagecellserver::

   b = a(2)-integral(h(x), x, 0, 2)
   print(u"The area B is given by: " + str(b) + u" ≈ %4.2f" % b)

.. end of output

Part 2
^^^^^^

**Solution of part a**

The family of functions :math:`g_c` is displaced vertically with respect to
:math:`f(x)` by a constant :math:`c`. Therefore, the maximum of the graph
remains at the same :math:`x` coordinate. For :math:`f(x)`, the maximum
was determined in problem 1b) and found at :math:`x=1` and 
:math:`f(1) = \frac{2}{\sqrt{e}}`. The :math:`y`-value of the maximum
of :math:`g_c` correspondingly is found as

.. math::

  g_c(1) = f(1) + c = \frac{2}{\sqrt{e}} + c.

Thus the coordinates of the maximum are given by :math:`\left(1;\frac{2}{\sqrt{e}} + c\right)`.

For a fixed value of :math:`c`, Sage determines the maximum numerically.
Here, we choose :math:`c=3`.

.. sagecellserver::

   c = var('c')
   gc(c, x) = f(x) + c
   hy, hx = find_local_maximum(gc(3), -30, 30)
   print("The maximum for c=3 is found at: (%4.2f,%4.2f)" % (hx, hy))

.. end of output

As :math:`f(x)` vanishes in the limit :math:`x\rightarrow + \infty`,
we find :math:`\lim\limits_{x\rightarrow+\infty}g_c(x) = c`.

.. sagecellserver::

   print(u"g_c(c, inf) = " + str(limit(gc(c, x), x=Infinity)))

**Solution of part b**

For :math:`g_c` not to have a zero, a positive or negative value of :math:`c`
must be chosen such that its absolute value is larger than the absolute value of
the minimum or maximum, respectively, of the graph, e.g., :math:`c=2`. For exactly
one zero, :math:`c` can be chosen equal to the negative value of the maximum or
the positive value of the minimum of :math:`f(x)`.  From problem 1b)
:math:`c=\pm\frac{2}{\sqrt{e}}` follow as solutions. Furthermore, :math:`c=0`
can be chosen. In this case, :math:`f(x)` only possesses a zero at the origin.
For all other values of :math:`c` (smaller than the absolute value of the
maximum and minimum and different from zero), :math:`g_c` possesses two zeros.

The following diagram :math:`c\in\{0;1;\frac{2}{\sqrt{e}};2\}` displays graphs
of functions with a different number of zeros.

.. sagecellserver::

   pg0 = plot(gc(0, x), (-4, 4), color='blue')
   pg1 = plot(gc(1, x), (-4, 4), color='red')
   pgtp = plot(gc(2/sqrt(e), x), (-4, 4), color='purple')
   pg2 = plot(gc(2, x), (-4, 4), color='green')
   show(pg0 + pg1 + pgtp + pg2, aspect_ratio=1)

.. end of output

The zeros can numerically be determined by means of Sage, if one provides
an interval in which not more than one zero is expected. The total interval
to be examined must therefore be divided into sufficiently small subintervals in
order to find all zeros. In the following example, the interval
:math:`[-5, 5]` is divided into a selectable number of subintervals. It is
interesting to choose :math:`c` close to the value for which only one
zero exists, e.g. :math:`c=\pm 1.2`. Then, the number of found zeros depends
on the subintervals chosen.


.. sagecellserver::

   from numpy import linspace

   def my_find_root(f, a, b, n):
  ....:       """find zeros of the function f in the interval [a, b] by
  ....:       subdivision into n subintervals of equal size
  ....:           
  ....:       """
  ....:       roots = set()
  ....:       limits = linspace(a, b, n+1)
  ....:       for x0, x1 in zip(limits[:-1], limits[1:]):
  ....:           try:
  ....:               r = find_root(f, x0, x1)
  ....:               roots.add(str(r))
  ....:           except RuntimeError: # No zero was found in this interval
  ....:               pass
  ....:       zeros = "{" + ", ".join(roots) + "}"
  ....:       print("Zeros of " + str(f) + ": " + zeros)

   @interact
   def _(c=slider(-2, 2, 0.1, 0),
  ....:         n=slider(1, 80, 1)):
  ....:       my_find_root(gc(c), -5, 5, n)

.. end of output

**Solution of part c**

It is straightforward to derive the given formula by exploiting
the linearity of the integration:

.. math::

  \int\limits_0^3 g_c(x)\mathrm{d}x=\int\limits_0^3(f(x)+c)\mathrm{d}x=
  \int\limits_0^3f(x)\mathrm{d}x+\int\limits_0^3c\mathrm{d}x=
  \int\limits_0^3f(x)\mathrm{d}x+3c

A sketch visualizing this relation can easily be produced with Sage.
The green rectangle has the size :math:`3c`. The yellow area corresponds
to the integral over :math:`f(x)`.

.. sagecellserver::

   c = 1
   pg = plot(gc(c, x), (0, 3), color='red', fill=c, fillcolor='yellow')
   pgl = plot(gc(c, x), (-1, 0), color='red')
   pgr = plot(gc(c, x), (3, 4), color='red')
   gtext = text(r"$g_1(x)$", (2, c + 0.8), fontsize=14)
   pc = plot(c,(0, 3), color='white', fill=True, fillcolor='lightgreen')
   ftext = text(r"$\int_0^3 f(x) \mathrm{d}x$",(1, c + 0.5), fontsize=14)
   ctext = text(r"$c=" + str(c) + r"$",(-0.5, c), fontsize=14)
   c3text = text(r"$3c$",(1, c/2), fontsize=14)
   show(pgl + pg + pgr + gtext+ pc + ftext + ctext + c3text, aspect_ratio=1, xmax=4)

.. end of output

Part 3
^^^^^^

**Solution of part a**

In order to find the starting and end points of the interval in which
:math:`g_{1.4}(x) > 2.1`, we must solve the following equation:

.. math::

  g_{1.4}(x) - 2.1 = 0

Based on the previously solved problems we know that the maximum of  
:math:`g_c(x)` is situated at :math:`x = 1`. Therefore, the starting point
of the interval must have a smaller value of :math:`x`. On the other
hand, the end point must have a larger value of :math:`x`. We determine
the limit numerically by means of Sage.

.. sagecellserver::

   startx = find_root(gc(1.4)-2.1, -1, 1)
   endx = find_root(gc(1.4)-2.1, 1, 3)
   print("In the interval [" + str(startx) + ", " + str(endx) + "] gc(1.4, x) is larger than 2.1")
   pg14l = plot(gc(1.4, x), (-4, startx), color='red')
   pg14 = plot(gc(1.4, x), (startx, endx), fill=2.1, fillcolor='yellow', color='red')
   pg14r = plot(gc(1.4, x), (endx, 4), color='red')
   show(pg0 + pg14l + pg14 + pg14r, aspect_ratio=1)

.. end of output

**Solution of part b**

As the solution to the previous subproblem indicates, the birth rate within the
given model at the latest in 1975 was below the value where the population
remains constant in the long run. Therefore a decrease of the population is
also to be expected for the future.

**Solution of part c**

The point of the strongest decrease of the birth rate is given by the minimum
of the derivative of the birth rate. As :math:`g_{c}(x)` is only vertically
shifted by a constant with respect to :math:`f(x)`, the derivatives of the
two functions agree. The first two derivatives of :math:`f(x)` have been
evaluated in subproblem 1b). The minimum of the derivative of the birth rate
is found by determining the zeros of :math:`f''(x)`:

.. math::

  &f''(x) = 2x \cdot e^{-0.5x^2}\left(x^2 - 3\right)\overset{!}{=}0\\
  &\rightarrow x_1 = 0, x_{2/3} = \pm \sqrt{3}

This result can also be reproduced by means of Sage:

.. sagecellserver::

   solve(ddf(x) == 0, x)

.. end of output

As the model is only valid for :math:`x\geq 0`, the zero at 
:math:`x_3=-\sqrt{3}` has to be excluded. :math:`x_1=0` cannot correspond
to a global minimum, because according to subproblem 1c) the birth rate
increases at this point. Furthermore, we know that negative values for the
derivative exist. As a consequence :math:`x_2=\sqrt{3}` is the minimum
of the derivative which we are looking for. It corresponds to the year 1972.

For the decrease of the birth rate to become continuously weaker beyond this point in
time, the derivative :math:`g'(x)` for :math:`x>\sqrt{3}` must be negative.
According to the derivative of :math:`f(x)` determined in subproblem 1b),
this is indeed the case.
