Pyramid
=======

.. admonition:: Problem

  The figure depicts a model of an exhibition pavilion which has the shape of a
  regular four-sided pyramid with a square base and is placed on a horizontal
  surface. In this model, the triangle :math:`BCS` describes the southern exterior
  wall of the pavilion. In the coordinate system, the length unit corresponds to 1 m,
  i.e. the base of the pavilion has a lateral length of 12 m.
  
  .. image:: ../figs/pyramide.png
         :align: center
  
  a) Give the coordinates of the point :math:`B` and determine the volume of the
     pavilion.
  
  b) In the model, the southern exterior wall of the pavilion lies in the plane 
     :math:`E`. Determine the equation of :math:`E` in its point-normal form.

     *(possible result:* :math:`E : 4x_2+3x_3-48=0`\ *)*
  
  c) The interior work of the pavilion requires a thin and as short as possible
     bar between the center point of the base and the southern exterior wall.
     Determine at which height above the base the bar has to be attached to the
     exterior wall.
  
  Solar panels are mounted flush on some part of the southern exterior wall.
  In the model, the solar panels cover a triangular surface the vertices of which
  are the top :math:`S`, as well as the centers of the edges :math:`[SB]` and
  :math:`[SC]`.
  
  d) Find the area of the surface covered by the solar panels.
  
  e) The electric power delivered by the solar panels depends amongst other
     things on the magnitude of the inclination angle with respect to the
     horizontal. The table gives the percentage of the delivered power compared
     to the maximally possible power as a function of the inclination angle.
     Estimate this percentage for the solar panels of the pavilion - after
     calculation of the inclination angle - by making use of the table.
  
  ================================ === === === ==== ==== === === === === ===
  inclination angle                0°  10° 20° 30°  40°  50° 60° 70° 80° 90°
  ================================ === === === ==== ==== === === === === ===
  percentage of maximal power      87% 93% 97% 100% 100% 98% 94% 88% 80% 69%
  ================================ === === === ==== ==== === === === === ===
  
**Solution of part a**

The coordinates of point :math:`B` can be computed by adding the vectors
of :math:`D` to :math:`A` and :math:`C`, respectively, yielding :math:`B(12|12|0)`.

The volume :math:`V` of the pyramid can be determined by means of the formula

.. math::

  V = \frac{1}{3}Ah=\frac{1}{3}144\cdot 8=384

with base area :math:`A` and height `h`. 
In general, the formula

.. math::

  V = \frac{1}{3} (\vec{A} \times \vec{C}) \cdot \vec{S}\,,

holds, which can easily be evaluated with Sage.

.. sagecellserver::

     a = vector([12, 0, 0])
     d = vector([0, 0, 0])
     c = vector([0, 12, 0])
     s = vector([6, 6, 8])

     b = a + c
     print("B = {}".format(b))

     v = 1/3 * a.cross_product(b) * s
     print("The volume of the pyramid is {}m³.".format(v))

.. end of output

**Solution of part b**

The plane :math:`E` which is given by the points :math:`B`, :math:`C` and
:math:`S` shall be computed. The equation is to be given in normal-point form.
One obtains the normal vector by evaluating the cross-product of two vectors
spanning the plane from the point vectors.

.. math::

  \vec{n} = (\vec{C}-\vec{B}) \times (\vec{S} - \vec{B})
          = \begin{pmatrix}-12\\0\\0\end{pmatrix}\times\begin{pmatrix}-6\\-6\\8\end{pmatrix}
          = \begin{pmatrix}0\\96\\72\end{pmatrix}\,.

With the vector :math:`\vec{B}` to point :math:`B` on the plane, the equation
of the plane in point-normal form thus becomes

.. math::

  E : \vec{n} \cdot \left( \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} - \vec{B}\right) 
      = 96(x_2-12)+72x_3 = 0

or

.. math::

  E : 96x_2+72x_3-1152=0\,.

With Sage, one obtains this result as follows:

.. sagecellserver::

     var("x_1, x_2, x_3")
     n = (c-b).cross_product(s-b)
     print("Normal vector: {}".format(n))
     E = n.dot_product(vector([x_1, x_2, x_3])-b) == 0
     print("E : {}".format(E))

.. end of output

The result corresponds up to a factor of 48 to the result given in the problem.

**Solution of part c**

The bar from the center of the base :math:`S' (6|6|0)` to the southern exterior
wall shall be as short as possible. Thus, the normal to the plane :math:`E`
through the point :math:`S'` is sought after.
Once the normal is determined, we can compute the intersection with the plane
and hence read off the height from its :math:`x_3`-coordinate.

The normal vector :math:`\vec{n}` of the plane was already calculated in part b.
We define the auxiliary line

.. math::

  \vec h(t) = \vec x_{S'}+t\vec n = \begin{pmatrix}6\\6\\0\end{pmatrix}
  +t\begin{pmatrix}0\\96\\72\end{pmatrix}

and seek its intersection with the plane :math:`E`. Plugging the coordinates
:math:`x_2(t)` und :math:`x_3(t)` into the equation of the plane and solving
for :math:`t` yields :math:`t=\frac{1}{25}`. The desired height then equals
2.88 m.

This result can be confirmed by Sage by following the method just described
and making use of the abstractly formulated equation of the plane derived
in part b.

.. sagecellserver::

     var("t")
     h = vector([6, 6, 0]) + n * t
     intersection_equation = n.dot_product(h-b) == 0
     print(intersection_equation)

     result = solve(intersection_equation, t)
     t0 = result[0]
     print(t0)

     p = h.subs(t0)
     print("Height of attachment: {} m = {} m".format(p[2], float(p[2])))

.. end of output

**Solution of part d**

The area can be computed with the help of the cross-product:

.. math::

  F = \frac{1}{2}\left\vert\frac{1}{2}(\vec{S}-\vec{B})\times
         \frac{1}{2}(\vec{S}-\vec{C})\right\vert\,.

We leave the calculations to Sage and obtain

.. sagecellserver::

     sb2 = (s-b)/2
     sc2 = (s-c)/2
     F = abs(sb2.cross_product(sc2))/2
     print("F = {}m²".format(F))
    
.. end of output

**Solution of part e**

The inclination angle of the plane :math:`E` with respect to the :math:`x_1`-:math:`x_2`-plane equals the
angle between the two normals of the planes. For the :math:`x_1`-:math:`x_2`-plane, the normal vector
corresponds to the unit vector along the :math:`x_3`-direction. The normal vector of the plane
:math:`E` is the vector :math:`\vec n` which was determined in part b. The desired angle
can be computed by means of the following formula:

.. math::

  \phi = \cos^{-1}\left( \frac{\vec{n}\cdot \vec{e}_3}{\vert\vec{n}\vert\,\vert \vec{e}_3\vert}\right).
  
.. sagecellserver::

     x_3 = vector([0,0,1])
     print("Inclination angle: {}°".format((arccos(n*x_3/n.norm()) * 180/pi).n(digits=3)))
    
.. end of output

For an angle of 53,1°, one can estimate the delivered power with the help of the table
to be 96 to 97% of the maximal power.
