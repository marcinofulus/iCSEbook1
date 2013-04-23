32. Kiedy wektor wyraża się liniowo przez trzy inne
===================================================

Znaleźć  wszystkie  wartości :math:`\lambda \in \boldsymbol{R}`,  przy  których  wektor  :math:`b`  wyraża  się  liniowo przez  wektory  :math:`a_1 ,a_2 ,a_3`:

.. math::

   a_1 = \left( {\begin{array}{*{20}c}
    2 \\
    3 \\
    5 \\
   \end{array}} \right), \quad a_2 = \left( {\begin{array}{*{20}c}
    3  \\
    7  \\
    8  \\
   \end{array}} \right), \quad a_3 = \left( {\begin{array}{*{20}c}
    1 \\
    { - 6} \\
    1 \\
   \end{array}} \right); \quad b = \left( {\begin{array}{*{20}c}
    7 \\
    { - 2} \\
    \lambda  \\
   \end{array}} \right) \quad \in \boldsymbol{R}^{ 3}.

_____________________________________________________________________________________


*Dyskusja:*  Gdyby  wektory  :math:`a_{ 1} ,a_2 ,a_3` były  liniowo  niezależne,  to  tworzyłyby  bazę  przestrzeni  :math:`\boldsymbol{R}^{ 3}`.  Wtedy  dowolny  wektor  z  :math:`\boldsymbol{R}^{ 3}` (a  w  szczególności  wektor  :math:`b`  dla  dowolnego :math:`\lambda`)  wyrażałby  się  liniowo  przez  te  trzy  wektory.  Natomiast  jeżeli  wektory   :math:`a_{ 1} ,a_2 ,a_3`   są  liniowo  zależne,  odpowiedź  może  być  nietrywialna.  Wszelkie  możliwe  sytuacje  obejmuje  następujące  przeformułowanie  pytania:

Dla  jakich  :math:`\lambda  \in \boldsymbol{R}`  problem  liniowy  w  sformułowaniu  wektorowym

.. math::

   \xi _{ 1} a_{ 1}  +  \xi _{ 2} a_{ 2}  +  \xi _{ 3} a_{ 3}  = b


o  niewiadomych  :math:`\xi _{ 1} ,\xi _{ 2} ,\xi _{ 3}`   ma  (jakiekolwiek)  rozwiązania ?

Odpowiedź  daje  twierdzenie  Kroneckera-Capelliego:  dla  :math:`\lambda`   takich,  że

.. math::
   :label: PL32.1

   {\mathop{\rm rz}\nolimits} (a_{ 1} ,a_2 ,a_3 ) = {\mathop{\rm rz}\nolimits} (a_{ 1} ,a_2 ,a_3 ,b),


czyli

.. math::

   {\mathop{\rm rz}\nolimits} \left( {\begin{array}{*{20}c}
    2 &  {3} &  1 \\
    3 &  {7} &  { - 6} \\
    5 &  {8} &  1 \\
   \end{array}} \right) = {\mathop{\rm rz}\nolimits} \left( {\begin{array}{*{20}c}
    2 &  {3} &  1 &  7 \\
    3 &  {7} &  { - 6} &  { - 2} \\
    5 &  {8} &  1 &  \lambda  \\
   \end{array}} \right).


*Rozwiązanie.*

Ponieważ  istnieje  niezerowy  minor  2.  stopnia:

.. math::

   \left| {\begin{array}{*{20}c}
   2 & 3  \\
   3 & 7  \\
   \end{array}} \right| = 14 - 9 = 5,


a  jednocześnie

.. math::

   \det (a_{ 1} ,a_2 ,a_3 ) = \left| {\begin{array}{*{20}c}
    2 &  {3} &  1 \\
    3 &  {7} &  { - 6} \\
    5 &  {8} &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    2 &  3 &  {1} \\
    {15} &  {25} &  0 \\
    3 &  5 &  0 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {15} & {25}  \\
    3 & 5  \\
   \end{array}} \right| = 5\left| {\begin{array}{*{20}c}
    3 & 5  \\
    3 & 5  \\
   \end{array}} \right| = 0,


to:

.. math::

   {\mathop{\rm rz}\nolimits} (a_{ 1} ,a_2 ,a_3 ) = 2,


przy  czym  kolumny  :math:`a_{ 1} ,a_2`   są  liniowo  niezależne.

W  tej  sytuacji:

.. math::

   {\mathop{\rm rz}\nolimits} (a_{ 1} ,a_2 ,a_3 ,b) = 2 \quad \Leftrightarrow \quad \det (a_{ 1} ,a_2 ,b) = 0. \\

   \det (a_{ 1} ,a_2 ,b) = \left| {\begin{array}{*{20}c}
    2 &  {3} &  7 \\
    3 &  {7} &  { - 2} \\
    5 &  {8} &  \lambda  \\
   \end{array}} \right| = (14\lambda  - 30 + 168) - (245 - 32 + 9\lambda ) = 5\lambda  - 75 = 5(\lambda  - 15).


A  zatem  warunek  :eq:`PL32.1`  jest  spełniony,  gdy  :math:`\lambda  = 15`.
Wtedy  i  tylko  wtedy  wektor  :math:`b`  wyraża  się  liniowo  przez  wektory  :math:`a_1 ,a_2 ,a_3`.

