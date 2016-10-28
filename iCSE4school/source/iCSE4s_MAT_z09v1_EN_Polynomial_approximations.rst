.. -*- coding: utf-8 -*-


Polynomial  approximation
=========================

1. Definition
^^^^^^^^^^^^^

The  **factorial**  of a integer   *n*  , denoted by   *n*  !, is the prodact of all positive integers less than or equal to   *n*  .

<dl><dd><span style="background-color: #ffffff;"><span style="background-color: #ffffff;"><span class="mwe-math-mathml-inline mwe-math-mathml-a11y" style="display: none;"> 5 ! = 5 × 4 × 3 × 2 × 1 = 120.   {\displaystyle 5!=5\times 4\times 3\times 2\times 1=120.\ } </span></span></span>
<p><span style="background-color: #ffffff;"><span style="font-size: 15px;">\[   0!=1 \\  1!=1 \\  n!=1 \cdot 2 \cdot 3 \cdot ... \cdot n ,~ n>1 \] </span></span></p>
<p><span style="background-color: #ffffff;">For example:</span></p>
<p>\[ 4!=4 \cdot 3 \cdot 2 \cdot 1 \cdot 1 = 24 \]</p>
</dd></dl>

Factorial in Sage


::

    sage: n=1
    sage: for i in range(1,11):
    ...       n=n*i
    ...       print i, '!=', n
    1 != 1
    2 != 2
    3 != 6
    4 != 24
    5 != 120
    6 != 720
    7 != 5040
    8 != 40320
    9 != 362880
    10 != 3628800

.. end of output

or


::

    sage: for i in range(1,11):
    ...       print i, '!=', factorial(i)
    1 != 1
    2 != 2
    3 != 6
    4 != 24
    5 != 120
    6 != 720
    7 != 5040
    8 != 40320
    9 != 362880
    10 != 3628800

.. end of output


2a. Derivative \- introduction
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Derivative will be construed as a mathematical operation on the function.

Basic formulas:

