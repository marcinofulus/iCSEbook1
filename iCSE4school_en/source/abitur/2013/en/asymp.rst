Asymptotes
==========

.. admonition:: Introduction

  We are given the function :math:`f:x\mapsto \frac{1}{2}x -\frac{1}{2}
  + \frac{8}{x+1}` with domain :math:`\mathbb{R} \backslash \{-1\}`.
  Figure 2 displays the graph :math:`G_f` of :math:`f`.

  .. image:: ../figs/asymp.png
     :align: center

Problem 1
^^^^^^^^^

.. admonition:: Problem 1

  a) State the equations of the asymptotes of :math:`G_f` and demonstrate
     by means of a calculation that :math:`G_f` does not intersect its
     inclined asymptote. Add a sketch of the asymptotes to figure 2.
  b) Calculate the position and nature of the extrema of :math:`G_f`.

**Solution of part a**

At :math:`x=-1` the function :math:`f(x)` possesses a pole. Accordingly, the
first asymptote is described by the equation :math:`x=-1`. The second asymptote
ist obtained by considering :math:`f(x)` for very large absolute values of
:math:`x`. In this case, the term :math:`\frac{8}{x+1}` goes to zero.
Therefore, the function approaches the straight line :math:`g(x) = \frac{1}{2}x
-\frac{1}{2}`.

The following code asks Sage to identify the poles of the function which are
then displayed by grey dashed lines. In this way, the vertical asymptote
:math:`x=-1` is accounted for.  In addition, the asymptote for large values
of :math:`\vert x\vert` must be depicted.

.. sagecellserver::

   ranges = {'xmin': -10, 'xmax': 10, 'ymin': -10, 'ymax': 10}
   f(x) = x/2- 1/2 + 8/(x+1)
   pf = plot(f, detect_poles="show", **ranges)
   asymptote = x/2 - 1/2
   pasymp = plot(asymptote, color='green', **ranges) 
   show(pf + pasymp, aspect_ratio=1, figsize=4)

.. end of output

An intersection of the function with its asymptote can only exist provided
that

.. math::

  f(x) - g(x) = \frac{8}{x+1} = 0

possesses a solution. However, this is obviously not the case. Accordingly,
Sage does not find an intersection.

.. sagecellserver::

   solve(asymptote == f, x)

.. end of output

**Solution of part b**

In order to determine the positions of the extrema, the derivative of
:math:`f` must be set equal to zero. The nature of the extrema can
be deduced from the sign of the second derivatives at these points.

We find by taking the derivative:

.. math::

  \frac{\mathrm{d}f}{\mathrm{d}x} &= \frac{1}{2}-\frac{8}{(x+1)^2}\\
  \frac{\mathrm{d}^2f}{\mathrm{d}x^2} &= \frac{16}{(x+1)^3}

The first derivative vanishes at :math:`x+1 = \pm 4`, i.e., at :math:`x_1=-5`
and :math:`x_2=3`. In the first case, the second derivative is negative and we
have a maximum. In contrast, in the second case the second derivative is
positive and we have a minimum.

These results may be confirmed by Sage.

.. sagecellserver::

   df = derivative(f)
   ddf = derivative(df)
   print "f'(x)  = ", df
   print "f''(x) = ", ddf
   for extremum in solve(df == 0, x):
       x = extremum.right()
       print "Second derivative for the extremum at x=%s: %s" % (x, ddf(x))

.. end of output


Problem 2
^^^^^^^^^
.. admonition:: Problem 2

  Figure 2 suggests that :math:`G_f` is symmetric with respect to the
  intersection :math:`P(-1\vert -1)` of its asymptotes. In order to prove
  this symmetry of :math:`G_f`, one may consider the function :math:`g`
  the graph of which is obtained from :math:`G_f` by a shift in the positive
  :math:`x` direction by :math:`1` and in the positive :math:`y` direction by
  :math:`1`.
  
  a) Determine the function term of :math:`g`. Then demonstrate the point
     symmetry of :math:`G_f` by proving that the graph of :math:`g` is
     point-symmetric with respect to the origin.

     *(Partial result:* :math:`g(x)=\frac{1}{2}x+\frac{8}{x}`\ *)*

  b) Demonstrate that :math:`\int\limits_0^4 f(x)\mathrm{d}x=2+8\cdot\ln 5`.
     Then determine without any further integration the value of the integral
     :math:`\int\limits_{-6}^{-2} f(x) \mathrm{d}x`; illustrate your procedure
     by appropriate additions to figure 2.

**Solution of part a**

A positive shift in :math:`x` direction by :math:`1` is obtained by replacing
:math:`x` by :math:`x-1`. Adding :math:`1` leads to the required shift in
the :math:`y` direction. The function :math:`g` is then obtained in agreement
with the partial result stated in the problem text:

.. sagecellserver::

   g(x) = f(x-1) + 1
   print(g)

.. end of output

The point symmetry of :math:`g` with respect to the origin is a consequence of
the presence of only linear or inversely linear terms. It can be demonstrated by
means of Sage as follows:

.. sagecellserver::

   print "g(x) = ", g(x)
   print "-g(-x) = ", -g(-x)
   if g(x) == -g(-x):
       print "g(x) is point-symmetric."
   else:
       print "g(x) is not point-symmetric."

