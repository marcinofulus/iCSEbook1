The triangle
============

.. admonition:: Problem

  In a cartesian coordinate system, a triangle :math:`ABC` located in the 
  plane :math:`E: x_1+x_2+x_3=4` is defined by the points :math:`A(4|0|0)`,
  :math:`B(0|4|0)`, and :math:`C(0|0|4)`.

  a) Determine the area of the triangle :math:`ABC`.

  The triangle :math:`ABC` is exemplary for a mirror. Within the model,
  the point :math:`P(2|2|3)` indicates the position of a light source
  emitting a beam of light, and the direction of this light beam is described
  by the vector

  .. math::

    \vec{v}=\begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}\,.

  b) Specify the equation of a straight line :math:`g` along which the
     light beam propagates in the model. Determine the coordinates of the
     point :math:`R` in which :math:`g` intersects the plane :math:`E`
     and establish that the light beam impinges on the triangular mirror.
  
     *(check:* :math:`R(1{,}5|1{,}5|1)` *)*

  The incoming light beam (*einfallender Strahl*) is reflected in the
  point of the mirror represented within the model by point :math:`R`.
  For an observer, the reflected light beam (*reflektierter Strahl*) 
  seems to originate from a position described within the model by
  point :math:`Q(0|0|1)` (cf. figure).

  .. image:: ../figs/dreieck.png
     :align: center

  c) Demonstrate that the points :math:`P` and :math:`Q` are symmetric
     with respect to the plane :math:`E`.
 
  The normal on plane :math:`E` in point :math:`R` is referred to as
  axis of indicence (*Einfallslot*).

  d) The two straight lines along which the incoming and the reflected
     light beams propagate within the model are located in the plane
     :math:`F`. Determine an equation for :math:`F` in Hessian normal
     form. Demonstrate that the axis of incidence is also situated
     in the plane :math:`F`.

     *(possible partial result:* :math:`F : x_1-x_2=0` *)*

  e) Demonstrate that the magnitudes of the angles :math:`\beta` between
     the reflected light beam and the axis of incidence and :math:`\alpha`
     between the incoming light beam and the axis of incidence agree.

**Solution of part a**

In order to determine the area of the triangle, we first need to determine
the connecting vectors :math:`\vec{AB}` and :math:`\vec{AC}`:

.. math::

  \vec{AB} = \vec{B} - \vec{A} = \begin{pmatrix} -4\\ 4\\ 0\end{pmatrix},\\
  \vec{AC} = \vec{C} - \vec{A} = \begin{pmatrix} -4\\ 0\\ 4\end{pmatrix}.

Now, we can determine the area of the triangle by means of the cross product:

.. math::

  A = \frac{1}{2}\left|\vec{AB}\times\vec{AC}\right| = 
  \frac{1}{2}\left|\begin{pmatrix} 16\\ 16\\ 16\end{pmatrix}\right| =
  8\sqrt{3}.

We check the result by means of Sage:

.. sagecellserver::

   a = vector([4, 0, 0])
   b = vector([0, 4, 0])
   c = vector([0, 0, 4])
   ab = b - a
   ac = c - a
   A = 1/2 * abs(ab.cross_product(ac))
   print "Area of the triangle:", A

.. end of output

Furthermore, we graphically represent the triangle by means of Sage:

.. sagecellserver::

   from sage.plot.polygon import Polygon
   labeloffset = vector([0, 0, 0.3])
   p1 = polygon([a, b, c])
   for p, label in ((a, 'A'), (b, 'B'), (c, 'C')):
       p1 = p1+point(p, size=10)
       p1 = p1+text3d(label, p+labeloffset, color='black', horizontal_alignment='left')
   show(p1)

.. end of output

**Solution of part b**

The straight line must go through point :math:`P` and run along the vector
:math:`\vec{v}`. The representation of the straight line is then obtained as

.. math::

  \vec{g} = \vec{P}+\lambda\vec{v} = 
  \begin{pmatrix} 2\\ 2\\ 3\end{pmatrix}
  + \lambda\begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}.

In order to obtain the point of intersection :math:`R`, we insert the 
coordinates of the straight line into the equation of the plane:

.. math::

  2 -\lambda + 2 -\lambda + 3 -4\lambda = 7-6\lambda \overset{!}{=} 4\\
  \rightarrow \lambda = \frac{1}{2}.


The point of intersection is then obtained as

.. math::

  \vec{R} = \vec{P} + \frac{1}{2}\vec{v} = \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 1\end{pmatrix}.

We check this point of intersection by means of Sage

.. sagecellserver::

   p = vector(QQ, (2, 2, 3))
   v = vector(QQ, (-1, -1, -4))
   plane = Polyhedron(eqns=[(-4, 1, 1, 1)])
   straight_line = Polyhedron(vertices=[p], rays=[-v, v])
   r = straight_line.intersection(plane).vertices()[0].vector()
   print 'point of intersection R', r

.. end of output

and insert the straight line into the graphics of part a). As we can see, the
straight line hits the triangular mirror. This can also be deduced from the fact
that all coordinates of the point of intersection are positive.

.. sagecellserver::

   p2 = line([p, r], color='red', thickness=2)
   for pt, label in ((p, 'P'), (r, 'R')):
       p2 = p2+point(pt, size=10)
       p2 = p2+text3d(label, pt+labeloffset, color='black', horizontal_alignment='left')
   show(p2 + p1)

