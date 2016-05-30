Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Problem 1

  Given the function :math:`f:x\mapsto 2-\sqrt{12-2x}` with a maximal domain
  of definition, :math:`\mathbb{D}_f=]-\infty;6]`, we denote the graph of
  :math:`f` by :math:`G_f`.

  a) Calculate the coordinates of the intersection points of :math:`G_f` and
     the coordinate axes. Determine the behavior of :math:`f` in the limes
     :math:`x\rightarrow-\infty` and calculate :math:`f(6)`.

  b) Determine the derivation :math:`f'` of :math:`f` and indicate the
     maximal domain of definition for :math:`f'`. Determine 
     :math:`\lim\limits_{x\rightarrow6}f'(x)`. Which property
     arises from this result?

  c) Describe the monotone behavoiur of :math:`G_f` and denote the codomain
     of :math:`f`.

  d) Denote the value :math:`f(-2)` and draw :math:`G_f` into a coordinate
     system considering the previous results.

  e) The function :math:`f` can be inversed in :math:`\mathbb{D}_f`. Denote the
     domain of definition for the inverse function :math:`f^{-1}` of :math:`f`
     and prove that :math:`f^{-1}(x)=-\frac{1}{2}x^2+2x+4` is fulfilled.
      

**Solution of part 1a**

First, we will have a look at the function's curve using Sage:

.. sagecellserver::

  sage: f(x) = 2 - sqrt(12 - 2*x)
  sage: p1 = plot(f(x), x, (-7,6), figsize=(4, 2.8))
  sage: show(p1, gridlines=True)

.. end of output

The intersection point of :math:`f` and the :math:`y`-axis is located at
:math:`(0|f(0))` with

.. math::

  f(0)=2-2\sqrt{3}.

This can be checked using Sage:

.. sagecellserver::

  sage: print "Der y-Achsenabschnitt ist ", f(0), u"\u2248", f(0).n(digits=4)

.. end of output

The intersection points of :math:`f` and the :math:`x`-axis are given by the
zeros of the function :math:`f`:

.. math::

  &f(x) = 2-\sqrt{12-2x} \overset{!}{=} 0 \Leftrightarrow

Solving the equation for :math:`x` leads to

.. math::

  x=4,

which is confirmed by Sage:

.. sagecellserver::

   sage: solve(f(x) == 0, x)

.. end of output

Thus, we have exactly one intersection point of :math:`f` and the
:math:`x`-axis, which is located at :math:`(4|0)`.
The calculation of these intersection points is consistent with the curve of
:math:`f`.

Further, we want to calculate :math:`f(x)` in the limes :math:`x\rightarrow -\infty`:

.. math::

  \lim\limits_{x\rightarrow -\infty} 2-\sqrt{12-2x} &=
  \lim\limits_{x\rightarrow \infty} 2-\sqrt{12+2x}\\
  &= -\lim\limits_{x\rightarrow \infty} \sqrt{2x}\\
  &= -\infty.

This can be verified with Sage:

.. sagecellserver::

  sage: limitval = limit(f(x), x=-infinity)
  sage: html("$\lim_{x=-\infty} f(x) = %s$" % latex(limitval))

.. end of output

The value :math:`f(6)` can be calculated as

.. math::

  f(6) = 2-\sqrt{12-2\cdot6}=2,

.. sagecellserver::

  print "f(6) =", f(6),

.. end of output

which can also be obtained from the curve of :math:`f`.

**Solution of part 1b**

The derivation of :math:`f` can be calculated by use of the chain rule:

.. math::

  f'(x) = -\frac{1}{2} (12-2x)^{-\frac{1}{2}}\cdot(-2) = \frac{1}{\sqrt{12-2x}}.

The result of :math:`f'` can be checked and plotted using Sage:

.. sagecellserver::

  sage: df = derivative(f,  x)
  sage: print "The derivation of f is:", df
  sage: p2 = plot(df(x), x, (-7,6), figsize=(4, 2.8))
  sage: show(p2)

.. end of output

The domain of definition of :math:`f'` is, compared to the domain of
definition of :math:`f`, additionally restricted by the zero
:math:`x_0=6` of the denominator:

