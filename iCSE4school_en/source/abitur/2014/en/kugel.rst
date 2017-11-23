The sphere
==========

.. admonition:: Problem

  A sphere is centered at :math:`M(-3|2|7)`. The point
  :math:`P(3|4|4)` is located on the surface of this sphere.

  a) The point :math:`Q` is also located on the surface of the sphere. The
     line segment :math:`[PQ]` contains the center :math:`M`. Determine
     the coordinates of the point :math:`Q`.

  b) Prove that the sphere touches the :math:`x_1x_2`-plane.

**Solution of part a**

Since both points, :math:`P` and :math:`Q`, are located on the
surface of the sphere and the line segment connecting these points contains
the center of the sphere, :math:`Q` can be represented as:

.. math::

  \vec{Q} = \vec{M} + \left(\vec{M}-\vec{P}\right).

As a result, we obtain

.. math::

  Q(-9|0|10),

which can be verified with Sage:

.. sagecellserver::

   M = vector([-3, 2, 7])
   P = vector([3, 4, 4])
   print "Q:", M + M - P

.. end of output

**Solution of part b**

In order to verify whether the sphere touches the :math:`x_1x_2`-plane,
we only need to calculate the distance between the plane and the center of the
sphere and compare it to the sphere's radius. This distance is equal to the 
absolute value of the center's :math:`x_3`-coordinate, which equals 7.

The radius of the sphere can be determined from the distance between the point
:math:`P` on the sphere and the sphere's center:

.. math::

  r = \left\vert\vec{M}-\vec{P}\right\vert = \sqrt{(-3-3)^2 + (2-4)^2 + (7-4)^2} = 7

Thus, the distance between the plane and the center of the sphere equals
the radius of the sphere, so that the sphere touches the plane in one point.
The coordinates of this point can be obtained by projecting the sphere's center
to the :math:`x_1x_2`-plane, yielding :math:`S(-3|2|0)`.

We can use Sage to illustrate this in three-dimensional space. The mouse can
be used to rotate the view.
	
.. sagecellserver::

   var('x')
   var('y')
   z = 0
   radius = norm(M-P)
   print 'sphere radius          :', radius
   print 'distance center - plane:', M[2]
   p1 = plot3d(z, (x, -15, 15), (y, -15, 15), opacity=0.7)
   p2 = sphere(center=(-3, 2, 7), size=radius, color='red', opacity=0.7)
   show(p1 + p2, aspect_ratio=1)

.. end of output
