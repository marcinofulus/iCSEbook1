Amazing approximation
=====================

About this lesson plan
----------------------

This is a lesson plan for indented for realization during  2h lesson activities. 

It has been developed during work in iCSE4school project based on
lesson carried out in 2015-2017 at  The Stefan Batory High School in Chorzów.

It was prepared by  Krzysztof Oleś based on his lesson.


.. only:: html

   .. admonition::  Attention!

      In each of the "code" cells you can change any number, text or
      instruction. In order to  return to the original version  refresh
      the webpage.  Sometimes the next code depends on variables defined from the previous one,
      so one has to execute cells in order of apperance.


*This project is the result of activities (inspired by the textbook
 "Matematyka się liczy" edited by prof. Wacław Zawadowski)*


Introduction
------------


We want to use a computer to illustrate a SIMPLE problem by using BASIC programs.

- Why BASIC?

Because we don't know if we are familiar enough with SAGE.

- Why SIMPLE?

Because we are keen on making some people surprised by this part of mathematics which is told to be boring... Most of people don't like counting, so we'll repeat not exciting calculations and computer will lead us (perhaps) to some misunderstandings in using numbers...


Part 1
------

Let's start with approximation of square\-root of two. We'll use square\-root algorithm (which is based on Newton's method for finding zeros of a function, this case is known as Babylonian method).


.. sagecellserver::

    rot=2
    for n in range(1,6):    #change range
           rot=0.5*(rot+2/rot)
           print(rot)
           print("error =",abs(N(sqrt(2)-rot)))

.. only:: latex
          
    .. figure:: refutacje_media/21.png
       :width: 30%

Do you know

- what does 2.12390141451912e\-6 mean?
- how does error change while n changes?

Let's see how fast this algorithm is.


.. sagecellserver::

    rot=2
    graph=point((0,sqrt(2)))
    for n in range(1,21):    #does range (1,51) change anything?
           rot=0.5*(rot+2/rot)
           graph=graph+point((n,rot))
    plot(graph)


.. only:: latex
          
    .. figure:: refutacje_media/22.png
       :width: 75%

Wait a minute... What are we thinking about using a word "fast"?

Let's make a comparison. One of the most popular number is  :math:`\pi`, so we'll use an algorithm of approximation of this object. It'll be based on Wallis' product for  :math:`\pi`, written down in 1655:

.. MATH::

    \frac{\pi}{2}=\prod_{n=1}^\infty\left(\frac{2n}{2n-1}\cdot\frac{2n}{2n+1}\right).

It's quite complicated \- perhaps a big  :math:`\pi` makes us confused. What about a formula like that

.. MATH::

    \frac{\pi}{2}=\frac{2}{1}\cdot\frac{2}{3}\cdot\frac{4}{3}\cdot\frac{4}{5}\cdot\frac{6}{5}\cdot\frac{6}{7}\cdot\frac{8}{7}\cdot\frac{8}{9}\cdot\cdots?

Easier?

A big  :math:`\pi` stands for a product (something like many, many multiplications...).

How does it work?

Tiring (you can check on the paper...) calculations will do the computer.


.. sagecellserver::

    w=1
    for i in range(1,6):
           w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
           print(2*w     #do you prefer fractions or decimals?)
           print("error =",abs(N(pi-2*w)))
 
.. only:: latex
          
    .. figure:: refutacje_media/23.png
       :width: 30% 
 
Do you know

- what does abs() mean?
- what does N() mean?
- how does error change while n changes?
- how many reps do we have to do to get to 3.14?

Let's see how fast this algorthm is.


.. sagecellserver::

    w=1
    graph=point((0,pi))
    for i in range(1,21):
           w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
           graph=graph+point((i,2*w))
    plot(graph)


.. only:: latex
          
    .. figure:: refutacje_media/24.png
       :width: 75%

Now we can compare the speed of the first and second algorithm and ask very awkward questions:

- Have we ever wondered about how our calculator approximates the numbers?
- Maybe our colleague's calculator makes it better. What does "better" mean?
- We counted some errors \- SAGE had to approximate square\-root of two and  :math:`\pi` (these numbers are not rational): did SAGE make a mistake? How big?


Part 2
------

Okay, but who is interested in differences in approximations of numbers, for example on the fifteenth decimal place?

Let's try to take care of some geometrical problem.

Consider the cylinder inscribed in a cube (bases of the cylinder are  inscribed  in the two parallel faces of the cube). In the corner of the cube put the ball  of maximum volume tangent to the cylinder. What is this volume?


.. sagecellserver::

    var('x,y,z')
    r=(sqrt(2)-1)/(2*sqrt(2)+2)     #where did it come from?
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    graph=a+b+c
    graph


.. only:: latex
          
    .. figure:: refutacje_media/25.png
       :width: 60%

As we can see the edge of the cube has a length of 1

.. MATH::

    x, y, z \in (-0.5,0.5),


and the cylinder is connected with the circle pattern of

.. MATH::

    x^2+y^2=0.25.


And where was taken

.. MATH::

    r=\frac{\sqrt{2}-1}{2\sqrt{2}+2}?


Denoted by  :math:`r` the radius of the search ball. With simple relationship between the diagonal of the square and the rays of both circles we receive:

.. MATH::

    \frac{1}{2}\sqrt{2}=r\sqrt{2}+r+\frac{1}{2}


.. MATH::

    \frac{1}{2}\sqrt{2}-\frac{1}{2}=r\left(1+\sqrt{2}\right)


.. MATH::

    r=\frac{\frac{1}{2}\sqrt{2}-\frac{1}{2}}{1+\sqrt{2}}=\frac{\sqrt{2}-1}{2\sqrt{2}+2}


and searched volume is equal to

.. MATH::

    \frac{4}{3}\pi r^3=\frac{4}{3}\pi \left(\frac{1}{2}\right)^3\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\frac{\pi}{6}\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.


Everyone has heard about the transformation of expressions that contain numbers that are not rational, so let's get to the tedious work...

.. MATH::

    \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,


but

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,


.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,


and finally

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.


Let

.. MATH::

    w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2,\quad w_3=\left(3-2\sqrt{2}\right)^3,
    
.. MATH::

     w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1} {\sqrt{2}+1}\right)^3.


