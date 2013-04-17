033. Cykliczny wyznacznik 4. stopnia
====================================

Obliczyć wyznacznik:

.. math::

   \left| {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 \\
    2 &  3 &  4 &  1 \\
    3 &  4 &  1 &  2 \\
    4 &  1 &  2 &  3 \\
   \end{array} } \right| .


___________________________________________________________________________________


Jest  to  cykliczny  wyznacznik  4.  stopnia
(patrz  A. Mostowski,  M. Stark,  *Elementy algebry wyższej*,  rozdz. IV, § 4.2).


Metoda  standardowa:

.. math::

   \left| { \begin{array}{*{20}c}
    1 &  2 &  3 &  4 \\
    2 &  3 &  4 &  1 \\
    3 &  4 &  1 &  2 \\
    4 &  1 &  2 &  3 \\
   \end{array} } \right| = \left| {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 \\
    1 &  1 &  1 &  { - 3} \\
    1 &  1 &  { - 3} &  1 \\
    1 &  { - 3} &  1 &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  1 &  2 &  3 \\
    1 &  0 &  0 &  { - 4} \\
    1 &  0 &  { - 4} &  0 \\
    1 &  { - 4} &  0 &  0 \\
   \end{array}} \right| = \frac{1}{4}\left| {\begin{array}{*{20}c}
    4 &  1 &  2 &  3 \\
    4 &  0 &  0 &  { - 4} \\
    4 &  0 &  { - 4} &  0 \\
    4 &  { - 4} &  0 &  0 \\
   \end{array}} \right| = \\

   \begin{array}{*{20}c}
   {\begin{array}{l}
   R_{ 4}  \leftarrow R_{ 4}  - R_{ 3}  \\ 
   R_{ 3}  \leftarrow R_{ 3}  - R_{ 2}  \\ 
   R_{ 2}  \leftarrow R_{ 2}  - R_{ 1}  \\ 
   \end{array}}
    & & {\begin{array}{l}
   C_{ 2}  \leftarrow C_{ 2}  - C_{ 1}  \\ 
   C_{ 3}  \leftarrow C_{ 3}  - C_{ 1}  \\ 
   C_{ 4}  \leftarrow C_{ 4}  - C_{ 1}  \\ 
   \end{array}}
    & & & & & & & & & {\begin{array}{l}
   C_{ 1}  \leftarrow C_{ 1}  + C_{ 2}  + C_{ 3}  + C_{ 4}  \\ 
   \end{array}}
   \end{array} \\

   = \frac{1}{4}\left| {\begin{array}{*{20}c}
    { ↓ 10} &  1 &  2 &  3 \\
    0 &  0 &  0 &  { - 4} \\
    0 &  0 &  { - 4} &  0 \\
    0 &  { - 4} &  0 &  0 \\
   \end{array}} \right| = \frac{{10}}{4}\left| {\begin{array}{*{20}c}
    0 &  0 &  { - 4} \\
    0 &  { - 4} &  0 \\
    { - 4} &  0 &  0 \\
   \end{array}} \right| =  - 160\left| {\begin{array}{*{20}c}
   0 & 0 & 1  \\
   0 & 1 & 0  \\
   1 & 0 & 0  \\
   \end{array}} \right| = 160.


Metoda  ogólna:

.. math::

   \begin{array}{l}
   {\left| {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 \\
    2 &  3 &  4 &  1 \\
    3 &  4 &  1 &  2 \\
    4 &  1 &  2 &  3 \\
   \end{array} } \right| = \left| {\begin{array}{*{20}c}
    1 &  0 &  0 &  0 \\
    2 &  { - 1} &  { - 2} &  { - 7} \\
    3 &  { - 2} &  { - 8} &  { - 10} \\
    4 &  { - 7} &  { - 10} &  { - 13} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 1} &  { - 2} &  { - 7} \\
    { - 2} &  { - 8} &  { - 10} \\
    { - 7} &  { - 10} &  { - 13} \\
   \end{array}} \right| =  - 2\left| {\begin{array}{*{20}c}
   1 & 1 & 7  \\
   2 & 4 & 10  \\
   7 & 5 & 13  \\
   \end{array}} \right| = } \\
   {\begin{array}{l}
   C_{ 2}  \leftarrow C_{ 2}  - 2C_{ 1}  \\ 
   C_{ 3}  \leftarrow C_{ 3}  - 3C_{ 1}  \\ 
   C_{ 4}  \leftarrow C_{ 4}  - 4C_{ 1}  \\ 
   \end{array}}
   \end{array} \\

   \begin{array}{l}
   { =  - 4\left| {\begin{array}{*{20}c}
   1 & 1 & 7  \\
   1 & 2 & 5  \\
   7 & 5 & {13}  \\
   \end{array}} \right| =  - 4\left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    1 &  1 &  { - 2} \\
    7 &  { - 2} &  { - 36} \\
   \end{array}} \right| =  - 4\left| {\begin{array}{*{20}c}
    1 &  { - 2} \\
    { - 2} &  { - 36} \\
   \end{array}} \right| =  - 16\left| {\begin{array}{*{20}c}
    { - 1} &  1 \\
    1 &  9 \\
   \end{array}} \right| = 160.} \\
   {\begin{array}{l}
   \quad C_{ 2}  \leftarrow C_{ 2}  - C_{ 1}  \\ 
   \quad C_{ 3}  \leftarrow C_{ 3}  - 7C_{ 1}  \\ 
   \end{array}}
   \end{array}


