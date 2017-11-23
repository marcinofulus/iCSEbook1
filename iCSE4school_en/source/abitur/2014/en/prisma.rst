Prism
=====

.. admonition:: Problem

  The image shows a right prism :math:`ABCDEF` with the points
  :math:`A(0|0|0)`, :math:`B(8|0|0)`, :math:`C(0|8|0)` and :math:`D(0|0|4)`.

  .. image:: ../figs/prisma.png
     :align: center

  a) Determine the distance between the two vertices :math:`B` and :math:`F`.

  b) The points :math:`M` and :math:`P` correspond to the midpoints of the edges
     :math:`[AD]` and :math:`[BC]`. The point :math:`K(0|y_K|4)` is located on
     the edge :math:`[DF]`. Determine :math:`y_K` so that the triangle
     :math:`KMP` is orthogonal in :math:`M`.

**Solution of part a**

First, we need to calculate the coordinates of the vertex :math:`F`
located above the point :math:`C` in :math:`z`-direction, at the same height as
the point :math:`D`. :math:`F` therefore has the coordinates :math:`F(0|8|4)`.

The distance between :math:`B` and :math:`F` can be calculated as

.. math::

  \overline{BF} = |\vec{B} - \vec{F}| = \sqrt{8^2+(-8)^2+(-4)^2}=12.

We can verify the result with the help of Sage by constructing the point
:math:`F` and determining its distance to the point :math:`B`.

.. sagecellserver::

     a = vector([0, 0, 0])
     b = vector([8, 0, 0])
     c = vector([0, 8, 0])
     d = vector([0, 0, 4])
     f = c + d - a
     print 'distance B-F:', norm(b-f)

.. end of output

**Solution of part b**

The midpoint :math:`M` of the edge between the points :math:`A` and :math:`D`
can be determined by

.. math::

  \vec{M} = \vec{A} + 1/2 \cdot (\vec{D} - \vec{A}).

Correspondingly, we obtain the coordinates of the midpoints :math:`M(0|0|2)`
and :math:`P(4|4|0)`.

.. sagecellserver::

     m = a + 1/2 * (d - a)
     p = b + 1/2 * (c - b)
     print "m:", m, ", p:", p

.. end of output

In order to determine the :math:`y`-value of the point :math:`K`, we will use
the condition that the triangle :math:`KMP` has to be orthogonal in :math:`M`.
This implies that the inner product of the vectors :math:`\vec k` and
:math:`\vec p` connecting the point :math:`M` to the points :math:`K` and
:math:`P`, respectively, must vanish. The vectors can be determined as

.. math::

  \vec{k} = \begin{pmatrix} 0\\ y_K\\ 2\end{pmatrix}\qquad
  \vec{p} = \begin{pmatrix} 4\\ 4\\ -2\end{pmatrix} 

with the inner product

.. math::

  \vec{k}\cdot\vec{p} = 4y_k-4 \overset{!}{=} 0,

Therefore, we find :math:`y_K=1`.

Sage offers a fast way to verify the solution:

.. sagecellserver::

   y = var('y')
   k = vector([0, y, 4])
   solve((m-k).dot_product(m-p) == 0, y)

.. end of output
