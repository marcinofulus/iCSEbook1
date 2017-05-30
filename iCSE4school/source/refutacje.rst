Jak pracowałem z SAGE'em?
-------------------------

Warsztaty dla nauczycieli: Katowice
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Zafrapować

  :math:`\verb+sqrt(2)+=\sqrt{2}\quad\quad\quad\verb+sqrt(2)+\approx\sqrt{2}`
  
* Czy w powyższych znaczkach jest jakaś różnica?
  
.. admonition:: Zachęcić do poszukiwań

  Jakimi metodami możemy uzyskiwać przybliżenia :math:`\sqrt{2}`?
  
* Jak Twoje urządzenie "rozumie" :math:`\verb+sqrt(2)+`?
  
.. admonition:: Przejść się spacerkiem historycznym

  Newton, Heron, Babilon
  
.. sagecellserver::

  p=2 #zmień p
  for n in range(1,6): #zmień przedział
      p=0.5*(p+2/p)
      print p
      print "błąd =",abs(N(sqrt(2)-p))

.. admonition:: Zadać pytanie podstawowe

  Po co?
  
Przekształćmy wyrażenie zawierające :math:`\sqrt{2}`, np.

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3,

wykorzystujęc m.in. wzory skróconego mnożenia:

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,


ale

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,
  
i  

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,

i wreszcie

.. math::

  \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.
  
Niech

.. math::

  w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2,\quad w_3=\left(3-2\sqrt{2}\right)^3


.. math::
   
  w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

  
Oczywiście :math:`w_1=w_2=w_3=w_4=w_5`, ale czy jest różnica między
:math:`w_1,\dots,w_5` gdy stosujemy przybliżenia :math:`\sqrt{2}`?

.. sagecellserver::

  p=1.44     #zmień p, nie zapomnij o sqrt(2)
  print 'apr=',p
  print 'w_1=',N(99-70*p)
  print 'w_2=',N((5*p-7)^2)
  print 'w_3=',N((3-2*p)^3)
  print'w_4=',N((p-1)^6)
  print 'w_5=',N(((p-1)/(p+1))^3)
  

Spróbujmy nasze rozważania zobrazować.

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
    
.. admonition:: Refutować
  
  A co to takiego?
  
W roku 2005 wydawnictwo TIKKUN zaprezentowało (wreszcie!) Polakom książkę, która w roku 1976 zdobyła światowy rozgłos (ze względów politycznych - w Polsce była rodzajem podziemnej klasyki dla matematyków). Piszemy tutaj o "Dowodach i refutacjach" Imre Lakatosa, w których pokazano, istotność powątpiewania i stawiania hipotez. Dzięki SAGE'owi zauważamy, że **podstawowe** umiejętności programistyczne dają możliwość stosowania narzędzia, jakim jest komputer, do wielokrotnych powtórzeń pewnych czynności. Wspomniana wielokrotność doświadczeń jest - nierzadko - powodem niemożności ich wykonania (w czasie rzeczywistym) przez człowieka (a zatem: także nauczyciela i ucznia...).

Wspomniany przez nas rok 1976 pojawia się także jeszcze w innym kontekście. Otóż właśnie w tym roku na łamach "New York Timesa" pojawiła się informacja o udowodnieniu (i tutaj mniejszy lub większy znak zapytania) twierdzenia o czterech barwach. W dowodzie (?) wykorzystano programy komputerowe i ostateczne wyniki pochodziły z zaprogramowanych obliczeń. Można oczywiście dyskutować nad tego typu dowodem. Wydaje nam się jednak, że nad potrzebą wykorzystywania komputera do stawiania hipotez dyskutować nie trzeba. Mamy bowiem wrażenie, że rozumowanie matematyczne nie opiera się jedynie na logice indukcyjnej.


From point to point - mathematical help with Python?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Workshops for teachers: Wroclaw 2017 - I
++++++++++++++++++++++++++++++++++++++++

Let's see a simple example to work with reStructuredText.

.. admonition:: Starting point

  Let's think about :math:`\sqrt{2}`. How much is it? Perhaps you answer that about :math:`1.41`.   Really?
  
At the beginning we recall that :math:`\sqrt{2}` is an irrational number - we can only get close to it. Look at the example below.  
   
