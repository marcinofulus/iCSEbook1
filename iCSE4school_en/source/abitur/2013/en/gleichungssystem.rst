Nonlinear equation
==================

.. admonition:: Problem

  State for :math:`x\in\mathbb{R}^+` the solutions of the following
  equation:

  .. math::

     (\ln x-1) \cdot \left( \mathrm{e}^x -2 \right) \cdot
     \left( \dfrac{1}{x} -3 \right)=0

**Solution**

The zeros of the function are obtained by determining the zeros of
the three factors.

The requirement :math:`\ln x - 1=0` implies :math:`\ln x = 1`. Applying
the exponential function to both sides, one finds
:math:`\mathrm{e}^{\ln x} = \mathrm{e}^1 = \mathrm{e}`. The logarithm
being the inverse of the exponential function, :math:`\mathrm{e}^{\ln x}=x` holds.
Therefore, we find as a first zero :math:`x_1 = \mathrm{e}`.

From the second factor, we find :math:`\mathrm{e}^x = 2` to which we apply the
logarithm on both sides. In analogy to the previous reasoning, we have
:math:`\ln \mathrm{e}^x = x`. The second zero thus follows as :math:`x_2=\ln 2`.

By simply solving for :math:`x`, the last factor yields the zero
:math:`x_3 = \frac{1}{3}`.

This result can easily be verified by means of Sage

.. sagecellserver::

    solve((ln(x)-1) * (exp(x)-2) * (1/x-3) == 0, x)

.. end of output

