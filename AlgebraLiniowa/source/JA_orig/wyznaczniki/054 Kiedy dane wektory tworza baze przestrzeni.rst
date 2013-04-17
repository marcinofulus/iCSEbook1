054. Kiedy dane wektory tworzą bazę przestrzeni
===============================================

Dla jakich  :math:`\alpha \in \boldsymbol{R}` wektory

.. math::

   x_1  = \left( {\begin{array}{*{20}c}
    0 \\
    3 \\
    { - 2} \\
    1 \\
   \end{array}} \right), \quad x_2  = \left( {\begin{array}{*{20}c}
    1 \\
    { - 1} \\
    2 \\
    4 \\
   \end{array}} \right), \quad x_3  = \left( {\begin{array}{*{20}c}
    5 \\
    3 \\
    { - 7} \\
    { - 2} \\
   \end{array}} \right), \quad x_4  = \left( {\begin{array}{*{20}c}
   { - 4}  \\
   { - 1}  \\
   \alpha   \\
   7  \\
   \end{array}} \right)


tworzą bazę  w  przestrzeni  :math:`\boldsymbol{R}^4` ?  Uzasadnij odpowiedź.

**Wskazówka:**  Wykorzystaj własności wyznaczników.

____________________________________________________________________________________


W  *n*-wymiarowej  przestrzeni  liniowej  każdy  liniowo  niezależny  układ  n  wektorów  jest  bazą.

Cztery  wektory  4-wymiarowej  przestrzeni  :math:`\boldsymbol{R}^4`  tworzą  bazę  tej  przestrzeni  wtedy  i  tylko  wtedy,  gdy  są  liniowo  niezależne.

Z  kolei  wektory  te  są  liniowo niezależne  wtedy  i  tylko  wtedy,  gdy  wyznacznik  macierzy  z  nich  złożonej  jest  różny  od  zera.

W  tym  wypadku:

.. math::

   \begin{array}{l}
   \det (x_1 ,x_2 ,x_3 ,x_4 ) = & \left| {\begin{array}{*{20}c}
    0 &  1 &  5 &  { - 4} \\
    3 &  { - 1} &  3 &  { - 1} \\
    { - 2} &  2 &  { - 7} &  \alpha  \\
    1 &  4 &  { - 2} &  7 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 &  1 &  5 &  { - 4} \\
    0 &  { - 1} &  3 &  { - 1} \\
    {7 - \alpha } &  2 &  { - 7} &  \alpha  \\
    0 &  4 &  { - 2} &  7 \\
   \end{array}} \right| = (7 - \alpha )\left| {\begin{array}{*{20}c}
    1 &  5 &  { - 4} \\
    { - 1} &  3 &  { - 1} \\
    4 &  { - 2} &  7 \\
   \end{array}} \right| = \\
    &
   C_{ 1}  \leftarrow C_{ 1}  + C_2  - C_3  - C_4 \quad \quad \quad \quad \quad \quad 
   \quad \quad \quad \quad \quad \quad \quad \quad 
   \begin{array}{l}
   R_2  \leftarrow R_2  + R_{ 1}  \\ 
   R_3  \leftarrow R_3  - 4R_{ 1}  \\ 
   \end{array}
   \end{array} \\
   = (7 - \alpha )\left| {\begin{array}{*{20}c}
    1 &  5 &  { - 4} \\
    0 &  8 &  { - 5} \\
    0 &  { - 22} &  {23} \\
   \end{array}} \right| = (7 - \alpha )\left| {\begin{array}{*{20}c}
   8 & { - 5}  \\
   { - 22} & {23}  \\
   \end{array}} \right| = 2(7 - \alpha )\left| {\begin{array}{*{20}c}
    4 &  { - 5} \\
    { - 11} &  {23} \\
   \end{array}} \right| = 74(7 - \alpha ).


Odpowiedź:  Wektory  :math:`x_1 ,x_2 ,x_3 ,x_4`  tworzą  bazę  przestrzeni  :math:`\boldsymbol{R}^4`  dla  :math:`\alpha  \ne 7`.

