.. -*- coding: utf-8 -*-





Eliminacja Gaussa (Jordana) dla macierzy
----------------------------------------

Przykład eliminacji krok po kroku:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cele:



 #. Wyrobienie intuicji w procedurze eliminacji Gaussa (Jordana) bez wykonywania mozolnej arytmetyki.

 #. Sage: operacje na rzędach macierzy:  ``swap_rows, swap_rows, rescale_row,add_multiple_of_row``  oraz metoda ``rref()``


.. code-block:: python

    sage: A=matrix([[   0,-2, 1],\
    ...             [-1/2, 0, 0],\
    ...             [-1  ,-1, 0] ])
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrr}
    0 & -2 & 1 \\
    -\frac{1}{2} & 0 & 0 \\
    -1 & -1 & 0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: b=matrix([[1],[2],[2]])
    sage: show(b)


.. MATH::

    \left(\begin{array}{r}
    1 \\
    2 \\
    2
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B=A.augment(b)
    sage: show(B )


.. MATH::

    \left(\begin{array}{rrrr}
    0 & -2 & 1 & 1 \\
    -\frac{1}{2} & 0 & 0 & 2 \\
    -1 & -1 & 0 & 2
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.swap_rows(0,2)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    -1 & -1 & 0 & 2 \\
    -\frac{1}{2} & 0 & 0 & 2 \\
    0 & -2 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.rescale_row(0,-1)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    -\frac{1}{2} & 0 & 0 & 2 \\
    0 & -2 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(1,0,1/2) # -> do drugiego dodaj pierwszy razy 1/2
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & -2 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(2,1,4)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(0,1,-2)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.rescale_row(1,2)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & 1 & 0 & 2 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: show(B.rref())


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & 1 & 0 & 2 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A=matrix([[   0,-2, 1],\
    ...             [-1/2, 0, 0],\
    ...             [-1  ,-1, 0] ])
    sage: b=matrix([[1],[2],[2]])
    sage: B=A.augment(b)
    sage: tab = []
    sage: tab.append(latex(B))
    sage: B.swap_rows(0,2)
    sage: tab.append(latex(B))
    sage: B.rescale_row(0,-1)
    sage: tab.append(latex(B))
    sage: B.add_multiple_of_row(1,0,1/2) # -> do drugiego dodaj pierwszy razy 1/2
    sage: tab.append(latex(B))
    sage: B.add_multiple_of_row(2,1,4)
    sage: tab.append(latex(B))
    sage: B.add_multiple_of_row(0,1,-2)
    sage: tab.append(latex(B))
    sage: B.rescale_row(1,2)
    sage: tab.append(latex(B))


.. end of output

.. code-block:: python

    sage: html( "$$%s$$" % join(tab,"\\to") )
    ...

.. end of output



Eliminacja Gaussa\-Jordana układu sprzecznego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


 #. Analiza specjalnych przypadków układów równań liniowych, wykorzystujemy albo ``rref()``  albo posługujemy się operacjami na rzędach macierzy.

 #. Przedstawienie rozwiązanie równania :math:`Ax=b` jako rozwiązanie szczegolne + kombinacja bazy jądra :math:`A`.

 #. Sage: ``right_kernel().basis(), right_kernel(), rank()`` , iteratory. 


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 0, 1])
    sage: html.table([['rank(A)=',rank(A)],['rank(A|b)=',rank(A.augment(b))]])
    sage: A=A.augment(b)
    sage: show(A)
    ...



.. MATH::

    \left(\begin{array}{rrrr}
    0 & 1 & 0 & 1 \\
    0 & 1 & 0 & 0 \\
    1 & 2 & 3 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.swap_rows(0,2)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 2 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 1 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(0,1,-2)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 1 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(2,1,-1)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(0,2,-1)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output

Wykorzystując gotową procedurę:


.. code-block:: python

    sage: show(A.rref())


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output

Zmieńmy tak wektor :math:`b` by układ miał rozwiązania:


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 1, 1])
    sage: A.solve_right(b)
    (-1, 1, 0)

.. end of output


.. code-block:: python

    sage: show(A)


.. MATH::

    \left(\begin{array}{rrr}
    0 & 1 & 0 \\
    0 & 1 & 0 \\
    1 & 2 & 3
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: show( (A.augment(b)).rref() )


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & -1 \\
    0 & 1 & 0 & 1 \\
    0 & 0 & 0 & 0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: html.table([['rank(A)=',rank(A)],['rank(A|b)=',rank(A.augment(b))]])
    ...


.. end of output

.. code-block:: python

    sage: for v in A.right_kernel().basis():
    ...       show(v)
    ...       html.table([['$Av=$',A,"x",v.column(),"=", (A*v).column()]] )
    ...



.. MATH::

    \left(1,\,0,\,-\frac{1}{3}\right)


.. end of output

.. code-block:: python

    sage: A=matrix(QQ,[[1,0,0],[2,1,0],[-1,-1,1]])
    sage: show(A)
    sage: B=matrix(QQ,[[1,0,0],[-2,1,0],[-1,1,1]])
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrr}
    1 & 0 & 0 \\
    2 & 1 & 0 \\
    -1 & -1 & 1
    \end{array}\right)


