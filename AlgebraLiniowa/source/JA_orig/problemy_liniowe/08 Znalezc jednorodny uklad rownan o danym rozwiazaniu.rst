08. Znaleźć jednorodny układ równań o danym rozwiązaniu
=======================================================

Znaleźć  jednorodny  układ  równań  składający  się  z   a.)  dwóch   b.)  trzech    równań,  dla  którego  wektory

.. math::

   \left( \begin{array}{*{20}c}
    1 \\
    4 \\
    {- 2} \\
    2 \\
    {- 1} \\
   \end{array} \right),  \quad  \left( \begin{array}{*{20}c}
    3 \\
    13 \\
    {- 1} \\
    2 \\
    1 \\
   \end{array} \right), \quad  \left( \begin{array}{*{20}c}
    2 \\
    7 \\
    {- 8} \\
    4 \\
    {- 5} \\
   \end{array} \right)


tworzą  fundamentalny  układ  rozwiązań.

_____________________________________________________________________________________


Rząd  macierzy  szukanego  układu  można  określić  z  równania

.. math::

   \dim S_0  = n  -  {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} ,


gdzie  :math:`S_0`  jest  przestrzenią  rozwiązań,  a  :math:`n`  –  liczbą  niewiadomych.

Fundamentalny  układ  rozwiązań  –  baza  :math:`S_0`  –  liczy  trzy  wektory,  :math:`n  =  5`.

Stąd

.. math::

   {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 5  -  3 = 2.


Układ  składa  się  więc  z  dwóch  równań  liniowo  niezależnych,  albo  z  trzech  (lub więcej)  równań  liniowo  zależnych.

Każde  z  równań  układu  ma  postać

.. math::

   a_{ 1} x_{ 1}  + a_{ 2} x_{ 2}  + a_{ 3} x_{ 3}  + a_{ 4} x_{ 4}  + a_{ 5} x_{ 5}  = 0.


Współczynniki  :math:`a_{ 1} ,a_{ 2} ,a_{ 3} ,a_{ 4} ,a_{ 5}`   spełniają  równości

.. math::

   \left\{ \begin{array}{l}
    a_{ 1}  + 4a_{ 2}  -  2a_{ 3}   +  2a_{ 4}  - a_{ 5}  = 0 \\ 
    3a_{ 1}  +  13a_{ 2}  -  a_{ 3}   +  2a_{ 4}   + a_{ 5}  = 0 \\ 
    2a_{ 1}  +  7a_{ 2}  -  8a_{ 3}  +  4a_{ 4}  -  5a_{ 5}  = 0 \\ 
   \end{array} \right. ,


które  traktujemy  jako  jednorodny  układ  trzech  równań  na  pięć  niewiadomych  o  macierzy

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 &  4 &  { - 2} &  {2} &  { - 1} \\
    3 &  {13} &  { - 1} &  {2} &  1 \\
    2 &  7 &  { - 8} &  {4} &  { - 5} \\
   \end{array}} \right) \equiv \left( {{\boldsymbol{A}}_{ 1} ,{\boldsymbol{A}}_{ 2} ,{\boldsymbol{A}}_{ 3} ,{\boldsymbol{A}}_{ 4} ,{\boldsymbol{A}}_{ 5} } \right).


