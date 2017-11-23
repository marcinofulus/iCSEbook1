Construction of the function given its properties
=================================================

.. admonition:: Problem

  For each of the following sets of requirements name a function satisfying them.

  a) The function :math:`g` has a maximum domain given by :math:`]-\infty; 5]`.

  b) The function :math:`k` has a zero at :math:`x=2` as well as pole at
     :math:`x=-3` without changing its sign. The graph of :math:`k` has an
     asymptote the straight line given by :math:`y=1` als Asymptote.

**Solution of part a**

A function with domain :math:`[0; \infty[` is given by
:math:`x\mapsto\sqrt{x}`. Therefore, :math:`g(x)=\sqrt{5-x}` is one of the
functions with the given domain.

**Solution of part b**

The function :math:`k(x)` can be chosen as rational function. Beacuase of
the zero at :math:`x=2` the numerator must contain at least a factor
:math:`x-2`. The pole at :math:`x=-3` without change of sign is obtained
by means of a factor :math:`(x+3)^2` in the denominator. In order to obtain
the desired asymptotic behavior for :math:`\vert x\vert\to\infty`, the factor
in the numerator must be squares. We thus arrive at

.. math::

   k(x)=\frac{(x-2)^2}{(x+3)^2}.

We demonstrate with the help of Sage that this function indeed has the
required properties.

Zero at :math:`x=2`:

.. sagecellserver::

     k(x) = ((x-2)/(x+3))^2
     plot(k, xmin=0, xmax=4, ymin=-0.1, ymax=0.5, figsize=(4, 2.5))

.. end of output

Pole at :math:`x=-3` without change of sign:

.. sagecellserver::

     k(x) = ((x-2)/(x+3))^2
     plot(k, xmin=-6, xmax=0, ymin=0, ymax=1000, figsize=(4, 2.5))

.. end of output

Asymptotic approach to the straight line :math:`y=1` for
:math:`\vert x\vert\to 1`:

.. sagecellserver::

     k(x) = ((x-2)/(x+3))^2
     xmax = 1000
     xmin = -xmax
     p = plot(k, xmin=xmin, xmax=xmax, ymin=0.5, ymax=1.5)
     p = p+line([(xmin, 1), (xmax, 1)], linestyle='dashed')
     p.show(figsize=(4, 2.5))

.. end of output
