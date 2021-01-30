.. -*- coding: utf-8 -*-

Absolute value
==============

O ne of the most important term referring to real numbers is absolute value. The definition says that the absolute value of real number a (denoted by \|a\|) we call:

• Number a, if a isn’t negative

• The additive inverse of a number a, if a is negative

The symbolic notation

\|a\|= a dla a>=0

\-a dla a<0

 

Let’s follow some examples which show us how the graphs containing the modulus are developed.

The linear function is a good object to depict how the transformations of the function compositions work.

Let f(x)=x


::

    sage: var('x')
    sage: f(x)=x
    sage: plot(f,x,-10,10,color='green',thickness=2)


.. end of output

We are creating the graph of function f(x)=\|x\|. According to definition of absolute value, part of the graph with the negative values reflects above, the rest of graph doesn’t change.


::

    sage: var ('x')
    sage: f(x)=abs(x)
    sage: plot(f,x,-10,10, color='green',thickness=2)


.. end of output

The graph f(x)=\|x\|, we are translating by a vector [0, \-2], now we are receiving function f(x)=\|x\|\-2.


::

    sage: var ('x')
    sage: f(x)=abs(x)-2
    sage: plot(f,x,-10,10, color='green',thickness=2)


.. end of output

On this graph once again we are putting the absolute value and now we have f(x)=\|\|x\|\-2\|.


::

    sage: var ('x')
    sage: f(x)=abs(abs(x)-2)
    sage: plot(f,x,-10,10, color='green',thickness=2)


.. end of output

It can be seen that translation by a vector, whose second coordinate is negative and putting on another modulus change the function’s graph and in consequence its properties.

It is worth taking a glance at quadratic function f(x)=x <sup>2, </sup> which is translated by a vector [0, \-2] and than it is transformed to a form:  f(x)=\|x <sup>2</sup>  – 2\|.

Now we can also change the value of parameter 'm' and fallow it on the graph.


::

    sage: var('x')
    sage: m=10
    sage: f(x)=abs(abs(x^2)-2)
    sage: g(x)=m 
    sage: wykres_f=plot(f,x,-10,10,color='green',thickness=2)
    sage: wykres_g=plot(g,x,-10,10,color='red',thickness=2,linestyle="--")
    sage: show(wykres_f+wykres_g)


.. end of output

On one graph we showed some of the basic trigonometric functions f(x)=sinx, g(x)=cosx.


::

    sage: var ('x')
    sage: f(x)=sin(x)
    sage: g(x)=cos(x)
    sage: wykres_f=plot(f,x,-5,5, color='green',thickness=2, linestyle=":")
    sage: wykres_g=plot(g,x,-5,5, color='red', thickness=2, linestyle="--")
    sage: h(x)=abs(sin(x))
    sage: t(x)=abs(cos(x))
    sage: wykres_h=plot(h,x,-5,5, color='yellowgreen', thickness=2)
    sage: wykres_t=plot(t,x,-5,5, color='pink', thickness=2)
    sage: show(wykres_f+wykres_g+wykres_h+wykres_t)


.. end of output

The function which students learn at high school is logarithmic function, which range of the function is set of the real numbers. We can observe how its graph changes when we have f(x)=lnx and g(x)=\|lnx\|.


::

    sage: var ('x')
    sage: f(x)=abs(ln(x))
    sage: wykres_f=plot(f,x,0,8,color='green',thickness=3)
    sage: g(x)=ln(x)
    sage: wykres_g=plot(g,x,0,8,color='yellowgreen', thickness=3, linestyle='--')
    sage: show(wykres_f+wykres_g)


.. end of output

And now some other searches of “school” functions. When we drew g(x)=\|x <sup>2</sup> \| we see that nothing changes, but what it we have g(x)=\|x <sup>3</sup> \|?


::

    sage: var ('x')
    sage: f(x)=abs(x^2)
    sage: wykres_f=plot(f, x, -5,5, color='orange', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    sage: g(x)=abs(x^3)
    sage: wykres_g=plot(g, x, -5,5, color='green', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    sage: h(x)=x^3
    sage: wykres_h=plot(h, x, -5,5, color='yellowgreen', linestyle=':', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    sage: show(wykres_f+wykres_g+wykres_h)


.. end of output

Let’s move into the next part of our lesson. It is the interactive element – very useful for the students.

Here we have a graph with a table where we can choose one of two functions: sin(x) or cos(x). We can also create a range of our function and observe how the graph changes. It is a great experiment to learn how trigonometric functions works.


::

    sage: @interact
    sage: def para(n1= selector (values =(sin(x),cos(x))),n2 = slider(1,5,1,default = 1)):
    ...       var('x')
    ...       p = plot((n1)^n2,-6,6,color='green',thickness=2)
    ...       
    ...       show(p)
    <html>...</html>


.. end of output

The next graph is a bit more complicated but it has more functions and options which allow students to see different transformations. We can take trigonometric, logarithmic function or square root of ‘x’ and then put on a absolute value. What is more we can choose an exponent, angular coefficient  or y\-intercept. Let’s try it for yourselves.


::

    sage: @interact
    sage: def para_(n2=selector(values =(sin(x),cos(x),ln(x),sqrt(x),(x),), label="choose the funktion"), 
    ...             n3=selector(values =((x),abs(x)), label="change function on the absolut value"),
    ...             n1=slider(-1,5,1,default = 1, label="choose the exponent of function ")):
    ...       
    ...       var('x')
    ...       p=n3(n2)^n1
    ...       
    ...       p1= plot(p,-10,10, color='orange', thickness=3) 
    ...      
    ...       show(p1)
    ...       print(p)
    <html>...</html>


.. end of output

Mariola Strojny , 19th October 2016