Oczywiście  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 3`,  wobec  czego  rozwiązania  :math:`(a_{ 1} ,a_{ 2} ,a_{ 3} ,a_{ 4} ,a_{ 5} )`  tworzą  przestrzeń  2-wymiarową.

Znajdujemy  niezerowy  minor  3.  stopnia  macierzy  :math:`\boldsymbol{A}`:

.. math::

   \left| {\begin{array}{*{20}c}
    1 & {4} & { - 2}  \\
    3 & {13} & { - 1}  \\
    2 & {7} & { - 8}  \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    1 & {4} & {2}  \\
    3 & {13} & {1}  \\
    2 & {7} & {8}  \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    1 &  4 &  2 \\
    0 &  1 &  { - 5} \\
    0 &  { - 1} &  4 \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    1 &  { - 5} \\
    { - 1} &  4 \\
   \end{array}} \right| = 1 \ne 0.


Przyjmując  :math:`a_{ 4}  = \gamma _1 , a_{ 5}  = \gamma _2`   (dowolne  parametry)  otrzymujemy  układ  kramerowski  ze  względu  na  niewiadome  :math:`a_{ 1} ,a_{ 2} ,a_{ 3}`:

.. math::

   \left\{ \begin{array}{l}
   a_{ 1}  + 4a_{ 2}  - 2a_{ 3}  =  - 2\gamma _1   + \gamma _2  \\ 
   3a_{ 1}  +  13a_{ 2}  - a_{ 3}  =  - 2\gamma _1   - \gamma _2  \\ 
   2a_{ 1}   + 7a_{ 2}  - 8a_{ 3}   =  - 4\gamma _1  +  5\gamma _{ 2}  \\ 
   \end{array} \right. .


Wzory  Cramera: :math:`a_{ i}  = \frac{D_{ i}}{D}, i = 1,2,3`,  przy  czym  :math:`D = 1`.

.. math::

   a_{ 1}  = \left| {\begin{array}{*{20}c}
   { - 2\gamma _1  +  \gamma _2 } & 4 & { - 2}  \\
   { - 2\gamma _1  -  \gamma _2 } & {13} & { - 1}  \\
   { - 4\gamma _1  + 5\gamma _2 } & 7 & { - 8}  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    { - 2} &  4 &  { - 2} \\
    { - 2} &  {13} &  { - 1} \\
    { - 4} &  7 &  { - 8} \\
   \end{array}} \right|\gamma _1  + \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2} \\
    { - 1} &  {13} &  { - 1} \\
    5 &  7 &  { - 8} \\
   \end{array}} \right|\gamma _2  = 70\gamma _1  - 5\gamma _2  ; \\
   \left| {\begin{array}{*{20}c}
    { - 2} &  4 &  { - 2} \\
    { - 2} &  {13} &  { - 1} \\
    { - 4} &  7 &  { - 8} \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    1 &  4 &  2 \\
    1 &  {13} &  1 \\
    2 &  7 &  8 \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    1 &  4 &  2 \\
    0 &  9 &  { - 1} \\
    0 &  { - 1} &  4 \\
   \end{array}} \right| = 2\left| {\begin{array}{*{20}c}
    9 &  { - 1} \\
    { - 1} &  4 \\
   \end{array}} \right| = 70, \\
   \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2} \\
    { - 1} &  {13} &  { - 1} \\
    5 &  7 &  { - 8} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2} \\
    0 &  {17} &  { - 3} \\
    0 &  { - 13} &  2 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    {17} &  { - 3} \\
    { - 13} &  2 \\
   \end{array}} \right| =  - 5. \\

   a_{ 2}  = \left| {\begin{array}{*{20}c}
    1 &  { - 2\gamma _1  +  \gamma _2 } &  { - 2} \\
    3 &  { - 2\gamma _1  -  \gamma _2 } &  { - 1} \\
    2 &  { - 4\gamma _1  + 5\gamma _2 } &  { - 8} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  { - 2} &  { - 2} \\
    3 &  { - 2} &  { - 1} \\
    2 &  { - 4} &  { - 8} \\
   \end{array}} \right|\gamma _1  + \left| {\begin{array}{*{20}c}
    1 &  1 &  { - 2} \\
    3 &  { - 1} &  { - 1} \\
    2 &  5 &  { - 8} \\
   \end{array}} \right|\gamma _2  =  - 16\gamma _1  + \gamma _2 ; \\
   \left| {\begin{array}{*{20}c}
    1 &  { - 2} &  { - 2} \\
    3 &  { - 2} &  { - 1} \\
    2 &  { - 4} &  { - 8} \\
   \end{array}} \right| = 4\left| {\begin{array}{*{20}c}
    1 &  {1} &  {2} \\
    3 &  1 &  1 \\
    1 &  1 &  4 \\
   \end{array}} \right| = 4\left| {\begin{array}{*{20}c}
    1 &  {1} &  {2} \\
    0 &  { - 2} &  { - 5} \\
    0 &  0 &  2 \\
   \end{array}} \right| = 4\left| {\begin{array}{*{20}c}
    { - 2} &  { - 5} \\
    0 &  2 \\
   \end{array}} \right| =  - 16, \\
   \left| {\begin{array}{*{20}c}
    1 &  1 &  { - 2} \\
    3 &  { - 1} &  { - 1} \\
    2 &  5 &  { - 8} \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    1 &  1 &  {2} \\
    3 &  { - 1} &  1 \\
    2 &  5 &  8 \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    3 &  { - 4} &  { - 5} \\
    2 &  3 &  4 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   4 & 5  \\
   3 & 4  \\
   \end{array}} \right| = 1. \\

   a_{ 3}  = \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2\gamma _1  +  \gamma _2 } \\
    3 &  {13} &  { - 2\gamma _1  -  \gamma _2 } \\
    2 &  7 &  { - 4\gamma _1  + 5\gamma _2 } \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2} \\
    3 &  {13} &  { - 2} \\
    2 &  7 &  { - 4} \\
   \end{array}} \right|\gamma _1  + \left| {\begin{array}{*{20}c}
    1 &  4 &  1 \\
    3 &  {13} &  { - 1} \\
    2 &  7 &  5 \\
   \end{array}} \right|\gamma _2  = 4\gamma _1  - \gamma _2 ; \\
   \left| {\begin{array}{*{20}c}
    1 &  4 &  { - 2} \\
    3 &  {13} &  { - 2} \\
    2 &  7 &  { - 4} \\
   \end{array}} \right| =  - 2\left| {\begin{array}{*{20}c}
   1 & 4 & 1  \\
   3 & {13} & 1  \\
   2 & 7 & 2  \\
   \end{array}} \right| =  - 2\left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    3 &  1 &  { - 2} \\
    2 &  { - 1} &  0 \\
   \end{array}} \right| =  - 2\left| {\begin{array}{*{20}c}
    1 &  { - 2} \\
    { - 1} &  0 \\
   \end{array}} \right| = 4, \\
   \left| {\begin{array}{*{20}c}
    1 &  4 &  1 \\
    3 &  {13} &  { - 1} \\
    2 &  7 &  5 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    3 &  1 &  { - 4} \\
    2 &  { - 1} &  3 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  { - 4} \\
    { - 1} &  3 \\
   \end{array}} \right| =  - 1.


Ogólne  rozwiązanie:

.. math::

   \left\{ \begin{array}{l}
   a_{ 1}  = 70\gamma _{ 1}  -  5\gamma _{ 2}  \\ 
   a_{ 2}  =  - 16\gamma _{ 1}  +  \gamma _{ 2}  \\ 
   a_{ 3}  = 4\gamma _{ 1}  -  \gamma _{ 2}  \\ 
   a_{ 4}  = \gamma _{ 1}  \\ 
   a_{ 5}  = \gamma _{ 2}  \\ 
   \end{array} \right. , \quad \quad \quad  \gamma _{ 1} ,\gamma _{ 2}  \in \boldsymbol{R}.


W  postaci  wektorowej:

.. math::

   \left( {\begin{array}{*{20}c}
    {a_{ 1} } \\
    {a_{ 2} } \\
    {a_{ 3} } \\
    {a_{ 4} } \\
    {a_{ 5} } \\
   \end{array}} \right) = \gamma _{ 1} \left( {\begin{array}{*{20}c}
    {70} \\
    { - 16} \\
    {4} \\
    {1} \\
    {0} \\
   \end{array}} \right) + \gamma _{ 2} \left( {\begin{array}{*{20}c}
    { - 5} \\
    {1} \\
    { - 1} \\
    {0} \\
    {1} \\
   \end{array}} \right), \quad  \gamma _{ 1} ,\gamma _{ 2}  \in \boldsymbol{R}.


Fundamentalny  układ  rozwiązań:

.. math::

   \begin{array}{l}
   a_{ 1}  = 70, \quad a_{ 2}  =  - 16, \quad a_{ 3}  = 4, \quad a_{ 4}  = 1, \quad a_{ 5}  = 0; \\ 
   a_{ 1}  =  - 5, \quad a_{ 2}  = 1, \quad a_{ 3}  =  - 1, \quad a_{ 4}  = 0, \quad a_{ 5}  = 1. \\ 
   \end{array}


Wobec  tego  szukany  układ  dwóch  równań  może  mieć  postać

.. math::

   \left\{ \begin{array}{l}
   70x_{ 1}  - 16x_{ 2}  +  4x_{ 3}  +  x_{ 4}  = 0 \\ 
   - 5x_{ 1}  + x_{ 2}  - x_{ 3}  + x_{ 5}  = 0 \\ 
   \end{array} \right. ,


a  ewentualne  trzecie  równanie  może  być  dowolną  kombinacją  liniową  pierwszych  dwóch,
na  przykład  ich  sumą:

.. math::

   \left\{ \begin{array}{l}
   70x_{ 1}  - 16x_{ 2}  +  4x_{ 3}  +  x_{ 4}  = 0 \\ 
   - 5x_{ 1}  + x_{ 2}  - x_{ 3}  + x_{ 5}  = 0 \\ 
   65x_{ 1}  -  15x_{ 2}  + 3x_{ 3}  +  x_{ 4}  + x_{ 5}  = 0 \\ 
   \end{array} \right. .