\[  n'=0 \\ x'=1 \\ (x^n)'= n \cdot x^{n\-1}, n>1 \\ (sin(x))'=cos(x) \\ (cos(x))'=\-sin(x) \]

The following examples Sage with operation: diff


::

    sage: f=x^5
    sage: show("f(x)=",f)
    sage: show("f'(x)=",f.diff(x))
    <html>...</html>
    <html>...</html>

.. end of output

::

    sage: f=sin(x)
    sage: show("f(x)=",f)
    sage: show("f'(x)=",f.diff(x))
    <html>...</html>
    <html>...</html>

.. end of output

2b. Subsequent expressions are derived:
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

f, g \- functions, c \- real number

\[ (c \cdot f)' =c \cdot f' \\ (f\+g)'= f' \+ g' \\ (f\-g)'= f' \- g' \\ (f \cdot g)' = f' \cdot g \+ f \cdot g' \\ (f/g)'= (f' \cdot g \- f \cdot g')/g^2  \]

Comments

The number before the variable does not change operations on the derivative. 

Algebraic expressions separated by \+ or \- count separately.

Examples


::

    sage: f=5*x^3+x^2-4*x-9
    sage: show("f(x)=",f,",       f'(x)=",f.diff(x))
    sage: g=x^3-x^2+x-1
    sage: show("g(x)=",g,",        g'(x)=",g.diff(x))
    <html>...</html>
    <html>...</html>

.. end of output

::

    sage: f=x*cos(x)
    sage: show("f(x)=",f,",       f'(x)=",f.diff(x))
    sage: g=x^2*sin(x)
    sage: show("g(x)=",g,",       g'(x)=",g.diff(x))
    <html>...</html>
    <html>...</html>

.. end of output

::

    sage: f=sin(x)/cos(x)
    sage: show("f(x)=",f,",      f'(x)=",f.diff(x))
    <html>...</html>

.. end of output

2c. Derivatives of derivatives \- Derivatives of higher orders.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Of course, we can calculate the derivative of a derivative.

Derivatives of higher orders written in the following manner:

\[  f''(x) , \hspace{1cm}  f'''(x) , \hspace{1cm}  f''''(x),\hspace{1cm}... \\ f^{(2)}(x) , \hspace{1cm}  f^{(3)}(x) , \hspace{1cm}  f^{4}(x),\hspace{1cm}... \]

Below calculation of higher order derivatives of the Sage:


::

    sage: f=x^3-3*x^2
    sage: show ('f(x)=',f, "          f'(x)=", f.diff(x))
    sage: show ("f''(x)=",f.diff(x,2),"         f'''(x)=", f.diff(x,3))
    <html>...</html>
    <html>...</html>

.. end of output

::

    sage: f=sin(x)
    sage: print 'f(x)=',f
    sage: print "f'(x)=",f.diff(x)
    sage: print "f''(x)=",f.diff(x,2)
    sage: print "f'''(x)=",f.diff(x,3)
    sage: print "f''''(x)=",f.diff(x,4)
    f(x)= sin(x)
    f'(x)= cos(x)
    f''(x)= -sin(x)
    f'''(x)= -cos(x)
    f''''(x)= sin(x)

.. end of output

2d. Calculating the value of the derivative at the point
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

::

    sage: f=sin(x)
    sage: w1=f.diff(x).substitute(x = 0)
    sage: w2=f.diff(x).substitute(x = pi/3)
    sage: show("f(x)=", f, ",      f'(x)=",f.diff(x), ",      f'(0)=" , w1, ",      f'(pi/3)=", w2)
    sage: g=x^4+3-2*x^3+5*x
    sage: w1=g.diff(x,2).subs(x = 1)
    sage: w2=g.diff(x,2).subs(x = 2)
    sage: show("g(x)=", g, ",      g''(x)=",g.diff(x,2), ",      g''(1)=" , w1, ",      g''(2)=", w2)
    <html>...</html>
    <html>...</html>

.. end of output

3. Polynomial
^^^^^^^^^^^^^

3. Polynomial of degree n variable x is called function

\[ W(x)=a_0\+a_1 \cdot x \+a_2 \cdot x^2 \+... \+a_n \cdot x^n \]

\[ a_0, a_1, a_2, ..., a_n \- coefficients \]

Conclusion

linear function and quadratic function is a polynomial

\[ W(x)=a_0\+a_1 \cdot x  \\ W(x)=a_0\+a_1 \cdot x \+a_2 \cdot x^2 \]

4. Line.
^^^^^^^^

We know that by two points passes exactly one line.

More than knowing the coordinates of the points above, we can determine the formula of this line.


::

    sage: x1=-2
    sage: y1=4
    sage: x2=1
    sage: y2=3
    sage: p1=point((x1,y1),size=10)
    sage: p2=point((x2,y2),size=10)
    sage: plot(p1+p2,figsize=3)


.. end of output

Recall that the pattern is a linear function:

\[ y=a x \+ b \]

Directional factor and the intercept can be calculated from formulas:

\[  a=\frac{y_2\-y_1}{x_2\-x_1} \\ b=y_1\-ax_1 \] 

Typing the appropriate equations, we can draw a straight line through two points


::

    sage: x1=-int(random()*4)
    sage: y1=int(random()*9-4)
    sage: x2=int(random()*4)+1
    sage: y2=int(random()*9-4)
    sage: p1=point((x1,y1),size=10)
    sage: p2=point((x2,y2),size=10)
    sage: # y=ax+b
    sage: a=(y2-y1)/(x2-x1)
    sage: b=y1-a*x1
    sage: print 'y=',a,'x+',b
    sage: f=plot(a*x+b,xmin=x1-1, xmax=x2+2, color="green")
    sage: plot(p1+p2+f,figsize=4)
    y= 2/3 x+ -1

.. end of output

5. Parabola
^^^^^^^^^^^

Below is an example for three points which are not collinear. Then we can determine the quadratic function, which includes these points.

So we have determined from the following equations quadratic function coefficients a, b, c.

\[ \begin{cases}  y_1=ax_1^2\+bx_1\+c \\  y_2=ax_2^2\+bx_2\+c \\ y_3=ax_3^2\+bx_3\+c \end{cases} \] 

This work is tedious, even for a specific example. If we wanted to determine appropriate models as above for the linear function that probably it would take us a long time.

Below we use the capabilities of Sage.


::

    sage: x1=-1
    sage: y1=0
    sage: x2=1
    sage: y2=4
    sage: x3=3
    sage: y3=-1
    sage: p1=point((x1,y1),size=10)
    sage: p2=point((x2,y2),size=10)
    sage: p3=point((x3,y3),size=10)
    sage: plot(p1+p2+p3,figsize=3)


.. end of output

We calculate the following equations, where he searched coefficients: a, b, c.

\[ \begin{cases}  y_1=ax_1^2\+bx_1\+c \\  y_2=ax_2^2\+bx_2\+c \\ y_3=ax_3^2\+bx_3\+c \end{cases} \]

Change the above system of equations for the corresponding matrix equation.

\[ \begin{bmatrix} x_1^2&x_1&1\\x_2^2&x_2&1\\x_3^2&x_3&1\end{bmatrix} \begin{bmatrix} a\\b\\c\end{bmatrix} = \begin{bmatrix} y_1\\y_2\\y_3\end{bmatrix} \]

In the Sage we can easily solve this equation is enough to apply the operation: M\v, where M\-matrix, v\-vector [y1, y2, y3]


::

    sage: M = matrix(3,3,[[x1^2,x1,1],[x2^2,x2,1],[x3^2,x3,1]])
    sage: v = vector([y1,y2,y3])
    sage: wynik = M\v
    sage: [a,b,c]=wynik
    sage: show("a=",a,"  b=",b, "  c=",c)
    sage: show("y=",a,"x^2+",b,"x+",c)
    sage: q=plot(a*x*x+b*x+c,xmin=-3, xmax=5, color="green")
    sage: plot(p1+p2+p3+q,ymin=-7, ymax=8, figsize=4)
    <html>...</html>
    <html>...</html>

.. end of output

6. Polynomial.
^^^^^^^^^^^^^^

Here is an example for a few points. The resulting function is a polynomial.

If you specify n points, it certainly passes through these points a polynomial of degree less than n.


::

    sage: points={}
    sage: vector_x=[]
    sage: vector_y=[]
    sage: k=6                 #number of points
    sage: y=int(random()*7-3)
    sage: vector_y=[y]
    sage: points=point((0,y),size=10)
    sage: print '(',0,',',y,')'
    sage: for i in range(k-1):
    ...       vector_x=vector_x+[0]
    sage: vector_x=vector_x+[1]
    sage: for n in range(k-1):
    ...       x=n+1
    ...       for i in range(k):
    ...           vector_x=vector_x+[x^(k-i-1)]
    ...       y=int(random()*7-3)
    ...       vector_y=vector_y+[y]
    ...       print '(',x,',',y,')'
    ...       points = points + point((x,y),size=10)
    sage: p=plot(points,ymin=-2,ymax=6,figsize=4) 
    sage: show(p)
    ( 0 , 1 )
    ( 1 , 0 )
    ( 2 , 2 )
    ( 3 , -2 )
    ( 4 , -2 )
    ( 5 , -2 )

.. end of output

For the random points the calculated polynomial coefficients.


::

    sage: M = matrix(k,k,vector_x)
    sage: v=vector(vector_y)
    sage: wynik = M\v
    sage: show(M)
    sage: show(wynik)
    <html>...</html>

    <html>...</html>

.. end of output

We draw a polynomial that passes through the given points.


::

    sage: var('x')
    sage: vector_x=[]
    sage: for i in range(k):
    ...       vector_x=vector_x+[x^(k-i-1)]
    sage: w=vector(vector_x)
    sage: f=w*wynik
    sage: show("f(x)=",f)
    sage: p=plot(points,ymin=-7,ymax=8,figsize=6)
    sage: q=plot(f(x),xmin=-4, xmax=11, color="green") 
    sage: show(p+q)
    <html>...</html>

.. end of output

The mathematical analysis is known the following formula that approximates any function corresponding polynomial

Taylor's formula

\begin{aligned}f(x)&=f(a)\+{\frac  {x\-a}{1!}}f^{{(1)}}(a)\+{\frac  {(x\-a)^{2}}{2!}}f^{{(2)}}(a)\+\ldots \+{\frac  {(x\-a)^{n}}{n!}}f^{{(n)}}(a)\+\ldots\end{aligned}

We can simplify it if you want to zoom in a polynomial function of the point 0.

The Taylor\-Maclaurin formula

\begin{aligned}f(x)&=f(0)\+{\frac  {x}{1!}}f^{{(1)}}(0)\+{\frac  {x^{2}}{2!}}f^{{(2)}}(0)\+\ldots \+{\frac  {x^{n}}{n!}}f^{{(n)}}(0)\+\ldots\end{aligned}

Here is an example for the function f(x)=sin(x)


::

    sage: kolor=[]
    sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    sage: n=6
    sage: f=x
    sage: q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    sage: for i in range(1, n):
    ...       k=2*i+1
    ...       f=f+(-1)^i*(1/factorial(k))*x^k
    ...       q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    sage: show(sin(x),"=",f)
    sage: q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)
    sage: show(q)
    <html>...</html>

.. end of output

Exercise for students.

Expand the function f (x) = cos (x) by the polynomial.


::

    sage: kolor=[]
    sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    sage: n=6
    sage: f=1
    sage: q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    sage: for i in range(1, n):
    ...       k=2*i
    ...       f=f+(-1)^i*(1/factorial(k))*x^k
    ...       q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    sage: show(cos(x),"=",f)    
    sage: f=cos(x)
    sage: q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)
    sage: show(q)
    <html>...</html>

.. end of output

The application of the formula of Taylor\-Maclaurin function for

\[ f(x)=e^x \]


::

    sage: kolor=[]
    sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    sage: n=8
    sage: f=1
    sage: q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    sage: for i in range(0, n):
    ...       k=i+1
    ...       f=f+(1/factorial(k))*x^k
    ...       #print(f(x))
    ...       q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    sage: show(e^x,"=",f)
    sage: f=e^x
    sage: q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=10, linestyle="--", figsize=5.5)
    sage: show(q)
    <html>...</html>

.. end of output

We have seen the Taylor's formula. So at the end we simplify our calculations using the built\-in Taylor's formula.


::

    sage: f=sin(x)*x^2          #your function
    sage: k=8                   #level iteration
    sage: t=taylor(f,x,0,k)     #taylor function in Sage
    sage: q=plot(t, xmin=-5, xmax=5, ymin=-5, ymax=5, color="red", legend_label=r"Taylor(f, x, 0, %d)" % k)
    sage: show(f,"=",t)
    sage: q=q+plot(f, xmin=-5, xmax=5, ymin=-5, ymax=5, linestyle="--", figsize=5.5, legend_label=r"Your function")
    sage: show(q)
    <html>...</html>

.. end of output

