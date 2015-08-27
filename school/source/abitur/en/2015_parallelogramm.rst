Bavarian final secondary-school examinations in mathematics 2015
================================================================

A straight line g goes through the points A(0|1|2) and B(2|5|6).

a) Demonstrate that the distance between points A and B is 6. The points C and D
   lie on g and have each the distance 12 from A. Determine the coordinates of
   C and D.

.. admonition:: Solution

  The vector connecting points A and B has the coordinates (2, 4, 4). Its length
  is therefore given by :math:`\sqrt{2^2+4^2+4^2}=\sqrt{36}=6`. The points C and
  D can be obtained by adding or subtracting twice the vector from A to B to the
  position vector of A. We thus obtain the points C (4|9|10) and D(-4|-7|-6).
  
  We now implement this reasoning in Sage. First we calculate the distance between
  points A and B. then we determine the coordinates of points C and D. Finally,
  we verify that the distance between points C and D on the one hand and the
  point A on the other hand equals indeed 12.

  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: print 'Length of vector from A to B:', norm(b-a)
      sage: c = a+2*(b-a)
      sage: d = a-2*(b-a)
      sage: print 'Coordinates of C:', c
      sage: print 'Coordinates of D:', d
      sage: print 'Distance of points A and C:', norm(c-a)
      sage: print 'Distance of points A and D:', norm(d-a)
  
  .. end of output

b) The points A, B and E(1|2|5) together with one more point shall form the
   vertices of a parallelogram. There exist several possibilities for the
   position of the fourth vertex. State the coordinates of two of the possible
   fourth vertices.

.. admonition:: Solution

  Choosing two of three possible vectors between the given points, one adds
  one vector to the end of the other one to obtain the fourth point.
  
  We start by using the vector from A to B and from A to E:
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: a_to_b = b-a
      sage: a_to_e = e-a
      sage: f1 = b+a_to_e
      sage: f2 = e+a_to_b
      sage: f1, f2
  
  .. end of output
  
  The two ways to obtain the fourth vertex F yield the same result as it should
  be. One possible fourth vertex therefore is given by F(3|6|9).
  
  Another parallelogram is obtained, if point B as being diagonally opposite to
  the new point.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: b_to_a = a-b
      sage: b_to_e = e-b
      sage: f1 = a+b_to_e
      sage: f2 = e+b_to_a
      sage: f1, f2
  
  .. end of output
  
  For the sake of completeness we also determine the third possible vertex.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: e_to_a = a-e
      sage: e_to_b = b-e
      sage: f1 = a+e_to_b
      sage: f2 = b+e_to_a
      sage: f1, f2

  .. end of output