.. sagecellserver::

  p=2 #change p
  for n in range(1,6): #change a range
      p=0.5*(p+2/p)
      print p
      print "error =",abs(N(sqrt(2)-p))
  
We've used a square-root algorithm (which is based on Newton's method for finding zeros of a function, this case is known as Babylonian method):  https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method Perhaps you should change p and a range?

And what's interesting?
Let's try to transform a formula that has :math:`\sqrt{2}`, for instance

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

Everyone has heard about the transformation of expressions that contain numbers that are not rational, so let's get to the tedious work...

.. math::

  \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,


but

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,
  
and  

.. math::

  \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,

and finally

.. math::

  \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.
  
Let

.. math::

  w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2,\quad w_3=\left(3-2\sqrt{2}\right)^3,\quad w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.

Of course :math:`w_1=w_2=w_3=w_4=w_5`, but: are there any difference among :math:`w_1,\dots,w_5` when we approach the square-root of two? Let's see...
We'll assume that the square root of two is equal to :math:`1.44` and you should change this value. 

.. sagecellserver::

  p=1.44     #change p, don't forget about sqrt(2)
  print 'apr=',p
  print 'w_1=',N(99-70*p)
  print 'w_2=',N((5*p-7)^2)
  print 'w_3=',N((3-2*p)^3)
  print'w_4=',N((p-1)^6)
  print 'w_5=',N(((p-1)/(p+1))^3)
  
It turns out that the differences among approximations are big, if we accept the square-root of two as :math:`1.41` (and yet many people think of approximations only to parts hundredths). What about the approximations we got by Babylonian method above? Try them!

The differences are large, what we can see, considering graphs related functions connected with :math:`w_1,\dots,w_5`. 

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
  
At the end we go to ``sqrt(2)``.
  
:math:`\verb+sqrt(2)+=\sqrt{2}\quad\textrm{ or }\quad\verb+sqrt(2)+\approx\sqrt{2}?`

Is not that strange?


Workshops for teachers: Wroclaw 2017 -  II 
++++++++++++++++++++++++++++++++++++++++++

.. admonition:: Starting point. Again?!

  Let's think about a graph connected with a function, i.e. :math:`f(x)=\log_x\left|4\sin\left(\frac{\pi}{2}-3x\right)-6\right|`.   That's of cource a continuous line. Really?
  
Using SAGE for the preparation of drawings, we can rely on:

1. the description of the function

.. sagecellserver::

  a=-2 #change it
  plot(x^2, (x, a, 10))
  
2. equation, which we can call "entangled"

.. sagecellserver::

  var('y')
  a=3 #change it
  implicit_plot(((x^2)+(y^2))^2==2*(a^2)*((x^2)-(y^2)),(x,-10,10),(y,-10,10))
  
3. polar formula

.. sagecellserver::

  a=2 #change it
  polar_plot(a*x, (x, 0, 2*pi))
  
Sometimes we can see some similarities among the effects of using these different approaches (compare the following example with the second one).

.. sagecellserver::

  a=1 #change it
  polar_plot((2*(a^2)*cos(2*(x)))^(1/2),(x,0,2*pi))
  
In each of these cases, a set of points appears on computer screen - it is fitted in more or less complex formula, but sometimes it leads to an error (like in example above).

Maybe should we use the simplest method: from point to point? Using recursion?

Let's think about the point placed in the coordinate system -  it gives the opportunity to trace the connection between geometry and numerical operations. Important for us is the possibility of student's experimentation and computer fun - examples are presented in their programming layer easy.  

So we start by placing the point on the screen.

.. sagecellserver::

  fig=point((1,3))
  fig
  
Apparently nothing - so let's put on the screen five points ...

.. sagecellserver::

  fig=point((1,3),(1,4),(1,5),(1,6),(1,5))
  fig
  
After this small error we try to add points.

.. sagecellserver::

  fig=point((1,3))+point((1,4))+point((1,5))+point((1,6))+point((1,7))
  fig
  
Note that even with ctr+c+ctrl+v it takes time and it's scary to think about boredom of the placement in this way a hundred points - in a situation where we can see a certain **REGULARITY** in the second coordinate points considered. Therefore, let's use it.

