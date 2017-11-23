The construction of functions given set of properties
=====================================================

.. admonition:: Problem
  
  Give the term and the domain of a function which fulfills the given
  property/properties.

  a) The point (2|0) is a point of inflection of the graph of :math:`g`.

  b) The graph of the function :math:`h` is strictly monotonically decreasing
     and concave.

**Solution of part a**

A function with the desired point of inflection can be obtained from
the following requirements:

.. math::

  f(2) &= 0\\
  f''(2) &= 0

Furthermore, we require that :math:`f'''(2)\neq0` and choose in particular
:math:`f'''(2)=1`. Taking these requirements into account, the integration
yields

.. math::

  f(x) = \frac{1}{6}(x-2)^3+c(x-2)\,.

A plot made by Sage can confirm the point of inflection:

.. sagecellserver::

   g(x, c) = (x-2)^3/6+c*(x-2)
   p1 = plot(g(x, 0), (0, 4), color='red', legend_label="$f'(2)=0$")
   p2 = plot(g(x, 1), (0, 4), color='green', legend_label="$f'(2)=1$")
   p3 = plot(g(x, -1), (0, 4), color='blue', legend_label="$f'(2)=-1$")
   show(p1+p2+p3, figsize=(4, 2.8))
     
.. end of output


**Solution of part b**

The simplest solution for a strictly monotonically increasing and convex
function is the exponential function. With a negative sign, it is turned
into a strictly monotonically decreasing, concave function as can
be confirmed by calculation:

.. math::

  h(x) &= -e^x		\\
  h'(x) &= -e^x < 0	\\
  h''(x) &= -e^x < 0

A drawing by Sage confirms this:

.. sagecellserver::

   h(x) = -exp(x)
   plot(h(x), (-2, 2), figsize=(4, 2.8))
     
.. end of output
