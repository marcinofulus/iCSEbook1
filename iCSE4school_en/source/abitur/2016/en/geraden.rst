Lines and points in 3d
======================

.. admonition:: Problem

  The points :math:`A(-2|1|4)` and :math:`B(-4|0|6)` are given.
  
  a) Determine the coordinates of the point :math:`C` such that
     :math:`\vec{CA} = 2\cdot \vec{AB}`. 
  
  b) The straight line :math:`g` passes through points :math:`A` and :math:`B`.
     Consider straight lines fulfilling the conditions I and II:
     
     I. Each of the lines intersects the line :math:`g` orthogonally.
     
     II. The distance of each of these lines from point :math:`A` is :math:`3`.
     
     Determine an equation for one of those lines.
  

**Solution of part a**

We start by plugging :math:`\vec{CA}=\vec A - \vec C` and :math:`\vec{AB}=\vec B - \vec A`
into the equation

.. math::

  \vec A - \vec C = 2 \cdot \left(\vec B - \vec A\right)\,,

and, subsequently, solve for :math:`\vec C`:

.. math::

  \vec C = \vec A - 2 \cdot \left(\vec B - \vec A\right) = 3\cdot\vec A - 2\cdot\vec B = 3 \cdot\begin{pmatrix} -2\\1\\4\end{pmatrix} - 2\cdot\begin{pmatrix} -4\\0\\6\end{pmatrix} = \begin{pmatrix} 2\\3\\0\end{pmatrix} 

This calculation can quickly be checked with Sage:

.. sagecellserver::

   A = vector([-2, 1, 4])
   B = vector([-4, 0, 6])
   C = A - 2*(B-A)
   print C

The coordinates of :math:`C` are thus :math:`(2|3|0)`.

**Solution of part b**

First, we observe that the distance from :math:`B` to :math:`A` is :math:`3` because
the line :math:`[AB]` has the length

.. math::
  |\vec{AB}| = \left|\begin{pmatrix}-2\\-1\\2\end{pmatrix}\right| = \sqrt{(-2)^2+(-1)^2+2^2} = 3\,.
    
Sage can also confirm this: 

.. sagecellserver::

   A = vector([-2, 1, 4])
   B = vector([-4, 0, 6])
   BA = B-A
   print norm(BA)


Therefore, we choose :math:`B` as the point on the line
which has the required closest distance to :math:`A`.
We then are left with determining the direction vector :math:`\vec G` of the line.
It has to be perpendicular to :math:`\vec{AB}` and thus has to fulfill the condition

.. math::

  \vec{AB}\cdot\vec G = 0\,.

One can then simply guess a solution, for example

.. math::

  \vec G = \begin{pmatrix}1\\0\\1\end{pmatrix}\,.

The equation of the line :math:`G` thus is:

.. math::

  g: \vec X = \begin{pmatrix}-4\\0\\6\end{pmatrix} + \lambda \begin{pmatrix}1\\0\\1\end{pmatrix},\quad\lambda\in\mathbb{R}\,.

We can determine the direction vector with Sage choosing for example the
:math:`x_1`- and :math:`x_2`-coordinates at discretion. To check the above result, we set them
to :math:`1` and :math:`0`, respectively.

.. sagecellserver::

   var('G_3')
   G_1 = 1
   G_2 = 0
   G = vector([G_1, G_2, G_3])
   solution = solve(BA*G == 0, G_3, solution_dict=True)[0]
   print "Direction vector G:", G.substitute(solution)