.. sagecellserver::

  fig=point((1,3))
  for i in range(4,105):
      fig=fig+point((1,i))
  fig
  
Change the point size, playing tinge.

.. sagecellserver::

  s=40 #change size
  fig=point((1,3),rgbcolor=(0,0,0),size=s) #what does (0,0,0) mean?
  for n in range(4,105):
      fig=fig+point((1,n),rgbcolor=(0,n/105,0),size=s)
  fig
  
Do not forget about the possibility of placing the loop in the loop.

.. sagecellserver::

  a=1
  b=3
  c=105
  d=20
  fig=point((a,b),rgbcolor=(0,0,0),size=d)
  for n in range(4,c):
      for k in range(1,n):
          fig=fig+point((n,k),rgbcolor=(0,n/c,0),size=d)
  fig
  
Looking at the obtained effect we see a problem with the "left" apex of a triangle - try to remove it properly manipulating numbers.

If we did, then we can go to the draw.  

.. sagecellserver::

  n=101 #change it
  a=10*random() #why do we use multiplication?
  b=10*random()
  fig=point((a,b))
  for k in range(1,n):
      a=10*random()
      b=10*random()
      fig=fig+point((a,b),color=((1/8)*k,2*k,k)) #change the way of coloring
  fig
  
In the example above, you can see a kind of chaos... Can you control over the points?

Imagine a situation in which the specified starting point :math:`(a,b)` is transformed in one of eight randomly selected transformations. Each of them consists of two parts: a linear operation on the first coordinate (three numbers :math:`a_i,b_i,c_i`), and linear operations on the second coordinate (three numbers :math:`d_i,e_i,f_i`). After the transformation we obtain a new point :math:`(a,b)`, which is thrown into the described formulas again - and of course, not satisfied with two points, we (computer?) repeat it a hundred times.

