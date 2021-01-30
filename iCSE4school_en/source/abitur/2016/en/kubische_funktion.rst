Qubic function
==============

.. admonition:: Problem
  
  A polynomial function of degree three defined over :math:`\mathbb{R}`
  is given. Its graph :math:`G_f` has a maximum at :math:`x=1` and
  a minimum at :math:`x=4`.

  a) Establish that the graph of the derivative :math:`f'` of
     :math:`f` is a parabola which intersects the :math:`x`-axis at the
     points (1|0) and (4|0) and opens to the top.

  b) Establish that 2.5 is the :math:`x`-coordinate of the point of inflection of
     :math:`G_f`.

**Solution of part a**

In general, the derivative of a cubic function is a parabola, and extrema of the cubic
function correspond to roots of the parabola.
Since there is a maximum at :math:`x=1`, the second derivative of the function
has to be negative at that point, while at the minimum at :math:`x=4`
the second derivative has to be positive. Thus, the graph of :math:`f'` is a
parabola opening to the top.

To illustrate a concrete example for the function :math:`f`, we choose
the derivative

.. math::

  f'(x) = (x-1)(x-4)

which evidently has the correct roots. We now plot the function :math:`f`,
as well as its first and second derivate, with Sage and can thereby check the
properties of the function :math:`f` just discussed.

.. sagecellserver::

   df(x) = (x-1)*(x-4)
   ddf(x) = derivative(df, x)
   f(x) = integral(df, x)
   p1 = plot(f(x), (-3, 6), color='red', legend_label="$f(x)$")
   p2 = plot(df(x), (-3, 6), color='green', legend_label="$f'(x)$")
   p3 = plot(ddf(x), (-3, 6), color='blue', legend_label="$f''(x)$")
   show(p1+p2+p3, figsize=(4, 2.8), ymin=-10, ymax=10)
     
.. end of output

**Solution of part b**

The point of inflection :math:`x_0` of a graph of the function :math:`f` has to
fulfill the condition:

.. math::

  f''(x_0)=0\,.

The derivative of :math:`f` hence has to have an extremum.
For a parabola, this can only be the case at the vertex. For reasons of
symmetry, this point is always in the center between two points with the
same function value. The point of inflection of :math:`f` hence has to be
centered between the two roots:

.. math::

  x_0 = \frac{1 + 4}{2} = 2.5\,.

The point of inflection of :math:`f` can be already determined from the
plot of part a). However, we can also calculate it with the help of Sage:

.. sagecellserver::

   print("Point of inflection at:", solve(ddf(x) == 0, x)[0])
     
.. end of output
