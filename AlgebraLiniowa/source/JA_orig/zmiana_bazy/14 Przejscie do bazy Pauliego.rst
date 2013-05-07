14. Przejście do bazy Pauliego
==============================

Rozważmy  przestrzeń  wektorową  (dokładniej – algebrę)  :math:`M_2 ({\boldsymbol{C}})` zespolonych  macierzy kwadratowych  2. stopnia.  Zapisać  macierz  przejścia  :math:`\boldsymbol{S}`  od  bazy  "naturalnej"  :math:`\cal{E} = ({\boldsymbol{e}}_i )_1^4`, gdzie

.. math::

   {\boldsymbol{e}}_1 = \left( {\begin{array}{*{20}c}
    1 & 0 \\
    0 & 0 \\
   \end{array}} \right), \quad {\boldsymbol{e}}_2 = \left( {\begin{array}{*{20}c}
    0 & 1 \\
    0 & 0 \\
   \end{array}} \right), \quad {\boldsymbol{e}}_3 = \left( {\begin{array}{*{20}c}
    0 & 0 \\
    1 & 0 \\
   \end{array}} \right), \quad {\boldsymbol{e}}_4 = \left( {\begin{array}{*{20}c}
    0 & 0 \\
    0 & 1 \\
   \end{array}} \right),


do  bazy  :math:`\cal{P} = ({\boldsymbol{\sigma }}_j )_0^3`,  złożonej  z  macierzy  jednostkowej  i  trzech  macierzy  Pauliego:

.. math::

   {\boldsymbol{\sigma }}_0 = \left( \begin{array}{*{20}c}
    1 & 0  \\
    0 & 1  \\
   \end{array} \right), \quad {\boldsymbol{\sigma }}_1 = \left( \begin{array}{*{20}c}
    0 & 1  \\
    1 & 0  \\
   \end{array} \right), \quad {\boldsymbol{\sigma }}_2 = \left( \begin{array}{*{20}c}
    0 &  -i \\
    i &  0 \\
   \end{array} \right), \quad {\boldsymbol{\sigma }}_3 = \left( \begin{array}{*{20}c}
    1 &  0 \\
    0 &  -1 \\
   \end{array} \right).


Sprawdzić  bezpośrednio,  że  :math:`\boldsymbol{S}`  jest  macierzą  nieosobliwą.

___________________________________________________________________________________


Każdą  z  macierzy  Pauliego  przedstawiamy  w  postaci  kombinacji  liniowej  macierzy  bazy  naturalnej:

.. math::

   \begin{array}{l}
   \boldsymbol{\sigma}_0  =  1 \cdot {\boldsymbol{e}}_1  + 0 \cdot {\boldsymbol{e}}_2  + 0 \cdot {\boldsymbol{e}}_3  +  1 \cdot {\boldsymbol{e}}_4  \\ 
   \boldsymbol{\sigma} _1  = 0 \cdot {\boldsymbol{e}}_1  + 1 \cdot {\boldsymbol{e}}_2  +  1 \cdot {\boldsymbol{e}}_3  + 0 \cdot {\boldsymbol{e}}_4  \\ 
   \boldsymbol{\sigma} _2  = 0 \cdot {\boldsymbol{e}}_1  + ( - i) \cdot {\boldsymbol{e}}_2  +  i \cdot {\boldsymbol{e}}_3  + 0 \cdot {\boldsymbol{e}}_4  \\ 
   \boldsymbol{\sigma}_3  =  1 \cdot {\boldsymbol{e}}_1  + 0 \cdot {\boldsymbol{e}}_2  + 0 \cdot {\boldsymbol{e}}_3  + ( - 1) \cdot {\boldsymbol{e}}_4  \\ 
   \end{array}.


Stąd  macierz  przejścia:

.. math::

   {\boldsymbol{S}} = \left( {\begin{array}{*{20}c}
    1 &  0 &  0 &  1 \\
    0 &  1 &  { - i} &  0 \\
    0 &  1 &  i &  0 \\
    1 &  0 &  0 &  { - 1} \\
   \end{array}} \right).


:math:`\boldsymbol{S}` jest  macierzą  nieosobliwą,  bo

.. math::

   \begin{array}{l}
   \det {\boldsymbol{S}} = & \left| {\begin{array}{*{20}c}
    1 &  0 &  0 &  1 \\
    0 &  1 &  { - i} &  0 \\
    0 &  1 &  i &  0 \\
    1 &  0 &  0 &  { - 1} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    2 &  0 &  0 &  1 \\
    0 &  1 &  { - i} &  0 \\
    0 &  1 &  i &  0 \\
    0 &  0 &  0 &  { - 1} \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    1 &  { - i} &  0 \\
    1 &  i &  0 \\
    0 &  0 &  { - 1} \\
   \end{array}} \right| = ( - 2)\left| {\begin{array}{*{20}c}
    1 &  { - i} \\
    1 &  i \\
   \end{array}} \right| = ( - 2)2i =  - 4i \ne 0. \\
    & C_1 \leftarrow C_1 + C_4
   \end{array}


