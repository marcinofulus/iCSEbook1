.. -*- coding: utf-8 -*-

Please write a title for this worksheet!
========================================

We want to use a computer to illustrate a SIMPLE problem by using BASIC programs.

- Why BASIC?

Because we don't know if we are familiar enough with SAGE.

- Why SIMPLE?

Because we are keen on making some people surprised by this part of mathematics which is told to be boring... Most of people don't like counting, so we'll repeat not exciting calculations and computer will lead us (perhaps) to some misunderstandings in using numbers...

**Part 1**

Let's start with approximation of square\-root of two. We'll use square\-root algorithm (which is based on Newton's method for finding zeros of a function, this case is known as Babylonian method).


::

    sage: rot=2
    sage: for n in range(1,6):    #change range
    ...       rot=0.5*(rot+2/rot)
    ...       print rot
    ...       print "error =",abs(N(sqrt(2)-rot))
    1.50000000000000
    error = 0.0857864376269049
    1.41666666666667
    error = 0.00245310429357137
    1.41421568627451
    error = 2.12390141451912e-6
    1.41421356237469
    error = 1.59472435257157e-12
    1.41421356237309
    error = 2.22044604925031e-16

.. end of output

Do you know

- what does 2.12390141451912e\-6 mean?
- how does error change while n changes?

Let's see how fast this algorithm is.


::

    sage: rot=2
    sage: graph=point((0,sqrt(2)))
    sage: for n in range(1,21):    #does range (1,51) change anything?
    ...       rot=0.5*(rot+2/rot)
    ...       graph=graph+point((n,rot))
    sage: plot(graph)


.. end of output

Wait a minute... What are we thinking about using a word "fast"?

Let's make a comparison. One of the most popular number is  :math:`\pi`, so we'll use an algorithm of approximation of this object. It'll be based on Wallis' product for  :math:`\pi`, written down in 1655:

.. MATH::

    \frac{\pi}{2}=\prod_{n=1}^\infty\left(\frac{2n}{2n-1}\cdot\frac{2n}{2n+1}\right).

.. end of math

It's quite complicated \- perhaps a big  :math:`\pi` makes us confused. What about a formula like that

.. MATH::

    \frac{\pi}{2}=\frac{2}{1}\cdot\frac{2}{3}\cdot\frac{4}{3}\cdot\frac{4}{5}\cdot\frac{6}{5}\cdot\frac{6}{7}\cdot\frac{8}{7}\cdot\frac{8}{9}\cdot\cdots?

.. end of math

Easier?

A big  :math:`\pi` stands for a product (something like many, many multiplications...).

How does it work?


::

    sage: w=1
    sage: for i in range(1,6):
    ...       w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
    ...       print 2*w     #do you prefer fractions or decimals?
    ...       print "error =",abs(N(pi-2*w))
    8/3
    error = 0.474925986923127
    128/45
    error = 0.297148209145349
    512/175
    error = 0.215878367875507
    32768/11025
    error = 0.169438458578455
    131072/43659
    error = 0.139416699032886

.. end of output

Do you know

- what does abs() mean?
- what does N() mean?
- how does error change while n changes?
- how many reps do we have to do to get to 3,14?

Let's see how fast this algorthm is.


::

    sage: w=1
    sage: graph=point((0,pi))
    sage: for i in range(1,21):
    ...       w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
    ...       graph=graph+point((i,2*w))
    sage: plot(graph)


.. end of output

Now we can compare the speed of the first and second algorithm and ask very awkward questions:

- Have we ever wondered about how our calculator approximates the numbers?
- Maybe our colleague's calculator makes it better. What does "better" mean?
- We counted some errors \- SAGE had to approximate square\-root of two and  :math:`\pi` (these numbers are not rational): did SAGE make a mistake? How big?

Let's finish the first part of our discussion glance at the results of the following program:


::

    sage: for i in range (2,16):
    ...       ap=N(pi, digits=i)
    ...       print N(pi)
    ...       print ap
    ...       print "error 1=", N(pi-ap)
    ...       print "error 2=", N(pi)-N(ap)
    ...       print "error 3=", N(N(pi)-N(ap))
    ...       print "error 4=", N(pi-N(ap))
    ...       print "error 5=", N(N(pi)-ap)
    3.14159265358979
    3.1
    error 1= 0.000967653589793116
    error 2= 0.000967653589793116
    error 3= 0.000967653589793116
    error 4= 0.000967653589793116
    error 5= 0.000000000000000
    3.14159265358979
    3.14
    error 1= -8.90891020688400e-6
    error 2= -8.90891020688400e-6
    error 3= -8.90891020688400e-6
    error 4= -8.90891020688400e-6
    error 5= 0.000000000000000
    3.14159265358979
    3.142
    error 1= -8.90891020688400e-6
    error 2= -8.90891020688400e-6
    error 3= -8.90891020688400e-6
    error 4= -8.90891020688400e-6
    error 5= 0.000000000000000
    3.14159265358979
    3.1416
    error 1= -1.27951567563400e-6
    error 2= -1.27951567563400e-6
    error 3= -1.27951567563400e-6
    error 4= -1.27951567563400e-6
    error 5= 0.000000000000000
    3.14159265358979
    3.14159
    error 1= -8.74227801261895e-8
    error 2= -8.74227801261895e-8
    error 3= -8.74227801261895e-8
    error 4= -8.74227801261895e-8
    error 5= 0.000000000000000
    3.14159265358979
    3.141593
    error 1= 1.98418703689640e-9
    error 2= 1.98418703689640e-9
    error 3= 1.98418703689640e-9
    error 4= 1.98418703689640e-9
    error 5= 0.000000000000000
    3.14159265358979
    3.1415927
    error 1= -1.74110326156551e-9
    error 2= -1.74110326156551e-9
    error 3= -1.74110326156551e-9
    error 4= -1.74110326156551e-9
    error 5= 0.000000000000000
    3.14159265358979
    3.14159265
    error 1= -1.11288755988426e-10
    error 2= -1.11288755988426e-10
    error 3= -1.11288755988426e-10
    error 4= -1.11288755988426e-10
    error 5= 0.000000000000000
    3.14159265358979
    3.141592654
    error 1= 5.12656583850912e-12
    error 2= 5.12656583850912e-12
    error 3= 5.12656583850912e-12
    error 4= 5.12656583850912e-12
    error 5= 0.000000000000000
    3.14159265358979
    3.1415926536
    error 1= 1.48858703141741e-12
    error 2= 1.48858703141741e-12
    error 3= 1.48858703141741e-12
    error 4= 1.48858703141741e-12
    error 5= 0.000000000000000
    3.14159265358979
    3.14159265359
    error 1= -1.03028696685215e-13
    error 2= -1.03028696685215e-13
    error 3= -1.03028696685215e-13
    error 4= -1.03028696685215e-13
    error 5= 0.000000000000000
    3.14159265358979
    3.141592653590
    error 1= 1.06581410364015e-14
    error 2= 1.06581410364015e-14
    error 3= 1.06581410364015e-14
    error 4= 1.06581410364015e-14
    error 5= 0.000000000000000
    3.14159265358979
    3.1415926535898
    error 1= 0.000000000000000
    error 2= 0.000000000000000
    error 3= 0.000000000000000
    error 4= 0.000000000000000
    error 5= 0.000000000000000
    3.14159265358979
    3.14159265358979
    error 1= 0.000000000000000
    error 2= 0.000000000000000
    error 3= 0.000000000000000
    error 4= 0.000000000000000
    error 5= 0.000000000000000

.. end of output

Is it really all clear?

**Part 2**

Okay, but who is interested in differences in approximations of numbers, for example on the fifteenth decimal place?

Let's try to take care of some geometrical problem.

Consider the cylinder inscribed in a cube (bases of the cylinder are  inscribed  in the two parallel faces of the cube). In the corner of the cube put the ball  of maximum volume tangent to the cylinder. What is this volume?


::

    sage: var('x,y,z')
    sage: r=(sqrt(2)-1)/(2*sqrt(2)+2)     #where did it come from?
    sage: a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),(z,-0.5,0.5), color = "green", opacity = 0.4)
    sage: b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    sage: c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    sage: graph=a+b+c
    sage: graph


