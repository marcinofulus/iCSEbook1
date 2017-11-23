The cube
========

.. admonition:: Problem

  Consider the cube :math:`ABCDEFGH` depicted in the figure.
  
  The vertices :math:`D`, :math:`E`, :math:`F` and :math:`H` of this cube
  have the following coordinates in a cartesian coordinate system:
  :math:`D(0|0|-2)`, :math:`E(2|0|0)`, :math:`F(2|2|0)` and :math:`H(0|0|0)`. 
  
  .. image:: ../figs/wuerfel.png
    :align: center
  
  a) Add coordinate axes to the figure and label them accordingly.
     Give the coordinates of point :math:`A`. 
  
  b) The point :math:`P` lies on the edge :math:`[FB]` of the cube and
     has a distance of :math:`3` from point :math:`H`. Compute the coordinates of
     point :math:`P`.
  

**Solution of part a**

The point :math:`H` lies in the origin of the coordinate system. Moreover, point
:math:`E` lies on the positive :math:`x_1`-axis and point :math:`D` on the negative :math:`x_3`-axis.
Since the :math:`x_2`-coordinate of :math:`F` is positive, :math:`G` lies on the positive
:math:`x_2`-axis.
The coordinate system can be drawn as shown in the following figure.

.. image:: ../figs/wuerfel_koordinatenachsen.png
    :align: center

The coordinates of :math:`A` thus follow as :math:`(2|0|-2)`.

Based on the vectors from :math:`H` to :math:`D` and :math:`E`, respectively, one
can obtain this result also with the help of Sage.

.. sagecellserver::

   H = vector([0, 0, 0])
   E = vector([2, 0, 0])
   D = vector([0, 0, -2])
   EH = E-H
   DH = D-H
   print "Point A:", EH+DH


**Solution of part b**

Point :math:`P` can be determined as the intersection of the edge :math:`[FB]`
and a sphere centered on :math:`H` with radius :math:`3`.
The edge is parametrized by the equation 

.. math::
  
  [FB]: \vec{X} = \vec{F} + \lambda \cdot \vec{FB} = \begin{pmatrix} 2\\2\\0 \end{pmatrix}+\lambda\cdot \begin{pmatrix}0\\0\\-2\end{pmatrix} = \begin{pmatrix}2\\2\\-2\lambda \end{pmatrix},\quad \lambda\in[0,1]\,.

Moreover, the sphere fulfills the equation

.. math::
  
  \left(\vec{X}-\vec{H}\right)^2 = 3^2 \quad\Leftrightarrow\quad {x_1}^2 + {x_2}^2 + {x_3}^2 = 9\,.

By plugging the equation for the edge into the equation for the sphere, we obtain

.. math::
  
  2^2+2^2+(-2\lambda)^2 = 9,

which can be solved for :math:`\lambda^2`:

.. math::
  
  \lambda^2 = \frac{1}{4}

Formally, this equation has the two solutions :math:`\lambda_1=+\frac{1}{2}` and
:math:`\lambda_2=-\frac{1}{2}`. Because on the edge, the parameter can only
take values between :math:`0` and :math:`1`, only the solution :math:`\lambda=+\frac{1}{2}`
is admissible. The coordinates of :math:`P` are obtained by plugging this value into the
equation describing the edge: 

.. math::

  \vec{P} = \begin{pmatrix}2\\2\\-2\cdot \frac{1}{2} \end{pmatrix} = \begin{pmatrix}2\\2\\-1 \end{pmatrix}

The point :math:`P` hence has the coordinates :math:`(2|2|-1)`.

Alternatively we can determine the intersection point with Sage:
 
.. sagecellserver::

   var("Lambda")
   H = vector([0,0,0])
   F = vector([2,2,0])
   B = vector([2,2,-2])
   BF = B-F
   edge = F+Lambda*BF
   solutions = solve(edge*edge == 3^2, Lambda, solution_dict=True)
   if 0 <= solutions[0][Lambda] <= 1:
       solution = solutions[0]
   else:
       solution = solutions[1]
   print "Point P:", edge.substitute(solution)
