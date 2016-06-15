Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Problem

  The point :math:`M(-3|2|7)` is the center of a sphere. The point
  :math:`P(3|4|4)` is located on the surface of this sphere.

  a) The point :math:`Q` is also located on the surface of the sphere. The
     line segment :math:`[PQ]` contains the center :math:`M`. Determine
     the coordinates of the point :math:`Q`.

  b) Prove that the sphere touches the :math:`x_1x_2`-plane.

**Solution of part a**

Due to the fact that both points, :math:`P` and :math:`Q`, are located on the
surface of the sphere and that the line segment connecting the poinst contain
the center of the sphere, :math:`Q` can be represented as:

.. math::

  \vec{Q} = \vec{M} + \left(\vec{M}-\vec{P}\right).

As a result, we obtain

.. math::

  Q(-9|0|10),

which can be verified with Sage:

.. sagecellserver::

  sage: M = vector([-3, 2, 7])
  sage: P = vector([3, 4, 4])
  sage: print "Q:", M + M - P

.. end of output

**Solution of part b**

In order to determine how the sphere intersects the :math:`x_1x_2`-plane,
we only need to calculate the distance between the plane and the center of the
sphere and compare it to the sphere's radius. This distance is equal to the 
absolute value of the center's :math:`x_3`-coordinate, which equals 7.

The radius of the sphere can be calculated as the difference between the center
of the sphere :math:`M` and a point that is located on the surface of the
sphere (in this case :math:`P`):

.. math::

  r = \left\vert\vec{M}-\vec{P}\right\vert = \sqrt{(-3-3)^2 + (2-4)^2 + (7-4)^2} = 7

Thus, the distance between the plane and the center of the sphere is equal to
the radius of the sphere, which means that the sphere and the plane have
exactly one intersection point. This intersection point can be calculated as
the projection of the sphere's center to the :math:`x_1x_2`-plane
:math:`S(-3|2|0)`.

We can use Sage to illustrate this in a 3D-space, which can be rotated with the
mouse.
	
.. sagecellserver::

  sage: var('x')
  sage: var('y')
  sage: z = 0
  sage: radius = norm(M-P)
  sage: print 'sphere's radius        :', radius
  sage: print 'distance center - plane:', M[2]
  sage: p1 = plot3d(z, (x, -15, 15), (y, -15, 15), opacity=0.7)
  sage: p2 = sphere(center=(-3, 2, 7), size=radius, color='red', opacity=0.7)
  sage: show(p1 + p2, aspect_ratio=1)

.. end of output
