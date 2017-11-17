.. -*- coding: utf-8 -*-

Limit and continuity of a function at a point
=============================================


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



Number sequences - review
-------------------------

a) What do we call a number sequence?

b) Recall the Cauchy definition of the limit of a number sequence.

c) Calculate the following limits:

:math:`\displaystyle \lim_{n\to\infty} \left(1+\frac{1}{n} \right )`,  :math:`\displaystyle \lim_{n\to\infty} \left(1-\frac{1}{n} \right)`,  :math:`\displaystyle \lim_{n\to\infty} \frac{2n^2+n+1}{n^2- \frac{1}{2}n}`,  :math:`\displaystyle  \lim_{n\to\infty} \frac{4n^2-n-1}{2n^2+3n}`

d) Using SAGE calculate limits of the sequences above and sketch their graphs.


Example:
~~~~~~~~

Let's check out convergence of the following sequences:  :math:`\large a_n= 1 + \Large \frac{1}{n}` oraz  :math:`\large b_n= 1 - \Large \frac{1}{n}`

.. only:: html

   .. admonition:: Experiment with Sage!

       Run following example to see the output.


.. sagecellserver::

     var('a_n')
     a(n) = 1 + 1/n
     b(n) = 1 - 1/n
     c = limit(a(n), n=oo);
     d = limit(b(n), n=oo)
     plt = points([(m, a(m)) for m in srange (1, 50)], axes_labels=['$n$', '$a_n \, b_n$'], legend_label="$a_n = $ $%s$" %latex(a(n)), color = 'green', figsize = (6, 4), gridlines = [None, [c]], fontsize=9)
     plt += points([(m, b(m)) for m in srange (1, 50)], legend_label="$b_n = $ $%s$" %latex(b(n)),color = 'red', gridlines = [None, [d]])
     plt



.. only:: latex
          
    Running above code should produce the following code:

    .. figure:: iCSE4s_MAT_z19_Limit_and_continuity_of_a_function_at_a_point_ENG_v0.1_media/limit1.pdf
       :width: 70%
       :name: lim1
               
       Two sequences convering to a number.
     
.. end of output


Introduction of Heine definition of the limit of a function at a point
----------------------------------------------------------------------

A function  :math:`f(x)` has a  **left\-hand limit**    *g*   at a point  :math:`x_0` (denoted  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`),  if for every sequence  :math:`(x_n)` such that  :math:`x_n < x_0)`,  convergent to  :math:`x_0`, the sequence of values   :math:`(f(x_n))` is convergent to   *g*  .

.. math::

   \displaystyle  \lim_{x\to x_0^-} f(x) = g \iff \forall (x_n) \in (a; x_0): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g

A function  :math:`f(x)` has a  **right\-hand limit**    *g*   at a point  :math:`x_0` (denoted  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`),  if for every sequence  :math:`(x_n)` such that  :math:`x_n > x_0)`,  convergent to  :math:`x_0`, the sequence of values   :math:`(f(x_n))` is convergent to   *g*  .

.. math::

   \displaystyle  \lim_{x\to x_0^+} f(x) = g \iff \forall (x_n) \in (x_0; a): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g

.. note::

   The function  :math:`f(x)` has limit   :math:`g`   at the point  :math:`x_0`, if the left\-hand limit and the right\-hand limit exist at  :math:`x_0` and  :math:`\displaystyle \lim_{x\to x_0^-}f(x)=\lim_{x\to x_0^+}f(x)=g`.


Example
~~~~~~~

Using the Heine definition we will calculate the limit of the function  :math:`f(x) = \Large \frac{x}{x+1}` at the point  :math:`x_0 = 1`.


.. sagecellserver::

    var('x0 x_0')
    x0 = 1
    f(x) = x/(x+1) # Given function
    a(n) = x0 - 1.5/n # A sequence convergent to x0 from below
    b(n) = x0 + 1.5/n # A sequence convergent to do x0 from above
    gl = limit(f(a(n)), n=oo) # Left-hand limit of a sequence of values of the function f(x)
    gr = limit(f(b(n)), n=oo) # Right-hand limit of a sequence of values of the function f(x)
    la = [a(k) for k in srange(1, 100)] # Terms of a sequence convergent to x0 from below
    lb = [b(k) for k in srange(1, 100)] # Terms of a sequence convergent to x0 from above
    plt = plot (f(x), (x, x0-1, x0+1), axes_labels=['$x$','$f(x)$'], legend_label="$y = $ $%s$"%latex(f(x)))
    plt += points([(m, f(m)) for m in la], legend_label="$a_n = $ $%s$" %latex(a(n)), color='red', size=40, ymin = 0, ymax = 1, figsize=(6,4))
    plt += point([(x, f(x)) for x in lb], color='green', size=40, legend_label="$b_n = $ $%s$" %latex(b(n)))
    plt    