.. end of output

**Solution of part c**

We first consider the connecting vector :math:`\vec{PQ}`:

.. math::

  \vec{PQ} = \vec{Q} - \vec{P} = \begin{pmatrix} -2\\ -2\\ -2\end{pmatrix}\,.

From the equation of the plane :math:`E`, it is straightforward to deduce
that a non-normalized normal vector of :math:`E` is given by

.. math::

  \vec{n} = \begin{pmatrix} 1\\ 1\\ 1\end{pmatrix}\,.

This vector obviously is parallel to the connecting vector :math:`\vec{PQ}`.
The points :math:`P` and :math:`Q` thus lie on the same normal of :math:`E`.
For the two points to be symmetric with respect to :math:`E`, they need
to have the same distance to the plane. We verify this by inserting the
midpoint of the connecting line into the equation of the plane:

.. math::

  \vec{M} = \vec{P} + \frac{1}{2}\vec{PQ} = \begin{pmatrix} 1\\ 1\\ 2\end{pmatrix}\\
  E:\quad 1 + 1 + 2 = 4

The points are thus symmetric with respect to the plane.

We add the connection between the points :math:`P` and :math:`Q`
as well as the reflected light beam to our sketch:

.. sagecellserver::

   q = vector([0, 0, 1])
   Q = point(q, size=10)
   Qt = text3d("Q", q + labeloffset, color='black', horizontal_alignment='left')
   pq = line([p, q], color='black', thickness=2)
   g_refl = line([r, r + r-q], color='red', thickness=2)
   g_refl_q = line([q, r], color='red', thickness=1, linestyle='--')
   p3 = Q + Qt + pq + g_refl + g_refl_q
   show(p1 + p2 + p3)

.. end of output

**Solution of part d**

We consider the two straight lines

.. math::

  \vec{g}_1 = \vec{R} + \lambda\vec{v} =
  \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 1\end{pmatrix} +
  \lambda \begin{pmatrix} -1\\ -1\\ -4\end{pmatrix}

and

.. math::

  \vec{g}_2 = \vec{R} + \mu(\vec{R}-\vec{Q}) =
  \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 1\end{pmatrix} + 
  \mu\begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 0\end{pmatrix}\,.

Together with the common point of intersection :math:`R`, the equation of 
the plane is easily obtained as

.. math::

  F:\quad \vec{X} = \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 1\end{pmatrix} + 
  \lambda \begin{pmatrix} -1\\ -1\\ -4\end{pmatrix} +
  \mu \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 0\end{pmatrix}\,.

This equation of the plane can be expressed in terms of the coordinates
:math:`x_1` and :math:`x_2`:

.. math::

  E:\quad x_1 - x_2 = 0\,.

The axis of incidence normal to the plane :math:`E` and going through
point :math:`R` can be represented as

.. math::

  \vec{e} = \begin{pmatrix} \frac{3}{2}\\ \frac{3}{2}\\ 1\end{pmatrix} +
  \lambda \begin{pmatrix} 1\\ 1\\ 1\end{pmatrix}.

Obviously, the coordinates :math:`x_1` and :math:`x_2` of :math:`e` satisfy
the equation of the plane :math:`F` so that :math:`e` lies in :math:`F`.

We add the plane :math:`F` and the axis of incidence :math:`e` to our
drawing:

.. sagecellserver::

   axis_of_incidence = vector([1,1,1])
   F = polygon((vector([0,0,0]), vector([4,4,0]), vector([4,4,4]), vector([0,0,4])), color='green')
   e = line([r, r + axis_of_incidence], color='black', thickness=2)
   p4 = e + F
   show(p1 + p2 + p3 + p4)

.. end of output

**Solution of part e**

The angles :math:`\alpha` and :math:`\beta` are easily calculated by
means of a scalar product:

.. math::

  \cos(\alpha) = 
  \frac{-\vec{v}\cdot\vec{n}}{\left|\vec{v}\right|\left|\vec{n}\right|}=
  -\frac{1}{\sqrt{18}}\begin{pmatrix}-1\\-1\\-4\end{pmatrix}\cdot
  \frac{1}{\sqrt{3}}\begin{pmatrix}1\\1\\1\end{pmatrix}=
  \sqrt{\frac{2}{3}}

and analogously:

.. math::

  \cos(\beta) = 
  \frac{\vec{QR}\cdot\vec{n}}{\left|\vec{QR}\right|\left|\vec{n}\right|}=
  \frac{2}{\sqrt{18}}\begin{pmatrix}\frac{3}{2}\\\frac{3}{2}\\0\end{pmatrix}\cdot
  \frac{1}{\sqrt{3}}\begin{pmatrix}1\\1\\1\end{pmatrix}=
  \sqrt{\frac{2}{3}}
  
The angles :math:`\alpha` and :math:`\beta` thus have the same magnitude
which is also confirmed by our sketch and by explicit evaluation with the
help of Sage.

.. sagecellserver::

   n = axis_of_incidence.normalized()
   cosa = -n.dot_product(v.normalized())
   cosb = n.dot_product((r-q).normalized())
   print simplify(cosa-cosb)

.. end of output