.. end of output

As we can see the edge of the cube has a length of 1

.. MATH::

    x, y, z \in (-0.5,0.5),

.. end of math

and the cylinder is connected with the circle pattern of

.. MATH::

    x^2+y^2=0.25.

.. end of math

And where was taken

.. MATH::

    r=\frac{\sqrt{2}-1}{2\sqrt{2}+2}?

.. end of math

Denoted by  :math:`r` the radius of the search ball. With simple relationship between the diagonal of the square and the rays of both circles we receive:

.. MATH::

    \frac{1}{2}\sqrt{2}=r\sqrt{2}+r+\frac{1}{2}

.. end of math

.. MATH::

    \frac{1}{2}\sqrt{2}-\frac{1}{2}=r\left(1+\sqrt{2}\right)

.. end of math

.. MATH::

    r=\frac{\frac{1}{2}\sqrt{2}-\frac{1}{2}}{1+\sqrt{2}}=\frac{\sqrt{2}-1}{2\sqrt{2}+2}

.. end of math

and searched volume is equal to

.. MATH::

    \frac{4}{3}\pi r^3=\frac{4}{3}\pi \left(\frac{1}{2}\right)^3\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\frac{\pi}{6}\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

.. end of math

Everyone has heard about the transformation of expressions that contain numbers that are not rational, so let's get to the tedious work ...

