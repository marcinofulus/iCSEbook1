11. Obliczenie komutatora macierzy
==================================

Obliczyć komutator :math:`[A,B]` dla macierzy:

.. math::

   \boldsymbol{A} = \left( \begin{array}{ccc}
    2 &   3 &   4 \\ 
    1 &   2 & - 2 \\ 
    1 & - 1 &   0 \\ 
   \end{array} \right), \quad \boldsymbol{B} = \left( \begin{array}{ccc}
      1 &  1 &   1 \\ 
    - 1 &  0 &   2 \\ 
      0 &  1 & - 1 \\ 
   \end{array} \right).


Sprawdzić równość  :math:`\text{Tr}(\boldsymbol{AB}) = \text{Tr}(\boldsymbol{BA})`.  Czy  :math:`\text{Tr}(\boldsymbol{AB}) = \text{Tr}\boldsymbol{A} \cdot \text{Tr} \boldsymbol{B}` ?

___________________________________________________________________________________


.. math::

   \boldsymbol{A} \boldsymbol{B} = \left( \begin{array}{ccc}
    2 &   3 &   4 \\ 
    1 &   2 & - 2 \\ 
    1 & - 1 &   0 \\ 
   \end{array} \right) \left( \begin{array}{ccc}
      1 &  1 &   1 \\ 
    - 1 &  0 &   2 \\ 
      0 &  1 & - 1 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
    - 1 &   6 &   4 \\ 
    - 1 & - 1 &   7 \\ 
      2 &   1 & - 1 \\ 
   \end{array} \right), \\ 


   \boldsymbol{B} \boldsymbol{A} = \left( \begin{array}{ccc}
      1 &  1 &   1 \\ 
    - 1 &  0 &   2 \\ 
      0 &  1 & - 1 \\ 
   \end{array} \right) \left( \begin{array}{ccc}
    2 &   3 &   4 \\ 
    1 &   2 & - 2 \\ 
    1 & - 1 &   0 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
    4 &   4 &   2 \\ 
    0 & - 5 & - 4 \\ 
    0 &   3 & - 2 \\ 
   \end{array} \right); \\ 


   \left[ \boldsymbol{A}, \boldsymbol{B} \right] \equiv \boldsymbol{AB} - \boldsymbol{BA} = \left( \begin{array}{ccc}
    - 5 &   2 &  2 \\ 
    - 1 &   4 & 11 \\ 
      2 & - 2 &  1 \\ 
   \end{array} \right). \\ 


   \text{Tr}(\boldsymbol{AB}) = \text{Tr}(\boldsymbol{BA}) = - 3 \ne \text{Tr} \boldsymbol{A} \cdot \text{Tr} \boldsymbol{B} = 4 \cdot 0 = 0.

