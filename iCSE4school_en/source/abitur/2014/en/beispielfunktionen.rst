The construction of periodic functions
======================================

.. admonition:: Problem

  For each requirement, find a corresponding term of a periodic function
  defined in :math:`\mathbb{R}`.
  

    a) The graph of the function :math:`g` is obtained from the graph of the
       function :math:`x\mapsto \sin(x)` defined in :math:`\mathbb{R}` by
       reflection at the :math:`y`-axis.
    b) The function :math:`h` has the codomain :math:`[1;3]`.
    c) The function :math:`k` possesses the period :math:`\pi`.

**Solution of part a**

If a function :math:`g` is to be obtained by reflection of the function
:math:`f` at the :math:`y`-axis, we have :math:`g(x)=f(-x)`. In our case, we
obtain :math:`g(x)=\sin(-x)`. In view of the point symmetry of the sine function
with respect to the origin the function :math:`g` is of the form
:math:`g(x)=-\sin(x)`.

We can easily check this result with the help of Sage by plotting in one graph
the sine function (blue) and its reflection (red).

.. sagecellserver::

      f(x) = sin(x)
      g(x) = -sin(x)
      p1 = plot(f(x), x, (-2*pi,2*pi), color='blue')     
      p2 = plot(g(x), x, (-2*pi,2*pi), color='red')
      (p1+p2).show(figsize=(4, 2.5))

.. end of output

**Solution of part b**

In this part, we again make use of the sine function. The codomain of the sine
function with amplitude :math:`1` is given by :math:`[-1;1]`. In order to obtain
the required codomain, we can shift the sine function together with its codomain
by a constant of :math:`2` towards the top and thus obtain
:math:`h(x)=\sin(x)+2`.

We check the codomain of the function by means of Sage:

.. sagecellserver::

      h(x) = sin(x) + 2
      plot(h(x), x, (-2*pi,2*pi), figsize=(4, 2.5))

.. end of output

**Solution of part c**

The period of the sine function can be adjusted by means of a parameter
:math:`a` in front of the function's argument. Our function will thus be of the 
form :math:`k(x)=\sin(ax)`. The period for :math:`a=1` is :math:`2\pi`. The
requested period is only half as long so that the parameter :math:`a` needs to
be doubled. We thus obtain :math:`k(x)=\sin(2x)`.

The period of the function can be checked by means of Sage. In the plot, one
period is represented in red.

.. sagecellserver::

      k(x) = sin(2*x)
      p1 = plot(k(x), x, (-2*pi, 2*pi), color='blue')
      p2 = plot(k(x), x, (0, pi), color='red')
      (p1+p2).show(figsize=(4, 2.5))

.. end of output