Let look carefully at the source code (especially on records starting with #).  

.. sagecellserver::

  a=0 #the first coordinate of the starting point
  b=0 #the second coordinate of the starting point
  d=100 #number of repetitions
  a1=0.333 #a lengthy list of factors...
  b1=0
  c1=-0.333
  d1=0
  e1=0.333
  f1=0.333
  a2=0.333
  b2=0
  c2=0
  d2=0
  e2=0.333
  f2=0.333
  a3=0.333
  b3=0
  c3=0.333
  d3=0
  e3=0.333
  f3=0.333
  a4=0.333
  b4=0
  c4=0.333
  d4=0
  e4=0.333
  f4=0
  a5=0.333
  b5=0
  c5=0.333
  d5=0
  e5=0.333
  f5=-0.333
  a6=0.333
  b6=0
  c6=0
  d6=0
  e6=0.333
  f6=-0.333
  a7=0.333
  b7=0
  c7=-0.333
  d7=0
  e7=0.333
  f7=-0.333
  a8=0.333
  b8=0
  c8=-0.333
  d8=0
  e8=0.333
  f8=0 #and finally the end of the list
  r=point((a,b),axes=False, frame=False,size=0) 
  for c in range(1,d):
    n=randint(1,8) #draw one of the eight maps
    if n==1:
        a=(a1*a)+(b1*b)+c1
        b=(d1*a)+(e1*b)+f1
        r=r+point((a,b),axes=False, frame=False,size=5,color='red')
    if n==2:
        a=(a2*a)+(b2*b)+c2
        b=(d2*a)+(e2*b)+f2
        r=r+point((a,b),axes=False, frame=False,size=5,color='green')
    if n==3:
        a=(a3*a)+(b3*b)+c3
        b=(d3*a)+(e3*b)+f3
        r=r+point((a,b),axes=False, frame=False,size=5,color='purple')
    if n==4:
        a=(a4*a)+(b4*b)+c4
        b=(d4*a)+(e4*b)+f4
        r=r+point((a,b),axes=False, frame=False,size=5,color='blue')
    if n==5:
        a=(a5*a)+(b5*b)+c5
        b=(d5*a)+(e5*b)+f5
        r=r+point((a,b),axes=False, frame=False,size=5,color='orange')
    if n==6:
        a=(a6*a)+(b6*b)+c6
        b=(d6*a)+(e6*b)+f6
        r=r+point((a,b),axes=False, frame=False,size=5,color='yellow')
    if n==7:
        a=(a7*a)+(b7*b)+c7
        b=(d7*a)+(e7*b)+f7
        r=r+point((a,b),axes=False, frame=False,size=5,color='pink')
    if n==8:
        a=(a8*a)+(b8*b)+c8
        b=(d8*a)+(e8*b)+f8
        r=r+point((a,b),axes=False, frame=False,size=5,color='black')     
  show (r, figsize=(8.75,8))
  
With a hundred repetitions figure seems chaotic - therefore repeat our experiment more times (change d=1000,d=10000 and so on).

Do our points put us in something familiar?

With the seeming chaos should emerge Sierpinski's carpet.

But let's try to experiment and answer the following not easy questions:

* Does built figure depend on the choice of the starting point?
* What happens to the built figure, if we change :math:`a_i,b_i,c_i,d_i,e_i,f_i`?
* What happens to the built figure, if one of the eight maps we exclude - how can we quickly in the   source code do it?
* Why is carpet colored in such a way and not another?

We believe that the answers to these questions - based on tested assumptions - will be surprising ...

Perhaps more than a carpet fascinates us known (almost all) leaf. 

.. sagecellserver::

  c=100 #number of repetitions
  a=0 #the first coordinate of the starting point
  b=0 #the second coordinate of the starting point
  p=7 #the width of the picture
  q=10 #the height of the picture
  r=point((a,b),size=1, axes=false, frame=false) #by changing the 'false' to 'true' you can generate axes and frame
  for m in range (0,c):
    n=random()
    if n<0.01: #what is it for?!
        o=0.0*a + 0.0*b + 0.0
        b=0.0*a + 0.16*b + 0.0
        a=o
        r=r+point((a,b), axes=false, frame=false, color='green', size=1) 
    elif n<0.08: #why elif?
        o=0.2*a - 0.26*b + 0.0
        b=0.23*a + 0.22*b + 1.6
        a=o
        r=r+point((a,b), axes=false, frame=false,color='red', size=1) 
    elif n<0.15:
        o=-0.15*a + 0.28*b + 0.0
        b=0.26*a + 0.24*b + 0.44
        a=o
        r=r+point((a,b), axes=false, frame=false,color='blue',size=1) 
    elif n<1:
        o=0.85*a + 0.04*b + 0.0
        b=-0.04*a + 0.85*b + 1.6
        a=o
        r=r+point((a,b), axes=false, frame=false,color='purple', size=1) 
  show(r, figsize=(p,q))
  
Perhaps the carpet and the leaf **ATTRACT** us to further experiment, in which we will try to arrange the coefficients in the tables (various methods for introducing the coefficients in the above two examples encourage such arrangement). 

.. sagecellserver::

  a1=[0.05,0,-0.06,0,0.4,-0.47]
  a2=[-0.05,0,-0.06,0,-0.4,-0.47]
  a3=[0.03,-0.14,-0.16,0,0.26,-0.01]
  a4=[-0.03,0.14,-0.16,0,-0.26,-0.01]
  a5=[0.56,0.44,0.3,-0.37,0.51,0.15]
  a6=[0.19,0.07,-0.2,-0.1,0.15,0.28]
  a7=[-0.33,-0.34,-0.54,-0.33,0.34,0.39]
  c=1
  d=1
  t=100
  r=point((c,d),axes=False, frame=False,size=0.1,)
  for u in range(1,t):
    n=randint(1,7)
    if n==1:
        i=(a1[0]*c)+(a1[1]*d)+a1[2]
        o=(a1[3]*c)+(a1[4]*d)+a1[5]
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='red')
    if n==2:
        i=(a2[0]*c)+(a2[1]*d)+a2[2]
        o=(a2[3]*c)+(a2[4]*d)+a2[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='green')
    if n==3:
        i=(a3[0]*c)+(a3[1]*d)+a3[2]
        o=(a3[3]*c)+(a3[4]*d)+a3[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='blue')
    if n==4:
        i=(a4[0]*c)+(a4[1]*d)+a4[2]
        o=(a4[3]*c)+(a4[4]*d)+a4[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='orange')
    if n==5:
        i=(a5[0]*c)+(a5[1]*d)+a5[2]
        o=(a5[3]*c)+(a5[4]*d)+a5[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='black')
    if n==6:
        i=(a6[0]*c)+(a6[1]*d)+a6[2]
        o=(a6[3]*c)+(a6[4]*d)+a6[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='purple')
    if n==7:
        i=(a7[0]*c)+(a7[1]*d)+a7[2]
        o=(a7[3]*c)+(a7[4]*d)+a7[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='brown')
  r
  
