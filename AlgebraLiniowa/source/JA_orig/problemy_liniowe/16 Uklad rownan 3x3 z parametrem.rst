16. Układ równań 3x3 z parametrem
=================================

Przedyskutować ze względu na :math:`\lambda`  i  rozwiązać układ równań:

.. math::

   \left\{ \begin{array}{l}
   \lambda x_1 + x_2 + x_3 = 0 \\ 
    5 x_1 + x_2 - 2 x_3  =  2 \\ 
    - 2 x_1 - 2 x_2 + x_3 = - 3 \\ 
   \end{array} \right. .


___________________________________________________________________________________

.. math::

   D = \left| {\begin{array}{*{20}c}
    \lambda  &  1 &  1 \\
    5 &  1 &  { - 2} \\
    { - 2} &  { - 2} &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  + 2} & 3 & 1  \\
    1 & { - 3} & { - 2}  \\
    0 & 0 & 1  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  + 2} & 3  \\
    1 & { - 3}  \\
   \end{array}} \right| = ( - 3)(\lambda  + 2) - 3 =  - 3(\lambda  + 3).


- Dla  :math:`\lambda  \ne  - 3`  układ  jest  kramerowski:

.. math::

   \begin{array}{l}
   D_{1}  = \left| {\begin{array}{*{20}c}
    0 &  1 &  1 \\
    2 &  1 &  { - 2} \\
    { - 3} &  { - 2} &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 &  0 &  1 \\
    2 &  3 &  { - 2} \\
    { - 3} &  { - 3} &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    2 &  3 \\
    { - 3} &  { - 3} \\
   \end{array}} \right| =  - 3\left| {\begin{array}{*{20}c}
    2 & 3  \\
    1 & 1  \\
   \end{array}} \right| = 3, \\
   D_{2}  = \left| {\begin{array}{*{20}c}
    \lambda  &  0 &  1 \\
    5 &  2 &  { - 2} \\
    { - 2} &  { - 3} &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  + 2} & 3 & 0  \\
    1 & { - 4} & 0  \\
    { - 2} & { - 3} & 1  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  + 2} & 3  \\
    1 & { - 4}  \\
   \end{array}} \right| =  - 4(\lambda  + 2) - 3 =  - 4\lambda  - 11, \\
   D_{3}  = \left| {\begin{array}{*{20}c}
    \lambda  &  1 &  0 \\
    5 &  1 &  2 \\
    { - 2} &  { - 2} &  { - 3} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  - 5} & 1 & { - 2}  \\
    0 & 1 & 0  \\
    8 & { - 2} & 1  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {\lambda  - 5} & { - 2}  \\
    8 & 1  \\
   \end{array}} \right| = \lambda  - 5 + 16 = \lambda  + 11.
   \end{array}


Rozwiązanie:

.. math::

   x_{1}  =  - \frac{1}{{\lambda  + 3}}, \quad x_{2}  = \frac{{4\lambda  + 11}}{{3(\lambda  + 3)}}, \quad x_{3}  =  - \frac{{\lambda  + 11}}{{3(\lambda  + 3)}}.


- Przypadek  :math:`\lambda  =  - 3`:

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    { - 3} &  1 &  1 \\
    5 &  1 &  { - 2} \\
    { - 2} &  { - 2} &  1 \\
   \end{array}} \right) \equiv (A_{1} ,A_{2} ,A_{3} ), \quad {\boldsymbol{\tilde A}} = \left( {\begin{array}{*{20}c}
    { - 3} &  1 &  1 &  0 \\
    5 &  1 &  { - 2} &  2 \\
    { - 2} &  { - 2} &  1 &  { - 3} \\
   \end{array}} \right) \equiv (A_{1} ,A_{2} ,A_{3} ,B). \\

   \left| {\begin{array}{*{20}c}
    { - 3} & 1  \\
    5 & 1  \\
   \end{array}} \right| =  - 8 \ne 0 \quad \Rightarrow \quad {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 2,  \quad \text{przy  czym  kolumny} A_1, A_2  \text{są  liniowo niezależne}.


W  tej  sytuacji:

.. math::

   {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 2 \quad \Leftrightarrow \quad \left| {A_{1} ,A_{2} ,B} \right| = 0.


Tymczasem

.. math::

   \left| {A_{1} ,A_{2} ,B} \right| = \left| {\begin{array}{*{20}c}
    { - 3} &  1 &  0 \\
    5 &  1 &  2 \\
    { - 2} &  { - 2} &  { - 3} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 &  1 &  0 \\
    8 &  1 &  2 \\
    { - 8} &  { - 2} &  { - 3} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    8 & 2  \\
    8 & 3  \\
   \end{array}} \right| = 8\left| {\begin{array}{*{20}c}
    1 & 2  \\
    1 & 3  \\
   \end{array}} \right| = 8 \ne 0.


Tak  więc  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 3`  i  układ  jest  sprzeczny.

