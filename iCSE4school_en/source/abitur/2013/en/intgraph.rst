Function and its aniderivative
==============================

.. admonition:: Problem

  Figure 1 displays the graph :math:`G_f` of a function :math:`f`
  defined in :math:`\mathbb{R}`. Sketch in figure 1 the graph of
  the integral function :math:`F:x\mapsto \int\limits_1^x f(t)\mathrm{d}t`
  defined in :math:`\mathbb{R}`. Consider with appropriate precision
  in particular the zeros and extrema of :math:`F` as well as :math:`F(0)`.
    
  .. image:: ../figs/intgraph.png
     :align: center


**Solution**

If a function possesses a zero with a change of sign, the corresponding
antiderivative possesses a local extremum at this point. It is a maximum
if the slope of the function is negative. If, on the other hand, the slope
is positive, the antiderivative has a minimum at that point.

Considering the function given in the problem text, one finds zeros of
:math:`f(x)` at :math:`x_1=0` and :math:`x_2\approx 2.25`.
In the first case, the slope is negative so that :math:`F(0)` represents
a local maximum of the antiderivative. At the other point :math:`x_2` the
slope of :math:`f` is positive so that :math:`F(x_2)` is a local minimum.

Another property of :math:`F(x)` follows from the lower limit of integration
at :math:`t=1`. As a consequence, :math:`F(1)=0`.
Finally, from counting squares, :math:`F(0)=-\int\limits_0^1 f(t)\mathrm{d}t`
can be estimated to equal :math:`\frac{1}{2}`.

By means of Sage, we can carry out the integration provided the function
:math:`f` is known. We choose

.. math::

  f(x)=\frac{49}{5}\frac{x(4x-9)}{(2x-9)^2},

which possesses the properties used in the above reasoning. In addition,
its qualitative form resembles that given in figure 1.


.. sagecellserver::

   var('t')
   f(x) = 49/5*x*(4*x-9)/(2*x-9)^2
   assume(1 < x, 2*x-9 < 0)
   F(x) = integrate(f(t), t, 1, x)
   ranges = {'xmin': -3, 'xmax': 4, 'ymin': -2, 'ymax': 7}
   show(plot(f, color='blue', **ranges)+plot(F, color='red', **ranges),
             figsize=(3.5, 4.5))

.. end of output