.. only:: latex
          
    Running above code should produce the following code:

    .. figure:: iCSE4s_MAT_z19_Limit_and_continuity_of_a_function_at_a_point_ENG_v0.1_media/limit2.pdf
       :width: 70%
       :name: lim2
               
       Two sequences convering to a number.

    

Excercise 1
~~~~~~~~~~~


Using the procedure given above find the following limits:

1.  :math:`f(x) = \large \frac{x+2}{x-1}` at  :math:`x_0 = 2`

2.  :math:`f(x) = \large \frac{x^2-3}{2x^2-1}` at  :math:`x_0 = 1`

3.  :math:`f(x) = \large \frac{sinx}{x+1}` at  :math:`x_0 = \large \frac{\pi}{2}`

4.  :math:`f(x) = \large \frac{x}{|x|}` at  :math:`x_0 = 0`

5.  :math:`f(x) = \begin{cases} x^2 & \text{for } x \le {0}\\ 2^x & \text{for } x>0 \end{cases}` at  :math:`x_0 = 0`



Definition of continuity of a function at a point
-------------------------------------------------

A function :math:`f` is continuous at a point :math:`x_0` if for any
sequence :math:`(x_n)` with terms belonging to a neighbourhood of
:math:`x_0`, convergent to :math:`x_0`:

1.   :math:`\displaystyle \lim_{x \to x_0} f(x)` exists.

2.  :math:`\displaystyle \lim_{x \to x_0} f(x)=f(x_0)`

Example
~~~~~~~

Check whether the function  :math:`f(x) = \begin{cases}x^2 -4 & \text{dla } x< x_0 \\ \sqrt{x}-4 & \text{dla } x \ge {x_0} \end{cases}`  is continuous at the point  :math:`x_0=0`. Is the given function continuous at other points  :math:`x_0`?


.. sagecellserver::

     var('x0')
     x0 = 0
     fl(x) = x^2 - 4
     fr(x) = sqrt(x) - 4
     def f(x):
         if x < x0: return fl(x)
         if x == x0: return fr(x)
         if x > x0: return fr(x)
     a = limit(fl(x), x = x0, dir = 'left')
     b = limit(fr(x), x = x0, dir = 'right')
     if a == b == f(x0):
         print("The function is continuous at the point ",x0)
     else:
         print("The function is NOT continuous at the point ",x0)
     plt = plot (fl, (x, x0-5, x0), axes_labels=['$x$','$f(x)$'], ymin = -5, ymax = 15, figsize = (6, 4), color = 'green', legend_label="$y =$ $%s$"%latex(fl(x)))
     plt += plot (fr, (x, x0, x0+5), color = 'red', legend_label="$y=$ $%s$"%latex(fr(x))) + point((x0, f(x0)), color = 'red', size = 48)
     plt


.. only:: latex
          
    Running above code should produce the following code:

    .. figure:: iCSE4s_MAT_z19_Limit_and_continuity_of_a_function_at_a_point_ENG_v0.1_media/function.pdf
       :width: 70%
       :name: fun1
               
       Two functions
     
.. end of output





Excercise 2
~~~~~~~~~~~

Verify if the following functions are continuous at the given points.

1.   :math:`f(x) = |x+1|-x`  at  :math:`x_0=-1`

2.   :math:`f(x) = \begin{cases}|x+3|-1 & \text{for } x<x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=0`.

3.   :math:`f(x) = \begin{cases} \Large \frac{x^2+x-6}{x-2} & \text{for } x<x_0 \\ 3x-1 & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=2`

4.  :math:`f(x) = \begin{cases} -2 \sin{x} & \text{for } x< x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=\pi`

5.  :math:`f(x) = \begin{cases} x \sin{\frac{1}{x}} & \text{for } x \ne x_0\\ 0 & \text{for } x =x_0 \end{cases}`  at  :math:`x_0=1`
