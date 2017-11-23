Straight lines in 3d
====================

.. admonition:: Problem

  The straight lines
  :math:`g: \vec{X} = \begin{pmatrix}8\\1\\7\end{pmatrix} + \lambda\cdot
  \begin{pmatrix}3\\1\\2\end{pmatrix}`, :math:`\lambda \in \mathbb{R}`, and
  :math:`h: \vec{X} = \begin{pmatrix}-1\\5\\-9\end{pmatrix} + \mu \cdot 
  \begin{pmatrix}1\\-2\\4\end{pmatrix}`, :math:`\mu \in \mathbb{R}`, are given
  in a cartesian coordinate system.
  The lines :math:`g` and :math:`h` intersect at the point :math:`T`.

  a) Determine the coordinates of :math:`T`.

     *(result:* :math:`T(2|-1|3)`\ *)*
  
  b) Give the coordinates of two points :math:`P` and :math:`Q` which lie on 
     :math:`g` and are at equal distance from :math:`T`.
  
  c) Two points :math:`U` and :math:`V` of the line :math:`h` together with the
     points :math:`P` and :math:`Q` form the rectangle :math:`PUQV`. Describe
     a method to determine the coordinates of :math:`U` and :math:`V`.
  
**Solution of part a**

One obtains the intersection of the lines :math:`g` and :math:`h` by equating
the equations of the two lines. The equations for the three coordinates yield
the system of linear equations

.. math::

   3\lambda -\mu &= -9\\
   \lambda+2\mu &= 4\\
   2\lambda-4\mu &= -16


with the solution :math:`\lambda=-2`, :math:`\mu=3`. Plugging this into the
equation of the lines yields the given coordinates of the point :math:`T`.

The solution can be determined with the help of Sage:

.. sagecellserver::

     var("lamb, mu")
     g = vector([8, 1, 7]) + lamb * vector([3, 1, 2])
     h = vector([-1, 5, -9]) + mu * vector([1, -2, 4])
     result = solve([g[0] == h[0],
                     g[1] == h[1],
                     g[2] == h[2]], mu, lamb)
     print("Values at the intersection: {}".format(result[0]))
     t = h.subs(result[0][0])
     print("Intersection at: T = {}".format(t))

.. end of output

To illustrate the result one can draw the lines in a three-dimensional
coordinate system with Sage.

.. sagecellserver::

     labeloffset = vector([0, 0, 2])
     pg = line([g(lamb = -4), g(lamb = 0)], color = 'blue')
     tg = text3d("g", g(lamb = 0) + labeloffset, color='blue', horizontal_alignment='left')
     ph = line([h(mu = 0), h(mu = 4)], color = 'purple')
     th = text3d("h", h(mu = 0) + labeloffset, color='purple', horizontal_alignment='left')
     pt = point(t, size=10, color='red')
     tt = text3d("T", t + labeloffset, color='red', horizontal_alignment='left')
     p1 = pg + tg + ph + th + pt + tt
     show(p1, aspect_ratio=1)

.. end of output

**Solution of part b**

The intersection :math:`T` can be obtained by plugging the value of
:math:`\lambda` determined in part a into the equation of line :math:`g`.  Now,
two points :math:`P` and :math:`Q` are to be determined which lie on :math:`g`
at equal distance from :math:`T`. To this end, one adds a chosen value to
:math:`\lambda` and subtracts the same value from :math:`\lambda`.

In part a, we found :math:`\lambda = -2`. The two points :math:`P` and :math:`Q`
can be obtained, for example, by plugging the values :math:`\lambda = -1` and
:math:`\lambda = -3` into the equations of the line. These points are added to the
coordinate system.

.. sagecellserver::

     p = g(lamb = result[0][1].right() + 1)
     print("P {}".format(p))
     pp = point(p, size=10, color='green')
     tp = text3d("P", p + labeloffset, color='green', horizontal_alignment='left')
     q = g(lamb = result[0][1].right() - 1)
     print("Q {}".format(q))
     pq = point(q, size=10, color='green')
     tq = text3d("Q", q + labeloffset, color='green', horizontal_alignment='left')
     p2 = p1 + pp + tp + pq + tq
     show(p2, aspect_ratio=1)


.. end of output

**Solution of part c**

In the following, a method is described for finding two points :math:`U`
and :math:`V` which lie on line :math:`h` such that :math:`PUQV` forms a
rectangle.

The points :math:`P` and :math:`Q` are opposite corners of the rectangle.
It follows that the line :math:`g` between these points is a diagonal of
the rectangle. Since :math:`T` is exactly the center between those two points,
it has to be the center of the rectangle as well.

The two other points shall lie on the line :math:`h`. The same considerations
as before imply that the line :math:`h` between the points :math:`U` and :math:`V`
is the second diagonal of the rectangle.

To obtain a rectangle from a quadrangle with known diagonals, the diagonals have to have
the same length and the center of the diagonals has to be the intersection of these.
Thus, the two points :math:`U` and :math:`V` have to be at equal distance from :math:`T`,
just as the points :math:`P` and :math:`Q`.

With Sage, we first compute the distance between the points :math:`T` and :math:`Q`.
Subsequently, the value :math:`\mu` is determined for which the corresponding point on the
line :math:`h` is at equal distance from :math:`T` as the point :math:`Q`.
Then, the points :math:`U` and :math:`V` can be obtained by plugging :math:`\pm\mu`
into the equation of line :math:`h`.

.. sagecellserver::

     from sage.plot.polygon import Polygon

     disance = (t-q).norm()
     print("Distance between T and Q: {}".format(disance))
     result = solve(mu*vector([1, -2, 4]).norm() == disance, mu)
     print(result[0])
     mu_1 = result[0].right()
     mu_2 = -mu_1

     rectangle = line3d([q, t+mu_1*vector([1, -2, 4]), p, t+mu_2*vector([1, -2, 4]), q], color='orange', thickness=5)
     show(p2 + rectangle, aspect_ratio=1)


.. end of output
