Properties of graphs of functions
=================================

.. admonition:: Problem

  Given are the functions :math:`f, g` and :math:`h` defined on :math:`\mathbb{R}`
  by :math:`f(x)=x^2-x+1`, :math:`g(x)=x^3-x+1`, and :math:`h(x)=x^4+x^2+1`.

  a) The figure depicts the graph of one of the three functions. Indicate which
     functions is represented by the graph. Argue why the graph cannot represent
     the other two functions.

  .. image:: ../figs/funktionen.png
     :align: center

  b) The first derivative of the function :math:`h` is given by :math:`h'`.
     Evalute :math:`\int_0^1h'(x)\mathrm{d}x`.

**Solution of part a**

The graph displays two extrema. Therefore, it cannot represent the function
:math:`f(x)` because the derivative of a quadratic function possesses only
one zero. Furthermore, the function displayes in the figure takes on negative
values, excluding the function :math:`h(x)` aus. As a consequence the graph
represents the function :math:`g(x)`. We check our conjecture with the help
of Sage:

.. sagecellserver::

     ranges = {'xmin': -2, 'xmax': 2.5, 'ymin': -2.5, 'ymax': 2.5}
     p = sum([plot(x^2-x+1, color='blue', **ranges),
              plot(x^3-x+1, color='red', **ranges),
              plot(x^4+x^2+1, color='green', **ranges)])
     p.show(figsize=(2.7, 3))

.. end of output

The graph of the function :math:`g(x)` shown in red indeed fits the graph
in the original figure.

**Solution of part b**

The antiderivative of the derivative of a function is the function itself.
It follows

.. math::

   \int_0^1h'(x)\mathrm{d}x = h(1)-h(0) = 3-1 = 2.

In Sage, we start by differentiating the function :math:`h(x)` as a check
and continue by evaluating the required definite integral:

.. sagecellserver::

     h(x) = x^4+x^2+1
     dh(x) = diff(h, x)
     print 'Derivative of h(x):', dh
     print 'Value of the definite integral:', integrate(dh(x), x, 0, 1)

.. end of output

Of course, according to our reasoning above, we obtain the same result by
subtracting the function taken at the limits of integration:

.. sagecellserver::

     h(x) = x^4+x^2+1
     h(1)-h(0)

.. end of output