.. math::

  \mathbb{D}_{f'}=]-\infty;6[.

The limes :math:`\lim\limits_{x\rightarrow 6}f'(x)` can be calculated as

.. math::

  \lim\limits_{x\rightarrow 6}f'(x) = \lim\limits_{x\rightarrow 0}\frac{1}{\sqrt{x}}=\infty,

which is confirmed by the curve of :math:`f'(x)` or by a calculation in Sage:

.. sagecellserver::

  sage: limitval = limit(df(x), x=6)
  sage: html("$\lim_{x=6} f'(x) = %s$" % latex(limitval))

.. end of output

**Solution of part 1c**

In order to determine the monotone behavior of :math:`f`, we have to analyze
:math:`f'`. The curve of :math:`f'` shows us that :math:`f'` is positive in
every point, which means that :math:`f` is monotonously increasing
in its entire domain of definition.

A different argumentation is based on the function term of :math:`f'`:
The square root in the denominater is a steady and positive function in the
domain of defintion of :math:`f'`. Together with the constant 1 in the
numerator, we obtain a strictly positive function :math:`f'`.

According to part a, the codomain of :math:`f` starts at :math:`-\infty`. At
the right end :math:`x=6` of the domain of defintion, :math:`f` has the value
2. Due to the fact that :math:`f` is steady and monotonously increasing in its
domain of definition, we can denote the codomain of :math:`f` as

.. math::

  \mathbb{W}_f=]-\infty; 2]

**Solution of part 1d**

We obtain

.. math::

  f(-2) = -2.

.. sagecellserver::

  sage: print f(-2)

.. end of output

The graph of :math:`f` has already been drawn in part a.

**Solution of part 1e**

The inverse function :math:`f^{-1}` of a function :math:`f` has a switched
domain of definition and codomain, compared to the function :math:`f`:

.. math::

  \mathbb{D}_{f^{-1}} = \mathbb{W}_f\\
  \mathbb{W}_{f^{-1}} = \mathbb{D}_f.

In our case, we obtain the domain of definition

.. math::

  \mathbb{D}_{f^{-1}} = ]-\infty; 2]

The inverse function of :math:`f` can be calculated by solving the equation

.. math::

  f(y)=x

for :math:`y`. We obtain

.. math::

  &2-\sqrt{12-2y}=x\Leftrightarrow\\
  &12-2y=(x-2)^2\Leftrightarrow\\
  &y = f^{-1}(x) = -\frac{1}{2}x^2+2x+4,

which can be verified with Sage:

.. sagecellserver::

  sage: var('y')
  sage: assume(y<2)
  sage: solve(f(x) == y, x)

.. end of output

.. admonition:: Problem 2

  The graph of the function :math:`h:x\mapsto-\frac{1}{2}x^2+2x+4` with the
  domain of definition :math:`\mathbb{R}` is the parabola :math:`G_h`. The 
  graph of the inverse function from part 1e is a part of :math:`G_h`.

  a) Calculate the coordinates of the intersection points of the curve
     :math:`G_h` and the bisectrix of the I. and III. quadrant :math:`w` given
     by the term :math:`y=x`

  b) Draw the parabola :math:`G_h` -- considering its apex -- on the interval 
     :math:`-2\leq x\leq4` into your graph from part 1d. Reflecting this part of
     :math:`G_h` relative to the bisectrix :math:`w`, leads to a heart-shaped
     figure. Complete your graph accordingly.

**Solution of part 2a**

The intersection points of these two graphs can be calculated by equating their
function terms:

.. math::

  & -\frac{1}{2}x^2+2x+4 = x\\
  & -\frac{1}{2}x^2+x+4 = 0\\
  & x_{1/2}=\frac{-1\pm\sqrt{1^2-4\cdot\left(-\frac{1}{2}\right)\cdot4}}
                 {2\cdot\left(-\frac{1}{2}\right)}\\
  & x_1 = -2, \quad x_2=4

The :math:`y`-coordinates of the intersection points are equal to their
:math:`x`-coordinates, due to the bisectrix' function term :math:`y=x`:

.. math::

  y_1=-2, \quad y_2=4.

Using Sage, we can solve the problem analytically

.. sagecellserver::

  sage: h(x)=-1/2*x^2+2*x+4
  sage: w(x) = x
  sage: for loesung in solve(h(x) == w(x), x, solution_dict=True):
  sage:     print "(", loesung[x], "|", loesung[x], ")"

