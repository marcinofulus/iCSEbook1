.. -*- coding: utf-8 -*-

Macierz odwrotna
================


Macierz identycznościowa
------------------------

Zastanówmy się co będzie odpowiednikiem jedynki w mnożeniu macierzy?
Na pierwszy rzut oka mogło by się wydawać, że macierz w której
elementami są jedynki może być identycznością czyli spełniać

.. math::
   :label: I

   \boldsymbol{I}\boldsymbol{A} = \boldsymbol{A},

.. admonition:: **Poeksperymentuj z Sage**!

   Wykorzystując notatnik Sage lub element interaktywny zbadaj:

   * Odgadnij postać macierzy jednostkowej (indentyczności). W tym
     celu zmieniaj macierz ``I`` aż jej iloczyn
     :math:`\boldsymbol{I}\boldsymbol{A} = \boldsymbol{A}`.

   * Jesli się już to udało to sprawdź eksperymentalnie czy
     :math:`\boldsymbol{I}\boldsymbol{A}=\boldsymbol{A}\boldsymbol{I}`?
 
   Zacznij pracę z poniższym kodem:

.. sagecellserver:: 

   I = matrix(QQ,[[1,1,1],[1,1,1],[1,1,1]])
   A = random_matrix(QQ,3)
   show(A)
   show(I*A)



Macierz odwrotna - własności
----------------------------



Macierz odwrotna do macierzy :math:`\boldsymbol{A}` to taka, która spełnia:

.. math::
   :label: Ainv1

   \boldsymbol{A}\boldsymbol{A}^{-1} = \boldsymbol{I},

gdzie :math:`\boldsymbol{I}` jest macierzą identycznościową, która ma
zera w wyjątkiem głównej przekątnej na której są jedynki.



Z łączności mnożenia wynika własność  

.. math::

   \boldsymbol{A}^{-1}\boldsymbol{A} = \boldsymbol{A}\boldsymbol{A}^{-1},


Ponadto zachodzi własność:

.. math::
   :label: AB_1

   (\boldsymbol{A}\boldsymbol{B})^{-1} = \boldsymbol{B}^{-1}\boldsymbol{A}^{-1},


.. note:: Zmieniona kolejność mnożenia!

Aby się przekonać, że tak jest, pomnóżmy lewą strone równania
:eq:`AB_1` lewostronnie kolejno przez :math:`\boldsymbol{B}` i
:math:`\boldsymbol{A}`:

.. math::

    \boldsymbol{A}\boldsymbol{B}\boldsymbol{B}^{-1}\boldsymbol{A}^{-1} =     \boldsymbol{A}(\boldsymbol{B}\boldsymbol{B}^{-1})\boldsymbol{A}^{-1} =      \boldsymbol{A}(I)\boldsymbol{A}^{-1} =\boldsymbol{A}\boldsymbol{A}^{-1} =\boldsymbol{I}

Ostatnią równość możemy zinterpretować tak, że macierz
:math:`\boldsymbol{B}^{-1}\boldsymbol{A}^{-1}` jest macierzą odwrotną
do macierzy :math:`\boldsymbol{AB}`.


Obliczanie macierzy odwrotnej
-----------------------------

Macierz odwrotna może być obliczoną metodą eliminacji
Gaussa. Korzystając z kolumnowej interpretacji mnożenia macierzy,
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



Macierz odwrotna a macierz osobliwa
-----------------------------------

Jeżeli w wyniku eliminacji Gaussa z macierzy kwadratowej
:math:`\boldsymbol{A}` możemy uzyskać macierz jednostkową to mówimy,
że macierz jest nieosobliwa. W przeciwnym przypadku jest osobliwa.

.. admonition:: **Twierdzenie** 

   Każda macierz nieosobliwa ma swoją macierz odwrotną. 

.. admonition:: **Twierdzenie** 

   Jeżeli macierz jest osobliwa to macierz odwrotna nie istnieje.
