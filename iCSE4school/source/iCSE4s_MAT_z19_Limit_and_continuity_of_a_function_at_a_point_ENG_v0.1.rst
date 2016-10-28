.. -*- coding: utf-8 -*-

Please write a title for this worksheet!
========================================

Limit and continuity of a function at a point
=============================================

Lesson Plan
-----------

Mirosław Malinowski
^^^^^^^^^^^^^^^^^^^

**1. Number sequences \- review.**

a) What do we call a number sequence?

b) Recall the Cauchy definition of the limit of a number sequence.

c) Calculate the following limits:

:math:`\displaystyle \lim_{n\to\infty} \left(1+\frac{1}{n} \right )`,  :math:`\displaystyle \lim_{n\to\infty} \left(1-\frac{1}{n} \right)`,  :math:`\displaystyle \lim_{n\to\infty} \frac{2n^2+n+1}{n^2- \frac{1}{2}n}`,  :math:`\displaystyle  \lim_{n\to\infty} \frac{4n^2-n-1}{2n^2+3n}`

d) Using SAGE calculate limits of the sequences above and sketch their graphs.

 ****** 

 ***Example:*** 

Let's check out convergence of the following sequences:  :math:`\large a_n= 1 + \Large \frac{1}{n}` oraz  :math:`\large b_n= 1 - \Large \frac{1}{n}`


::

    sage: var('a_n')
    sage: a(n) = 1 + 1/n
    sage: b(n) = 1 - 1/n
    sage: c = limit(a(n), n=oo); d = limit(b(n), n=oo)
    sage: html ('<font color="green">The limit of $a_n$ as $n$ tends to $\infty$ is equal to </font>'"$%s$"%latex(c))
    sage: html ('<font color="red">The limit of $b_n$ as $n$ tends to $\infty$ is equal to </font>' "$%s$"%latex(d))
    sage: points([(m, a(m)) for m in srange (1, 50)], axes_labels=['$n$', '$a_n \, b_n$'], legend_label="$a_n = $ $%s$" %latex(a(n)), color = 'green', figsize = (6, 4), gridlines = [None, [c]], fontsize=9) + points([(m, b(m)) for m in srange (1, 50)], legend_label="$b_n = $ $%s$" %latex(b(n)),color = 'red', gridlines = [None, [d]])
    <html>...</html>
    <html>...</html>

.. end of output


**2. Introduction of Heine definition of the limit of a function at a point.**

A function  :math:`f(x)` has a  **left\-hand limit**    *g*   at a point  :math:`x_0` (denoted  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`),  if for every sequence  :math:`(x_n)` such that  :math:`x_n < x_0)`,  convergent to  :math:`x_0`, the sequence of values   :math:`(f(x_n))` is convergent to   *g*  .

:math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g \iff \forall (x_n) \in (a; x_0): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g`

