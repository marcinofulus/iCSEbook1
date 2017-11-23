Domain and values of the lograrithm
===================================

.. admonition:: Problem

  The function :math:`f:x\mapsto\sqrt{1-\ln x}` with maximal domain :math:`\mathbb{D}`
  is given.

  a) Determine :math:`\mathbb{D}`.

  b) Determine the value :math:`x\in \mathbb{D}` for which :math:`f(x)=2`.

**Solution of part a**

The logarithm is only defined for arguments :math:`x>0`, and the square root
only for arguments :math:`x\geq0`. For values :math:`x>e`, the logarithm of
:math:`x` yields values bigger than 1 and thus the argument of the square root
would be smaller than 0. On the other hand, in the range :math:`0<x\leq e`, the
logarithm yields values smaller or equal to 1 such that the argument of the square
root becomes bigger or equal to zero.  The maximal domain is hence given by

.. math::

  \mathbb{D}=]0;e]\,.

We plot the function with Sage.

.. sagecellserver::

   f(x) = sqrt(1-ln(x))
   plot(f(x), (0, e), figsize=(4, 2.8))
     
.. end of output

**Solution of part b**

To obtain the corresponding value for :math:`x`, we solve the equation for :math:`x`:

.. math::

  \sqrt{1-\ln x} = 2\Rightarrow
  \ln(x) = -3 \Rightarrow
  x = e^{-3}

The result is confirmed by Sage:

.. sagecellserver::

   solve(f(x)==2, x)
     
.. end of output
