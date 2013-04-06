.. -*- coding: utf-8 -*-


Wstęp teoretyczny znajduje sie w pliku  `pdf. `_


Postać schodkowa macierzy, przekształcenia elementarne i rozkład LU



Macierze elementarne, rozkład  
.. MATH::     A=LU
------------------------------------------------------

poprzez macierze elementarne:  
.. MATH::     E_3E_2E_1 A =U.
-----------------------------------------------------------------

Cele:



 #. Demonstracja algorytmu eliminacji Gaussa użwająć operacji na rzędach macierzy.

 #. Demonstracja działania macierzy elementarnych poprzez eksperyment.

 #. Eksperymentalnie sprawdzić (wyrobić intuicję) do :math:`A=LU`. 



.. code-block:: python

    sage: A=matrix(QQ,[[2,1,1],[4,-6,0],[-2,7,2]])


.. end of output

.. code-block:: python

    sage: E1=identity_matrix(3)
    sage: E1[1,0]=-2


.. end of output

.. code-block:: python

    sage: # Jak dzialają macierze elementarne E na dana macierz A ?
    sage: var('a')
    sage: E=identity_matrix(SR,3)
    sage: E[2,1]=a # eksperymetować!
    sage: html.table([[E,'x',A,'=',E*A]])
    ...


.. end of output

.. code-block:: python

    sage: html.table([[E1,'x',A,'=',E1*A]])
    ...


.. end of output

Jeszcze bardziej intuicyjnie:


.. code-block:: python

    sage: E=zero_matrix(SR,3)
    sage: E[2,1]=a # eksperymetować!
    sage: html.table([[E,'x',A,'=',E*A]])
    ...


.. end of output

.. code-block:: python

    sage: E2=identity_matrix(3)
    sage: E2[2,0]=1
    sage: E3=identity_matrix(3)
    sage: E3[2,1]=1


.. end of output

.. code-block:: python

    sage: E=identity_matrix(SR,3)
    sage: E[2,1]=a #
    sage: show(E.inverse())


.. MATH::

    \left(\begin{array}{rrr}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & -a & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: U=E3*E2*E1*A
    sage: show(U)


.. MATH::

    \left(\begin{array}{rrr}
    2 & 1 & 1 \\
    0 & -8 & -2 \\
    0 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: E1.inverse()*E1
    ...


.. end of output

.. code-block:: python

    sage: L=E1.inverse()*E2.inverse()*E3.inverse()


.. end of output

.. code-block:: python

    sage: show(L*U)


.. MATH::

    \left(\begin{array}{rrr}
    2 & 1 & 1 \\
    4 & -6 & 0 \\
    -2 & 7 & 2
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: html.table([[L*U,'=',L,'x',U]])
    ...


.. end of output

**Uwaga** , wbudowane w Sage metody decompozycji działają na niektórych ciałach, np LU tylko na RDF.


.. code-block:: python

    sage: A=matrix(RDF,[[2,1,1],[4,-6,0],[-2,7,2]])


.. end of output

.. code-block:: python

    sage: show(A.LU())


.. MATH::

    \left(\left(\begin{array}{rrr}
    0.0 & 1.0 & 0.0 \\
    1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0
    \end{array}\right), \left(\begin{array}{rrr}
    1.0 & 0.0 & 0.0 \\
    0.5 & 1.0 & 0.0 \\
    -0.5 & 1.0 & 1.0
    \end{array}\right), \left(\begin{array}{rrr}
    4.0 & -6.0 & 0.0 \\
    0.0 & 4.0 & 1.0 \\
    0.0 & 0.0 & 1.0
    \end{array}\right)\right)

.. end of output

.. code-block:: python

    sage: P,L,U=A.LU()


.. end of output
