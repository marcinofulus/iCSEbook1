Properties of the function
==========================

.. admonition:: Problem

  The function :math:`f:x\mapsto\frac{\ln x}{x^2}` with maximal domain 
  :math:`\mathbb{D}` is given.

  a) Give :math:`\mathbb{D}` as well as the roots of :math:`f`, and
     determine :math:`\lim\limits_{x\rightarrow0}f(x)`.

  b) Determine the :math:`x`-coordinate of the point in which the graph
     of :math:`f` has a horizonal tangent line.

**Solution of part a**

The logarithm is defined for arguments :math:`x>0` only. The denominator
:math:`x^2` contributes a gap in the domain at :math:`x=0`. The maximal domain
is hence given by

.. math::

  \mathbb{D}=]0;\infty[\,.

We obtain the roots from the roots of the numerator:

.. math::

  \ln(x) = 0\Rightarrow x=1\,.

We plot the function with Sage.

.. sagecellserver::

   f(x) = ln(x)/x**2
   plot(f(x), (0, 4), ymin=-2, figsize=(4, 2.8))
     
.. end of output

We can also verify the root with Sage.

.. sagecellserver::

   solve(f(x)==0, x)
     
.. end of output

As the graph produced by Sage suggests, the function goes to :math:`-\infty` as
:math:`x\rightarrow0`. This can also be established by the fact that on the
one hand the enumerator goes to :math:`-\infty` and on the other hand
the denominator of the function goes to :math:`0^+`.

**Solution of part b**

A horizontal tangent line corresponds to an extremum of the function.
To identify such a point, we have to determine the derivative first and,
subsequently, set it equal to 0:

.. math::

  f'(x) = \frac{1-2\ln(x)}{x^3} \overset{!}{=} 0 \Rightarrow
  \ln x= \frac{1}{2}\\

This yields a horizontal tangent line at

.. math::

  x = e^{\frac{1}{2}} = \sqrt{e}

which we add to the sketch of the function:

.. sagecellserver::

   df = derivative(f, x)
   x0 = solve(df(x) == 0, x)[0].right()
   print "Horizontal tangent line at", x0, "=", float(x0)
   p1 = plot(f(x), (0, 4), x, ymin=0,  exclude=[0])
   p2 = plot(f(x0), (0, 4), x, color='red')
   show(p1+p2, figsize=(4, 2.8))
     
.. end of output

