Integrals of semicircle
=======================

.. admonition:: Problem

  Figure 1 displays the graph :math:`G_f` of the function :math:`f` with the
  domain :math:`[-2;2]`. The graph consists of two half-circles with centers at
  :math:`(-1\vert 0)` and :math:`(1\vert 0)`, respectively, and a radius of
  :math:`1`. Consider the antiderivative :math:`F: x \mapsto \int\limits_0^x
  f(t)\mathrm{d}t` defined in :math:`[-2;2]`.

  a) State the values of :math:`F(0)`, :math:`F(2)`, and :math:`F(-2)`.
  b) Add a sketch of the graph of :math:`F` to figure 1.

  .. image:: ../figs/inthalbkreis.png
     :align: center


**Solution of part a**

In view of the limits of integration of :math:`F` one finds for
:math:`F(0)`:

.. math::

  F(0) = \int_0^0 f(t)\mathrm{d}t = 0 .

For :math:`F(2)` one integrates over the area of a half-circle with
radius :math:`1`. With the area of a circle of radius :math:`r` given
by :math:`\pi r^2`, one obtains

.. math::

  F(2) = \frac{\pi}{2} .

As a consequence of the symmetry of the function :math:`f(x)`, its
antiderivative is antisymmetric:

.. math::

  F(-x) = \int_0^{-x} f(t)\mathrm{d}t
        = -\int_{-x}^0 f(t)\mathrm{d}t
        = -\int_0^x f(-t)\mathrm{d}t
        = -\int_0^x f(t)\mathrm{d}t
        = -F(x)

Correspondingly, :math:`F(-2) = -\frac{\pi}{2}`.

These results may be checked by means of Sage:

.. sagecellserver::

     f1(t) = sqrt(1 - (t - 1)^2)
     f2(t) = sqrt(1 - (t + 1)^2)
     f = Piecewise([[(-2, 0), f2], [(0, 2), f1]], t)
     print("F(0) = " + str(integrate(f, t, 0, 0)))
     print("F(2) = " + str(integrate(f, t, 0, 2)))
     print("F(-2) = " + str(integrate(f, t, 0, -2)))

.. end of output

**Solution of part b**

The function being defined piecewise, it is best to carry out
the symbolic integration in Sage piecewise as well. Then we 
are able to display the function :math:`f` and its antiderivative.

.. sagecellserver::

     x = var('x')
     assume(x > 0)
     F1(x) = integrate(f1, t, 0, x)
     forget()
     assume(x < 0)
     F2(x) = integrate(f2, t, 0, x)
     F = Piecewise([[(-2, 0), F2], [(0, 2), F1]], x)
     pf = plot(f)
     pF = plot(F, color='red')
     show(pf + pF, aspect_ratio=1, figsize=4)

.. end of output
