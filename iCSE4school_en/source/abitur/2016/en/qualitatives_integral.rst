Graphical integration
=====================

.. admonition:: Problem

  Figure 1 depicts the graph of a function :math:`f` defined over :math:`\mathbb{R}`.

  .. figure:: ../figs/qualitatives_integral.png
     :align: center

     Abb. 1

  a) Determine an approximate value of :math:`\int\limits_3^5 f(x)\mathrm{d}x`
     with the help of figure 1.

  The function :math:`F` is the antiderivative of :math:`f` defined over
  :math:`\mathbb{R}` with :math:`F(3)=0`.

  b) Give an approximate value of the derivative of :math:`F` at :math:`x=2`
     with the help of figure 1. 

  c) Show that :math:`F(b) = \int\limits_3^b f(x)\mathrm{d}x`
     with :math:`b\in\mathbb{R}` holds.

**Solution of part a**

The integral corresponds to the area under the curve between the :math:`x`-values
3 and 5. Thanks to the drawn grid, we can estimate the area to be about 9 squares.
One square has the height and width of 0.5, respectively. The area of a square thus
corresponds to 0.25, and the value of the integral is hence about 2.25.

Because the function of the graph is not explictly given, it is not easy to verify
this result with Sage. However, we can try to approximately reproduce the graph
with an interpolation. To this end, we choose a polynomial of degree 4 of the form

.. math::

  ax^4+bx^3+cx^2+dx+e\,.

To fix the parameters :math:`a` to :math:`e`, we have to choose five points
characterizing the graph. For this purpose, we choose the points
:math:`(0|3)`, :math:`(1|1)`, :math:`(2|0.5)`, :math:`(4|1.2)` and :math:`(6|2)`.

With the help of Sage, we can solve the corresponding linear system:

.. sagecellserver::

   var('a, b, c, d, e')
   f(x) = a*x**4 + b*x**3 + c*x**2 + d*x + e
   equations = [f(0) == 3, f(1) == 1, f(2) == 0.5, f(4) == 1.2, f(6) == 2]
   solution = solve(equations, a, b, c, d, e, solution_dict=True)[0]
   f(x) = f(x).substitute(solution)
   print f(x)
     
.. end of output

In the interval :math:`[0, 6]`, the graph of the function agrees with the given
graph quite well:

.. sagecellserver::

   p1 = plot(f(x), (0, 6), ymin=0, figsize=(4, 2.8))
   p1
     
.. end of output

The value of the integral can be approximately reproduced as well:

.. sagecellserver::

   print "Value of the integral:", float(integrate(f(x), x, 3, 5))
     
.. end of output

**Solution of part b**

The derivative of the function :math:`F` is the original function :math:`f`.
Hence, we just have to read off the value of :math:`f` at :math:`x=2` which
we have already done in part a):

.. math::

  F'(2) = f(2) = 0.5

The corresponding tangent line is depicted as a green line in the following part.

**Solution of part c**

Since :math:`F` is an antiderivative of :math:`f`, we have

.. math::

  \int\limits_3^bf(x)\mathrm{d}x = F(b)-F(3)\,.

The statement to be proven follows from the supposition :math:`F(3)=0`.

We add :math:`F(x)` to the plot of :math:`f`:

.. sagecellserver::

   F(x) = integral(f(x), x)
   F_3(x) = F(x) - F(3)
   p2 = plot(F_3(x), (0, 6), ymin=-2, color = 'red')
   p3 = plot(F_3(2)+0.5*(x-2), (0, 6), color='green')
   show(p1+p2+p3, figsize=(4, 2.8))
     
.. end of output