Of course  :math:`w_1=w_2=w_3=w_4=w_5`, but: are there any difference among  :math:`w_1,\dots,w_5` when when we approach the square\-root of two? Let's see...


.. sagecellserver::

    p=1.44     #change p
    print('apr=',p)
    print('w_1=',N(99-70*p))
    print('w_2=',N((5*p-7)^2))
    print('w_3=',N((3-2*p)^3))
    print'w_4=',N((p-1)^6)
    print('w_5=',N(((p-1)/(p+1))^3))
    
    
.. only:: latex
          
    .. figure:: refutacje_media/26.png
       :width: 30%


It turns out that the differences among approximations are big, if we accept the square\-root of two as 1.41 (and yet many people think of approximations only to parts hundredths). What about: 1.414, 1.4142, 1.41421, 1.414213 and so on?

The differences are large, what we can see, considering graphs related functions connected with  :math:`w_1,\dots,w_5`.


.. sagecellserver::

  @interact
  def _(xlimits=range_slider(0.5, 2.5, 0.1, default=(0.5, 2.5), label="horizontal range"),
      ylimits=range_slider(-10, 10, 0.1, default=(-10, 10), label="vertical range")):
      plt = plot(99-70*x, xlimits, color="red")
      plt = plt+plot((5*x-7)^2, xlimits, color="blue")
      plt = plt+plot((3-2*x)^3, xlimits, color="green")
      plt = plt+plot((x-1)^6, xlimits, color="orange")
      plt = plt+plot(((x-1)/(x+1))^3, xlimits, color="purple")
      show(plt, xmin=xlimits[0], xmax=xlimits[1], ymin=ylimits[0], ymax=ylimits[1], figsize=(4, 3))


.. only:: latex
          
    .. figure:: refutacje_media/27.png
       :width: 45%

Let's go back to the drawing containing our ball.