Let's go back to the Sierpinski's carpet. Or is it rather a kind of line or something like connected squares? Is repeating iterations indefinitely (in our head ...) move closer to a more normal squares? What does "more" mean?

Look at the blue line below - we want to measure it with a green ruler.

.. sagecellserver::

  plot(x * sin(x), (x, -2, 10), axes=false)+line([(4.1,4.1*sin(4.1)), (5.1,5.1*sin(5.1))], color='darkgreen', thickness=2)
  
Let's estimate the length of the blue line.
Let :math:`M(\epsilon)` means the length of the measured curve by a ruler legth of :math:`\epsilon`, and :math:`L(\epsilon)` number of touchdowns rulers into the curve. Note that the smaller :math:`\epsilon`, the estimation more accurate. Note that :math:`M(\epsilon)\approx\epsilon\cdot L(\epsilon)` and 

.. math::
  L(\epsilon)\sim\frac{1}{\epsilon} 
  
(if the ruler is shorter, the more times we have to apply it).
If we repeat this reasoning, considering the area instead of the length, a "ruler" would be a square with a side length of :math:`\epsilon` and 

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^2}.

What about the volume? Perhaps a "ruler" woud be a cube and 

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^3}.

So

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^d}
    
and :math:`d=1` (when we try to estimate the length), :math:`d=2` (when we try to estimate the area), :math:`d=3` (when we try to estimate the volume).

Let's try to get to :math:`d`.

.. math::

  L(\epsilon)\approx\left(\frac{1}{\epsilon}\right)^d,

.. math::

  \log L(\epsilon)\approx \log\left(\frac{1}{\epsilon}\right)^d=d\log\left(\frac{1}{\epsilon}\right),

and

.. math::

  d\approx\frac{\log{L(\epsilon)}}{\log\frac{1}{\epsilon}},

maybe can we write a formula like this

.. math::

  d=\lim_{\epsilon\to 0}\frac{\log{L(\epsilon)}}{\log\frac{1}{\epsilon}}?

(are there any mistake in replacing signs: :math:`\sim, \approx,=` above?).

It looks quite dramatically. Let's see how this works in the case of the Sierpinski's carpet.
This figure we can (**SURELY**?!) cover by 1 square with a side length of 1, 8 squares with a side length of :math:`\frac{1}{3}`, 64 squares with a side length of :math:`\frac{1}{9}`,..., :math:`8^n` squares with a side length :math:`\left(\frac{1}{3}\right)^n` and

.. math::

  d=\lim_{n\to\infty}\frac{\log8^n}{\log3^n}=\frac{\log8}{\log3}\approx1.893.

Sierpinski's carpet is something between a line and a square - perhaps we came a little closer to the concept of dimension...

.. rubric:: Summary

In the text above three words are bold. Finally, we would like to return to them.

**REGULARITY**
Actions based on SAGE can help students explore recursion (a kind of regularity repeated over and over again, thanks to computers very many times).

**ATTRACT**
It is worth mentioning in the context of using by students SAGE attention to the concept of attractor (not only in the mathematical sense: fractals are often attractors) - a computer may able to attract them to small discoveries.

**SURELY**
It should be emphasized that the above considerations concerning dimension are only a signal of a problem - but they can build a student intuition (which should not be immediately deal with the problem of the existence :math:`\lim_{\epsilon\to0}\dots`).

And by the way the last word: where is the limit between a student's intuitive fantasizing and a strict mathematical waffle? [#f1]_



.. [#f1] This project is the result of activities conducted by Krzysztof Oleś in The Stefan Batory High   School in Chorzów. We would like to especially thank the students: Jeremi Chabros, Adrian Grochowski,   Karol Latos.

  
