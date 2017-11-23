Function and its codomain
=========================

.. admonition:: Problem

  Name a term of a function defined in :math:`\mathbb{R}` with
  the codomain
  
  a) :math:`W=[2;+\infty[`
  b) :math:`W=[-2;2]`

**Solution of part a**

A possible solution is given by

.. math::

   f(x)=x^2 + 2.

**Solution of part b**

An example for a function limited from above and below is the
sine function. However, its codomain is given by :math:`W=[-1;1]`.
In order to obtain the required codomain, we multiply with 2.
Thus we arrive at a possible solution

.. math::

   g(x)=2\sin(x).

Both solutions can be graphically represented by Sage and we
can check the codomains.

.. sagecellserver::

     f(x) = x**2+2
     g(x) = 2*sin(x)
     pf = plot(f, (-3, 3), color='blue')
     pg = plot(g, (-4, 4), color='red')
     show(pf+pg, figsize=(4, 2.8))

.. end of output

