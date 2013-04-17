055. Kiedy dane wektory tworzą bazę przestrzeni
===============================================

Dla  jakiego :math:`\alpha  \in {\boldsymbol{R}}` wektory

.. math::

   x_{ 1}  = \left( {\begin{array}{*{20}c}
    1  \\
    2  \\
    3  \\
    1  \\
   \end{array}} \right), \quad x_2  = \left( {\begin{array}{*{20}c}
    0 \\
    3 \\
    { - 1} \\
    2 \\
   \end{array}} \right), \quad x_3  = \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    3 \\
    { - 4} \\
   \end{array}} \right), \quad x_4  = \left( {\begin{array}{*{20}c}
    2  \\
    5  \\
    \alpha   \\
    { - 1}  \\
   \end{array}} \right)


tworzą  bazę  w  przestrzeni :math:`{\boldsymbol{R}}^4`? Uzasadnić  odpowiedź.

_____________________________________________________________________________________


W  *n*-wymiarowej  przestrzeni  wektorowej  każdy  liniowo  niezależny  układ  n  wektorów  jest  bazą.

Cztery  wektory  4-wymiarowej  przestrzeni  :math:`\boldsymbol{R}^4`   tworzą  bazę  tej  przestrzeni
wtedy  i  tylko  wtedy,  gdy  są  liniowo  niezależne.

Z  kolei  wektory  te  są  liniowo niezależne  wtedy  i  tylko  wtedy,  gdy  wyznacznik  macierzy  z  nich  złożonej  jest  różny  od  zera.

W  tym  wypadku:

.. math::

   \left| {\begin{array}{*{20}c}
    1 &  0 &  1 &  2 \\
    2 &  3 &  0 &  5 \\
    3 &  { - 1} &  3 &  \alpha  \\
    1 &  2 &  { - 4} &  { - 1} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 & 0 & 1 & 0  \\
    2 & 3 & 0 & 0  \\
    3 & { - 1} & 3 & {\alpha  - 5}  \\
    1 & 2 & { - 4} & 0  \\
   \end{array}} \right| =  - (\alpha  - 5)\left| {\begin{array}{*{20}c}
    1 &  0 &  1 \\
    2 &  3 &  0 \\
    1 &  2 &  { - 4} \\
   \end{array}} \right| = \\

   C_4  \leftarrow C_4  - (C_1  + C_2  + C_3 ) \quad \quad \quad 
   \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad 
   C_3  \leftarrow C_3  - C_1 \\

   =  - (\alpha  - 5)\left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    2 &  3 &  { - 2} \\
    1 &  2 &  { - 5} \\
   \end{array}} \right| =  - (\alpha  - 5)\left| {\begin{array}{*{20}c}
    3 & { - 2}  \\
    2 & { - 5}  \\
   \end{array}} \right| =  - (\alpha  - 5)( - 11) = 11(\alpha  - 5).


Odpowiedź:  Wektory  :math:`x_1 ,x_2 ,x_3 ,x_4`   tworzą  bazę  przestrzeni  :math:`\boldsymbol{R}^4`   dla  :math:`\alpha  \ne 5`.

**Uwaga:**  Można  od  razu  zauważyć,  że  przy  :math:`\alpha  = 5`  zachodzi  liniowa  zależność  :math:`x_4  = x_1  + x_2  + x_3`. A  zatem  przy  tej  wartości  parametru  :math:`\alpha`   wektory  nie  tworzą  bazy.  Z  tego  jednak  nie  wynika,  że  przy  :math:`\alpha  \ne 5`  wektory  tworzą  bazę  –  mogłoby  się  zdarzyć,  że  :math:`x_1 ,x_2 ,x_3`   są  liniowo  zależne.
Tak  więc  pełną  odpowiedź  można  otrzymać  dopiero  po  obliczeniu  wyznacznika.

