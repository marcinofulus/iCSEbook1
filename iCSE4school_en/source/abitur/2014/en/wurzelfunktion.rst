Properties of the square root function
======================================

.. admonition:: Problem 1

  Given the function :math:`f:x\mapsto 2-\sqrt{12-2x}` with a maximal domain
  :math:`\mathbb{D}_f=]-\infty;6]`, we denote the graph of
  :math:`f` by :math:`G_f`.

  a) Calculate the coordinates of the intersection points of :math:`G_f` and
     the coordinate axes. Determine the behavior of :math:`f` in the limit
     :math:`x\rightarrow-\infty` and calculate :math:`f(6)`.

  b) Determine the derivative :math:`f'` of :math:`f` and indicate the
     maximal domain for :math:`f'`. Determine :math:`\lim\limits_{x\rightarrow6}f'(x)`.
     Which property arises from this result?

  c) Describe the monotonic behavior of :math:`G_f` and state the codomain
     of :math:`f`.

  d) Determine :math:`f(-2)` and draw :math:`G_f` in a coordinate
     system taking into account the previous results. (Space needed in view
     of the following tasks: :math:`-3\leq y\leq 7`).

  e) The function :math:`f` can be inverted in :math:`\mathbb{D}_f`. Give the
     domain for the inverse function :math:`f^{-1}` of :math:`f` and prove that
     :math:`f^{-1}(x)=-\frac{1}{2}x^2+2x+4`.
      

**Solution of part 1a**

First, we make use of Sage to obtain an overview of the given function.

.. sagecellserver::

   f(x) = 2 - sqrt(12 - 2*x)
   p1 = plot(f(x), x, (-7,6), figsize=(4, 2.8))
   show(p1, gridlines=True)

.. end of output

The intersection of :math:`f` and the :math:`y`-axis is located at
:math:`(0|f(0))` with

.. math::

  f(0)=2-2\sqrt{3}.

This can be checked using Sage:

.. sagecellserver::

   print "intersection with the y-axis ", f(0), u"\u2248", f(0).n(digits=4)

.. end of output

The intersection of :math:`f` and the :math:`x`-axis is given by the
zero of the function :math:`f`:

.. math::

  f(x) = 2-\sqrt{12-2x} \overset{!}{=} 0

Solving the equation for :math:`x` leads to

.. math::

  x=4,

which is confirmed by Sage:

.. sagecellserver::

    solve(f(x) == 0, x)

.. end of output

Thus, we obtain exactly one intersection of :math:`f` and the
:math:`x`-axis located at :math:`(4|0)`.

The two intersections with the coordinate axes are consistent with the graph of
:math:`f` obtained earlier by means of Sage.

For the behavior of :math:`f(x)` in the limit :math:`x\rightarrow -\infty`,
we find

.. math::

  \lim\limits_{x\rightarrow -\infty} 2-\sqrt{12-2x} &=
  \lim\limits_{x\rightarrow \infty} 2-\sqrt{12+2x}\\
  &= -\lim\limits_{x\rightarrow \infty} \sqrt{2x}\\
  &= -\infty.

This can be verified with Sage:

.. sagecellserver::

   limitval = limit(f(x), x=-infinity)
   html("$\lim_{x=-\infty} f(x) = %s$" % latex(limitval))

.. end of output

The value :math:`f(6)` can be determined as

.. math::

  f(6) = 2-\sqrt{12-2\cdot6}=2.

.. sagecellserver::

  print "f(6) =", f(6),

.. end of output

This result can also be obtained from the graph of the function.


**Solution of part 1b**

The derivative of :math:`f` can be calculated by using the chain rule:

.. math::

  f'(x) = -\frac{1}{2} (12-2x)^{-\frac{1}{2}}\cdot(-2) = \frac{1}{\sqrt{12-2x}}.

The same result is obtained by means of Sage:

.. sagecellserver::

   df = derivative(f,  x)
   print "The derivation of f is:", df
   p2 = plot(df(x), x, (-7,6), figsize=(4, 2.8))
   show(p2)

.. end of output

Compared to the domain of :math:`f`, the domain of the derivative
is obtained by taking out the zero of the denominator at :math:`x_0=6`,
i.e. :math:`\mathbb{D}_{f'}=]-\infty;6[`.

The limit :math:`\lim\limits_{x\rightarrow 6}f'(x)` can be calculated as

.. math::

  \lim\limits_{x\rightarrow 6}f'(x) = \lim\limits_{x\rightarrow 0}\frac{1}{\sqrt{x}}=\infty,

This result can read off the graph of :math:`f'(x)` or determined by
means of Sage:

.. sagecellserver::

   limitval = limit(df(x), x=6)
   html("$\lim_{x=6} f'(x) = %s$" % latex(limitval))

.. end of output

**Solution of part 1c**