.. end of output

as well as graphically:

.. sagecellserver::

  sage: p3 = plot(h(x), x, (-3, 6), fill=w, fillcolor = 'red')
  sage: p4 = plot(w(x), x, (-3, 6), color='green')
  sage: show(p3+p4, aspect_ratio=1, figsize=4) 

.. end of output

**Solution of part 2b**

The upper half of the heart-shaped figure can already be recognized in part 2a.
The full form can be obtained by reflection. A reflection of a function
relative to the bisectrix :math:`y=x` can be implemented by reversing this
function. The reverse function of :math:`h` is :math:`f`, as we
already know from part 1e. However, this reversion only holds for the domain
of definition :math:`]-\infty;2]` (compare part 1e). For :math:`x>2` we can use

.. math::

  f_2 = 2+\sqrt{12-2x}

as a reverse function of :math:`h`. The only difference between :math:`f` and
:math:`f_2` is the sign in front of the square root. In order to obtain the
heart-shaped figure by reflection, we will proceed as follows:

  - We draw :math:`G_h` between the two intersection points :math:`x_1=-2` and
    :math:`x_2=4`.

  - Further, we draw the reverse function :math:`f` of :math:`h`, starting at
    the intersection point (-2|-2) and ending at the maximum of its domain of
    definition :math:`x_{\mathrm{max}}=6`, which represents the relection of
    :math:`h` relative to :math:`w`, starting at the intersection point (-2|-2)
    and ending at the apex (2|6).

  - Finally, we draw the reverse function :math:`f_2` of :math:`h`, starting at
    the intersection point (4|4) and ending at the maximum of its domain of
    definition :math:`x_{\mathrm{max}}=6`, which represents the reflection of
    :math:`h` relative to :math:`w`, starting at the apex (2|6) and ending at
    the intersection point (4|4).

.. sagecellserver::

  sage: f2(x) =  2 + sqrt(12-2*x)
  sage: p5 = plot(h(x), x, (-2, 4))
  sage: p6 = plot(f(x), x, (-2, 6))
  sage: p7 = plot(f2(x), x, (4, 6))
  sage: show(p5+p6+p7, aspect_ratio=1, figsize=4)

.. end of output

.. admonition:: Problem 3

  The heart-shaped figure from problem 2 describes the area of the leaf
  in the figure below. One length unit in the coordinate system can be
  interpreted as 1 cm.

  .. image:: ../figs/blatt.png
     :align: center

  a) Calculate the content of the area, which is limited by
     :math:`G_h` and the bisectrix :math:`w`. Use the result to determine
     the area of the leaf, based on our model.

  b) Determine the term of the tangent to :math:`G_h` at the point 
     :math:`\left(-2\left|h(-2)\right.\right)`. Calculate the angle between the
     two leaf edges at the leaf apex.

  c) The current model does not describe the shape of the upper leaf edge near
     the leaf apex well enough. Therefore, we will use the graph :math:`G_k`
     of a third order polynomial :math:`k` in order to describe the upper leaf
     edge in the interval :math:`-2\leq x \leq 0`. The function :math:`k` has
     to fulfill the following conditions (:math:`k'` and :math:`h'` are the
     derivatives of :math:`k` and :math:`h`):

     .. math::

       & \mathrm{I} & \qquad &k(0)=h(0)\\
       & \mathrm{II} & &k'(0)=h'(0)\\
       & \mathrm{III} & &k(-2)=h(-2)\\
       & \mathrm{IV} & &k'(-2)=h'(-2)\\

     Explain, why the conditions I, II and III are reasonable. Depict, how 
     the condition IV leads to a better description of the leaf edge near the
     leaf apex, compared to the first model.

**Solution of part 3a**

First, we want to calculate the red area from part 2a. This can be done by
subtracting the integrals of the functions :math:`h(x)` and :math:`w(x)`
in the interval :math:`]-2;4[`:

