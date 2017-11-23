Determine parameter when the derivative vanishes
================================================

.. admonition:: Problem

  We are given the set of functions :math:`f_a : x\mapsto x\mathrm{e}^{ax}`
  defined on :math:`\mathbb{R}` with :math:`a\in\mathbb{R}\backslash\{0\}`.
  Determine the value of :math:`a` for which the derivative of :math:`f_a` at 
  :math:`x=2` vanishes.

**Solution**

The derivative of the given function is obtained as

.. math::

   \frac{\mathrm{d}f_a}{\mathrm{d}x} = (1+ax)\mathrm{e}^{ax}

so that

.. math::

   \left.\frac{\mathrm{d}f_a}{\mathrm{d}x}\right\vert_{x=2} =
    (1+2a)\mathrm{e}^{2a}.

As a consquence, the derivate vanishes provided :math:`1+2a=0`, i.e. for
:math:`a=-1/2`.

This calculation can be checked by means of Sage:

.. sagecellserver::

     f(x, a) = x*exp(a*x)
     df = f.derivative(x)
     print 'Derivative of f:', df
     solve(df(2, a) == 0, a)

.. end of output
