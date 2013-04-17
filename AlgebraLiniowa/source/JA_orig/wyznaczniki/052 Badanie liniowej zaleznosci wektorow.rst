052. Badanie liniowej zależności wektorów
=========================================

Zbadać,  czy  wektory  :math:`x_1 ,x_2 ,x_3 ,x_4  \in {\boldsymbol{R}}^4` są  liniowo zależne:

.. math::

   x_1  = \left( {\begin{array}{*{20}c}
    1 \\
    2 \\
    { - 1} \\
    { - 2} \\
   \end{array}} \right), \quad x_2  = \left( {\begin{array}{*{20}c}
    2 \\
    3 \\
    0 \\
    { - 1} \\
   \end{array}} \right), \quad x_3  = \left( {\begin{array}{*{20}c}
   1  \\
   2  \\
   1  \\
   4  \\
   \end{array}} \right), \quad x_4  = \left( {\begin{array}{*{20}c}
    1 \\
    3 \\
    { - 1} \\
    0 \\
   \end{array}} \right).


____________________________________________________________________________________


Wektory  te  są  liniowo zależne  wtedy  i  tylko  wtedy,  gdy  wyznacznik  macierzy  z  nich  złożonej  równa  się  zeru.  W  tym  przypadku

.. math::

   \begin{array}{l}
   {\det (x_1 ,x_2 ,x_3 ,x_4 ) =} & {\left| {\begin{array}{*{20}c}
    1 &  2 &  1 &  1 \\
    2 &  3 &  2 &  3 \\
    { - 1} &  0 &  1 &  { - 1} \\
    { - 2} &  { - 1} &  4 &  0 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
     ↓ 1 &  2 &  1 &  1 \\
    0 &  { - 1} &  0 &  1 \\
    0 &  2 &  2 &  0 \\
    0 &  3 &  6 &  2 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 1} &  0 &  1 \\
    2 &  2 &  0 \\
    3 &  6 &  2 \\
   \end{array}} \right| = 2 \left| {\begin{array}{*{20}c}
    -1 & 0 & 1  \\
     1 & 1 & 0  \\
     3 & 6 & 2  \\
   \end{array}} \right| = } \\
    & {\begin{array}{*{20}c}
   {\begin{array}{l}
   R_2  \leftarrow R_2  - 2R_{ 1}  \\ 
   R_3  \leftarrow R_3  + R_{ 1}  \\ 
   R_4  \leftarrow R_4  + 2R_{ 1}  \\ 
   \end{array}}
    & & & & & & & & & & & & & & & & &
   C_{ 1}  \leftarrow C_{ 1}  +  C_3 \\
   \end{array}}
   \end{array} \\

   = 2 \left| \begin{array}{*{20}c}
    0 & 0 & 1 \leftarrow \\
    1 & 1 & 0 \\
    5 & 6 & 2 \\
   \end{array} \right| = 2 \left| \begin{array}{cc}
    1 & 1 \\
    5 & 6 \\
   \end{array} \right| = 2 \ne 0 .


Odpowiedź:  Wektory  :math:`x_1 ,x_2 ,x_3 ,x_4`   są  liniowo  niezależne.

