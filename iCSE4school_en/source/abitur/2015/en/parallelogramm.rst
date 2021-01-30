Parallelogram
=============

.. admonition:: Problem

  A straight line :math:`g` goes through the points A(0|1|2) and B(2|5|6).

  a) Demonstrate that the distance between points A and B is 6. The points C
     and D lie on :math:`g` and have each the distance 12 from A. Determine the
     coordinates of C and D.

  b) The points A, B and E(1|2|5) together with one more point shall form the
     vertices of a parallelogram. There exist several possibilities for the
     position of the fourth vertex. State the coordinates of two of the possible
     fourth vertices.

**Solution of part a**

The vector connecting points A and B has the coordinates (2, 4, 4). Its length
is therefore given by :math:`\sqrt{2^2+4^2+4^2}=\sqrt{36}=6`. The points C and
D can be obtained by adding or subtracting twice the vector from A to B to the
position vector of A. We thus obtain the points C (4|9|10) and D(-4|-7|-6).

We now implement this reasoning in Sage. First we calculate the distance between
points A and B. then we determine the coordinates of points C and D. Finally,
we verify that the distance between points C and D on the one hand and the
point A on the other hand equals indeed 12.

.. sagecellserver::

     a = vector([0, 1, 2])
     b = vector([2, 5, 6])
     print('Length of vector from A to B:', norm(b-a))
     c = a+2*(b-a)
     d = a-2*(b-a)
     print('Coordinates of C:', c)
     print('Coordinates of D:', d)
     print('Distance of points A and C:', norm(c-a))
     print('Distance of points A and D:', norm(d-a))

.. end of output

**Solution of part b**

Choosing two of three possible vectors between the given points, one adds
one vector to the end of the other one to obtain the fourth point.

We start by using the vector from A to B and from A to E:

.. sagecellserver::

     a = vector([0, 1, 2])
     b = vector([2, 5, 6])
     e = vector([1, 2, 5])
     a_to_b = b-a
     a_to_e = e-a
     f1 = b+a_to_e
     f2 = e+a_to_b
     f1, f2

.. end of output

The two ways to obtain the fourth vertex F yield the same result as it should
be. One possible fourth vertex therefore is given by F(3|6|9).

Another parallelogram is obtained, if point B as being diagonally opposite to
the new point.

.. sagecellserver::

     a = vector([0, 1, 2])
     b = vector([2, 5, 6])
     e = vector([1, 2, 5])
     b_to_a = a-b
     b_to_e = e-b
     f1 = a+b_to_e
     f2 = e+b_to_a
     f1, f2

.. end of output

For the sake of completeness we also determine the third possible vertex.

.. sagecellserver::

     a = vector([0, 1, 2])
     b = vector([2, 5, 6])
     e = vector([1, 2, 5])
     e_to_a = a-e
     e_to_b = b-e
     f1 = a+e_to_b
     f2 = b+e_to_a
     f1, f2

.. end of output
