Zeros and antiderivative
========================

.. admonition:: Problem

  You are given the function :math:`f` defined on :math:`\mathbb{R}` with :math:`f(x)=e^x\cdot\left(2x+x^2\right)`.

  a) Determine the zeros of the function :math:`f`.

  b) Show that the function :math:`F` defined on :math:`\mathbb{R}` with :math:`F(x)=x^2\cdot e^x` is an
     antiderivative of :math:`f`. Find another antiderivative :math:`G` of :math:`f` for which
     :math:`G(1)=2e`.

**Solution of part a**

As the exponential function always yields positive values, the zeros of :math:`f`
are given by the zeros of :math:`2x+x^2=x(2+x)`. By means of this factorization, the
two zeros :math:`x_1=0` und :math:`x_2=-2` can easily be read off.

The result can also be reproduced with the help of Sage:

.. sagecellserver::

      f(x) = exp(x)*(2*x+x^2)
      solve(f(x)==0,x)

.. end of output

**Solution of part b**

In order to demonstrate that :math:`F` is an antiderivative of :math:`f`, we need to
prove that :math:`f` is the derivative of :math:`F`. By means of the product rule
we find

.. math::

   \frac{\mathrm{d}F}{\mathrm{d}x} = 2x\cdot\mathrm{e}^x+x^2\cdot\mathrm{e}^x
    =\mathrm{e}^x\cdot(2x+x^2) = f(x) .

This result can be verified by Sage as follows:

.. sagecellserver::

    F(x) = x^2*exp(x)
    (F(x).derivative()-f(x)).simplify_rational()

.. end of output

The second antiderivative :math:`G` can differ from the antiderivative :math:`F` only by
a constant. It therefore is of the form

.. math::

   G(x)=x^2\cdot \mathrm{e}^x+c.

.. sagecellserver::

      G(x, c) = F(x)+c
      (G(x, c).derivative(x)-f(x)).simplify_rational()

.. end of output
   
We use the requirement :math:`G(1)=2e` to determine the constant :math:`c`, yielding
:math:`c=\mathrm{e}`:

.. sagecellserver::

      solve(G(1, c)==2*e, c)

.. end of output
