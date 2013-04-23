05. Układ równań 3x4 z parametrem
=================================

Dla  jakich  :math:`\lambda \in \boldsymbol{R}`  układ równań

.. math::

   \left\{ \begin{array}{c}
   2x_1  - x_2  + x_3  + x_4  = 1 \\ 
   x_1  + 2x_2  - x_3  + 4x_4  = 2 \\ 
   x_1  + 7x_2  - 4x_3  +  11x_4  = \lambda  \\ 
   \end{array} \right .


ma  rozwiązania?   Znaleźć  te  rozwiązania.

___________________________________________________________________________________


Szukamy  :math:`\lambda`  takich,  że  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}}(\lambda )`,  gdzie

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    2 &  { - 1} &  1 &  1 \\
    1 &  2 &  { - 1} &  4 \\
    1 &  7 &  { - 4} &  11 \\
   \end{array}} \right) \equiv \left( {A_{1} ,A_{2} ,A_{3} ,A_{4} } \right), \\
   {\boldsymbol{\tilde A}}(\lambda ) = \left( {\begin{array}{*{20}c}
    2 &  { - 1} &  1 &  1 &  1 \\
    1 &  2 &  { - 1} &  4 &  2 \\
    1 &  7 &  { - 4} &  11 &  \lambda  \\
   \end{array}} \right) \equiv \left( {A_{1} ,A_{2} ,A_{3} ,A_{4} ,B} \right).



.. math::

   \left| {\begin{array}{*{20}c}
    2 &  { - 1} \\
    1 &  2 \\
   \end{array}} \right| = 5 \ne 0 \quad \Rightarrow \quad {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} \ge 2  \quad \text{przy  czym  kolumny} \quad  A_{1} ,A_{2} \quad  \text{są  liniowo  niezależne}.


Z  drugiej  strony  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} \le 3`,  wobec  czego  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 2`  albo   :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 3`.

Jeżeli  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 3`,  to  również  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}}(\lambda ) = 3`  dla każdego :math:`\lambda`.
Wtedy  układ  równań  ma zawsze  (dla każdego :math:`\lambda`)  rozwiązania.

Jeżeli  natomiast  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 2`,
to  układ  ma  rozwiązania  tylko  dla :math:`\lambda` spełniających  warunek  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}}(\lambda ) = 2`.


**Wyznaczenie  rzędu  macierzy  A.**

.. math::

   \left| {A_{1} ,A_{2} ,A_{3} } \right| = \left| {\begin{array}{*{20}c}
    2 &  { - 1} &  1 \\
    1 &  2 &  { - 1} \\
    1 &  7 &  { - 4} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 &  { - 15} &  9 \\
    0 &  { - 5} &  3 \\
    1 &  7 &  { - 4} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 15} &  9 \\
    { - 5} &  3 \\
   \end{array}} \right| =  - 15\left| {\begin{array}{*{20}c}
    3 & 3  \\
    1 & 1  \\
   \end{array}} \right| = 0, \\
   \left| {A_{1} ,A_{2} ,A_{4} } \right| = \left| {\begin{array}{*{20}c}
    2 &  { - 1} &  1 \\
    1 &  2 &  4 \\
    1 &  7 &  {11} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 &  { - 15} &  { - 21} \\
    0 &  { - 5} &  { - 7} \\
    1 &  7 &  {11} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 15} &  { - 21} \\
    { - 5} &  { - 7} \\
   \end{array}} \right| = 35\left| {\begin{array}{*{20}c}
    3 & 3  \\
    1 & 1  \\
   \end{array}} \right| = 0.


Tak  więc  kolumny  :math:`A_{1} ,A_{2}`   są liniowo  niezależne,
natomiast  :math:`A_{1} ,A_{2} ,A_{3}`   oraz  :math:`A_{1} ,A_{2} ,A_{4}`   są  liniowo zależne.
Wówczas  :math:`A_{3}  \in L(A_{1} ,A_{2} )`  oraz  :math:`A_{4}  \in L(A_{1} ,A_{2} )`,  wobec  czego :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = \dim L(A_{1} ,A_{2} ,A_{3} ,A_{4} ) = \dim L(A_{1} ,A_{2} ) = 2`.

Tutaj  układ  :math:`\left( {A_{1} ,A_{2} } \right)`  jest  bazą  przestrzeni  :math:`L(A_{1} ,A_{2} )`,  jako  układ  liniowo niezależny,  generujący  przestrzeń.


**Określenie  rzędu  macierzy**  :math:`{\boldsymbol{\tilde A}}`.

W  zaistniałej  sytuacji:  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 2 \quad \Leftrightarrow \quad \left| {A_{1} ,A_{2} ,B} \right| = 0`.

Uzasadnienie:

:math:`\Rightarrow`: Gdyby  :math:`\left| {A_{1} ,A_{2} ,B} \right| \ne 0`,  to  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 3`,  bo  istniałby  niezerowy  minor  3.  stopnia.

:math:`\Leftarrow`: Jeżeli  :math:`\left| {A_{1} ,A_{2} ,B} \right| = 0`,  to  do  związków  :math:`A_{3}  \in L(A_{1} ,A_{2} )`  oraz  :math:`A_{4}  \in L(A_{1} ,A_{2} )`
	dochodzi   :math:`B \in L(A_{1} ,A_{2} )`,  wobec  czego
	:math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = \dim L(A_{1} ,A_{2} ,A_{3} ,A_{4} ,B) = \dim L(A_{1} ,A_{2} ) = 2`.

Tak  więc  :math:`\lambda`   wyznaczymy  z  warunku

.. math::

   \left| {A_{1} ,A_{2} ,B} \right| = \left| {\begin{array}{*{20}c}
    2 & { - 1} & 1  \\
    1 & 2 & 2  \\
    1 & 7 & \lambda   \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    0 & { - 5} & { - 3}  \\
    1 & 2 & 2  \\
    0 & 5 & {\lambda  - 2}  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    5 & 3  \\
    5 & {\lambda  - 2}  \\
   \end{array}} \right| = 5(\lambda  - 2) - 15 = 5\lambda  - 25 = 5(\lambda  - 5) = 0.


A  zatem  układ  ma  rozwiązania  tylko  dla  :math:`\lambda  = 5`.  Wtedy  równania  układu  są  liniowo  zależne,  przy  czym  np.  pierwsze  dwa  równania  są  liniowo  niezależne.

Wyjściowy  układ  równań  jest  więc  równoważny  układowi

.. math::

   \left\{ \begin{array}{c}
   2x_1  - x_2  + x_3  + x_4  = 1 \\ 
   x_1  + 2x_2  - x_3  + 4 x_4  = 2 \\ 
   \end{array} \right.	\quad \quad \quad  \text{Przyjmujemy} \quad x_3  = \alpha ,x_4  = \beta : \\

   \left\{ \begin{array}{c}
   2x_1  - x_2  = 1 - \alpha  - \beta  \\ 
   x_1  + 2x_2  = 2 + \alpha  - 4\beta  \quad  (\times 2) \\ 
   \end{array} \right.   : \quad \quad \left\{ \begin{array}{c}
   2x_1  - x_2  = 1 - \alpha  - \beta  \\ 
   2x_1  + 4x_2  = 4 + 2\alpha  - 8\beta  \\ 
   \end{array} \right.;

   \begin{array}{l}
   5 x_2  = 3 + 3 \alpha  - 7 \beta : \quad \quad x_2  = {\textstyle{3 \over 5}} + {\textstyle{3 \over 5}}\alpha  - {\textstyle{7 \over 5}}\beta ; \\
   x_1  = 2 + \alpha  - 4\beta  - {\textstyle{6 \over 5}} - {\textstyle{6 \over 5}}\alpha  + {\textstyle{{14} \over 5}}\beta  = {\textstyle{4 \over 5}} - {\textstyle{1 \over 5}}\alpha  - {\textstyle{6 \over 5}}\beta .
   \end{array}


Ostatecznie  ogólne  rozwiązanie:

.. math::

   \begin{array}{l}
   x_1  = {\textstyle{4 \over 5}} - {\textstyle{1 \over 5}}\alpha  - {\textstyle{6 \over 5}}\beta , \\
   x_2  = {\textstyle{3 \over 5}} + {\textstyle{3 \over 5}}\alpha  - {\textstyle{7 \over 5}}\beta , \\
   x_3  = \alpha , \\
   x_4  = \beta ,  \quad  \alpha ,\beta  \in \boldsymbol{R}.
   \end{array}


Rozwiązanie  w  postaci  wektorowej  :math:`(\alpha  \to 5\alpha ,\beta  \to 5\beta )`:

.. math::

   \left( {\begin{array}{*{20}c}
   {x_1 }  \\
   {x_2 }  \\
   {x_3 }  \\
   {x_4 }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {{\textstyle{4 \over 5}}}  \\
   {{\textstyle{3 \over 5}}}  \\
   0  \\
   0  \\
   \end{array}} \right) + \alpha \left( {\begin{array}{*{20}c}
   { - 1} \\
    3 \\
    5 \\
    0 \\
   \end{array}} \right) + \beta \left( {\begin{array}{*{20}c}
    { - 6} \\
    { - 7} \\
    0 \\
    5 \\
   \end{array}} \right), \quad \alpha ,\beta  \in \boldsymbol{R}.