.. MATH::

    \left(\begin{array}{rrr}
    1 & 0 & 0 \\
    -2 & 1 & 0 \\
    -1 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A*B
    [1 0 0]
    [0 1 0]
    [0 0 1]

.. end of output

.. code-block:: python

    sage: A=matrix(QQ,[[1,0],[6,1]])
    sage: A.inverse()
    [ 1  0]
    [-6  1]

.. end of output

Macierz :math:`n\neq m`
~~~~~~~~~~~~~~~~~~~~~~~

Weźmy układ dwóch równań z czterema niewiadomymi:


 




.. code-block:: python

    sage: #Jeszcze jeden przykład
    sage: A=matrix(QQ,[[0,1,0,1],[0,1,1,0]])
    sage: b= vector(QQ, [1, 1])
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    0 & 1 & 0 & 1 \\
    0 & 1 & 1 & 0
    \end{array}\right)

.. end of output

Spróbujmy odnaleźć rozwiązanie ogólne, wykorzystując eliminację Gaussa.  Zacznijmy od procedury dla macierzy :math:`2\times4:`


.. code-block:: python

    sage: show(A.augment(b).rref())


.. MATH::

    \left(\begin{array}{rrrrr}
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0
    \end{array}\right)

.. end of output

Co odpowieda następujacemu układowi równań:


.. code-block:: python

    sage: for wiersz in A.augment(b).rref():
    ...       sum([var("x%d"%(i+1))*el for i,el in enumerate(wiersz[:-1])])==wiersz[-1]
    ...    
    x2 + x4 == 1
    x3 - x4 == 0

.. end of output

Uzupełnijmy ten układ o "brakujące" równania:


.. code-block:: python

    sage: Ann=matrix(SR,4,5)
    sage: Ann[1:3,:]  = A.augment(b).rref()
    sage: show(Ann)


.. MATH::

    \left(\begin{array}{rrrrr}
    0 & 0 & 0 & 0 & 0 \\
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0 \\
    0 & 0 & 0 & 0 & 0
    \end{array}\right)

.. end of output

wpiszmy zamiast :math:`0=0` równoważne :math:`x_1=x_1` i :math:`x_4=x_4`:


.. code-block:: python

    sage: Ann[0,0] = 1
    sage: Ann[0,4] = x1
    sage: Ann[3,3] = 1
    sage: Ann[3,4] = x4
    sage: show(Ann)


.. MATH::

    \left(\begin{array}{rrrrr}
    1 & 0 & 0 & 0 & x_{1} \\
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0 \\
    0 & 0 & 0 & 1 & x_{4}
    \end{array}\right)

.. end of output

Wykonajmy jeszcze raz eliminacje Gaussa na takim układzie:


.. code-block:: python

    sage: show( Ann.rref() ) 


.. MATH::

    \left(\begin{array}{rrrrr}
    1 & 0 & 0 & 0 & x_{1} \\
    0 & 1 & 0 & 0 & -x_{4} + 1 \\
    0 & 0 & 1 & 0 & x_{4} \\
    0 & 0 & 0 & 1 & x_{4}
    \end{array}\right)

.. end of output

Tym razem mamy rozwiązanie jak dla układu nieosobliwego, jednak prawa strona zawiera dwa dowolne parametry :math:`x_1` i :math:`x_2`.



Rozwiązanie można też otrzymać, biorąc jedno rozwiązanie szczególne i kombinację liniową wszytkich wektorów bazy jądra operatora :math:`A`:


.. code-block:: python

    sage: show(A\b)
    sage: A.right_kernel().basis()
    [
    (1, 0, 0, 0),
    (0, 1, -1, -1)
    ]


.. MATH::

    \left(0,\,1,\,0,\,0\right)


.. end of output


.. code-block:: python

    sage: for v in A.right_kernel().basis():
    ...       show(v.column())
    ...       html.table([['$Av=$',A,"x",v.column(),"=", (A*v).column()]] )
    ...

    ...



.. MATH::

    \left(\begin{array}{r}
    1 \\
    0 \\
    0 \\
    0
    \end{array}\right)


.. MATH::

    \left(\begin{array}{r}
    0 \\
    1 \\
    -1 \\
    -1
    \end{array}\right)

.. end of output









Zadania: automatycznie generowane.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zadanie 1. Za pomocą operacji elementarnych, doprowadzić macierz do postaci schodkowej. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Wolno używać tylko wbudowanych funkcji do operacji na rzędach.


.. code-block:: python

    sage: rank=0
    sage: n=randint(2,7)
    sage: while rank!=n:
    ...       A=random_matrix(QQ,n,n)
    ...       rank=A.rank()
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrrrrr}
    0 & -1 & 0 & 0 & -2 & 0 & 0 \\
    -2 & 0 & -1 & -1 & 2 & \frac{1}{2} & \frac{1}{2} \\
    -1 & 1 & -2 & 0 & -2 & 2 & -\frac{1}{2} \\
    -2 & -1 & -\frac{1}{2} & 0 & -2 & -1 & -2 \\
    1 & -2 & 0 & -\frac{1}{2} & 2 & 0 & 0 \\
    -1 & 2 & 2 & -2 & 0 & 1 & 1 \\
    \frac{1}{2} & -2 & 0 & 1 & 0 & 0 & 0
    \end{array}\right)

.. end of output

Zadanie 2. Rozwiązać układ równań metodą eliminacji Gaussa. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


 #. Czy układ jest sprzeczny?

 #. Czy układ jest nieoznaczony?

 #. Ile jest rozwiązań, od ilu parametrów zależą rozwiązania?


.. code-block:: python

    sage: n=randint(2,5)
    sage: m=randint(2,5)
    sage: A=random_matrix(QQ,m,n)
    sage: b=random_vector(QQ,m)
    sage: x=vector([var('x%d' % (i+1)) for i in range(n)])
    sage: html.table( [[(A*x)[i],"=",b[i]] for i in range(m)])
    ...


.. end of output