.. MATH::

    \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,

.. end of math

but

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,

.. end of math

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,

.. end of math

and finally

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.

.. end of math

Let

.. MATH::

    w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2\quad w_3=\left(3-2\sqrt{2}\right)^3,\quad w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

.. end of math

Of course  :math:`w_1=w_2=w_3=w_4=w_5`, but: are there any difference among  :math:`w_1,\dots,w_5` when when we approach the square\-root of two? Let's see...


::

    sage: p=1.44     #change p
    sage: print 'apr=',p
    sage: print 'w_1=',N(99-70*p)
    sage: print 'w_2=',N((5*p-7)^2)
    sage: print 'w_3=',N((3-2*p)^3)
    sage: print'w_4=',N((p-1)^6)
    sage: print 'w_5=',N(((p-1)/(p+1))^3)
    apr= 1.44000000000000
    w_1= -1.80000000000000
    w_2= 0.0399999999999997
    w_3= 0.00172800000000000
    w_4= 0.00725631385599999
    w_5= 0.00586392693661584

.. end of output

We assume that the square root of two is equal to 1.44 and you should change this value.

It turns out that the differences between approximations are big, if we accept the square\-root of two as 1.41 (and yet many people think of approximations only to parts hundredths).

What about: 1.414, 1.4142, 1.41421, 1.414213 and so on?

It's really care what form of expression involving numbers which are not rational we use, if we are going to approximate (and yet we have to do that!).

The differences are large, what we can see, considering graphs related functions connected with  :math:`w_1,\dots,w_5`.


::

    sage: a=-0.5     #change a
    sage: b=3     #change b
    sage: plot(99-70*x,(a,b),color="red")+plot((5*x-7)^2,(a,b),color="blue")+plot((3-2*x)^3,(a,b),color="green")+plot((x-1)^6,(a,b),color="yellow")+plot(((x-1)/(x+1))^3,(a,b),color="purple")


.. end of output

We assumed that  :math:`x\in(-0.5,3)`. You should change this interval, approaching the square\-root of two.

Let's go back to the drawing containing our ball.


::

    sage: var('x,y,z')
    sage: p=1.41     #change p
    sage: r1=N(0.5*((99-70*p)^(1/3)))     #why here "^(1/3)"?
    sage: r2=N(0.5*(((5*p-7)^2)^(1/3)))
    sage: r3=N(0.5*((3-2*p)^3)^(1/3))
    sage: r4=N(0.5*((p-1)^6)^(1/3))
    sage: r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    sage: r=r5     #change r
    sage: a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),(z,-0.5,0.5), color = "green", opacity = 0.4)
    sage: b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    sage: c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    sage: graph=b+a+c
    sage: graph


.. end of output

You should change

- :math:`p`: 1.414, 1.4142, 1.41421, 1.414213;  don't forget about sqrt(2),
- :math:`r`:  :math:`r_1,\dots,r_5`.