In order to determine the monotonic behavior of :math:`f`, we have to analyze
its derivative :math:`f'`. From the graph of :math:`f'` we conclude that
:math:`f'` is positive in every point, which means that :math:`f` is
monotonically increasing in its entire domain.

A different argumentation is based on the function term of :math:`f'`:
The square root in the denominater is a continuous and positive function in the
domain of :math:`f'`. Together with the constant 1 in the
numerator, we obtain a strictly positive derivative :math:`f'`.

According to part a, the codomain of :math:`f` starts at :math:`-\infty`. At
the right end :math:`x=6` of the domain, :math:`f` takes on the value
2. Due to the fact that :math:`f` is continuous and monotonically increasing in its
domain, the codomain of :math:`f` is found as

.. math::

  \mathbb{W}_f=]-\infty; 2]

**Solution of part 1d**

We obtain

.. math::

  f(-2) = -2.

.. sagecellserver::

   print f(-2)

.. end of output

The graph of :math:`f` has already been drawn in part a.

**Solution of part 1e**

Domain and codomain of an inverse function :math:`f^{-1}` are interchanged
as compared to domain and codomain of the corresponding function :math:`f`:

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

   var('y')
   assume(y<2)
   solve(f(x) == y, x)

.. end of output

.. admonition:: Problem 2

  The graph of the function :math:`h:x\mapsto-\frac{1}{2}x^2+2x+4` with the
  domain of definition :math:`\mathbb{R}` is the parabola :math:`G_h`. The 
  graph of the inverse function from part 1e is a part of :math:`G_h`.

  a) Calculate the coordinates of the intersection points of the curve
     :math:`G_h` and the bisector of the first and third quadrant :math:`w` given
     by the term :math:`y=x`

  b) Draw the parabola :math:`G_h` -- including the apex -- on the interval 
     :math:`-2\leq x\leq4` into your graph from part 1d. Taking the mirror image
     of this part of :math:`G_h` with respect to the angle bisector :math:`w` leads to
     a heart-shaped figure. Complete your graph accordingly.

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
:math:`x`-coordinates, due to the function term :math:`y=x` of the angle bisector:

.. math::

  y_1=-2, \quad y_2=4.

Using Sage, we can solve the problem analytically

.. sagecellserver::

   h(x)=-1/2*x^2+2*x+4
   w(x) = x
   for solution in solve(h(x) == w(x), x, solution_dict=True):
       print "(", solution[x], "|", solution[x], ")"

.. end of output

as well as graphically:

.. sagecellserver::

   p3 = plot(h(x), x, (-3, 6), fill=w, fillcolor = 'red')
   p4 = plot(w(x), x, (-3, 6), color='green')
   show(p3+p4, aspect_ratio=1, figsize=4) 

.. end of output

**Solution of part 2b**

The upper half of the heart-shaped figure can already be recognized in the
graph of part 2a. Its full form can be obtained by reflection. A reflection of
a function at the angle bisector :math:`y=x` can be implemented by
reversing this function. The inverse function of :math:`h` is :math:`f`, as we
already know from part 1e. However, this inversion only holds within the domain
:math:`]-\infty;2]` (compare part 1e). For :math:`x>2` we can use

.. math::

  f_2 = 2+\sqrt{12-2x}

as inverse function of :math:`h`. The only difference between :math:`f` and
:math:`f_2` is the sign in front of the square root. In order to obtain the
heart-shaped figure by reflection, we will proceed as follows:

  - We draw :math:`G_h` between the two intersection points :math:`x_1=-2` and
    :math:`x_2=4`.

  - Further, we draw the inverse function :math:`f` of :math:`h` from
    the intersection point (-2|-2) to the maximum of its domain
    at :math:`x_{\mathrm{max}}=6`, which represents the reflection of
    :math:`h` at :math:`w`, starting at the intersection point (-2|-2)
    and ending at the apex (2|6).

  - Finally, we draw the inverse function :math:`f_2` of :math:`h` from the
    intersection point (4|4) to the maximum of its domain :math:`x_{\mathrm{max}}=6`,
    which represents the reflection of :math:`h` at :math:`w`, starting
    at the apex (2|6) and ending at the intersection point (4|4).

.. sagecellserver::

   f2(x) =  2 + sqrt(12-2*x)
   p5 = plot(h(x), x, (-2, 4))
   p6 = plot(f(x), x, (-2, 6))
   p7 = plot(f2(x), x, (4, 6))
   show(p5+p6+p7, aspect_ratio=1, figsize=4)

.. end of output

