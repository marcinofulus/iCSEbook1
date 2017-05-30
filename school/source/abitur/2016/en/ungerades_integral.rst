Bavarian final secondary-school examinations in mathematics 2016
----------------------------------------------------------------

.. admonition:: Problem

  Show that the graph of the function :math:`g:x\mapsto x^2\cdot \sin x`
  defined over :math:`\mathbb{R}` is point symmetric with respect to the
  coordinate origin, and give the value of the integral
  
  .. math::

    \int\limits_{-\pi}^\pi x^2\cdot\sin x\, \mathrm{d}x\,.

**Solution**

First we show that :math:`f(x) = -f(-x)` holds:

.. math::

  f(-x) = (-x)^2\cdot\sin(-x)=x^2\cdot(-\sin(x)) = -f(x)

This can also be checked with Sage

.. sagecellserver::

  sage: f(x) = x^2*sin(x)
  sage: if f(-x) == -f(x):
  ...       print "The function is odd."
  sage: else:
  ...       print "The function is not odd."
   
.. end of output

and is confirmed by the shape of the graph of the function:

.. sagecellserver::

  sage: plot(f(x), (-pi, pi), figsize=(4, 2.8))

.. end of output

If the boundaries of an integral over an odd function, as it is the case here, are
symmetric with respect to zero, the integral vanishes.

Sage can confirm that:

.. sagecellserver::

  sage: print "Value of the integral:", integral(f, x, -pi, pi)

.. end of output
