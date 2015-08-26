Bavarian final secondary-school examinations in mathematics 2015
================================================================

We consider the pyramid ABCDS with A(0|0|0), B(4|4|2), C(8|0|2), D(4|-4|0),
and S(1|1|-4). Its base is a parallelogram.

a) Prove that the parallelogram ABCD is a rectangle.

.. admonition:: Solution

  ABCD forms a rectangle if starting from one of the vertices the angle between
  the shortest vectors to the othe vertices is a right angle.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: print ' Distance A-B:', N(norm(b-a))
      sage: print ' Distance A-C:', N(norm(c-a))
      sage: print ' Distance A-D:', N(norm(d-a))
      sage: (b-a).dot_product(d-a)
  
  .. end of output
  
  It follows that the vectors from A to B and from A to D are orthogonal
  to each other. The point C lies diagonally opposite of A. Therfore, the
  parallelogram is indeed a rectangle. Since this solution depends on the
  information that ABCD is a parallelogram, we check alos the other three
  inner angles.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: (c-b).dot_product(a-b), (d-c).dot_product(b-c), (a-d).dot_product(c-d)
  
  .. end of output

b) The edge [AS] is normal to the base ABCD. The area of the base is :math:`24\sqrt{2}`.
   Determine the volume of the pyramid.

.. admonition:: Solution

  Since the vector from A to S is normal to the base, its length :math:`h` equals
  the height of the pyramid. The area of the base is given as :math:`A=24\sqrt{2}`.
  We first briefly check the latter result.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: d = vector([4, -4, 0])
      sage: norm(a-b)*norm(a-d)
  
  .. end of output
  
  The height of the pyramid is obtained as
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: s = vector([1, 1, -4])
      sage: norm(s-a)
  
  .. end of output
  
  Then, volume takes on the value :math:`V=\frac{h}{3}A=48`. This result can be
  confirmed directly with the help of Sage.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: s = vector([1, 1, -4])
      sage: Polyhedron(vertices=[a, b, c, d, s]).volume()
  
  .. end of output
