Extremum of the function
========================

.. admonition:: Problem

  Given the function :math:`f: x\mapsto \frac{x}{\ln(x)}` in the domain
  :math:`\mathbb{R}^+\backslash\{1\}`, determine position and nature
  of the extrema of the graph of :math:`f`.

**Solution**

We first employ Sage to obtain an overview of the given function.

.. sagecellserver::

    p = plot(x/ln(x), xmin=0, xmax=10, ymin=-2, ymax=5, color='blue', detect_poles='show')
    p.show(figsize=(4, 2.8))

.. end of output

The extrema of the function are found by setting the derivative equal to zero.
The derivative is obtained as

.. math::

   f'(x)=\frac{\ln(x)-1}{\ln(x)^2}

which can easily be verified by means of Sage:

.. sagecellserver::

    f(x) = x/ln(x)
    df(x) = f.derivative(x).log_simplify()
    print(df(x))

.. end of output

Setting the derivative equal to zero yields the only extremum at
:math:`x_0=e` with :math:`f(x_0)=e`.

.. sagecellserver::

    x0 = solve(df(x)==0, x)[0].lhs()
    print('extremum at (', x0, '|', f(x0), ')')

.. end of output

In order to determine the nature of the extremum, we calculate the second
derivative of the function :math:`f(x)`

.. math::

   f''(x) = \frac{-\ln(x)+2}{x\ln(x)^3}

and evaluate it at the extremum

.. math::

   f''(x_0) = \frac{1}{\mathrm{e}} > 0

This result can again be verified by means of Sage:

.. sagecellserver::

    ddf(x) = df.derivative(x).log_simplify()
    print(ddf(x))
    print(ddf(x0))

.. end of output

We conclude that the extremum is a minimum in agreement with the graph of the
function obtained above.
