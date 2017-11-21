.. -*- coding: utf-8 -*-

First order differential equations
==================================


About this lesson plan
----------------------

This is a lesson plan for indented for realization during  2h lesson activities. 

It has been developed during work in iCSE4school project based on
lesson carried out in 2015-2017 at XXXIII LO M. Kopernika w Warszawie.

It was prepared by   Mirosław Malinowski based on his lesson.


.. only:: html

   .. admonition::  Attention!

      In each of the "code" cells you can change any number, text or
      instruction. In order to  return to the original version  refresh
      the webpage.  Sometimes the next code depends on variables defined from the previous one,
      so one has to execute cells in order of apperance.


      

Lesson Plan
-----------


Based on the book C. Quinn, C. Sangwin, R. Haese. M. Haese,
"Mathematics for the international student. Mathematics HL (Option):
Calculus, Haese and Harris Publications 2013.

We will only consider differential equations of the form:

:math:`\normalsize f(x,y) \Large \frac{dy}{dx} \normalsize +g(x,y)=0`, where  :math:`\normalsize y=y(x)`.

These are known as first order differential equations since there is only one derivative in the equation, and it is a first derivative.

**A function**   :math:`y=y(x)`  **is said to be a solution**  of a differential equation if it satisfies the differential equation for all values of  :math:`x`  **  in the domain of  :math:`y` .

Slope Fields
------------

Given any first order differential equation of the form  :math:`\normalsize f(x,y) \Large \frac{dy}{dx} \normalsize +g(x,y)=0`, where  :math:`\normalsize y=y(x)`  we can write

:math:`\Large \frac{dy}{dx} = \frac{-g(x,y)}{f(x,y)}\normalsize =h(x,y)`

We may therefore deduce the gradient of the solution curves to the differential equation at any point  :math:`(x,y)`in the plane where  :math:`h(x,y)`is defined, and hence the equations of the tangents to the solution curves.

**The set of tangents at all points  :math:`(x,y)` is called the slope field of the differential equation** .

By representing the gradients at many different grid points as line segments, we obtain a slope field of the tangents to the solution curves. Now the tangent to a curve approximates that curve at and near the points of tangency. Therefore, by following the direction given by the slope field at a given point, we can approximate solution curves of the differential equation.

 ***Example 1*** 

Consider the differential equation  :math:`\Large \frac{dy}{dx} \normalsize =x(y-1)`.

a) Construct the slope field using integer grid points for  :math:`x, y \in [-4, 4]`.

b) Sketch the particular solution curve through  :math:`P(1, 2)`. Sketch the particular solution curves through several other points of your choice \- adjust the parameters of the graph respectively.

c) An  **isocline**  is the set of all points on a slope field at which the tangents to the solution curves have the same gradient. Identify any isoclines on your slope fields.

***Solution:***


.. sagecellserver::

    sage: a,b,x,x0,y0 = var('a b x x0 y0')
    sage: y = function('y', x)
    sage: de = diff(y,x) == x*(1-y)
    sage: general = desolve(de, y).expand()
    sage: x0 = 1
    sage: y0 = 2
    sage: particular = desolve(de, [y,x], [x0,y0]).expand()
    sage: html('General solution of the equation is $y=$' "$%s$"%latex(general) + "$")
    sage: html('The particular solution of the equation for $y=$' +latex(y0)+ ' when $x=$' +latex(x0)+ ' is $y=$ ' "$%s$"%latex(particular) + "$")
    sage: p1 = plot_slope_field(a*(1-b), (a,-2,2), (b,-2,3), figsize = (6,4), headaxislength = 3, headlength = 3)
    sage: p2 = plot (particular, (x, -2, 2))
    sage: p1+p2

.. end of output

**EXERCISES**

Using SAGE solve the following problems. You can modify the procedure given above or write your own.

1. Consider the differential equation  :math:`\Large \frac{dy}{dx} \normalsize =2x-y`.

a) Find the general solution to the differential equation.

b) Construct the slope field of the differential equation.

c) Find the solution curve which passes through  :math:`P(0, 1)` and its equation.

2. Consider the differential equation  :math:`\Large \frac{dy}{dx} \normalsize =10y \tan(x)`, where  :math:`x` is measured in degrees. Draw the slope field using integer grid points, where  :math:`x, y \in [-2, 2]`.

