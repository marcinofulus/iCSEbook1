Bavarian final secondary-school examinations in mathematics 2016
----------------------------------------------------------------

.. admonition:: Problem
  
  Give the term and the domain of a function which fulfills the given
  property/properties, respectively.

  a) The point (2|0) is an point of inflecion of the graph of :math:`g`

  b) The graph of the function :math:`h` is strictly monotonic decreasing
     and concave downward.

**Solution of part a**

A function with the desired point of inflection can be obtained from
the following requirements:

.. math::

  f(2) &= 0\\
  f''(2) &= 0

Furthermore, we require that :math:`f'''(2)\neq0` and in particular
:math:`f'''(2)=1`.
The integration under considerations of these requirements yields

.. math::

  f(x) = \frac{1}{6}(x-2)^3+c(x-2)\,.

A plot made by Sage can confirm the point of inflection:

.. sagecellserver::

  sage: g(x, c) = (x-2)^3/6+c*(x-2)
  sage: p1 = plot(g(x, 0), (0, 4), color='red', legend_label="$f'(2)=0$")
  sage: p2 = plot(g(x, 1), (0, 4), color='green', legend_label="$f'(2)=1$")
  sage: p3 = plot(g(x, -1), (0, 4), color='blue', legend_label="$f'(2)=-1$")
  sage: show(p1+p2+p3, figsize=(4, 2.8))
     
.. end of output


**Solution of part b**

The easiest solution for a strictly monotonic increasing and concave upward
function is the exponential function. With a negative sign, this can turned
into a strictly monotonic decreasing, concave downward function which can
be confirmed by calculation:

.. math::

  h(x) &= -e^x		\\
  h'(x) &= -e^x < 0	\\
  h''(x) &= -e^x < 0

A drawing by Sage confirms this too:

.. sagecellserver::

  sage: h(x) = -exp(x)
  sage: plot(h(x), (-2, 2), figsize=(4, 2.8))
     
.. end of output
