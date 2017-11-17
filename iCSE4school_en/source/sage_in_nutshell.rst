.. _sage_w_nutshell:

SageMath in nutshell
--------------------

.. _arytmetyka:

Rich and fast scientific calculator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Practically, every important function, a mathematical formula, is already implemented in SageMath. Below are some instructions that can be used in high school:

- absolute value -  :code:`abs`,
- factoring - :code:`factor`,
- factorial - :code:`factorial`,
- Newton's symbol - :code:`binomial`,
- solve the equation - :code:`solve`,
- graph a function - :code:`plot`,
- next prime number - :code:`next_prime`,
- the greatest common divisor :code:`gcd`
- the least common multiple:  :code:`lcm`,
- derivative - :code:`diff`,
- integral - :code:`integrate`.

The first example shows Sage's capabilites in arithmetics. You can use
it to check for calculations by hand, homework assignments by
students. If the teacher learns the programming language above, it can
create code that will allow you to solve the "step-by-step"
calculation.

.. sagecellserver::
    :linked: false

    print "(4/3+5/5)-(5/2-4/6) =", (4/3+5/5)-(5/2-4/6)
    print "(3^15-3^13)/(3^13+3^14) =", (3^15-3^13)/(3^13+3^14)
    print "1001 =", factor(1001)
    print "(sqrt(8)-sqrt(2))^2 =", (sqrt(8)-sqrt(2))^2
    print "5! =", factorial(5)
    print  gcd(354, 222)


.. only:: latex

    Executing above code one obtains:
   
   .. code:: python

      (4/3+5/5)-(5/2-4/6) = 1/2
      (3^15-3^13)/(3^13+3^14) = 2
      1001 = 7 * 11 * 13
      (sqrt(8)-sqrt(2))^2 = 2
      5! = 120
      6

          
SageMath is equipped with arbitrary precision arithmetics and, for
example, can approximate numbers with any precision. These
possibilities we used in our projects, first of all in RSA encryption
and in the chapter on approximations of irrational expressions.

.. sagecellserver::
    :linked: false

    show(sqrt(2), "=", N(sqrt(2), digits=60))
    show(pi, "=", N(pi, digits=60))
    show(2^168+5^80)

.. only:: latex

    Executing above code one obtains:

   
   .. math::

      \sqrt{2} = 1.41421356237309504880168872420969807856967187537694807317668 \\
      \pi=3.14159265358979323846264338327950288419716939937510582097494 \\
      82718435399721924198287929350313460725034243008818892481

.. _logika:


Logical expressions
^^^^^^^^^^^^^^^^^^^

SageMath and also the Python language, allows you to perform oparations on
logical expressions. It can turn out to be useful in many
areas. For example, consider the puzzle:

.. admonition:: Riddles about liars

     There are two kinds of people - one always lies and one says
     truth. Ala and Bolek belong to one of these categories. ala
     she said: Bolek and me are liars. Who is a liar and who
     he tells the truth?

By using SageMath we can accept the following interpretations: let
:math:`a` will be true if Ala is truthful and :math:`b` will be true
if Bolek is truthful. Then we can write in Sage:

.. sagecellserver::
    :linked: false

    f = propcalc.formula("a&(~a&~b) | ~a&(~(~a&~b))")
    show(f)
    print(f.truthtable())

.. only:: latex

    Executing above code one obtains:
   
    .. code::
       
        a      b      value
        False  False  False  
        False  True   True   
        True   False  False  
        True   True   False

You can see that the only solution is the one where Ala lies and Bolek
speaks the truth.




.. _algebra:

Algebraic expressions
^^^^^^^^^^^^^^^^^^^^^

One of the most important possibilities that can be used in the
classroom Mathematics, physics and chemistry are operation not only on
on numbers, but also on symbolic variables. SageMath is excellent with
symbolic calculations, i.e. it can perform calculations,
transformations on algebraic expressions. Thus we can modify the form
of the formula, express one variable with the help of others, derive
general solutions to equations. Below are shown simple examples of
shortened multiplication patterns and expressions measurable.

**Patterns of shortened multiplication.**
    
