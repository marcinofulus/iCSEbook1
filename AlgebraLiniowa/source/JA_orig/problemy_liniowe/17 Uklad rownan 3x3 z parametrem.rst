17. Układ równań 3x3 z parametrem
=================================

Przedyskutować  ze  względu  na  :math:`\lambda`   i  rozwiązać  układ  równań:

.. math::

   \left\{ \begin{array}{l}
   3x_1  + 2x_2  + x_3  =  - 1 \\ 
   7x_1  + 6x_2  + 5x_3  = \lambda  \\ 
   5x_1  + 4x_2  + 3x_3  = 2 \\ 
   \end{array} \right. .


___________________________________________________________________________________


Czy  układ  jest  kramerowski?

.. math::

   \begin{array}{l}
   {\det {\boldsymbol{A}} = \left| {\begin{array}{*{20}c}
    3 & 2 & 1  \\
    7 & 6 & 5  \\
    5 & 4 & 3  \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    3 & 1 & 1  \\
    7 & 3 & 5  \\
    5 & 2 & 3  \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    0 &  0 &  1 \\
    { - 8} &  { - 2} &  5 \\
    { - 4} &  { - 1} &  3 \\
   \end{array}} \right| = 8\left| {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    2 & 2 & 5  \\
    1 & 1 & 3  \\
   \end{array}} \right| = 0: \quad \text{nie}, \quad {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} < 3.} \\
   {\quad \quad \quad \quad \quad \quad \quad \quad \quad \quad 
   \begin{array}{l}
    c_1  \leftarrow c_1  - 3c_3  \\ 
    c_2  \leftarrow c_2  - c_3  \\ 
   \end{array}  \quad \quad \quad \quad \quad \quad \quad \text{2 jednakowe kolumny}}
   \end{array}


Sprawdzam  pierwszy  lepszy  minor  2. stopnia:

.. math::
   :label: PL17.1

   \left| {\begin{array}{*{20}c}
   3 & 2  \\
   7 & 6  \\
   \end{array}} \right| = 18 - 14 = 4 \ne 0: \quad {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} \ge 2.


Tak  więc  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 2`,  przy  czym   kolumny  :math:`{\boldsymbol{A}}_1 ,{\boldsymbol{A}}_2`  macierzy  :math:`\boldsymbol{A}`  są  l.n.

W  tej  sytuacji:

.. math::

   {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 2 \quad \Leftrightarrow \quad \left| {\begin{array}{*{20}c}
    3 &  2 &  { - 1} \\
    7 &  6 &  \lambda  \\
    5 &  4 &  2 \\
   \end{array}} \right| = 0.



.. math::

   \begin{array}{l}
   {\left| {\begin{array}{*{20}c}
    3 &  2 &  { - 1} \\
    7 &  6 &  \lambda  \\
    5 &  4 &  2 \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    3 & 1 & { - 1}  \\
    7 & 3 & \lambda   \\
    5 & 2 & 2  \\
   \end{array}} \right| = 2(18 - 14 + 5\lambda  + 15 - 6\lambda  - 14) = 2(5 - \lambda )} \\
   \quad \quad \quad \quad \quad \quad \quad 
   {\begin{array}{*{20}c}
    3 &  1 &  { - 1} \\
    7 &  3 &  \lambda \\
   \end{array}}
   \end{array}


Warunek  Kroneckera-Capelliego:  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}}`  jest  spełniony  tylko  przy :math:`\lambda  = 5`.
Dla  :math:`\lambda  \ne 5`  układ  równań  jest  sprzeczny.

Rozwiązanie  dla  :math:`\lambda  = 5`:

Ze  względu  na  :eq:`PL17.1`  pierwsze  dwa  równania   są   l.n.:

.. math::

   \begin{array}{l}
   {\left\{ \begin{array}{c}
    3x_1  + 2x_2  + x_3  =  - 1 \\ 
    7x_1  + 6x_2  + 5x_3  = 5 \\ 
   \end{array} \right. ;} & {\text{Przyjmując} \quad  x_3  = \gamma \quad \text{otrzymujemy  układ  kramerowski:}} \\
   {\left\{ \begin{array}{c}
    3x_1  + 2x_2  =  - 1 - \gamma  \\ 
    7x_1  + 6x_2  = 5 - 5\gamma  \\ 
   \end{array} \right. ;} & {\text{z 1. równania:} \quad x_2  =  - {\textstyle{1 \over 2}}(3x_1  + \gamma  + 1); \quad \text{podstawiając to do 2.:}} \\
    {7x_1  - 3(3x_1  + \gamma  + 1) = 5 - 5\gamma} &  \\
   {- 2x_1  - 3\gamma  - 3 = 5 - 5\gamma} &  
    {x_2  =  - {\textstyle{1 \over 2}}[3(\gamma  - 4) + \gamma  + 1]} \\
   {- 2x_1  =  - 2\gamma  + 8} & {x_2  =  - {\textstyle{1 \over 2}}(3\gamma  - 12 + \gamma  + 1)} \\
    {x_1  = \gamma  - 4} & {x_2  = {\textstyle{{11} \over 2}} - 2\gamma}.
   \end{array}


**Rozwiązanie:**   :math:`x_1  = \gamma  - 4,  x_2  = {\textstyle{{11} \over 2}} - 2\gamma ,  x_3  = \gamma`,  gdzie  :math:`\gamma  \in \boldsymbol{R}` jest  dowolną  liczbą.

