21. Jednorodny układ równań 4x4
===============================

Rozwiązać  układ  równań:

.. math::

   \left\{ \begin{array}{c}
    2x_1 - 5x_2 + 4x_3 + 3x_4 = 0 \\ 
    3x_1 - 4x_2 + 7x_3 + 5x_4 = 0 \\ 
    4x_1 - 9x_2 + 8x_3 + 5x_4 = 0 \\ 
   -3x_1 + 2x_2 - 5x_3 + 3x_4 = 0 \\ 
   \end{array} \right. .


_____________________________________________________________________________________


Przede  wszystkim  sprawdzamy,  czy  układ  jest  kramerowski:

.. math::

   \begin{array}{l}
   \left| {\begin{array}{*{20}c}
    2 &  { - 5} &  4 &  3 \\
    3 &  { - 4} &  7 &  5 \\
    4 &  { - 9} &  8 &  5 \\
    { - 3} &  2 &  { - 5} &  3 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    2 &  { - 5} &  4 &  3 \\
    1 &  1 &  3 &  2 \\
    4 &  { - 9} &  8 &  5 \\
    { - 3} &  2 &  { - 5} &  3 \\
   \end{array}} \right| = \begin{array}{*{20}c}
    {}  \\
    \to \\
    {}  \\
    {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
    2 &  { - 7} &  { - 2} &  { - 1} \\
    1 &  0 &  0 &  0 \\
    4 &  { - 13} &  { - 4} &  { - 3} \\
    { - 3} &  5 &  4 &  9 \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    { - 7} &  { - 2} &  { - 1} \\
    { - 13} &  { - 4} &  { - 3} \\
    5 &  4 &  9 \\
   \end{array}} \right| = \\
   \quad 
   \begin{array}{l}
    R_{ 2}  \leftarrow R_{ 2}  - R_{ 1} \\
   \\ 
   \\ 
   \end{array}
   \quad \quad \quad 
   \begin{array}{l}
    C_{ 2}  \leftarrow C_{ 2}  - C_{ 1}  \\ 
    C_{ 3}  \leftarrow C_{ 3}  - 3C_{ 1}  \\ 
    C_{ 4}  \leftarrow C_{ 4}  - 2C_{ 1}  \\ 
   \end{array}
   \end{array} \\

   \begin{array}{l}
    =  - 2\left| {\begin{array}{*{20}c}
    7 & 1 & 1 \\
    13 & 2 & 3 \\
    5 & 2 & 9 \\
   \end{array}} \right| =  - \begin{array}{*{20}c}
    \to   \\
    {2}  \\
    {}  \\
   \end{array}\left| {\begin{array}{*{20}c}
    0 &  1 &  0 \\
    { - 1} &  2 &  1 \\
    { - 9} &  2 &  7 \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    { - 1} & 1  \\
    { - 9} & 7  \\
   \end{array}} \right| =  - 2\left| {\begin{array}{*{20}c}
    1 & 1  \\
    9 & 7  \\
   \end{array}} \right| = ( - 2)( - 2) = 4 \ne 0. \\
   \quad 
   \begin{array}{l}
    C_{ 1}  \leftarrow C_{ 1}  -  7C_{ 2}  \\ 
    C_{ 3}  \leftarrow C_{ 3}  -  C_{ 2}  \\ 
   \end{array}
   \end{array}


Układ  jest  kramerowski.  Wzory  Cramera  dają  (jedyne)  rozwiązanie  zerowe:

.. math::

   x_{ 1}  = x_{ 2}  = x_{ 3}  = x_{ 4}  = 0.


