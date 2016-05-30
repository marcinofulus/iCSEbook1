Bavarian final secondary-school examinations in mathematics 2014
----------------------------------------------------------------

.. admonition:: Problem

  Given the plane :math:`E:3x_2+4x_3=5`,

  a) explain the special location of the plane :math:`E` in the coordinate
     system.

  b) verify by calculation if a sphere with the center :math:`Z(1|6|3)` and
     radius :math:`7` intersects the plane :math:`E`.

**Solution of part a**

The equation of the plane is independent of the :math:`x_1`-component. Therefore,
The plane :math:`E` is aligned parallel to the :math:`x_1`-axis.

We can use Sage to depict the plane in a 3D-space by resolving the plane's
equation for :math:`x_3`.

.. sagecellserver::

  sage: var('x1')
  sage: var('x2')
  sage: var('x3')
  sage: solution = solve(3*x2+4*x3 == 5, x3, solution_dict=1)[0]
  sage: p1 = plot3d(solution[x3], (x1, -10, 10), (x2, -10, 10))
  sage: p1

.. end of output

**Solution of part b**

First, we will use Sage to get an overview of the problem.

.. sagecellserver::

  sage: p2 = sphere(center=(1, 6, 3), size=7, color='red', opacity=1)
  sage: p1 + p2

.. end of output

It's easy to see that the sphere and the plane have infinitly many intersection
points.

In order to verify this solution by calculation, we will determine the distance
between the plane and the center of the sphere. The normal vector of the plane
can be derived from its Hesse normal form:

.. math::

  \vec{n} = \left( \begin{matrix}
    			0\\
    			3\\
    			4
  	     	    \end{matrix} \right),

or in normalized form:

.. math::

  \vec{n}_0 = \left( \begin{matrix}
    			0\\
    			\frac{3}{5}\\
    			\frac{4}{5}
  	     	    \end{matrix} \right).

In order to calculate the distance between the plane and the center of the
sphere, we define points along the line, which is aligned parallel to the
normal :math:`\vec{n}_0` and which contains the center of the sphere, as

.. math::

  \left( \begin{matrix}
    			x_1\\
    			x_2\\
    			x_3
  	     	    \end{matrix} \right) = \left( \begin{matrix}
    			1\\
    			6\\
    			3
  	     	    \end{matrix} \right) + t\cdot \left( \begin{matrix}
    			0\\
    			\frac{3}{5}\\
    			\frac{4}{5}
  	     	    \end{matrix} \right).

The value of :math:`|t|` refers to the distance of the current point to the
center of the sphere. The value :math:`t` of the intersection point of the line
and the plane can be determined by inserting the coordinates of the line into
the plane's equation. This leads to

.. math::

  &3 \cdot (6+\frac{3}{5}t) + 4 \cdot (3+\frac{4}{5}t)-5=0 \quad\Leftrightarrow\\
  &t=-5 \quad\Leftrightarrow\\
  &|t|=5.

Thus, the distance between the plane and the center of the sphere equals to 5, 
which is smaller than the radius of the sphere. Therefore, the 
area of intersection is the border of a circle, which obviously contains
infinitely many intersection points. The calculation can be verified by Sage:

.. sagecellserver::

  sage: t = var('t')
  sage: n = vector([0, 3, 4])
  sage: n0 = n/norm(n)
  sage: z = vector([1, 6, 3])
  sage: radius = 7
  sage: line = z+t*n0
  sage: solution = solve(3*line[1]+4*line[2] == 5, t, solution_dict=True)[0]
  sage: distance = abs(solution[t])
  sage: print "Distance: center of the sphere - plane:", distance
  sage: if distance < radius:
  ...       print('plane intersects sphere')
  sage: else:
  ...       print('plane does not intersect sphere')

.. end of output
