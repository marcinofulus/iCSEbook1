Intersection point
==================

.. admonition:: Problem

  We are given the functions :math:`g:x \mapsto e^{-x}` and :math:`h:x \mapsto
  x^3` defined in :math:`\mathbb{R}`.

  a) Illustrate by means of a sketch, that the graphs of :math:`g` and
     :math:`h` possess precisely one intersection.

  b) Determine an approximate value :math:`x_1` for the :math:`x`-coordinate
     of this intersection by carrying out the first step of the Newton method for
     the function :math:`d:x \mapsto g(x)-h(x)` defined in :math:`\mathbb{R}`
     using as initial value :math:`x_0=1`.


**Solution of part a**

The graphs may easily be drawn by means of Sage:

.. sagecellserver::

     g(x) = exp(-x)
     h(x) = x**3
     pg = plot(g, color='blue')
     ph = plot(h, color='red')
     show(pg + ph, ymax=1.5, aspect_ratio=1, figsize=4)

.. end of output

**Solution of part b**

For an appropriately chosen initial value, the Newton method computes an
approximate value for the zero nearby. In order to determine the zero
of the function :math:`f(x)`, one needs to evaluate in each step

.. math::

  x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}\,.

For the first step one finds together with :math:`f(x)=d(x)=g(x)-h(x)` and
:math:`x_0=1`:

.. math::

  x_1 = 1 - \frac{g(1) - h(1)}{g'(1) - h'(1)} 
  = 1 - \frac{e^{-1} - 1}{-e^{-1}-3}\approx 0{,}812

By means of Sage, several steps of the Newton method can be executed.  As can be
seen, already after five steps does the Newton method yield a result agreeing up
to 12 digits with the zero determined numerically by Sage.

.. sagecellserver::

     f(x) = g(x) - h(x)
     df(x) = derivative(f, x)
     zero_approx = 1 
     newton(x) = x - f(x) / df(x)
     for i in range(5):
         zero_approx = newton(zero_approx)
         pretty_print(html("$x_%i = %s$" % (i+1, str(float(zero_approx)))))
     pretty_print(html("Zero obtained numerically by Sage: $x_\mathrm{S} = %s$"
                       % str(find_root(f(x), -1, 1))))

.. end of output
