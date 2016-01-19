Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Problem

  Consider all rectangles in a coordinate system (cf. figure 1) which fulfill
  the following conditions:
  
  1. Two sides lie on the coordinate axes.

  2. One vertex lies on the graph :math:`G_f` of the function
     :math:`f : x\mapsto -\ln x` with :math:`0<x<1`.

  Figure 1 depicts such a rectangle.

  Among the considered rectangles there exist one with the largest area.
  Calculate the side lengths of this rectangle.

  .. image:: ../figs/rechteck.png
     :align: center


**Solution**

The area of the considered rectangles is obtained as product of height and
width. The width is given by the :math:`x`-value of the vertex lying on the
function's graph. The height corresponds to its :math:`y`-value, i.e.
:math:`f(x)`. The area of a rectangle with a given value for :math:`x` is
therefore obtained as

.. math::

  A(x)=xf(x)=-x\ln(x). 

In order to determine the the rectangle with the biggest area, we need
to find the extremum of :math:`A(x)` which is obtained from

.. math::

  A'(x_0)=-\ln(x_0)-1 = 0. 

Because of :math:`A''(x)=-1/x <0` this extremum is always a maximum. It lies
at :math:`x_0=1/\mathrm{e}` with :math:`f(x_0)=1`. The corresponding rectangle 
therefore has a width of :math:`1/\mathrm{e}`, a height of :math:`1` and
circumscribes an area :math:`1/\mathrm{e}`.

We can determine the rectangle with maximum area also with the help of Sage
by asking for a zero of the derivative of the area.

.. sagecellserver::

     sage: f(x) = -ln(x)
     sage: a(x) = x*f(x)
     sage: da(x) = a.derivative(x).log_simplify()
     sage: x0 = solve(da(x)==0, x)[0].rhs()
     sage: print 'width :', x0
     sage: print 'height:', f(x0)
     sage: print 'area  :', a(x0)

.. end of output

The following two figures show the rectangle under the graph :math:`G_f` on 
the left and the corresponding area as a green point in the right figure as
a function of the variable width :math:`x_0`.

.. sagecellserver::

     sage: @interact
     sage: def _(x0=slider(0.1, 1.)):
     sage:     f(x) = -ln(x)
     sage:     a(x) = -x*ln(x)
     sage:     p1 = plot(f(x), x, (0.1, 1), color='blue')
     sage:     p1 = p1+polygon([(0, 0), (0, f(x0)), (x0, f(x0)), (x0, 0)], color = 'green')
     sage:     p2 = plot(a(x), x, (0, 1), color='blue')
     sage:     p2 = p2+point((x0, a(x0)), size=40, color='green')
     sage:     G = graphics_array([p1, p2], nrows=1)
     sage:     G.show(figsize=[7, 3])

..  end of output