3. Draw the slope field for the differential equation  :math:`\Large \frac{dy}{dx} \normalsize  = \Large \frac{-1+x^2+4y^2}{y-5x+10}`.

a) Sketch the particular solution curve passing through the origin.

b) Sketch the isocline corresponding to:

(i)  :math:`\Large \frac{dy}{dx}` being undefined.

(ii)  :math:`\Large \frac{dy}{dx} \normalsize =0`.



Separable Differential Equations
--------------------------------

Differential equations which can be written in the form  :math:`\large \frac{dy}{dx} \normalsize = \large \frac{f(x)}{g(y)}`, where  :math:`y=y(x)`, are known as separable differential equations.

We can notice that if  :math:`\Large \frac{dy}{dx} \normalsize = \Large \frac{f(x)}{g(y)}`, then  :math:`\normalsize g(y) \Large \frac{dy}{dx} \normalsize = f(x)`. Now, integrating both sides of the equation with respect to  :math:`x` we get  :math:`\large \int g(y) \large \frac{dy}{dx} \normalsize dx =\int f(x)dx` and by the Chain Rule we can reduce the problem of solving the differential equation to the problem of finding two separate integrals

.. math::

   \large \int g(y)dy =\int f(x)dx

   
***Example 2:*** 

Find the general solution of the differential equation  :math:`\Large \frac{dy}{dx} \normalsize = \Large \frac{x^2y+y}{x^2-1}`. Verify your results with SAGE and sketch the solution curve passing through the point  :math:`P(x_0, y_0)` if:

a)  :math:`(x_0, y_0) = (2,3)`

b)  :math:`(x_0, y_0) = (0,0)`

c)  :math:`(x_0, y_0) = (-2,1)`

***Solution:*** 


.. sagecellserver::

    sage: x, x0, y0 = var('x x0 y0')
    sage: y = function('y', x)
    sage: de = diff(y,x) == (x^2*y+y)/(x^2-1)
    sage: general = desolve(de, y)
    sage: html('General solution of the equation is $y=$'"$%s$"%latex(general) + '.' + "$")
    sage: x0 = -2
    sage: y0 = 1
    sage: particular = desolve(de, [y,x], [x0, y0]).simplify()
    sage: html('The particular solution of the equation is $y=$'"$%s$"%latex(particular) + '.' + "$")
    sage: p1 = plot (particular, x, xmin = -3, xmax = 4, ymin = -10, ymax = 10, axes_labels=['$x$','$f(x)$'], exclude = [-1], detect_poles = 'show', figsize = (6, 4), color = 'blue', legend_label="$y =$ $%s$"%latex(particular))
    sage: p1


.. end of output


**EXERCISES**

1. Solve the following initial value problems:

a)  :math:`(2-x)\Large \frac{dy}{dx} \normalsize = 1`,   :math:`y(4) = 3`.

b)  :math:`\Large \frac{dy}{dx} \normalsize - 3x \sec(x) = 0`,   :math:`y(1) = 0`.

c)  :math:`e^y(2x^2 + 4x +1)\Large \frac{dy}{dx} \normalsize = (x+1)(e^y +3)`,   :math:`y(0)=2`.

d)  :math:`x \Large \frac{dy}{dx} \normalsize = \cos^2(y)`,   :math:`y(e) = \large \frac {\pi}{4}`.

2. Solve  :math:`\Large \frac{dy}{dx} \normalsize = \Large \frac{3y-xy}{x^2-1}`,   :math:`y(0) = 1`.



Homogeneous Differential Equations
----------------------------------

Differential equations of the form  :math:`\large \frac{dy}{dx} \normalsize = f\large \left ( \frac{y}{x} \right)`, where  :math:`\normalsize y=y(x)` are known as homogeneous differential equations .

They can be solved using the substitution  :math:`y=vx`, where  :math:`v=v(x)`. The substitution will always reduce the differential equation to a separable differentiable equation.

 

***Example 3:***

