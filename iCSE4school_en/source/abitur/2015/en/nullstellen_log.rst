Nonlinear equation
==================

.. admonition:: Problem

  Determine the solutions of :math:`(4x-3)\cdot\ln\left(x^2-5x+7\right)=0` for
  :math:`x\in\mathbb{R}`.

**Solution**

The zeros of the function on the left-hand side are determined by the zeros
of the two factors.

Solving the requirement :math:`4x-3=0` for :math:`x` immediately yields the
first zero :math:`x_1 = 3/4`.

The second factor vanishes provided the argument of the logarithm equals one.
One thus needs to find solutions of :math:`x^2-5x+7=1`. The solutions of
the resulting quadratic equation :math:`x^2-5x+6=0` are obtained by means of

.. math::

   x_{2,3} = \frac{5\pm\sqrt{25-24}}{2}.

We thus obtain two more zeros :math:`x_2=2` and :math:`x_3=3`.

These results can easily be checked with Sage:

.. sagecellserver::

   solve((4*x-3)*ln(x^2-5*x+7) == 0, x)

.. end of output
