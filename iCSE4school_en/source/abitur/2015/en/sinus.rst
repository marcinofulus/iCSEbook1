Properties of sin(2x)
=====================

.. admonition:: Problem

  We are given the function :math:`f: x\mapsto \sin(2x)` defined on
  :math:`\mathbb{R}`. What are the amplitude, period, and its range.

**Solution**

The sine function has amplitude 1, period :math:`2\pi` and the range
:math:`[-1, 1]`. The given function :math:`f` has the same amplitude and
range. Due the factor of 2 in the argument, its period is only :math:`\pi`.

We can check these statements by means of Sage:

.. sagecellserver::

      plot(sin(2*x), (0, 2*pi), figsize=(4, 2.5))

.. end of output