A function  :math:`f(x)` has a  **right\-hand limit**    *g*   at a point  :math:`x_0` (denoted  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`),  if for every sequence  :math:`(x_n)` such that  :math:`x_n > x_0)`,  convergent to  :math:`x_0`, the sequence of values   :math:`(f(x_n))` is convergent to   *g*  .

:math:`\displaystyle  \lim_{x\to x_0^+} f(x) = g \iff \forall (x_n) \in (x_0; a): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g`

**The function  :math:`f(x)` has limit   *g*   at the point  :math:`x_0`, if the left\-hand limit and the right\-hand limit exist at  :math:`x_0` and  :math:`\displaystyle \lim_{x\to x_0^-}f(x)=\lim_{x\to x_0^+}f(x)=g`.**

***Example***

Using the Heine definition we will calculate the limit of the function  :math:`f(x) = \Large \frac{x}{x+1}` at the point  :math:`x_0 = 1`.


::

    sage: var('x0 x_0')
    sage: x0 = 1
    sage: f(x) = x/(x+1) # Given function
    sage: a(n) = x0 - 1.5/n # A sequence convergent to x0 from below
    sage: b(n) = x0 + 1.5/n # A sequence convergent to do x0 from above
    sage: gl = limit(f(a(n)), n=oo) # Left-hand limit of a sequence of values of the function f(x)
    sage: gr = limit(f(b(n)), n=oo) # Right-hand limit of a sequence of values of the function f(x)
    sage: html('<font color = "red">The left-hand limit of the given function at the point </font>'"$x_0 = $" +latex(x0)+ '<font color = "red"> is equal to </font>' "$%s$"%latex(gl) + "$")
    sage: html('<font color = "green">The right-hand limit of the given function at the point </font>'"$x_0 = $" +latex(x0)+ '<font color = "green"> is equal to </font>' "$%s$"%latex(gr) + "$")
    sage: if gl == gr:
    ...       html ('Therefore: the limit of the given function at the point '"$x_0 = $" +latex(x0)+ 'is equal to ' "$%s$"%latex(gr)+ "$")
    sage: else:
    ...       html ('Therefore: the limit of the given function at the point '"$x_0 = $" +latex(x0) + ' does not exist.' + "$")
    sage: la = [a(k) for k in srange(1, 100)] # Terms of a sequence convergent to x0 from below
    sage: lb = [b(k) for k in srange(1, 100)] # Terms of a sequence convergent to x0 from above
    sage: plot (f(x), (x, x0-1, x0+1), axes_labels=['$x$','$f(x)$'], legend_label="$y = $ $%s$"%latex(f(x))) + points([(m, f(m)) for m in la], legend_label="$a_n = $ $%s$" %latex(a(n)), color='red', size=40, ymin = 0, ymax = 1, figsize=(6,4)) + point([(x, f(x)) for x in lb], color='green', size=40, legend_label="$b_n = $ $%s$" %latex(b(n)))
    <html>...</html>
    <html>...</html>
    <html>...</html>

.. end of output

 ***Excercise 1*** 

Using the procedure given above find the following limits:

1.  :math:`f(x) = \large \frac{x+2}{x-1}` at  :math:`x_0 = 2`

2.  :math:`f(x) = \large \frac{x^2-3}{2x^2-1}` at  :math:`x_0 = 1`

3.  :math:`f(x) = \large \frac{sinx}{x+1}` at  :math:`x_0 = \large \frac{\pi}{2}`

4.  :math:`f(x) = \large \frac{x}{|x|}` at  :math:`x_0 = 0`

5.  :math:`f(x) = \begin{cases} x^2 & \text{for } x \le {0}\\ 2^x & \text{for } x>0 \end{cases}` at  :math:`x_0 = 0`



**3. Definition of continuity of a function at a point.**

A function f is continuous at a point  :math:`x_0` if for any sequence  :math:`(x_n)` with terms belonging to a neighbourhood of  :math:`x_0`, convergent to  :math:`x_0`:

1.   :math:`\displaystyle \lim_{x \to x_0} f(x)` exists.

2.  :math:`\displaystyle \lim_{x \to x_0} f(x)=f(x_0)`

**Example**

Check whether the function  :math:`f(x) = \begin{cases}x^2 -4 & \text{dla } x< x_0 \\ \sqrt{x}-4 & \text{dla } x \ge {x_0} \end{cases}`  is continuous at the point  :math:`x_0=0`. Is the given function continuous at other points  :math:`x_0`?


::

    sage: var('x0')
    sage: x0 = 0
    sage: fl(x) = x^2 - 4
    sage: fr(x) = sqrt(x) - 4
    sage: def f(x):
    ...       if x < x0: return fl(x)
    ...       if x == x0: return fr(x)
    ...       if x > x0: return fr(x)
    sage: a = limit(fl(x), x = x0, dir = 'left')
    sage: b = limit(fr(x), x = x0, dir = 'right')
    sage: if a == b == f(x0):
    ...       html('Limit of the function f(x) at the point '"$x_0 = $" +latex(x0)+ ' is equal to ' "$%s$"%latex(a) + "$")
    ...       html ('Value of the function at the point '"$x_0 = $" +latex(x0)+ ' is equal to ' + latex(f(x0)) + "$")
    ...       html ('The function is continuous at the point '"$x_0 = $" + latex(x0))
    sage: else:
    ...        html ('Left-hand limit of the function f(x) at '"$x_0 = $" +latex(x0)+ ' is equal to ' "$%s$"%latex(a) + "$")
    ...        html ('Right-hand limit of the function f(x) at '"$x_0 = $" +latex(x0)+ ' is equal to ' "$%s$"%latex(b) + "$")
    ...        html ('Value of the function at the point '"$x_0 = $" +latex(x0)+ ' is equal to ' + "$%s$"%latex(f(x0)) + "$")
    ...        html ('The function is not continuous at the point '"$x_0 = $" + latex(x0))
    sage: plot (fl, (x, x0-5, x0), axes_labels=['$x$','$f(x)$'], ymin = -5, ymax = 15, figsize = (6, 4), color = 'green', legend_label="$y =$ $%s$"%latex(fl(x))) + plot (fr, (x, x0, x0+5), color = 'red', legend_label="$y=$ $%s$"%latex(fr(x))) + point((x0, f(x0)), color = 'red', size = 48)
    <html>...</html>
    <html>...</html>
    <html>...</html>

.. end of output

::

    sage: "asdfasf %0.4d"%12
    'asdfasf 0012'

.. end of output

::

    sage: †


.. end of output


**Excercise 2**

Verify if the following functions are continuous at the given points.

1.   :math:`f(x) = |x+1|-x`  at  :math:`x_0=-1`

2.   :math:`f(x) = \begin{cases}|x+3|-1 & \text{for } x<x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=0`.

3.   :math:`f(x) = \begin{cases} \Large \frac{x^2+x-6}{x-2} & \text{for } x<x_0 \\ 3x-1 & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=2`

4.  :math:`f(x) = \begin{cases} -2 \sin{x} & \text{for } x< x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  at  :math:`x_0=\pi`

5.  :math:`f(x) = \begin{cases} x \sin{\frac{1}{x}} & \text{for } x \ne x_0\\ 0 & \text{for } x =x_0 \end{cases}`  at  :math:`x_0=1`


::

    sage: latex?
    <html>...</html>


.. end of output

