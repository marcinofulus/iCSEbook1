.. -*- coding: utf-8 -*-

Polynomial  approximation
=========================

1. Introduction.
^^^^^^^^^^^^^^^^

In each of the program's window you can change the numbers, text, variables, or the code.

You do not have to worry if the program stops working, because after its refreshing it returns to the initial settings.

Often next code results from the previous one, so the exercises (algorithms) should be run in their order.

2. Factorial. 
^^^^^^^^^^^^^
The  **factorial**  of a integer   *n*  , denoted by   *n*  !, is the product of all positive integers smaller than or equal *n*.
    
.. math::
     
     \left\{
     \begin{array}{ll}
     0!=1  & {} \\ 
     n!=n \cdot (n-1)!, & {} n>0 \\
     \end{array}
     \right.

For example,

.. math:: 
   \ 4!= 4 \cdot 3! =...= 4 \cdot 3 \cdot 2 \cdot 1 \cdot 1 = 24 
   
The  **factorial** in SageMath.

The first example counts factorial according to the definition.

.. sagecellserver::
    
   silnia=1
   for i in range(1,6):
        silnia=silnia*i
        print i, '!=', silnia
        
The second example uses a built-in function in SageMath.

.. sagecellserver::
    
    print 5, '!=', factorial(5)

3. Derivative.
^^^^^^^^^^^^^^

**Derivative** will be interpreted as a mathematical operation on a function.

**Basic formulas:**

.. math:: 

    \begin{array}{ll}
    n'=0 \\ x'=1 \\ (x^n)'= n \cdot x^{n-1}, & {} n>1 \\ (sin(x))'=cos(x) \\ (cos(x))'=-sin(x)
    \end{array}


The following examples in Sage with operation *diff*.

.. sagecellserver::

    f=x^5  #you can change this function
    show("f(x)=",f)
    show("f'(x)=",f.diff(x))
    
.. sagecellserver::

    f=sin(x)
    show("f(x)=",f)
    show("f'(x)=",f.diff(x))
 

**Next formulas for the derivative.**

The following formulas for the derivative of the sum, difference, product and quotient of functions.

.. math:: 
    
    \begin{array}{ll}
    f, g - functions, \hspace{1cm} c - real \hspace{0,2cm} number\\
    (c \cdot f)' =c \cdot f' \\ (f+g)'= f' + g' \\ (f-g)'= f' - g' \\
    (f \cdot g)' = f' \cdot g + f \cdot g' \\ (f/g)'= (f' \cdot g - f \cdot g')/g^2
    \end{array}

**Comments**

The number before the variable does not change operations on the derivative. 

Algebraic expressions separated by *+* or *--* count separately.

**Examples**

.. math::

    \begin{array}{ll}
    (c \cdot f)' =c \cdot f' \\ (f+g)'= f' + g' \\ (f-g)'= f' - g'
    \end{array}

.. sagecellserver::

    sage: f=x^3-2*x^2+3*x-4   #you can change this function
    sage: show("f(x)=",f,",        f'(x)=",f.diff(x))

.. math::

    (f \cdot g)' = f' \cdot g + f \cdot g'

.. sagecellserver::

    sage: f=x*cos(x)
    sage: show("f(x)=",f,",       f'(x)=",f.diff(x))
    sage: g=x^2*sin(x)
    sage: show("g(x)=",g,",       g'(x)=",g.diff(x))

.. math::

    (f \cdot g)' = f' \cdot g + f \cdot g' 

.. sagecellserver::

    sage: f=sin(x)/x
    sage: show("f(x)=",f,",      f'(x)=",f.diff(x))


**Derivatives of derivatives - Derivatives of higher orders.**

We can calculate the derivative of a derivative.

Derivatives of higher orders are written in the following way:

.. math:: 

    f''(x) , \hspace{1,1cm}  f'''(x) , \hspace{1,1cm}  f''''(x),\hspace{1cm}... \\
    f^{(2)}(x) , \hspace{1cm}  f^{(3)}(x) , \hspace{1cm}  f^{(4)}(x),\hspace{1cm}...

Below, the calculations of higher order derivatives of the SageMath:

.. sagecellserver::

    sage: f=x^3-3*x^2  #you can change this function
    sage: show ("      f(x)=",f, "        f'(x)=", f.diff(x))
    sage: show ("f''(x)=",f.diff(x,2),"         f'''(x)=", f.diff(x,3))
    
.. sagecellserver::

    sage: f=sin(x)
    sage: show('f(x)=',f)
    sage: show("f'(x)=",f.diff(x))
    sage: show("f''(x)=",f.diff(x,2))
    sage: show("f'''(x)=",f.diff(x,3))
    sage: show("f''''(x)=",f.diff(x,4))
    

**Calculating the value of the derivative at the point.**

Derivative of a function is a function so we can calculate the value of the derivative for the argument.

**Below suitable examples.**

.. sagecellserver::

    sage: f=sin(x) #you can change this function
    sage: w1=f.diff(x).substitute(x = 0)
    sage: w2=f.diff(x).substitute(x = pi/3)
    sage: show("f(x)=", f, ",        f'(x)=",f.diff(x), ",        f'(0)=" , w1, ",        f'(pi/3)=", w2)

    sage: g=x^4+3-2*x^3+5*x  #you can change this function
    sage: w1=g.diff(x,2).subs(x = 1)
    sage: w2=g.diff(x,2).subs(x = 2)
    sage: show("g(x)=", g, ",      g''(x)=",g.diff(x,2), ",      g''(1)=" , w1, ",      g''(2)=", w2)

4. Polynomial.
^^^^^^^^^^^^^^

**Polynomial** of *n* degree and *x* variable is called function:

.. math::

    W(x)=a_0+a_1 \cdot x +a_2 \cdot x^2 +...+a_n \cdot x^n,  \hspace{1cm} a_0, a_1, a_2, ..., a_n - coefficients.

**Conclusion**

Linear function and quadratic function are polynomial.

.. math::

    \begin{array}{ll}
    W_1(x)=a_0+a_1 \cdot x  \\
    W_2(x)=a_0+a_1 \cdot x +a_2 \cdot x^2    
    \end{array}

5. Line.
^^^^^^^^

We know are line goes through two points. Besides, knowing the coordinates of the points above, we can determine the formula of this line. We should remember that the formula is a linear function:

.. math::

    y = a x + b 

Directional factor and the intercept can be calculated from these formulas:

.. math:: 

    a=\frac{y_2-y_1}{x_2-x_1} \\
    b=y_1-ax_1  

Typing the appropriate equations, we can draw a straight line through two points.


.. sagecellserver::

    sage: x1=-int(random()*4)
    sage: y1=int(random()*9-4)
    sage: x2=int(random()*4)+1
    sage: y2=int(random()*9-4)
    sage: p1=point((x1,y1),size=10)
    sage: p2=point((x2,y2),size=10)
    sage: a=(y2-y1)/(x2-x1)
    sage: b=y1-a*x1
    sage: f=a*x+b
    sage: show ('y=',f)
    sage: g=plot(a*x+b,xmin=x1-2, xmax=x2+2, color="green")
    sage: show(p1+p2+g,figsize=4)

6. Parabola.
^^^^^^^^^^^^

Below, there is an example for three points which are not collinear. Then we can determine the quadratic function, which includes these points. So we have to determine *a, b, c* coefficients from the following equation quadratic function.

.. math::

    \begin{cases}
    y_1=ax_1^2+bx_1+c \\
    y_2=ax_2^2+bx_2+c \\ 
    y_3=ax_3^2+bx_3+c 
    \end{cases} 

This work is tedious, even for a specific example. If we wanted to determine appropriate models as above for the linear function that probably it would probably take us a long time.

Below we use the capabilities of Sage.


.. sagecellserver::

    sage: x1=-1
    sage: y1=0
    sage: x2=1
    sage: y2=4
    sage: x3=3
    sage: y3=-1
    sage: p1=point((x1,y1),size=10)
    sage: p2=point((x2,y2),size=10)
    sage: p3=point((x3,y3),size=10)
    sage: show(p1+p2+p3,figsize=3)


We calculate the following equations, where he search coefficients: *a, b, c*.

.. math:: 

    \begin{cases}  
    y_1=ax_1^2+bx_1+c \\  
    y_2=ax_2^2+bx_2+c \\ 
    y_3=ax_3^2+bx_3+c 
    \end{cases}

Change the above system of equations for the corresponding matrix equation.

.. math:: 
    \begin{bmatrix}
    x_1^2&x_1&1\\x_2^2&x_2&1\\
    x_3^2&x_3&1
    \end{bmatrix} 
    \begin{bmatrix} a\\b\\c\end{bmatrix} = \begin{bmatrix} y_1\\y_2\\y_3\end{bmatrix}

In the SageMath we can easily solve this equation is enough to apply the following operation:

.. math::

    M\v, \hspace{3mm} where \hspace{3mm} M-matrix, \hspace{0.3cm} v-vector \hspace{0.3cm} [y1, y2, y3]


.. sagecellserver::

    sage: M = matrix(3,3,[[x1^2,x1,1],[x2^2,x2,1],[x3^2,x3,1]])
    sage: v = vector([y1,y2,y3])
    sage: wynik = M\v
    sage: [a,b,c]=wynik
    sage: show("a=",a,",  b=",b, ",  c=",c)
    sage: f=a*x^2+b*x+c
    sage: show('y=',f)
    sage: g=plot(f,xmin=-3, xmax=5, color="green")
    sage: show(p1+p2+p3+g,ymin=-7, ymax=8, figsize=4)

7. Polynomial.
^^^^^^^^^^^^^^

Here is an example for a few random points. The resulting function is a polynomial.

If you specify *n* points, it certainly passes through these points a polynomial of degree less than *n*.


.. sagecellserver::

    sage: points={}
    sage: vector_x=[]
    sage: vector_y=[]
    sage: k=6                 #number of points
    sage: y=int(random()*7-3)
    sage: vector_y=[y]
    sage: points=point((0,y),size=10)
    sage: print '(',0,',',y,')'
    sage: for i in range(k-1):
              vector_x=vector_x+[0]
    sage: vector_x=vector_x+[1]
    sage: for n in range(k-1):
              x=n+1
              for i in range(k):
                  vector_x=vector_x+[x^(k-i-1)]
              y=int(random()*7-3)
              vector_y=vector_y+[y]
              print '(',x,',',y,')'
              points = points + point((x,y),size=10)
    sage: show(points,ymin=-2,ymax=6,figsize=4) 
 

For the random points calculate polynomial coefficients.

.. sagecellserver::

    sage: M = matrix(k,k,vector_x)
    sage: v=vector(vector_y)
    sage: wynik = M\v
    sage: show(M)
    sage: show(wynik)

We draw a polynomial that goes passes through the given points.

.. sagecellserver::

    sage: var('x')
    sage: vector_x=[]
    sage: for i in range(k):
              vector_x=vector_x+[x^(k-i-1)]
    sage: w=vector(vector_x)
    sage: f=w*wynik
    sage: show("f(x)=",f)
    sage: f=plot(f,xmin=-1, xmax=k, color="green")
    sage: show(points+f,ymin=-7,ymax=8,figsize=6)

8. Taylor's formula.
^^^^^^^^^^^^^^^^^^^^

From the mathematical analysis is known below the following formula is known. It approximates any function corresponding polynomial.

**Taylor's formula**

.. math::

    \begin{aligned}
    f(x)=f(a)+{\frac  {x-a}{1!}}f^{{(1)}}(a)+{\frac  {(x-a)^{2}}{2!}}f^{{(2)}}(a)+\ldots +
    {\frac  {(x-a)^{n}}{n!}}f^{{(n)}}(a)+\ldots
    \end{aligned}

We can simplify the above formula substituting for a = 0. We get **The Taylor-Maclaurin formula**.

.. math::
    
    \begin{aligned}
    f(x)&=f(0)+{\frac  {x}{1!}}f^{{(1)}}(0)+{\frac  {x^{2}}{2!}}f^{{(2)}}(0)+\ldots +
    {\frac  {x^{n}}{n!}}f^{{(n)}}(0)+\ldots
    \end{aligned}

Here is an example for the function :math:`f(x)=sin(x)`.

.. sagecellserver::

sage: f=sin(x) # You can change this function
sage: n=8      # You can change this number
sage: q=plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)  
sage: kolor=[]
sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
sage: g=f(0)    
sage: for i in range(1, n):
          g=g+(x^i/factorial(i))* diff(f,i).subs(x=0)
          q=q+plot(g,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
sage: show(q)

**Exercise for students.**

For the function :math:`f(x)=cos(x)` find the corresponding polynomial formula of Taylor-Maclaurin.

.. sagecellserver::

    sage: kolor=[]
    sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    sage: n=6
    sage: f=1
    sage: q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    sage: for i in range(1, n):
              k=2*i
              f=f+(-1)^i*(1/factorial(k))*x^k
              q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    sage: show(cos(x),"=",f)    
    sage: f=cos(x)
    sage: q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)
    sage: show(q)


Use the Taylor-Maclaurin's formula for function :math:`f(x)=e^x`.

.. sagecellserver::

    sage: kolor=[]
    sage: kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    sage: n=8
    sage: f=1
    sage: q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    sage: for i in range(0, n):
              k=i+1
              f=f+(1/factorial(k))*x^k
              q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    sage: show(e^x,"=",f)
    sage: f=e^x
    sage: q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=10, linestyle="--", figsize=5.5)
    sage: show(q)

We already know the Taylor's formula. Now we can simplify our calculations, and use the built-in Taylor's formula in SageMath.

.. sagecellserver::

    sage: f=sin(x)*x^2          #your function
    sage: k=8                   #level iteration
    sage: t=taylor(f,x,0,k)     #Taylor function in Sage
    sage: q=plot(t, xmin=-5, xmax=5, ymin=-5, ymax=5, color="red", legend_label=r"Taylor(f, x, 0, %d)" % k)
    sage: show(f,"=",t)
    sage: q=q+plot(f, xmin=-5, xmax=5, ymin=-5, ymax=5, linestyle="--", figsize=5.5, legend_label=r"Your function")
    sage: show(q)