Let's look at all five balls at once.


::

    sage: var('x,y,z')
    sage: p=1.41     #why is there a problem with p=1.44?
    sage: r1=N(0.5*((99-70*p)^(1/3)))
    sage: r2=N(0.5*(((5*p-7)^2)^(1/3)))
    sage: r3=N(0.5*((3-2*p)^3)^(1/3))
    sage: r4=N(0.5*((p-1)^6)^(1/3))
    sage: r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    sage: a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),(z,-0.5,0.5), color = "green", opacity = 0.4)
    sage: b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    sage: c=sphere(center=(-0.5+r1,-0.5+r1,-0.5+r1), opacity=0.2, color = "grey", size=r1)
    sage: d=sphere(center=(-0.5+r2,-0.5+r2,-0.5+r2), opacity=0.2, color = "yellow", size=r2)
    sage: e=sphere(center=(-0.5+r3,-0.5+r3,-0.5+r3), opacity=0.2, color = "red", size=r3)
    sage: f=sphere(center=(-0.5+r4,-0.5+r4,-0.5+r4), opacity=0.2, color = "blue", size=r4)
    sage: g=sphere(center=(-0.5+r5,-0.5+r5,-0.5+r5), opacity=0.2, color = "orange", size=r5)
    sage: graph=a+b+c+d+e+f+g
    sage: graph


.. end of output

Is not that strange?

Let's finish our calculations, considering we're looking for volume, whereby because we already have enough of looking at distant places after the decimal assume that the edge of the cube has a length of 60.


::

    sage: p=1.41     #change p
    sage: print 'apr=',p
    sage: w_1=N(99-70*p)
    sage: w_2=N((5*p-7)^2)
    sage: w_3=N((3-2*p)^3)
    sage: w_4=N((p-1)^6)
    sage: w_5=N(((p-1)/(p+1))^3)
    sage: print 'volume 1=',N(pi)*36000*w_1     #why here 36000?
    sage: print 'volume 2=',N(pi)*36000*w_2
    sage: print 'volume 3=',N(pi)*36000*w_3
    sage: print 'volume 4=',N(pi)*36000*w_4
    sage: print 'volume 5=',N(pi)*36000*w_5
    apr= 1.41000000000000
    volume 1= 33929.2006587711
    volume 2= 282.743338823079
    volume 3= 659.583660806486
    volume 4= 537.224133143207
    volume 5= 556.868709967303

.. end of output

Again \- you should change  :math:`p`: 1.414, 1.4142, 1.41421, 1.414213;  don't forget about sqrt(2).

And again: is not that strange? Perhaps not, but considered above example shows how much we have to be careful using approximations.

**Summary**

We wanted to show how important is the difference between manipulating algebraic expression in kind

.. MATH::

    \frac{\sqrt{2}-1}{2\sqrt{2}+2}

.. end of math

and its approximation.

Why?

Firstly, due to the fact that we usually use the numbers which are not rational and that  means the need to use their approximations. We tried to show two different \- in the sense necessary number of the implementation iterations \- algorithms. We suggested finding no small number of iterations leading to approximations of  :math:`\pi` proverbial 3.14. Because the differences of decimals can not really interest many people \- we decided to see (!) in a geometric problem a specific significance of the adopted approximations square\-root of two.

Secondly, in Polish schools, the advantage is algebraic problem solving (for example equations). This means that the matriculation examination solution of the equation

.. MATH::

    7x^2+27x-31=0

.. end of math

should look like

.. MATH::

    x_1=\frac{-27-\sqrt{1597}}{14},\quad x_2=\frac{-27+\sqrt{1597}}{14}.

.. end of math

There is a mental gap between writing the above "pictures" and the following "numbers"

.. MATH::

    x_1\approx -4.78303,\quad  x_2\approx 0.92589.

.. end of math

Perhaps the whole project should be considered as draw attention to the difference between the signs

.. MATH::

    {\Large{=}}\qquad\textrm{ and }\qquad{\Large{\approx}}

.. end of math

This project is the result of activities

(inspired by the textbook "Matematyka się liczy" edited by prof. Wacław Zawadowski)

conducted by Krzysztof Oleś

in The Stefan Batory High School in Chorzów.


