Properties of the  x sin(x) function
====================================

.. admonition:: Problem

  The graph of the function :math:`f:x\mapsto x\cdot\sin x` defined in
  :math:`\mathbb{R}` passes through the origin. Determine :math:`f''(0)`
  and describe how the graph of :math:`f` is bent close to the origin.

**Solution**

The first derivative of :math:`f(x)` is given by:

.. math::

  \frac{\mathrm{d}}{\mathrm{d}x}\left(x \cdot \sin x\right) = \sin x + x \cdot \cos x

Taking another derivative, one finds:

.. math::

  f''(x) &= \frac{\mathrm{d}^2}{\mathrm{d}x^2} x \cdot \sin x\\ 
  & = \frac{\mathrm{d}}{\mathrm{d}x} \left( \sin x + x \cdot \cos x \right)\\
  &= \cos x + \cos x + x \cdot (-\sin x)\\
  & = 2 \cdot \cos x - x \cdot \sin x

For :math:`x=0` one obtains
:math:`f''(0) = 2 \cdot \cos 0 - 0 \cdot \sin 0 = 2`.

This result can be verified by means of Sage:

.. sagecellserver::

   f(x) = x*sin(x)
   df(x) = derivative(f, x)
   ddf(x) = derivative(df, x)
   print("ddf(x) = " + str(ddf(x)))
   print("ddf(0) = " + str(ddf(0)))

.. end of output

A positive second derivative indicates that the function bends to the left
as is the case for :math:`f` at :math:`x=0`.

This behavior can also be seen by plotting the function graph.

.. sagecellserver::

   pf = plot(f(x), (-6, 6))
   show(pf, aspect_ratio=1)

.. end of output
