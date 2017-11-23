A house
=======

.. admonition:: Problem

  The figure displays exemplarily a family home erected on a horizontal surface.
  On one of the rectangular roof surfaces, a dormer shall be erected. The points
  :math:`A`, :math:`B`, :math:`C`, :math:`D`, :math:`O`, :math:`P`, :math:`Q` and
  :math:`R` are vertices of a cuboid. The straight triangular prism :math:`LMNIJK`
  represents the dormer while the straight line :math:`[GH]` represents the roof
  ridge, i.e. the upper horizontal edge of the roof. A length unit in the
  coordinate system corresponds to 1 m, i.e., the house has a length of 10 m.

  .. image:: ../figs/haus.png
     :align: center

  a) Calculate the area of the roof surface represented in the model by the
     rectangle :math:`BCHG`.

  b) In the town where the family home is located, a charter for the erection
     of dormers exists which has to be abided by every constructor. This charter
     allows the erection of a dormer provided the inclination of the roof
     surface of the respective roof against the horizonal is at least 35°.
     Demonstrate by means of a calculation that for the family home under
     consideration, the erection of a dormer is permissible.

  Within the model, the roof on which the dormer is to be erected lies in the
  plane

  .. math::

    E:3x_1+4x_3-44=0.

  The dormer shall be erected in such a way that its distance from the lateral
  edge of the roof surface represented in the model by the line :math:`HC`
  equals 2 m while its distance from the roof ridge is 1 m. In order to obtain
  the coordinates of point :math:`M`, the straight line

  .. math::

    t:\vec{X} = \begin{pmatrix} 4\\ 8\\ 8\end{pmatrix} + 
    \lambda\cdot\begin{pmatrix} 4\\ 0\\ -3\end{pmatrix},\quad
    \lambda\in\mathbb{R},

  going through point :math:`T(4|8|8)` is considered.

  c) Justify that :math:`t` lies in the plane :math:`E` and is situated at a
     distance 2 from the straight line :math:`HC`.

  d) Now, a point :math:`M` is determined on the straight line :math:`t` such
     that the distance between dormer and roof ridge is 1 m. Determine the
     coordinates of :math:`M`.

     *(Result:* :math:`M(4.8|8|7.4)` *)*

  The points :math:`M` and :math:`N` lie on the straight line

  .. math::

    m:\vec{X} = \begin{pmatrix} 4.8\\ 8\\ 7.4\end{pmatrix} +
    \mu\cdot \begin{pmatrix} 6\\ 0\\ -1\end{pmatrix},\quad
    \mu\in\mathbb{R}, 

  which in the model determines the inclination of the roof surface of the
  dormer. The line :math:`[NL]` parallel to the :math:`x_3` axis within the
  model represents the height of the dormer which shall be 1.4 m. In order to
  determine the coordinates of :math:`N` und :math:`L`, the plane 
  :math:`F` obtained by shifting :math:`E` by 1.4 in the positive :math:`x_3`
  direction is considered.

  e) Justify that :math:`3x_1+4x_3-49.6=0` is an equation describing
     :math:`F`.

  f) Determine the coordinates of :math:`N` and :math:`L`.

     *(Partial result:* :math:`N(7.2|8|7)` *)*



**Solution of part a**

The area of a rectangle is obtained as a product of length and width:

.. math::

  A = |BC|\,|BG|

From the figure, we determine the points :math:`B(8|0|5)` and
:math:`G(4|0|8)`. Together with :math:`C(8|10|5)` we obtain

.. math::

  A = \left|\begin{pmatrix} 0\\ 10\\ 0\end{pmatrix}\right|\,
      \left|\begin{pmatrix} -4\\ 0\\ 3\end{pmatrix}\right| = 50

The area thus amounts to 50m².

In Sage, we first define all points and then check the result.

.. sagecellserver::

   o = vector([0,0,0])
   p = vector([8,0,0])
   c = vector([8, 10, 5])
   width, length, height = c
   h = vector([4, 10, 8])
   t = vector([4, 8, 8])
   a = o+vector([0, 0, height])
   b = p+vector([0, 0, height])
   g = h-vector([0, length, 0])
   print "Area: %sm²" % float(norm(b-g)*norm(c-b))

.. end of output


**Solution of part b**

The angle between two vectors :math:`\vec{a}` and :math:`\vec{b}`
can be calculated by means of the cosine rule:

.. math::

  \cos{\alpha} = \frac{\vec{a}\cdot\vec{b}}{|\vec{a}||\vec{b}|}

By means of this formula, Sage yields a value of about :math:`37^\circ`.
The house thus is in accordance with the charter.

.. sagecellserver::

   ba = (a-b).normalized()
   bg = (g-b).normalized()
   print "Inclination of roof: %4.1f°" % float(arccos(ba.dot_product(bg))*180/pi)

.. end of output

**Solution of part c**

We insert the straight line :math:`t` into the equation for the plane:

.. math::

  3(4+4\lambda) + 4(8-3\lambda) - 44 = 0.

:math:`t` thus lies in the plane. The straight line

.. math::

  HC = H + \lambda\left(H - C\right) = \begin{pmatrix} 4\\ 10\\ 8\end{pmatrix} + 
       \lambda \begin{pmatrix} 4\\ 0\\ -3\end{pmatrix}

obviously is parallel to :math:`t`. The distance between :math:`t`
and :math:`HC` equals the distance between the points :math:`T` and :math:`H`:

.. math::

  \left|\vec{H}-\vec{T}\right| = \left|\begin{pmatrix} 0\\ 2\\ 0\end{pmatrix}\right| = 2

This result is confirmed by Sage:

.. sagecellserver::

   norm(h-t)

.. end of output

**Solution of part d**

The distance of a point given by :math:`\lambda` from the point :math:`T` ist
determined by

.. math::

  \left\vert\lambda\begin{pmatrix}4\\0\\-3\end{pmatrix}\right\vert =
  25\lambda^2\,.

For :math:`\lambda=\pm\frac{1}{5}` the distance equals 1.
This result is confirmed by Sage.

.. sagecellserver::

   lamb = solve(abs(x*(c-h)) == 1, x)
   print "The solutions for λ are:", lamb

.. end of output

However, only the positive solution for :math:`\lambda` makes sense, 
because the other point is situated above the roof ridge. Thus we obtain
the point :math:`M(4.8|8|7.4)`.

.. sagecellserver::

   m = t + lamb[1].right() * (c-h)
   print "point M:", m

.. end of output

**Solution of part e**

Shifting :math:`E` by 1.4 in the positive :math:`x_3` direction,
the equation of the plane is rewritten as:

.. math::

  F: 3x_1+4(x_3-1.4) -44 = 0 \Leftrightarrow\\
  F: 3x_1 + 4x_3 - 49.6 = 0

**Solution of part f**

Inserting the equation for the straight line :math:`m` into the equation
for the plane :math:`F` yields

.. math::

  3(4.8+6\mu)+4(7.4-\mu)-49.6 = 14\mu-5.6 = 0\\
  \Rightarrow\, \mu = 0.4

By insertion into the equation for the straight line :math:`m`, one obtains the
point :math:`N(7.2|8|7)`, and by shifting by :math:`-1.4` in the :math:`x_3`
direction the point :math:`L(7.2|8|5.6)` is found. These results are
obtained by means of Sage as follows:

.. sagecellserver::

   mu = solve(3*(4.8+6*x) + 4*(7.4-x) - 49.6 == 0, x)[0].right()
   n = m + mu*vector([6, 0, -1])
   l = n + vector([0, 0, -7/5])
   print "Coordinates of N: ", n, ", L:", l

.. end of output
