Properties of the logarithm
===========================

.. admonition:: Problem

  State for the function :math:`f` with :math:`f(x)=\ln(2013-x)` the
  maximal domain :math:`\mathbb{D}`, the behavior of :math:`f`
  at the borders of :math:`\mathbb{D}` as well as the intersections of
  the graph of :math:`f` with the coordinate axes.

**Solution**

The domain of the natural logarithm :math:`\ln(x)` is :math:`(0,\infty)`.
As a consequence, the domain of :math:`\ln(-x)` is :math:`(-\infty,0)`.
Adding a number to the argument of the logarithm, the same needs to be
done for the domain. Thus, the domain of :math:`f(x)=\ln(2013-x)` is given
by :math:`\mathbb{D}=(-\infty, 2013)`.

By means of Sage, we obtain an idea of the function graph.

.. sagecellserver::

   f(x) = log(2013-x)
   plot(f(x), x, (-2014, 2014), figsize=(4, 2.8))

.. end of output

At the borders of :math:`\mathbb{D}` one finds the following behavior:

.. math::

  \lim\limits_{x\rightarrow -\infty}\ln(2013-x)
  = \lim\limits_{x\rightarrow -\infty}\ln(-x)
  = \lim\limits_{\tilde{x}\rightarrow +\infty}\ln(\tilde{x})
  = +\infty

This result can be confirmed by means of Sage by inserting :math:`-\infty` for :math:`x`.

.. sagecellserver::

   print("f(-inf) = " + str(f(-infinity)))

.. end of output

For :math:`x` going to :math:`2013`, the argument of the logarithm goes to
:math:`0`. In this case, the logarithm goes to :math:`-\infty`.

.. math::

  \lim\limits_{x\rightarrow 2013^{-}}\ln(2013-x)
  = \lim\limits_{\tilde{x}\rightarrow 0^{+}}\ln(\tilde{x})
  = -\infty

.. sagecellserver::

   print("f(2013) = " + str(f(2013)))

.. end of output

The intersection with the :math:`y`-axis is obtained by setting
:math:`x=0`:

.. math::

  f(0)=\ln(2013-0) = \ln(2013) \approx 7.61

This result is in agreement with the function graph shown above.

.. sagecellserver::

   print("f(0) = " + str(f(0)) + " = " + str(f(0).n(12)))

.. end of output

The logarithm intersects the :math:`x`-axis if its argument equals
:math:`1`:

.. math::

  2013-x \overset{!}{=}1 \rightarrow x = 2012

This result can be confirmed with Sage:

.. sagecellserver::

   solve(f(x) == 0, x)

.. end of output
