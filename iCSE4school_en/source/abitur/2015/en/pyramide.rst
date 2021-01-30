Pyramid and vectors
===================

.. admonition:: Problem

  We consider the pyramid ABCDS with A(0|0|0), B(4|4|2), C(8|0|2), D(4|-4|0),
  and S(1|1|-4). Its base is a parallelogram.

  a) Prove that the parallelogram ABCD is a rectangle.

  b) The edge [AS] is normal to the base ABCD. The area of the base is
     :math:`24\sqrt{2}`. Determine the volume of the pyramid.

**Solution of part a**

ABCD forms a rectangle if starting from one of the vertices the angle between
the shortest vectors to the othe vertices is a right angle.

.. sagecellserver::

     a = vector([0, 0, 0])
     b = vector([4, 4, 2])
     c = vector([8, 0, 2])
     d = vector([4, -4, 0])
     print(' Distance A-B:', N(norm(b-a)))
     print(' Distance A-C:', N(norm(c-a)))
     print(' Distance A-D:', N(norm(d-a)))
     (b-a).dot_product(d-a)

.. end of output

It follows that the vectors from A to B and from A to D are orthogonal
to each other. The point C lies diagonally opposite of A. Therfore, the
parallelogram is indeed a rectangle. Since this solution depends on the
information that ABCD is a parallelogram, we check alos the other three
inner angles.

.. sagecellserver::

     a = vector([0, 0, 0])
     b = vector([4, 4, 2])
     c = vector([8, 0, 2])
     d = vector([4, -4, 0])
     (c-b).dot_product(a-b), (d-c).dot_product(b-c), (a-d).dot_product(c-d)

.. end of output

**Solution of part b**

Since the vector from A to S is normal to the base, its length :math:`h` equals
the height of the pyramid. The area of the base is given as :math:`A=24\sqrt{2}`.
We first briefly check the latter result.

.. sagecellserver::

     a = vector([0, 0, 0])
     b = vector([4, 4, 2])
     d = vector([4, -4, 0])
     norm(a-b)*norm(a-d)

.. end of output

The height of the pyramid is obtained as

.. sagecellserver::

     a = vector([0, 0, 0])
     s = vector([1, 1, -4])
     norm(s-a)

.. end of output

Then, volume takes on the value :math:`V=\frac{h}{3}A=48`. This result can be
confirmed directly with the help of Sage.

.. sagecellserver::

     a = vector([0, 0, 0])
     b = vector([4, 4, 2])
     c = vector([8, 0, 2])
     d = vector([4, -4, 0])
     s = vector([1, 1, -4])
     Polyhedron(vertices=[a, b, c, d, s]).volume()

.. end of output