.. admonition:: Problem 3

  The heart-shaped figure obtained in problem 2 represents a model for the leaf
  depicted in the figure below. One length unit in the coordinate system used
  in part 1d shall correspond to 1 cm in reality.

  .. image:: ../figs/blatt.png
     :align: center

  a) Calculate the area delimited by :math:`G_h` and the angle bisector :math:`w`.
     Use this result to determine the area of the leaf, based on our model.

  b) Determine the term of the tangent to :math:`G_h` at the point 
     :math:`\left(-2\left|h(-2)\right.\right)`. Calculate the angle between the
     two leaf edges at the leaf apex.

  c) The current model does not describe well enough the shape of the upper leaf
     edge near the leaf apex. Therefore, we will use the graph :math:`G_k`
     of a third order polynomial :math:`k` in order to describe the upper leaf
     edge in the interval :math:`-2\leq x \leq 0`. The function :math:`k` has
     to fulfill the following conditions (:math:`k'` and :math:`h'` are the
     derivatives of :math:`k` and :math:`h`):

     .. math::

        \mathrm{I}  \qquad k(0)=h(0)\\
        \mathrm{II}  k'(0)=h'(0)\\
        \mathrm{III}  k(-2)=h(-2)\\
        \mathrm{IV}  k'(-2)=h'(-2)\\

     Explain, why the conditions I, II and III are reasonable. Make plausible
     that the condition IV leads to a better description of the leaf edge near the
     leaf apex as compared to the first model.

**Solution of part 3a**

First, we want to calculate the area of the red region from part 2a. This can be done by
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

   print "The content of the red area is:", integrate(h(x)-w(x), x, -2, 4)

.. end of output

Having obtained the heart-shaped figure by reflection of the red region at the
angle bisector :math:`w`, the area enclosed by the heart-shaped figure is twice the
red area. In view of the specified length scale, we obtain:

.. math::

  A_{\mathrm{Leaf}}=36\mathrm{cm}^2


**Solution of part 3b**

In order to determine the term of the tangent at the point
:math:`\left(-2\left|h(-2)\right)\right.=(-2|-2)`, we first have to calculate
the slope of the function :math:`h` at the point -2. Using

.. math::

  h'(x) = -x+2

we obtain

.. math::

  m = h'(-2) = 4.

Inserting the point :math:`x=-2, y=-2`, the equation of the tangent
:math:`y=m\cdot x+t` becomes

.. math::

   y = 4x+6.

Using Sage, we can obtain this equation directly from the conditions that the
tangent has to include the specified point and that the slope of the tangent
has to equal the slope of the function :math:`h(x)` at this point.

.. sagecellserver::

   m, t = var('m t')
   y(x) = m*x+t
   dh = derivative(h, x)
   dy = derivative(y, x)
   solution = solve([y(-2)==h(-2),
                    dy(-2)==dh(-2)], m, t, solution_dict=True)[0]
   y(x) = y.subs(solution)
   print 'Equation of the tangent: y = %sx+%s' % (solution[m], solution[t])

.. end of output

Further, we use Sage to draw the tangent into our figure.

.. sagecellserver::

   p8 = plot(h(x), x, (-3, 0))
   p9 = plot(y(x), x, (-3, 0), color='green')
   show(p8+p9, figsize=(4, 2.8))

.. end of output

The figure already indicates that the angle, based on our model, is considerably
larger than the angle on the picture of the leaf. We can calculate the angle between
the angle bisector and the tangent, based on their slopes :math:`m_w=1` and :math:`m_t=4`
using the formula

.. math::

  \alpha = \arctan\left(\frac{m_t-m_w}{1+m_w m_t}\right)
  =\arctan\left(\frac{4-1}{1+4}\right) \approx 30,9°

The angle between the two edges is twice as large, i.e. approximately
:math:`62°`.

**Solution of part 3c**

The conditions I and III are necessary for a continuous insertion of :math:`G_k`.
Condition II ensures that the transition from :math:`h` to :math:`k` is
smooth. Condition IV leads to a smaller angle between the leaf edges at the
point (-2|-2) and therefore to a sharper leaf apex.

The problem did not ask for the exact solution of :math:`k`, but Sage will work
this out for us:

.. sagecellserver::

   a, b, c, d = var('a b c d')
   k(x) = a*x^3+b*x^2+c*x+d
   dk = derivative(k, x)
   equations = [k(0)==h(0),
                  dk(0)==dh(0),
                  k(-2)==h(-2),
                  dk(-2)==1.5]
   solutions = solve(equations, a, b, c, d, solution_dict=True)[0]
   k = k.subs(solutions)
   print k

.. end of output

We can use these parameters to plot the leaf according to the new model. The
red curve is the new function :math:`k`.

.. sagecellserver::

   p10 = plot(h(x), x, (0, 4))
   p11 = plot(k(x), x, (-2, 0), color='red')
   p12 = plot(f(x), x, (-2, 6))
   p13 = plot(f2(x), x, (4, 6))
   p14 = plot(h(x), x, (-2, 0), linestyle=':')
   show(p10+p11+p12+p13+p14, aspect_ratio=1, figsize=4)

.. end of output

Obviously, the new model fits the shape of the leaf better than the old model.
