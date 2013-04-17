56. Rozwiązanie równania macierzowego
=====================================

Znaleźć macierz :math:`\boldsymbol{X}` z równania:

.. math::
   :label: 56.0

   \boldsymbol{X} \left( \begin{array}{ccc}
    1 &   1 & - 1 \\ 
    2 &   1 &   0 \\ 
    1 & - 1 &   1 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
    1 & - 1 &  3 \\ 
    4 &   3 &  2 \\ 
    1 & - 2 &  5 \\ 
   \end{array} \right).


____________________________________________________________________________________


Przy oznaczeniach

.. math::

    \boldsymbol{A} = \left( \begin{array}{ccc}
    1 &   1 & - 1 \\ 
    2 &   1 &   0 \\ 
    1 & - 1 &   1 \\ 
    \end{array} \right), \quad  \boldsymbol{B} = \left( \begin{array}{ccc}
    1 & - 1 &   3 \\ 
    4 &   3 &   2 \\ 
    1 & - 2 &   5 \\ 
    \end{array} \right)


równanie :eq:`56.0` można przepisać jako

.. math::

   \boldsymbol{X} \boldsymbol{A} = \boldsymbol{B}.


Zbadamy, czy macierz :math:`A` jest odwracalna:

.. math::

   \begin{array}{l}
   \det {\boldsymbol{A}} = & \left| \begin{array}{ccc}
   1 &   1 & - 1 \\ 
   2 &   1 &   0 \\ 
   1 & - 1 &   1 \\ 
   \end{array} \right| = \left| \begin{array}{ccc}
   0 &   0 & - 1 \\ 
   2 &   1 &   0 \\ 
   2 &   0 &   1 \\ 
   \end{array} \right| = - \left| \begin{array}{cc}
   2 & 1  \\ 
   2 & 0  \\ 
   \end{array} \right| = - 2\left| \begin{array}{cc}
   1 & 1  \\ 
   1 & 0  \\ 
   \end{array} \right| = 2. \\ 
     & \begin{array}{l}
   C_1  \leftarrow C_1  +  C_3 \\ 
   C_2  \leftarrow C_2  +  C_3 \\ 
   \end{array} \\ 
   \end{array}

   \boldsymbol{A}^{-1} = \frac{1}{2}\left( \begin{array}{ccc}
   1 & - 2 & - 3 \\ 
   0 &   2 &   2 \\ 
   1 & - 2 & - 1 \\ 
   \end{array} \right)^{T} = \frac{1}{2}\left( \begin{array}{ccc}
     1 &  0 &   1 \\ 
   - 2 &  2 & - 2 \\ 
   - 3 &  2 & - 1 \\ 
   \end{array} \right).


Stąd

.. math::

   \boldsymbol{X} = \boldsymbol{B} \boldsymbol{A}^{-1} = \frac{1}{2}\left( \begin{array}{ccc}
   1 & - 1 &  3 \\ 
   4 &   3 &  2 \\ 
   1 & - 2 &  5 \\ 
   \end{array} \right)\left( \begin{array}{ccc}
     1 &  0 &   1 \\ 
   - 2 &  2 & - 2 \\ 
   - 3 &  2 & - 1 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
   - 3 &  2 &   0 \\ 
   - 4 &  5 & - 2 \\ 
   - 5 &  3 &   0 \\ 
   \end{array} \right).


Sprawdzenie:

.. math::

   \left( \begin{array}{ccc}
   - 3 &  2 &   0 \\ 
   - 4 &  5 & - 2 \\ 
   - 5 &  3 &   0 \\ 
   \end{array} \right)\left( \begin{array}{ccc}
   1 &   1 & - 1 \\ 
   2 &   1 &   0 \\ 
   1 & - 1 &   1 \\ 
   \end{array} \right) = \left( \begin{array}{ccc}
   1 & - 1 &  3 \\ 
   4 &   3 &  2 \\ 
   1 & - 2 &  5 \\ 
   \end{array} \right) = {\boldsymbol{B}}.


