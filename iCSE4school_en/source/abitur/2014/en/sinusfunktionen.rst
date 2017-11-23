Properties of  sin(ax) +c
=========================

.. admonition:: Problem

   Given are the functions :math:`g_{a,c}: x\mapsto \sin(ax)+c`
   defined on :math:`\mathbb{R}` with :math:`a,c\in \mathbb{R}^+_0`.

    a) For each of the following two properties find a possible value for
       :math:`a` and a possible value for :math:`c` such that the corresponding
       function :math:`g_{a,c}` has this property.
      1) The function :math:`g_{a,c}` has the codomain :math:`[0;2]`.
      2) The function :math:`g_{a,c}` contains exactly three zeros in the
         interval :math:`[0;\pi]`.
    
    b) Determine as a function of :math:`a` the possible values of the
       derivative of :math:`g_{a,c}`.

       
**Solution of part a**

The parameter :math:`a` determines the period of the sine but does not influence
the function's codomain. The parameter :math:`c`, on the other hand, shifts the
function's codomain by a constant value.

1. The codomain of the sine function :math:`\sin(ax)` is given by
   :math:`[-1;1]`. A constant shift by :math:`c=1` changes the codomain as
   specified in the requirement. For the parameter :math:`a` an arbitrary
   nonzero value can be chosen, e.g. :math:`a=1`. We check our statement with
   the help of Sage:

.. sagecellserver::

    g(x, a, c) = sin(a*x)+c
    plot(g(x, 1, 1), (-2*pi, 2*pi), figsize=(4, 2.5))
     
.. end of output

2. The number of the function's zeros in the interval :math:`[0;\pi]` can be
   adjusted by means of the parameter :math:`a`. It is necessary, however, that
   the codomain of the function includes zero. Choosing :math:`c=0`, half a
   period of the sine function with :math:`a=1` fits into the given interval,
   thus leading to only two zeros. In contrast, choosing :math:`a=2`, a full
   period of the sine function with exactly three zeros lies within the
   interval. Again, we check our result with Sage:

.. sagecellserver::

      plot(g(x, 2, 0), (0, pi), figsize=(4, 2.5))
     
.. end of output

**Solution of part b**

First, we need to determine the derivative of the function :math:`g_{a, c}(x)`.
By means of the chain rule, we obtain

.. math::

   \frac{\mathrm{d}g_{a,c}(x)}{\mathrm{d}x} = a\cos(ax).
   
We remark that the derivative is independent of the parameter :math:`c`. The
cosine function possesses the codomain :math:`[-1;1]` but, in addition, is
compressed or stretched because of the amplitude :math:`a`. The codomain of
the derivate thus results in :math:`[-a;a]`.

In order to obtain a general expression for the derivative, in Sage we formally 
introduce the parameters :math:`a` and :math:`c` as additional variables of the 
function. Then, we plot the derivative :math:`g_{a,c}'(x)` for a few values 
of the parameter :math:`a`. The different amplitudes and periods can easily
be read off.

.. sagecellserver::

     dg(x, a, c) = g.derivative(x)
     print 'dg/dx =', dg(x, a, c)
     p1 = plot(dg(x, 0.5, 0), (-2*pi,2*pi), color='blue')
     p2 = plot(dg(x, 1, 0), (-2*pi,2*pi), color='red')
     p3 = plot(dg(x, 2, 0), (-2*pi,2*pi), color='green')
     (p1 + p2 + p3).show(figsize=(4, 2.5))

.. end of output