.. sagecellserver::
    :linked: false

    var('a','b')
    expr1 = (a+b)^2
    expr2 = (a-b)^2
    expr3 = (a+b)*(a-b)
    show (expr1, "=", expr1.canonicalize_radical())
    show (expr2, "=", expr2.canonicalize_radical())
    show (expr3, "=", expr3.canonicalize_radical())
    a=sqrt(3)
    b=2
    expr1=(a+b)^2
    expr2=(a-b)^2
    expr3=(a+b)*(a-b)
    show (expr1, "=", expr1.canonicalize_radical())
    show (expr2, "=", expr2.canonicalize_radical())
    show (expr3, "=", expr3.canonicalize_radical())

.. only:: latex

    Executing above code one obtains:
   
    .. math::
       
       {\left(a + b\right)}^{2} \text{\texttt{=}} a^{2} + 2 \, a b + b^{2}
       
       
    .. math::
    
       {\left(a - b\right)}^{2} \text{\texttt{=}} a^{2} - 2 \, a b + b^{2} 
   
   
    .. math::    
      
       {\left(a + b\right)} {\left(a - b\right)} \text{\texttt{=}} a^{2} - b^{2}
    
    
    .. math::
    
       {\left(\sqrt{3} + 2\right)}^{2} \text{\texttt{=}} 4 \, \sqrt{3} + 7 
       
       
    .. math::
     
       {\left(\sqrt{3} - 2\right)}^{2} \text{\texttt{=}} -4 \, \sqrt{3} + 7
       
       
    .. math::
      
       {\left(\sqrt{3} + 2\right)} {\left(\sqrt{3} - 2\right)} \text{\texttt{=}} -1
       
            
    
**Conversion of the form of algebraic expressions**

.. sagecellserver:: 

    var('n')
    expr = n^3-(n-1)^3
    show ("n=2")
    show(expr," = ", expr.canonicalize_radical()," = ",expr.substitute(n = 2))

.. only:: latex

    Executing above code one obtains:


   .. math::
      
      n=2
      
      
   .. math::

      -{\left(n - 1\right)}^{3} + n^{3} \text{\texttt{{ }={ }}} 3 \, n^{2} - 3 \, n + 1 \text{\texttt{{ }={ }}} 7 


**Substitutions in symbolic expressions.**


.. sagecellserver::    :linked: false

    var('z')
    expr = (z^2+3*z)/z
    show (expr)
    show (expr.canonicalize_radical())
    show (expr.subs(z=x+1))
    show (expr.subs(z=2))


.. only:: latex

    Executing above code one obtains:
   
   .. math::

      \frac{z^{2} + 3 \, z}{z} 
      
      
   .. math::
   
      z + 3 
      
   
   .. math::
   
      \frac{{\left(x + 1\right)}^{2} + 3 \, x + 3}{x + 1} 
      
   .. math::   
      
      5
 
Simplifying expressions containing trigonometric functions requires
method :code:`.trig_simplify`. For example, to use 
trigonometric identities:

.. sagecellserver::
   :linked: false

   ( sin(x)^2+cos(x)^2 ).trig_simplify()

If we want to prove the trigonometric identity better to use
:code:`bool` than trying to simplify expressions.

.. sagecellserver::
    :linked: false

    expr = (2*sin(x)^2-1)/(sin(x)*cos(x)) == tan(x)-cot(x)  
    show(expr)
    bool(expr)


