Graphing the antiderivative
===========================

.. admonition:: Problem

  The figure depicts the graph of a function :math:`f`.

  .. image:: ../figs/qualitative_integrale.png
     :align: center
  
  a) Describe the shape of the graph of an antiderivative of :math:`f` for
     :math:`a\leq x\leq b`.

  b) Sketch in the figure the graph of an antiderivative of :math:`f` in the
     full range represented.

**Solution of part a**

We first sketch the antiderivative of the form

.. math::

  F(x)=\int\limits_a^x f(x')\mathrm{d}x'.

For :math:`x=a`, the antiderivative thus vanishes. For :math:`x>a`, the
antiderivative starts to grow initially more strongly, then more weakly until
the zero :math:`x=x_0` of :math:`f` is reached. Then, the antiderivative 
decreases, first slowly and then more strongly until :math:`x=b` is reached.

In order to treat this problem with the help of Sage, we first need to find a
function which resembles the one displayed in the figure. This is more or less
the case for the so called Lennard-Jones potential, a function which in physics
describes the binding energy between certain atoms. A possible form of the 
function is

.. math::

  f(x)=\frac{a}{x^{12}}-\frac{b}{x^6},

where :math:`a` and :math:`b` are constants. In order to obtain a form close
to the one given in this problem, we shift and compress the function
accordingly. For the use with Sage, we employ the function

.. math::

  f(x)=\frac{1}{(x/3+1.5)^{12}}-\frac{1}{(x/3+1.5)^6}-\frac{1}{5}. 

.. sagecellserver::

      f(x) = 1/(x/3+1.5)^12-1/(x/3+1.5)^6-0.2
      plot(f(x), x, (-2, 2), ymax=1, figsize=(4, 2.8))

.. end of output

To obtain the shape of the antiderivative in the range surrounding the zero of
the function, we determine the definite integral of the function from :math:`a`
to :math:`x` where :math:`x` runs from :math:`a = -1.8` to :math:`b = -1.4`.

.. sagecellserver::

      a = -1.8
      b = -1.4
      F(x) = integral(f(x), x)
      sf(x) = F(x) - F(a)
      plot(sf(x), (a, b), figsize=(4, 2.8))

.. end of output

**Solution of part b**

In this part of the problem we consider an antiderivative which vanishes at the
point where the representation of the function in the figure begins, i.e., we
consider the function

.. math::

  F(x)=\int\limits_c^x f(x')\mathrm{d}x', 

with :math:`c` being the left-most point where the function is depicted. Like in
the first part of the problem, our antiderivative is growing initially rather
strongly. The growth then slows down and, at the zero of :math:`f`, changes its
sign. Then, the antiderivative decreases strictly monotonic and beyond a
certain point remains negative. The strongest decrease of the
antiderivative is found at the minimum of the function :math:`f`. Afterwards,
the antiderivative decreases more slowly and approaches a straight line with a
negative slope when reaching the end of the range represented.

We proceed with Sage like in the previous part of the problem, simply adjusting
the antiderivative and the range where it is represented.

.. sagecellserver::
    
      c = -2
      d = 2
      sf(x) = F(x) - F(c)
      plot(sf(x), (c, d), figsize=(4, 2.8))

.. end of output