.. end of output

**Solution of part b**

The antiderivative of the function :math:`f` is

.. math::

  F(x) = \frac{x^2}{4}-\frac{x}{2}+8\ln(\vert x+1\vert).

Inserting the limits of integration, one finds the stated result

.. math::

  \int_0^4f(x)\mathrm{d}x = F(4)-F(0) = 2+8\ln(5)\,.

By means of Sage, one obtains accordingly:

.. sagecellserver::

   F = f.integrate(x)
   print "antiderivative F = ", F
   pretty_print(html("$\int_0^4 f(x)\mathrm{d}x = $" + str(F(4)-F(0))))

.. end of output

As a consequence of the point symmetry :math:`g(-x)=-g(x)` and the relation
:math:`g(x)=f(x-1)+1` it follows that

.. math::

  f(x) = -f(-x-2)-2\,.

The second integral to be evaluated can then be determined as follows:

.. math::

  \int_{-6}^{-2}f(x)\mathrm{d}x &= -\int_{-6}^{-2}[f(-x-2)+2]\mathrm{d}x\\
                                &= -\int_2^6[f(x-2)+2]\mathrm{d}x\\
                                &= -\int_0^4[f(x)+2]\mathrm{d}x\\
                                &= -\int_0^4f(x)\mathrm{d}x-8\\
                                &= -8\ln(5)-10\,.

Here, we first took the mirror image of the interval of integration and then
shifted it.

The resulting value can be confirmed by Sage:

.. sagecellserver::

   f.integrate(x, -6, -2)

.. end of output

The procedure can be displayed graphically by Sage. The area of size
:math:`2\cdot4=8` displayed in red represents the correction to the 
integral following from the point symmetry with respect to
:math:`y=-1`.

.. sagecellserver::

   pf = plot(f, exclude=[-1], xmin=-10, xmax=10, ymin=-10, ymax=10)
   pf1 = plot(f, -6, -2, fill=-2)
   pf2 = plot(f, 0, 4, fill='axis')
   rect = polygon([[-6, 0], [-2, 0], [-2, -2], [-6, -2]], color='red')
   show(pf + pf1 + pf2 + rect, aspect_ratio=1, figsize=4)

.. end of output

Problem 3
^^^^^^^^^
.. admonition:: Problem 3

  .. image:: ../figs/zylinder.png
     :align: right

  A vertically standing beverage can is of the form of a straight cylinder.
  The position of the joint center of mass :math:`S` of the can and the liquid
  contained in it depends on the filling height of the liquid above the bottom
  of the can. For a completely filled can, the filling height amounts to 15 cm.
  
  The function :math:`f` considered so far, yields for :math:`0\leq x \leq 15`
  the height of :math:`S` in centimetres with respect to the bottom of the can.
  Here, :math:`x` is the filling height in centimetres (cf. figure 3).
  
  a) Determine :math:`f(0)` und :math:`f(15)`. Interprete the two results within
     the context.
  b) The initially empty can is slowly filled with a liquid until the maximal
     filling height of 15 cm is reached. Use figure 2 to describe the motion of the center of
     mass :math:`S` during the filling process. Within the context, explain the
     meaning of the fact that the coordinates :math:`x` and :math:`y` of the
     minimum of :math:`G_f` agree.
  c) For which filling heights :math:`x` is the center of mass :math:`S`
     situated at a height of at most 5 cm? First answer this question
     approximately with the help of figure 2 and then by means of a calculation.

**Solution of part a**

Inserting the given arguments into the function :math:`f`, we find

.. math::

  f(0)=f(15)=\frac{15}{2}\,.

For a completely empty can (:math:`x=0`) the center of mass :math:`S` agrees
with the center of mass of the can. For a homogeneous distribution of weight,
:math:`S` is thus situated in the midpoint of the can at a height of
:math:`7.5\,\mathrm{cm}`. If the can is completely filled, the center of mass of
the liquid corresponds to the center of mass of the empty can. Therefore, the
joint center of mass agrees with the center of mass of the empty can.

**Solution of part b**

Filling the empty can with the liquid, the center of mass is first lowered.
At a filling height of :math:`3\,\mathrm{cm}` the surface reaches the center
of mass. Beyond this filling height, the center of mass rises again.

**Solution of part c**

From figure 2 we can estimate the region in which the center of mass is below
5 cm to :math:`0.5 < x < 9.5`. The exact limits for :math:`x` are obtained by
solving the equation

.. math::
  f(x)= \frac{1}{2}x - \frac{1}{2} + \frac{8}{x+1} = 5

for :math:`x`.

By means of Sage, we can calculate the exact values:

.. sagecellserver::

   result = solve(f(x) == 5, x)
   print "Solution of the equation " + str(f) + " = 5 :" + repr(result)
   print "This corresponds approximately to: x = %5.3f and x = %5.3f." % (result[0].right().n(), result[1].right().n())

.. end of output

The same result

.. math::

  x_{1,2} = 5\pm2\sqrt{5}

is obtained by solving the quadratic equation obtained from the above equation

.. math::

  x^2-10x+5=0\,.
