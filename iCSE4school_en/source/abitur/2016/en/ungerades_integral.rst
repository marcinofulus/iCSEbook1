Intergral of a symmetric function
=================================

.. admonition:: Problem

  Demonstrate that the graph of the function :math:`g:x\mapsto x^2\cdot \sin x`
  defined over :math:`\mathbb{R}` is point symmetric with respect to the
  coordinate origin, and obtain the value of the integral
  
  .. math::

    \int\limits_{-\pi}^\pi x^2\cdot\sin x\, \mathrm{d}x\,.

**Solution**

First we show that :math:`f(x) = -f(-x)` holds:

.. math::

  f(-x) = (-x)^2\cdot\sin(-x)=x^2\cdot(-\sin(x)) = -f(x)

This can also be checked with Sage

.. sagecellserver::

   f(x) = x^2*sin(x)
   if f(-x) == -f(x):
       print("The function is odd.")
   else:
       print("The function is not odd.")
   
.. end of output

and is confirmed by the shape of the graph of the function:

.. sagecellserver::

   plot(f(x), (-pi, pi), figsize=(4, 2.8))

.. end of output

If the boundaries of an integral over an odd function are
symmetric with respect to zero, as is the case here, the integral vanishes.

Sage can confirm that:

.. sagecellserver::

   print("Value of the integral:", integral(f, x, -pi, pi))

.. end of output