.. math::

  \int\limits_{-2}^4 \left( h(x)-w(x) \right)\, \mathrm{d}x &= 
  \int\limits_{-2}^4 \left( -\frac{1}{2}x^2+2x+4 -x \right)\mathrm{d}x\\
  &= \int\limits_{-2}^4 \left( -\frac{1}{2}x^2+x+4 \right)\mathrm{d}x\\
  &= \left[-\frac{1}{6}x^3+\frac{1}{2}x^2+4x\right]_{-2}^4\\
  &=18

This result can be verified with Sage:

.. sagecellserver::

  sage: print "The content of the red area is:", integrate(h(x)-w(x), x, -2, 4)

.. end of output

Due to the fact that we achieved the heart-shaped figure by a reflaction 
relative to the bisectrix :math:`w`, we can assume that the content of the
heart-shaped figure doubles the content of the red area. Considering the length
scale, we obtain:

.. math::

  A_{\mathrm{Leaf}}=36\mathrm{cm}^2


**Solution of part 3b**

In order to calculate the term of the tangent at the point
:math:`\left(-2\left|h(-2)\right)\right.=(-2|-2)`, we first have to calculate
the slope of the function :math:`h` at the point -2. Using

.. math::

  h'(x) = -x+2

we obtain

.. math::

  m = h'(-2) = 4.

By inserting the point :math:`x=-2, y=-2`, the equation of the tangent
:math:`y=m\cdot x+t` transforms into

.. math::

   y = 4x+6.

Using Sage, we can obtain this equation directly from the conditions that the
tangent has to include the specified point and that the slope of the tangent
has to be the same as the slope of the function :math:`h(x)` at this point.

.. sagecellserver::

  sage: m, t = var('m t')
  sage: y(x) = m*x+t
  sage: dh = derivative(h, x)
  sage: dy = derivative(y, x)
  sage: solution = solve([y(-2)==h(-2),
  ...                    dy(-2)==dh(-2)], m, t, solution_dict=True)[0]
  sage: y(x) = y.subs(solution)
  sage: print 'Equation of the tangent: y = %sx+%s' % (solution[m], solution[t])

.. end of output

Further, we want to use Sage to draw the tangent into our figure.

.. sagecellserver::

  sage: p8 = plot(h(x), x, (-3, 0))
  sage: p9 = plot(y(x), x, (-3, 0), color='green')
  sage: show(p8+p9, figsize=(4, 2.8))

.. end of output

The figure already suggests that the angle, based on our model, is way bigger
than the angle on the picture of the leaf. We can calculate the angle between
the apex and the tangent, based on their solpes :math:`m_w` and :math:`m_t`
using the formula

.. math::

  \alpha = \arctan\left(\frac{m_w-m_t}{1+m_w m_t}\right)
  =\arctan\left(\frac{4-1}{1+4}\right) \approx 30,9°

The angle between the two edges doubles the obtained value and can be rounded
up to :math:`62°`.

**Solution of part 3c**

The conditions I and III are necessary for a steady insertion of :math:`G_k`.
Condition II makes sure that the transition from :math:`h` to :math:`k` is
smooth. Condition IV leads to a smaller angle between the leaf edges at the
point (-2|-2) and therefore to a sharper leaf apex.

The task did not request the exact solution of :math:`k`, but Sage will work
this out for us:

.. sagecellserver::

  sage: a, b, c, d = var('a b c d')
  sage: k(x) = a*x^3+b*x^2+c*x+d
  sage: dk = derivative(k, x)
  sage: equations = [k(0)==h(0),
  ...                  dk(0)==dh(0),
  ...                  k(-2)==h(-2),
  ...                  dk(-2)==1.5]
  sage: solutions = solve(equations, a, b, c, d, solution_dict=True)[0]
  sage: k = k.subs(solutions)
  sage: print k

.. end of output

We can use the obtained parameters to plot our new model of the leaf. The
red curve is the new function :math:`k`.

.. sagecellserver::

  sage: p10 = plot(h(x), x, (0, 4))
  sage: p11 = plot(k(x), x, (-2, 0), color='red')
  sage: p12 = plot(f(x), x, (-2, 6))
  sage: p13 = plot(f2(x), x, (4, 6))
  sage: p14 = plot(h(x), x, (-2, 0), linestyle=':')
  sage: show(p10+p11+p12+p13+p14, aspect_ratio=1, figsize=4)

.. end of output

Obviously, the new model fits the shape of the leaf better than the old model.
