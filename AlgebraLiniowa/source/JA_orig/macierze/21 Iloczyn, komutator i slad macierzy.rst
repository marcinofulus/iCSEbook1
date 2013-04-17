21. Iloczyn, komutator i ślad macierzy
======================================

Dla  macierzy

.. math::

   \boldsymbol{A} = \left( \begin{array}{ccc}
      5 & - 1 & 0 \\ 
      2 &   3 & 1 \\ 
    - 1 &   2 & 2 \\ 
   \end{array} \right), \quad \boldsymbol{B} = \left( \begin{array}{ccc}
    - 1 &  2 &  0 \\ 
      1 &  3 &  2 \\ 
    - 2 &  5 &  4 \\ 
   \end{array} \right)


obliczyć

:math:`\boldsymbol{AB}, \boldsymbol{BA}, [\boldsymbol{A},\boldsymbol{B}]: = \boldsymbol{AB} - \boldsymbol{BA}`  oraz ślady tych trzech wyrażeń.

Czy  :math:`\text{Tr}(\boldsymbol{A} \boldsymbol{B}) = \text{Tr} \boldsymbol{A} \cdot \text{Tr} \boldsymbol{B}`?

___________________________________________________________________________________


.. math::

   \boldsymbol{A} \boldsymbol{B} = \left( \begin{array}{ccc}
      5 & - 1 &  0 \\ 
      2 &   3 &  1 \\ 
    - 1 &   2 &  2 \\ 
   \end{array} \right) \left( \begin{array}{ccc}
    - 1 &  2 &  0 \\ 
      1 &  3 &  2 \\ 
    - 2 &  5 &  4 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
   - 6 &  7 & - 2 \\ 
   - 1 & 18 &  10 \\ 
   - 1 & 14 &  12 \\ 
   \end{array} \right), \\ 

   \boldsymbol{B} \boldsymbol{A} = \left( \begin{array}{ccc}
    - 1 &  2 &  0 \\ 
      1 &  3 &  2 \\ 
    - 2 &  5 &  4 \\ 
   \end{array} \right) \left( \begin{array}{ccc}
      5 & - 1 & 0 \\ 
      2 &   3 & 1 \\ 
    - 1 &   2 & 2 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
    - 1 &  7 &  2 \\ 
      9 & 12 &  7 \\ 
    - 4 & 25 & 13 \\ 
   \end{array} \right), \\ 

   \boldsymbol{AB} - \boldsymbol{BA} = \left( \begin{array}{ccc}
    -  5 &    0 & - 4 \\ 
    - 10 &    6 &   3 \\ 
       3 & - 11 & - 1 \\ 
   \end{array} \right).


| 
| :math:`\text{Tr} \boldsymbol{A} = 10, \quad \text{Tr} \boldsymbol{B} = 6` ;
| :math:`\text{Tr}(\boldsymbol{A} \boldsymbol{B}) = \text{Tr}(\boldsymbol{B} \boldsymbol{A}) = 24 \ne \text{Tr} \boldsymbol{A} \cdot \text{Tr}\boldsymbol{B} = 60` ;
| :math:`\text{Tr} [\boldsymbol{A}, \boldsymbol{B}] = 0`.

