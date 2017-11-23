Planes and vectors
==================

.. admonition:: Problem
  
  The plane :math:`E: 2x_1+x_2+2x_3=6` as well as the points :math:`P(1|0|2)`
  and :math:`Q(5|2|6)` are given.
  
  a) Show that the line passing through the points :math:`P` and :math:`Q` is perpendicular
     to the plane :math:`E`.
  
  b) The points :math:`P` and :math:`Q` are symmetric about the plane :math:`F`.
     Determine an equation for :math:`F`.
  
**Solution of part a**

The normal vector :math:`\vec n` of the plane :math:`E` can be read off the plane's equation as

.. math::
  \vec n = \begin{pmatrix}2\\1\\2\end{pmatrix}

We choose the direction vector 

.. math::
  \vec{PQ} = \vec Q - \vec P = \begin{pmatrix}5\\2\\6\end{pmatrix}-\begin{pmatrix}1\\0\\2\end{pmatrix}=\begin{pmatrix}4\\2\\4\end{pmatrix}

for the line :math:`PQ`. It can be easily verfied that :math:`\vec{PQ}=2\vec n` is true.
The vectors :math:`\vec{PQ}` and :math:`\vec n` are thus collinear and therefore
the line :math:`PQ` is perpendicular to the plane :math:`E`.

We can check this graphically with Sage:

.. sagecellserver::
  
   def E(x1, x2, x3):
       return 2*x1 + x2 + 2*x3 - 6

   P = vector([1, 0, 2])
   Q = vector([5, 2, 6])
  
   p1 = implicit_plot3d(E, (-1, 7), (-4, 4), (-1, 7), color="blue")
   p2 = line([P, Q], color="red", thickness=2)
   labeloffset = vector([0, 0, 0.3])
   p3 = point(P, size=10)+text3d("P", P+labeloffset, color="black", horizontal_alignment="right")
   p4 = point(Q, size=10)+text3d("Q", P+labeloffset, color="black", horizontal_alignment="right")
  
   show(p1+p2+p3+p4, aspect_ratio=1)

**Solution of part b**

Since the points :math:`P` and :math:`Q` are supposed to be symmetric about
the plane :math:`F`, the line :math:`PQ` is perpendicular to this plane.
Furthermore, we have seen in part a that :math:`PQ` is also perpendicular to
plane :math:`E`. Thus, :math:`E` and :math:`F` are parallel and have the same
normal vector :math:`\vec n`.

We choose the midpoint of the line :math:`[PQ]` as our reference point

.. math::

  \vec A = \frac{1}{2}\cdot\left(\vec P + \vec Q\right) = \frac{1}{2}\cdot\left(\begin{pmatrix}1\\0\\2\end{pmatrix}+\begin{pmatrix}5\\2\\6\end{pmatrix}\right) = \begin{pmatrix}3\\1\\4\end{pmatrix}

on the plane :math:`F`. Its equation

.. math::
  
  \left(\vec X - \vec A\right)\cdot \vec n = 0

thus reads

.. math::
  
  2 x_1 + x_2 + 2 x_3 - 15 = 0\,.

This can again be verified by means of a 3D graphic:

.. sagecellserver::

   def F(x1, x2, x3):
       return 2*x1 + x2 + 2*x3 - 15

   p5 = implicit_plot3d(F, (-1, 7), (-4, 4), (-1, 7), color="green")
   show(p1+p2+p3+p4+p5, aspect_ratio=1) 
