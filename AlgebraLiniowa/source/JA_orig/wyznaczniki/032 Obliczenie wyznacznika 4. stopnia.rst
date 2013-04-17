032. Obliczenie wyznacznika 4. stopnia
======================================

Obliczyć wyznacznik:     

.. math::

   \left| {\begin{array}{*{20}c}
    2 &  { - 5} &  1 &  2 \\
    { - 3} &  7 &  { - 1} &  {4} \\
    5 &  { - 9} &  2 &  7 \\
    4 &  { - 6} &  1 &  2 \\
   \end{array}} \right| .


___________________________________________________________________________________

.. math::

   \left| {\begin{array}{*{20}c}
    2 &  { - 5} &  1 &  2 \\
    { - 3} &  7 &  { - 1} &  4 \\
    5 &  { - 9} &  2 &  7 \\
    4 &  { - 6} &  1 &  2 \\
   \end{array}} \right|  = \left| {\begin{array}{*{20}c}
    2 &  { - 5} & ↓ 1 &  2 \\
    { - 1} &  2 &  0 &  6 \\
    1 &  1 &  0 &  3 \\
    2 &  { - 1} &  0 &  0 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 1} &  2 &  6 \\
    1 &  1 &  3 \\
    2 &  { - 1} &  0 \\
   \end{array}} \right| = 3\left| {\begin{array}{*{20}c}
    { - 1} &  2 &  2 \\
    1 &  1 &  1 \\
    2 &  { - 1} &  0 \\
   \end{array}} \right| = \\
   \begin{array}{*{20}c}
   {\begin{array}{*{20}c}
   r_{ 2}  \leftarrow r_{ 1}  + r_{ 2} , \\
   r_{ 3}  \leftarrow r_{ 3}  - 2r_{ 1} , \\
   r_{ 4}  \leftarrow r_{ 4}  - r_{ 1} . \\
   \end{array}}
    & & & & & & & & & & & & & & & & & & & 
   r_{ 1}  \leftarrow r_{ 1}  - 2 r_{ 2} \\
   \end{array} \\

    = 3\left| {\begin{array}{*{20}c}
    { - 3} &  0 &  0 \\
    1 &  1 &  1 \\
    2 &  { - 1} & ↑ 0 \\
   \end{array}} \right| =  - 3\left| {\begin{array}{*{20}c}
    { - 3} &  0 \\
    2 &  { - 1} \\
   \end{array}} \right| =  - 9.