.. only:: latex

    Executing above code one obtains:
   
   .. math::

      \newcommand{\Bold}[1]{\mathbf{#1}}\frac{2 \, \sin\left(x\right)^{2} - 1}{\cos\left(x\right) \sin\left(x\right)} = -\cot\left(x\right) + \tan\left(x\right) 

    True

Solving equations and systems of equations
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Many problems in physics and math lead to a equation or a system of
equations which has to be solved. Of course no tool should replace the
student's self-solving skills, but can be very useful for exercises,
checking the results, or too solving too complex equations. SageMath
allows for solving difficult equations and  systems of  equations with one
instruction - :code:`solve`.

Here are some examples that demonstrate use this functionality in two
cases: quadratic eqaution and system of eqautions.

**Quadratic equation.**
    

.. sagecellserver::
    :linked: false

    var('a','b','c')
    r_kwadr = a*x^2 + b*x + c == 0
    show(solve(r_kwadr, x))
    a = 1
    b = 4
    c = -5
    r_kwadr = a*x^2 + b*x + c == 0
    show (solve(r_kwadr, x))

.. only:: latex

    Executing above code one obtains:
   
   .. math::

      \left[x = -\frac{b + \sqrt{b^{2} - 4 \, a c}}{2 \, a}, x = -\frac{b - \sqrt{b^{2} - 4 \, a c}}{2 \, a}\right] \\
      \left[x = \left(-5\right), x = 1\right]

    
**System of two equations**


.. sagecellserver::
    :linked: false

    var('x','y')
    solve([x-3*y==2, x-2*y==8],x,y)

.. only:: latex

    Executing above code one obtains:
   
   .. math::

      [[x == 20, y == 6]]

   
      
.. _wykresy:

Visualisation
^^^^^^^^^^^^^

Visualization is a very important aspect of learning especially for
the present generation of young people. Sage allows graphing functions
in a simple way. So we can quickly present solutions on the plot  or
draw interesting functions during lessons. Students can modify
existing code program and analyze the functions. This can be
used not only in mathematics but also in other science subjects.

The following program address a classical problem of calculating zeros
of a quadratic function. Short program allows not only for obtaining
numerical result but also for its graphical visualization.


.. sagecellserver::
    :linked: false

    a = 1
    b = 3
    c = 2
    d = b*b - 4*a*c
    f(x) = a*x*x + b*x + c
    if d < 0:
        print "No real solution!"
        xmin,xmax =-5, 5
        x1,x2 = 0,0
        
    if d > 0:
        x1 = float((-b-sqrt(d))/(2*a))
        x2 = float((-b+sqrt(d))/(2*a))
        
        print "x1=", x1, ", ", "x2=", x2

        if x1<x2:
            xmin,xmax = x1-2,x2+2
        else:
            xmin,xmax = x2-2,x1+2
            
    p1 = point((x1,0), color="red", size=35)
    p2 = point((x2,0), color="red", size=35)
    p3 = point((0, c), color="green", size=35)
    q = plot(f(x),(x,xmin,xmax))
    show(p1+p2+p3+q, figsize=4)

    
.. only:: latex
          
    Executing this code one obtains the plot  :numref:`parabola`.

    .. figure:: dlaczego_Sage/kw.pdf
       :width: 50%
       :name: parabola     
     
       Parabola and its zeros. 


The command  :code:`region_plot` it is possible to visualize  solution to inequalities.

.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x^2/4+1*x
    g2 = 0.25*x
    f1 = plot(g1, (x,-0.4,4.5), linestyle="--")
    f2 = plot(g2,(x,-0.4,4.5), linestyle="-", color="green")
    rp = region_plot([y<g1,y>=g2],(x,-0.3,4.5),(y,-1,1.2), incol="khaki")
    show(f1 + f2 + rp, figsize=5)         

    
.. only:: latex
          
    Executing this code one obtains the plot  :numref:`parabola`.


    .. figure:: dlaczego_Sage/reg1.pdf
       :width: 40%
       :name: region1   
  
       Visualization of inequality `region_plot`

       
.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x-2
    g2 = -x+2
    g3 = x-2
    g4 = x+2
    f1 = plot(g1, (x,-2.5,2.5), linestyle="--")
    f2 = plot(g2, (x,-2.5,2.5), linestyle="--", color="royalblue")
    f3 = plot(g3, (x,-2.5,2.5), linestyle="-", color="green")
    f4 = plot(g4, (x,-2.5,2.5), linestyle="-", color="lightgreen")
    rp = region_plot([y>g1,y<g2,y>=g3,y<=g4],\
         (x,-2,2),(y,-2,2), incol="khaki")
    show(f1 + f2 + f3 + f4 + rp, figsize=5,ymax=3,ymin=-3)

.. only:: latex
          
    Executing this code one obtains the plot  :numref:`region2`.

    .. figure:: dlaczego_Sage/reg2.pdf
       :width: 40%
       :name: region2

       Visualization of inequality `region_plot`



In SageMath we can algorithmically create a formula of the
function. Let us imagine that we want to plot a following expression:

.. math::

   f(x) = \sum_{i=0}^{N}\sin(\omega_i x)

for large values of of :math:`N`. It is clear that it it very
difficult task without a computer.  In SageMath we can easily make use
of a loop and construct above sum. In physics, many wave and aoustic
phenomema are connecteed with sums of signals of various frequencies
and therefore plotting such function is not only an academic
excercise.  It can serve as an example of e.g. a wave packet. 

.. sagecellserver::
    :linked: false

      f = sum([sin(w*x) for w in srange(0.9,1.101,0.02)])
      plot(f,(x,-200,200),figsize=(10,2),thickness=0.5)


.. only:: latex
          
    Executing this code one obtains the plot:   :numref:`paczka_fig`.

    .. figure:: dlaczego_Sage/paczka.pdf
       :width: 100%
       :name: paczka_fig

       Wave packet visualization. 


Another interesting example is a graphical presentation of vector
fields. It can have potantial applical for physics lessons. Below, we
present a plot of magnetic field of a magnetic dipole. It is possible
to draw in 3d, but here we plot a section at :math:`x=0`:


.. sagecellserver::
    :linked: false

    var('x y z',domain='real')
    m = 1 
    r = sqrt(x^2+y^2+z^2+1e-6)
    Bx = 3*m*x*z/(r^5)
    By = 3*m*y*z/(r^5)
    Bz = 3*m*z^2/(r^5)-m/r^3
    B = vector( [Bx,By,Bz])
    Bmod = B.subs(x==0)[1:].norm()
    plot_vector_field(B.subs(x==0)[1:]/Bmod,(y,-2,2),(z,-2,2))

.. only:: latex

    Executing this code one obtains the plot:    :numref:`pole_vec_fig`.

    .. figure:: figs/pole_vec.pdf
       :width: 70%
       :name: pole_vec_fig

       Vector field from dipole.




Interaction
^^^^^^^^^^^

Large educational values have computer programs able to produce
animation of a given phenomena and/or allowing for  dynamical change
some  parameters.  This class of programms are, most often made in Flash or javascript technologies, are an
attractive digital help in teaching. Usually, however, the student is
limited to interacting with such a program. SageMath lets you go one
step further - it makes it very easy to create these elements. Using
relatively simple  functions student can create an interactive  application
that can illustrate a given  problem.

We will illustrate the following problem:

.. admonition:: Intersections 

   How many solution has the equation  :math:`x^2=x-a` as a function of parameter :math:`a\in(0,\frac{1}{2})`?

   
In SageMath we can easily plot as line :math:`y=x-a` and parabola
:math:`y=x^2` and grafically inspect if they have intersections. We
can also calculate analytically (using Sage or not) solution and plot
them in the same figure. If we then use decorator :code:`@interact`
SageMath will generate us an interactive application:



.. sagecellserver::
    :linked: false

    @interact
    def fun(a=slider(0,1/2,0.01)):
        p = plot([x^2,x-a],(x,-1,1),figsize=5,ymax=1,ymin=-1)
        assume(x,'real')
        pkt = [(x.subs(s),x.subs(s)-a) for s in solve(x^2==x-a,x)]
        if pkt:
             p += point(pkt,size=40,color='red')
        else:
             print "No roots"
        show(p)


.. only:: latex
          
    The above code will produce interactive element  :numref:`interact`.

    .. figure:: dlaczego_Sage/interact.png
       :width: 60%
       :name: interact

       An interactive illustration of an equation with parameter:  :math:`x^2=x-a`.




SageMath = interdisciplinarity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


In summary, SageMath gives an excellent tool following operations in a classroom:

  1. Quick and accurate calculations with arbitrarily large numbers.
  2. Manipulate algebraic expressions, Solving equations in complex
     numbers, solving systems of equations and inequalities.
  3. Visualization of solutions on graphs, drawing graphs of functions.
  4. Calculation of derivatives, integrals, and many other mathematical  operations.

Moreover SageMath is a very good and rich programming tool, thanks to
which we can combine computer science with mathematics, physics,
chemistry. 
