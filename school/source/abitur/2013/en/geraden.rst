Bavarian final secondary-school examinations in mathematics 2013
----------------------------------------------------------------

.. admonition:: Problem

  The lines
  :math:`g: \vec{X} = \begin{pmatrix}8\\1\\7\end{pmatrix} + \lambda\cdot
  \begin{pmatrix}3\\1\\2\end{pmatrix}`, :math:`\lambda \in \mathbb{R}`, and
  :math:`h: \vec{X} = \begin{pmatrix}-1\\5\\-9\end{pmatrix} + \mu \cdot 
  \begin{pmatrix}1\\-2\\4\end{pmatrix}`, :math:`\mu \in \mathbb{R}`, are given
  in a cartesian coordinate system.
  The lines :math:`g` and :math:`h` intersect in the point :math:`T`.

  a) Determine the coordinates of :math:`T`.

     *(result:* :math:`T(2|-1|3)`\ *)*
  
  b) Give the coordinates of two point :math:`P` and :math:`Q` which lie on 
     :math:`g` and are at equal distance from :math:`T`.
  
  c) Two points :math:`U` and :math:`V` of the line :math:`h` together with the
     points :math:`P` and :math:`Q` form the rectangle :math:`PUQV`. Describe
     a method of how to determine the coordinates of :math:`U` and :math:`V`.
  
**Solution of part a**

One obtains the intersection of the lines :math:`g` and :math:`h` by equating
the equations of the two lines. The equations for the three coordinates yield
the system of linear equations

.. math::

   3\lambda -\mu &= -9\\
   \lambda+2\mu &= 4\\
   2\lambda-4\mu &= -16


with the solution :math:`\lambda=-2`, :math:`\mu=3`. Plugging this into the
equation of the lines gives the given coordinates of the point :math:`T`.

The solution can be determined with the help of Sage:

.. sagecellserver::

    sage: var("lamb, mu")
    sage: g = vector([8, 1, 7]) + lamb * vector([3, 1, 2])
    sage: h = vector([-1, 5, -9]) + mu * vector([1, -2, 4])
    sage: result = solve([g[0] == h[0],
    sage:                 g[1] == h[1],
    sage:                 g[2] == h[2]], mu, lamb)
    sage: print("Values of the intersection: {}".format(result[0]))
    sage: t = h.subs(result[0][0])
    sage: print("Intersection at: T = {}".format(t))

.. end of output

To illustrate the result one can draw the lines in a three-dimensional
coordinate system with Sage.

.. sagecellserver::

    sage: labeloffset = vector([0, 0, 2])
    sage: pg = line([g(lamb = -4), g(lamb = 0)], color = 'blue')
    sage: tg = text3d("g", g(lamb = 0) + labeloffset, color='blue', horizontal_alignment='left')
    sage: ph = line([h(mu = 0), h(mu = 4)], color = 'purple')
    sage: th = text3d("h", h(mu = 0) + labeloffset, color='purple', horizontal_alignment='left')
    sage: pt = point(t, size=10, color='red')
    sage: tt = text3d("T", t + labeloffset, color='red', horizontal_alignment='left')
    sage: p1 = pg + tg + ph + th + pt + tt
    sage: show(p1, aspect_ratio=1)

.. end of output

**Solution of part b**

The intersection :math:`T` can be obtained by plugging the value of :math:`\lambda`,
which was determined in part a, into the equation of the line :math:`g`.
Now, two points :math:`P` and :math:`Q` which lie on :math:`g` and are at equal
distance from :math:`T` are sought after. For this, one has to add the same value
to :math:`\lambda` and substact it from :math:`\lambda`.

In part a, we found :math:`\lambda = -2`. The two points :math:`P` and :math:`Q`
can be obtained by for example plugging the values :math:`\lambda = -1` and
:math:`\lambda = -3` into the equations of the line. These points are added to the
coordinate system.

.. sagecellserver::

    sage: p = g(lamb = result[0][1].right() + 1)
    sage: print("P {}".format(p))
    sage: pp = point(p, size=10, color='green')
    sage: tp = text3d("P", p + labeloffset, color='green', horizontal_alignment='left')
    sage: q = g(lamb = result[0][1].right() - 1)
    sage: print("Q {}".format(q))
    sage: pq = point(q, size=10, color='green')
    sage: tq = text3d("Q", q + labeloffset, color='green', horizontal_alignment='left')
    sage: p2 = p1 + pp + tp + pq + tq
    sage: show(p2, aspect_ratio=1)


.. end of output

**Solution of part c**

In the following, a method for finding further points :math:`U` and :math:`V`
which lie on the line :math:`h` such that :math:`PUQV` forms a rectangle is described.

The points :math:`P` and :math:`Q` are opposing corners of the rectangle.
It follows that the line :math:`g` between these points is a diagonal of
the rectangle. Since :math:`T` is exactly the center between those two points,
it has to be the center of the rectangle as well.

The two other points shall lie on the line :math:`h`. The same considerations
as before yield that the line :math:`h` between the points :math:`U` and :math:`V`
is the second diagonal of the rectangle.

To obtain a rectangle from a quadrangle with known diagonals, the diagonals have to have
the same length and the center of the diagonals has to be intersection of these.
Thus, the two points :math:`U` and :math:`V` have to be at equal distance from :math:`T`,
just as the points :math:`P` and :math:`Q`.

With Sage, we first compute the distance between the points :math:`T` and :math:`Q`.
Subsequently, the value :math:`\mu?` is determined for which the corresponding point on the
line :math:`h` is at equal distance from :math:`T` as the point :math:`Q`.
With this, the points :math:`U` and :math:`V` can be obtained by plugging :math:`\pm\mu`
into the equation of the line :math:`h`.

.. sagecellserver::

    sage: from sage.plot.polygon import Polygon

    sage: disance = (t-q).norm()
    sage: print("Distance between T and Q: {}".format(disance))
    sage: result = solve(mu*vector([1, -2, 4]).norm() == disance, mu)
    sage: print(result[0])
    sage: mu_1 = result[0].right()
    sage: mu_2 = -mu_1

    sage: rectangle = line3d([q, t+mu_1*vector([1, -2, 4]), p, t+mu_2*vector([1, -2, 4]), q], color='orange', thickness=5)
    sage: show(p2 + rectangle, aspect_ratio=1)


.. end of output
