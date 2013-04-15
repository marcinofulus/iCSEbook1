Zadania:
~~~~~~~~

Rozważmy układ równań:



.. MATH::

     \begin{cases}-8 \, x_{1} + 22 \, x_{2} - 8 \, x_{3} &=& 1 \\ x_{1} - 3 \, x_{2} + x_{3} &=& 0 \\ 3 \, x_{1} - 8 \, x_{2} + 3 \, x_{3} &=& -1/2 \\ \\ \end{cases}


Wykorzystując system Sage lub ręczne rachunki:



 #. Rozwiązać układ.

 #. Zmodyfikować prawą stronę tak by otrzymać układ sprzeczny. Narysować wektory kolumnowe i uzasadnić sprzeczność układu.

 #. Zmodyfikować macierz tak by dla dowolnej prawej strony układ nigdy nie był sprzeczny \- zastosować rysunek wektorów kolumnowych do uzasadnienia. 


.. code-block:: python

    sage: var('x1 x2 x3')
    sage: var('b1 b2 b3')
    sage: A = random_matrix(QQ,3,algorithm='subspaces')
    sage: b = random_vector(QQ,3)
    sage: b1 = A.column_space().basis()[0]
    sage: show(A)
    sage: show(b)
    sage: show(b1)


.. MATH::

    \left(\begin{array}{rrr}
    2 & -2 & 4 \\
    -2 & 3 & -5 \\
    1 & -2 & 3
    \end{array}\right)


.. MATH::

    \left(-5,\,129,\,1\right)



.. MATH::

    \left(1,\,0,\,-\frac{1}{2}\right)


.. end of output

.. code-block:: python

    sage: for i,x in enumerate(A*vector([x1,x2,x3])):
    ...       print latex(x),'&=& %s \\\\'%b1[i]
    2 \, x_{1} - 2 \, x_{2} + 4 \, x_{3} &=& 1 \\
    -2 \, x_{1} + 3 \, x_{2} - 5 \, x_{3} &=& 0 \\
    x_{1} - 2 \, x_{2} + 3 \, x_{3} &=& -1/2 \\

.. end of output

.. code-block:: python

    sage: print latex(b)
    sage: print latex(b1)
    \left(-5,\,129,\,1\right)
    \left(1,\,0,\,-\frac{1}{2}\right)

.. end of output

.. code-block:: python

    sage: A\b
    Traceback (most recent call last):
    ...
    ValueError: matrix equation has no solutions

.. end of output

.. code-block:: python

    sage: A\b1
    (3/2, 1, 0)

.. end of output
