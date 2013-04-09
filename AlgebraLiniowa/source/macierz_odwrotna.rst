.. -*- coding: utf-8 -*-

Macierz odwrotna
================


Macierz odwrotna do macierzy :math:`\boldsymbol{A}` to taka, która spełnia:

.. math::
   :label: Ainv1

   \boldsymbol{A}\boldsymbol{A}^{-1} = \boldsymbol{I},

gdzie :math:`\boldsymbol{I}` jest macierzą identycznościową, która ma
zera w wyjątkiem głównej przekątnej na której są jedynki.



Z łączności mnożenia wynika własność  

.. math::

   \boldsymbol{A}^{-1}\boldsymbol{A} = \boldsymbol{A}\boldsymbol{A}^{-1},



Oblicznie macierzy odwrotnej
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Macierz odwrotna może być obliczoną metodą eliminacji
Gaussa. Korzystając z kolumnowegj interpretacji mnożenia macierzy,
można równanie macierzowe :eq:`Ainv1` potraktować jako trzy równania
liniowe z prawymi stronami będącymi wektorami:

.. math::

   \left(\begin{array}{rrr}
   1 \\0 \\  0
   \end{array}\right),
   \left(\begin{array}{rrr}
    0 \\1 \\  0
   \end{array}\right),
   \left(\begin{array}{rrr}
    0 \\0 \\  1
   \end{array}\right).


na kolejne kolumny macierzy odwrotnej. Trzy eliminacje Gaussa można
zastąpić jedną w której zamiast macierzy rozszerzonej o wektor będący
prawą stroną układu, rozszerzamy prawą stronę o macierz jednostkową.

.. sagecellserver::

   A=matrix([[   0,-2, 1],\
   [-1/2, 0, 0],\
   [-1  ,-1, 0] ])
   B=A.augment(identity_matrix(3))
   # dla B z macierza I
   show( B.rref() )

   show(A*B.rref()[:,3:])


   Ainv=B.rref()[:,3:]
   show( Ainv)
