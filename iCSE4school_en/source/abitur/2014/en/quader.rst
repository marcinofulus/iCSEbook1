The cuboid
==========

.. admonition:: Problem

  The vectors

  .. math::
     \vec{a} = \left(\begin{matrix} 2\\1\\2 \end{matrix} \right),\quad
     \vec{b} = \left(\begin{matrix} -1\\2\\0 \end{matrix} \right),\quad
     \vec{c_t} = \left(\begin{matrix} 4t\\2t\\-5t \end{matrix} \right),

  generate a geometric body for every :math:`t` with 
  :math:`t\in\mathbb{R}\backslash\{0\}`. The figure below illustrates this
  for an example of :math:`t`.

  a) Prove that the generated body is always a cuboid.

  b) Determine the values of :math:`t` leading to a cuboid with a volume of 15.

  .. image:: ../figs/quader.png
     :align: center

**Solution of part a**

The generated body is a cuboid if and only if the vectors :math:`\vec{a}`,
:math:`\vec{b}` and :math:`\vec{c}` are mutually orthogonal. Therefore,
we calculate all possible inner products of two vectors and verify that
all of them vanish.

.. math::

  \vec{a}\cdot\vec{b} = 2\cdot(-1) + 1\cdot2 + 2\cdot0 = 0\\
  \vec{a}\cdot\vec{c} = 2\cdot4t + 1\cdot2t + 2\cdot(-5t) = 0\\
  \vec{b}\cdot\vec{c} = (-1)\cdot4t + 2\cdot2t + 0\cdot(-5t) = 0\\

The fact that every inner product vanishes proves that the generated body 
is a cuboid for any value of :math:`t`. The inner products can also be calculated with Sage:

.. sagecellserver::

   t = var('t')
   a = vector([2, 1, 2])
   b = vector([-1, 2, 0])
   c = vector([4*t, 2*t, -5*t])
   print u"a\u00b7b =", a.dot_product(b)
   print u"a\u00b7c =", a.dot_product(c)
   print u"b\u00b7c =", b.dot_product(c)

.. end of output

**Solution of part b**

The volume of a cuboid can be calculated with the scalar triple product:

.. math::

  V = \left\vert\vec{a}\cdot(\vec{b}\times\vec{c})\right\vert\\
    =\left\vert\left(\begin{matrix} 2\\1\\2 \end{matrix} \right)
  \cdot\left(\begin{matrix} 2\cdot(-5t)-0\cdot2t \\ 0\cdot4t-(-1)\cdot(-5t) \\ (-1)\cdot2t-2\cdot4t
  \end{matrix}\right)\right\vert \\
  =\left\vert 2\cdot(-10t) + 1\cdot(-5t)+2\cdot(-10t) \right\vert\\
  = 45\left\vert t \right\vert.
  
Together with the condition that the cuboid's volume should be equal to 15, we obtain

.. math::

  V = 45\left\vert t \right\vert \overset{!}{=} 15

which can be rewritten as

.. math::

  \left\vert t \right\vert = \frac{1}{3} \Leftrightarrow t=\pm\frac{1}{3}.

We obtain two possible solutions for :math:`t`. In one case, the vector 
:math:`c` points towards the upper half-space while in the other case it
points towards the lower half-space.

This result can be verified with the help of Sage. In particular, the evaluation
of the triple product is significantly simplified.

.. sagecellserver::

   V = abs(a.dot_product(b.cross_product(c)))
   print "Volume =", V
   solve(V == 15, t) 

.. end of output

