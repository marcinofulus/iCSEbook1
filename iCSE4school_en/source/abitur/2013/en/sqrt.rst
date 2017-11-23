Maximal domain and tangent of the square root function
======================================================

.. admonition:: Problem

  We are given the function :math:`g:x\rightarrow\sqrt{3x+9}` with maximal
  domain :math:`D`.

  a) Determine :math:`D` and state the zero of :math:`g`.
  b) Determine the equation of the tangent at the graph of :math:`g` at point :math:`P(0|3)`.

**Solution of part a**

By solving the condition :math:`\sqrt{3x+9}=0` for :math:`x`, one obtains
the zero at :math:`x=-3`.

This result can easily be checked by means of Sage:

.. sagecellserver::

     g(x) = sqrt(3*x+9)
     solve(g == 0, x)

.. end of output

The domain is obtained by the requirement that the argument of the square root
be larger or equal zero. This is the case if :math:`3x+9\geq0` or :math:`x\geq-3`.
Thus the domain is obtained as :math:`D=[-3,\infty[`. The result is 
illustrated by the graph of the function :math:`g(x)`.

.. sagecellserver::

     plot(g, (-3, 3), figsize=(4, 2.8))

.. end of output

**Solution of part b**

In order to determine the equation of the tangent at the point
:math:`P(0|3)`, we need to evaluate the derivative of :math:`g` at this point.
We find

.. math::

  \frac{\text{d}g}{\text{d}x} = g'(x) = \frac{3}{2\sqrt{3x+9}}.
  
As a consequence, :math:`g'(0)=\frac{1}{2}`.

.. sagecellserver::

     dg = g.derivative()
     print "Derivative of g(x) : ", dg
     print "Derivative at x = 0: ", dg(0)

.. end of output

Because of :math:`g(0)=3`, the tangent :math:`h` at point :math:`P`
is given by

.. math::

   h(x) = \frac{1}{2} x +3\,.

This result can be graphically verified by means of Sage.
The function :math:`g(x)` is represented in blue while
the tangent :math:`h(x)` is displayed in red.

.. sagecellserver::

     pg = plot(g, (-3, 5), color='blue')
     h(x) = dg(0)*x+g(0)
     ph = plot(h, (-3,5), color='red')
     show(pg+ph, figsize=(4, 2.8))

.. end of output

