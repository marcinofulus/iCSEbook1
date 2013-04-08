54. Rozwiązanie równania macierzowego
=====================================

Znaleźć macierz :math:`\boldsymbol{X}` z równania:

.. math::
   :label: 54.0

   \left( \begin{array}{cc}
   3 & - 1 \\ 
   5 & - 2 \\ 
   \end{array} \right) \boldsymbol{X} \left( \begin{array}{cc}
   5 & 6  \\ 
   7 & 8  \\ 
   \end{array} \right) = \left( \begin{array}{cc}
   14 & 16  \\ 
    9 & 10  \\ 
   \end{array} \right).


____________________________________________________________________________________


Przy  oznaczeniach

.. math::

   \boldsymbol{A} = \left( \begin{array}{cc}
   3 & - 1 \\ 
   5 & - 2 \\ 
   \end{array} \right), \quad \boldsymbol{B} = \left( \begin{array}{cc}
   5 & 6  \\ 
   7 & 8  \\ 
   \end{array} \right), \quad \boldsymbol{C} = \left( \begin{array}{cc}
   14 & 16 \\ 
    9 & 10 \\ 
   \end{array} \right)


równanie  :eq:`54.0`  można zapisać jako

.. math::
   :label: 54.1

   \boldsymbol{A} \boldsymbol{X} \boldsymbol{B} = \boldsymbol{C}.



.. math::

   \det {\boldsymbol{A}} = \left| \begin{array}{cc}
   3 & - 1 \\ 
   5 & - 2 \\ 
   \end{array} \right| = - 6 + 5 = - 1, \\ 

   \det {\boldsymbol{B}} = \left| \begin{array}{cc}
   5 & 6  \\ 
   7 & 8  \\ 
   \end{array} \right| = 40 - 42 = - 2.


:math:`\boldsymbol{A}` i :math:`\boldsymbol{B}` są więc macierzami nieosobliwymi. Z równania  :eq:`54.1`  mamy

.. math::
   :label: 54.3

   \boldsymbol{X} = \boldsymbol{A}^{-1} \boldsymbol{C} \boldsymbol{B}^{-1}.



.. math::

   \boldsymbol{A}^{-1} = (- 1) \left( \begin{array}{cc}
    - 2 & - 5 \\ 
      1 &   3 \\ 
   \end{array} \right)^{T} = \left( \begin{array}{cc}
   2 & - 1 \\ 
   5 & - 3 \\ 
   \end{array} \right), \\ 

   \boldsymbol{B}^{-1} = - \frac{1}{2} \left( \begin{array}{cc}
    8 & - 7 \\ 
    - 6 & 5 \\ 
   \end{array} \right)^{T} = \left( \begin{array}{cc}
    - 4 & 3 \\ 
   \textstyle{7 \over 2} & - \textstyle{5 \over 2} \\ 
   \end{array} \right).


Podstawiając do  :eq:`54.3`  otrzymujemy:

.. math::

   \boldsymbol{X} = \left( \begin{array}{cc}
   2 & - 1 \\ 
   5 & - 3 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   14 & 16 \\ 
    9 & 10 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   - 4 & 3 \\ 
   \textstyle{7 \over 2} & - \textstyle{5 \over 2} \\ 
   \end{array} \right) = \left( \begin{array}{cc}
   19 & 22 \\ 
   43 & 50 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   - 4 & 3 \\ 
   \textstyle{7 \over 2} & - \textstyle{5 \over 2} \\ 
   \end{array} \right) = \left( \begin{array}{cc}
   1 & 2 \\ 
   3 & 4 \\ 
   \end{array} \right).


Sprawdzenie:

.. math::

   \boldsymbol{A} \boldsymbol{X} \boldsymbol{B} = \left( \begin{array}{cc}
   3 & - 1 \\ 
   5 & - 2 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   1 & 2 \\ 
   3 & 4 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   5 & 6 \\ 
   7 & 8 \\ 
   \end{array} \right) = \left( \begin{array}{cc}
     0 &  2 \\ 
   - 1 &  2 \\ 
   \end{array} \right) \left( \begin{array}{cc}
   5 & 6 \\ 
   7 & 8 \\ 
   \end{array} \right) = \left( \begin{array}{cc}
   14 & 16 \\ 
    9 & 10 \\ 
   \end{array} \right).