Use the substitution  :math:`y=vx`, where  :math:`v=v(x)`, to find general solution of the differential equation  :math:`\Large \frac{dy}{dx} \normalsize = \Large \frac{x+2y}{x}`. Verify your results with SAGE and find the particular solution if  :math:`y=\large \frac{3}{2}` when  :math:`x=3`.

 ***Solution:*** 


.. sagecellserver::

    sage: x = var('x')
    sage: y = function('y',x)
    sage: de = (diff(y,x) == (x+2*y)/x)
    sage: general = desolve (de, y).expand()
    sage: html('General solution of the equation is $y=$'"$%s$"%latex(general) + '.' + "$")
    sage: particular = desolve(de, [y,x], [3,1.5]).expand()
    sage: html('The particular solution of the equation is $y=$'"$%s$"%latex(particular) + '.' + "$")
    sage: p1 = plot (particular, x, xmin = -3, xmax = 4, ymin = -3, ymax = 10, axes_labels=['$x$','$f(x)$'], detect_poles = 'show', figsize = (6, 4), color = 'blue', legend_label="$y =$ $%s$"%latex(particular))
    sage: p1

.. end of output

The Integrating Factor Method
-----------------------------

Suppose a first order linear differential equation is of the form  :math:`\Large \frac{dy}{dx} \normalsize +P(x)y=Q(x)`, where  :math:`\normalsize y=y(x)`.

1. Calculate the integrating factor  :math:`I(x) = e^ {\int P(x)dx}`. You do not need a constant of integration.

2. Multiply the differential equation through by  :math:`I(x)`.

3. Simplify the LHS and hence obtain  :math:`I(x)y=\int I(x)Q(x)dx +C`, where  :math:`C` is a constant.

4. Integrate to obtain the general solution.

***Example 4:***

Solve the differential equation  :math:`\Large \frac{dy}{dx} \normalsize +3x^2y=6x^2`. Find the particular solution of the equation for the initial condition  :math:`y(0) = 1`.

 ***Solution:*** 


.. sagecellserver::

    sage: var('x y C')
    sage: var('dy,dx')
    sage: var('x0 y0')
    sage: Y = function('Y', x)
    sage: de = diff(Y,x) + 3*x^2*Y == 6*x^2
    sage: I = e^(integral(3*x^2, x)) #integrating factor
    sage: html('1. The integrating factor of the equation is $I(x)=$' "$%s$"%latex(I) + '.' + "$")
    sage: de1 = ((I*de).subs({diff(Y,x):dy/dx,Y:y})*dx).full_simplify().expand()
    sage: html('2. Multiplying both sides of the equation by the integrating factor ' "$%s$"%latex(I) + ' we get ' "$%s$"%latex(de1) + '.' + "$")
    sage: RHS = integral(de1.rhs(),x).coefficient(dx) # RHS.show()
    sage: LHS = y*I
    sage: html('3. Taking integrals on both sides of the equation we get: ')
    sage: eqn = (LHS == RHS + C)
    sage: eqn.show()
    sage: solution = solve(eqn, y)[0].expand()
    sage: html('4. Therefore, general solution of the equation is ' "$%s$"%latex(solution) + '.' + "$")
    sage: x0 = 0
    sage: y0 = 1
    sage: particular = desolve(de, [Y,x], [x0,y0]).expand()
    sage: html('The particular solution of the equation for $y=$ '+latex(y0)+ ' when $x=$ ' +latex(x0)+ 'is $y=$'"$%s$"%latex(particular) + '.' + "$")

.. end of output

**PROBLEM**

Using the above procedure solve the initial value problem  :math:`\cos x \Large \frac{dy}{dx} \normalsize =y \sin x + \sin 2x`,   :math:`y(0) = 1`.



**EXERCISES**

1. Solve the following using the integrating factor method:

a)  :math:`\Large \frac{dy}{dx} \normalsize +4y=12`.

b)  :math:`x \Large \frac{dy}{dx} \normalsize +y=x \cos x`.

c)  :math:`\Large \frac{dy}{dx} \normalsize -3y=e^x`,   :math:`y(0) = 2`.

d)  :math:`\Large \frac{dy}{dx} \normalsize +y=x+e^x`,   :math:`y(1) = 1.`

2. Solve the differential equation  :math:`(x+1)y + x \Large \frac{dy}{dx} \normalsize =x - x^2`.