.. sagecellserver::

    var('x,y,z')
    p=1.41     #change p
    r1=N(0.5*((99-70*p)^(1/3)))     #why here "^(1/3)"?
    r2=N(0.5*(((5*p-7)^2)^(1/3)))
    r3=N(0.5*((3-2*p)^3)^(1/3))
    r4=N(0.5*((p-1)^6)^(1/3))
    r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    r=r5     #change r
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    graph=b+a+c
    graph
    
You should change

- :math:`p`: 1.414, 1.4142, 1.41421, 1.414213;  don't forget about sqrt(2),
- :math:`r`:  :math:`r_1,\dots,r_5`.

Let's look at all five balls at once.


.. sagecellserver::

    var('x,y,z')
    p=1.41     #why is there a problem with p=1.44?
    r1=N(0.5*((99-70*p)^(1/3)))
    r2=N(0.5*(((5*p-7)^2)^(1/3)))
    r3=N(0.5*((3-2*p)^3)^(1/3))
    r4=N(0.5*((p-1)^6)^(1/3))
    r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r1,-0.5+r1,-0.5+r1), opacity=0.2, color = "grey", size=r1)
    d=sphere(center=(-0.5+r2,-0.5+r2,-0.5+r2), opacity=0.2, color = "yellow", size=r2)
    e=sphere(center=(-0.5+r3,-0.5+r3,-0.5+r3), opacity=0.2, color = "red", size=r3)
    f=sphere(center=(-0.5+r4,-0.5+r4,-0.5+r4), opacity=0.2, color = "blue", size=r4)
    g=sphere(center=(-0.5+r5,-0.5+r5,-0.5+r5), opacity=0.2, color = "orange", size=r5)
    graph=a+b+c+d+e+f+g
    graph

.. only:: latex
          
    .. figure:: refutacje_media/28.png
       :width: 60%

Is not that strange?

Let's finish our calculations, considering we're looking for volume, whereby because we already have enough of looking at distant places after the decimal assume that the edge of the cube has a length of 60.


.. sagecellserver::

    p=1.41     #change p
    print('apr=',p)
    w_1=N(99-70*p)
    w_2=N((5*p-7)^2)
    w_3=N((3-2*p)^3)
    w_4=N((p-1)^6)
    w_5=N(((p-1)/(p+1))^3)
    print('volume 1=',N(pi)*36000*w_1     #why here 36000?)
    print('volume 2=',N(pi)*36000*w_2)
    print('volume 3=',N(pi)*36000*w_3)
    print('volume 4=',N(pi)*36000*w_4)
    print('volume 5=',N(pi)*36000*w_5)
    
    
.. only:: latex
          
    .. figure:: refutacje_media/29.png
       :width: 30%

Again \- you should change  :math:`p`: 1.414, 1.4142, 1.41421, 1.414213;  don't forget about sqrt(2).

And again: is not that strange? Perhaps not, but considered above example shows how much we have to be careful using approximations.


Summary
-------

We wanted to show how important is the difference between manipulating algebraic expression in kind

.. MATH::

    \frac{\sqrt{2}-1}{2\sqrt{2}+2}


and its approximation.

Why?

Firstly, due to the fact that we usually use the numbers which are not rational and that  means the need to use their approximations. We tried to show two different \- in the sense necessary number of the implementation iterations \- algorithms. We suggested finding no small number of iterations leading to approximations of  :math:`\pi` proverbial 3.14. Because the differences of decimals can not really interest many people \- we decided to see (!) in a geometric problem a specific significance of the adopted approximations square\-root of two.

Secondly, in Polish schools, the advantage is algebraic problem solving (for example equations). This means that the matriculation examination solution of the equation

.. MATH::

    7x^2+27x-31=0


should look like

.. MATH::

    x_1=\frac{-27-\sqrt{1597}}{14},\quad x_2=\frac{-27+\sqrt{1597}}{14}.


There is a mental gap between writing the above "pictures" and the following "numbers"

.. MATH::

    x_1\approx -4.78303,\quad  x_2\approx 0.92589.


Perhaps the whole project should be considered as draw attention to the difference between the signs

.. MATH::

    {\Large{=}}\qquad\textrm{ and }\qquad{\Large{\approx}}

