13. Rozwiązanie układu równań
=============================

Rozwiązać  układ  równań

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  -  x_{ 2}   + 2x_{ 3}  - x_{ 4}  = 1 \\ 
   2x_{ 1}  - 3x_{ 2}   - x_{ 3}  + x_{ 4}  =  - 1 \\ 
   x_{ 1}  + 7x_{ 3}  - 4x_{ 4}  = 4 \\ 
  \end{array} \right. .


_____________________________________________________________________________________


Macierz  problemu  :math:`{\boldsymbol{A}}`  oraz  macierz  rozszerzona  :math:`{\boldsymbol{\tilde A}}`:

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} \\
    2 &  { - 3} &  { - 1} &  1 \\
    1 &  0 &  7 &  { - 4} \\
   \end{array}} \right) = \left( { A_{ 1} ,A_{ 2} ,A_{ 3} ,A_{ 4}  } \right), \quad 
   {\boldsymbol{\tilde A}} = \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} &  1 \\
    2 &  { - 3} &  { - 1} &  1 &  { - 1} \\
    1 &  0 &  7 &  { - 4} &  4 \\
   \end{array}} \right).


Warunek  Kroneckera-Capelliego:  :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}}`,   jest  spełniony,  bo

.. math::

   {\boldsymbol{\tilde A}} = \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} &  1 \\
    2 &  { - 3} &  { - 1} &  1 &  { - 1} \\
    1 &  0 &  7 &  { - 4} &  4 \\
   \end{array}} \right) \to \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} &  0 \\
    2 &  { - 3} &  { - 1} &  1 &  0 \\
    1 &  0 &  7 &  { - 4} &  0 \\
   \end{array}} \right) = \left( { {\boldsymbol{A}},{\rm{\theta }} } \right)


(dopisanie  kolumny  zerowej  nie  zmienia  rzędu  macierzy).


**Określenie  rzędu  macierzy** :math:`\boldsymbol{A}`.

a.)	metoda  przekształceń  elementarnych.

.. math::

   \begin{array}{c}
   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} \\
    2 &  { - 3} &  { - 1} &  1 \\
    1 &  0 &  7 &  { - 4} \\
   \end{array}} \right) \to \left( {\begin{array}{*{20}c}
    1 &  { - 1} &  2 &  { - 1} \\
    0 &  { - 1} &  { - 5} &  3 \\
    0 &  1 &  5 &  { - 3} \\
   \end{array}} \right) \to \left( {\begin{array}{*{20}c}
    1 &  0 &  0 &  0 \\
    0 &  { - 1} &  { - 5} &  3 \\
    0 &  1 &  5 &  { - 3} \\
   \end{array}} \right) \to  \\ 
   \to \left( {\begin{array}{*{20}c}
    1 &  0 &  0 &  0 \\
    0 &  1 &  1 &  1 \\
    0 &  { - 1} &  { - 1} &  { - 1} \\
   \end{array}} \right) \to \left( {\begin{array}{*{20}c}
    1 &  0 &  0 &  0 \\
    0 &  1 &  1 &  1 \\
    0 &  0 &  0 &  0 \\
   \end{array}} \right) \to \left( {\begin{array}{*{20}c}
    1 &  0 &  0 &  0 \\
    0 &  1 &  0 &  0 \\
    0 &  0 &  0 &  0 \\
   \end{array}} \right). \\ 
   \end{array}


Rząd  macierzy  :math:`\boldsymbol{A}`,  równy  ilości  różnych  od  zera  elementów  diagonalnych,  wynosi  2.

Tyle  samo  wynosi  rząd  macierzy  :math:`{\boldsymbol{\tilde A}}`:   :math:`{\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = {\mathop{\rm rz}\nolimits} {\boldsymbol{\tilde A}} = 2`.
Ponieważ  zastosowane  przekształcenia  nie  zawierały  przestawienia  wierszy,  liniowo  niezależne  są  dwa  pierwsze  równania,  a  trzecie  jest  ich  kombinacją  liniową.


b.)	metoda  minorów.

.. math::

   \left| {\begin{array}{*{20}c}
   1 & { - 1}  \\
   2 & { - 3}  \\
   \end{array} } \right| =  - \left| {\begin{array}{*{20}c}
   1 & 1  \\
   2 & 3  \\
   \end{array} } \right| =  - 1 \ne 0 \quad \Rightarrow \quad {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} \ge 2, \quad A_{ 1} ,A_{ 2}  \quad \text{- l.n.} \\
   \left| {A_{ 1} ,A_{ 2} ,A_{ 3} } \right| = \left| {\begin{array}{*{20}c}
    1 &  { - 1} &  2 \\
    2 &  { - 3} &  { - 1} \\
    1 &  0 &  7 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    2 &  { - 1} &  { - 5} \\
    1 &  1 &  5 \\
   \end{array}} \right| = 5\left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    2 &  { - 1} &  { - 1} \\
    1 &  1 &  1 \\
   \end{array}} \right| = 0 \quad \Rightarrow \quad A_{ 3}  \in L(A_{ 1} ,A_{ 2} ), \\
   \left| {A_{ 1} ,A_{ 2} ,A_{ 4} } \right| = \left| {\begin{array}{*{20}c}
    1 &  { - 1} &  { - 1} \\
    2 &  { - 3} &  1 \\
    1 &  0 &  { - 4} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    2 &  { - 1} &  3 \\
    1 &  1 &  { - 3} \\
   \end{array}} \right| =  - 3\left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    2 &  { - 1} &  { - 1} \\
    1 &  1 &  1 \\
   \end{array}} \right| = 0 \quad \Rightarrow \quad A_{ 4}  \in L(A_{ 1} ,A_{ 2} ).


Stąd :math:`{\mathop{\rm rz}\nolimits}\boldsymbol{A} = \mathop \dim (A_1,A_2,A_3,A_4) = \mathop\dim (A_1,A_2)=2`,   więc  :math:`{\mathop{\rm rz}\nolimits}\boldsymbol{A} = {\mathop{\rm rz}\nolimits}\boldsymbol{\tilde A} = 2`, przy  czym  liniowo  niezależne  są  dwa  pierwsze  równania,  a  trzecie  jest  ich  kombinacją  liniową.
Wyjściowy  układ  równań  jest  więc  równoważny  układowi  dwóch  równań  na  4  niewiadome:

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  -  x_{ 2}   + 2x_{ 3}  - x_{ 4}  = 1 \\ 
   2x_{ 1}  - 3x_{ 2}   - x_{ 3}  + x_{ 4}  =  - 1 \\ 
   \end{array} \right. .


a.)	Przyjmujemy  :math:`x_{ 3}  = \alpha , x_{ 4}  = \beta`  i  rozwiązujemy  układ  kramerowski

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  - x_{ 2}  = 1 - 2\alpha  + \beta  \\ 
   2x_{ 1}  - 3x_{ 2}  =  - 1 + \alpha  - \beta  \\ 
   \end{array} \right. .


Wzory  Cramera:

.. math::

   x_j  = \frac{{D_j }}{D}, \quad j = 1,2. \quad  D = \left| {\begin{array}{*{20}c}
   1 & { - 1}  \\
   2 & { - 3}  \\
   \end{array} } \right| =  - 1.



.. math::

   D_{ 1}  = \left| {\begin{array}{*{20}c}
   {1 - 2\alpha  + \beta } & { - 1}  \\
   { - 1 + \alpha  - \beta } & { - 3}  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 1} &  { - 3} \\
   \end{array}} \right| + \alpha \left| {\begin{array}{*{20}c}
    { - 2} &  { - 1} \\
    1 &  { - 3} \\
   \end{array}} \right| + \beta \left| {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 1} &  { - 3} \\
   \end{array}} \right| =  - 4 + 7\alpha  - 4\beta , \\
   D_{ 2}  = \left| {\begin{array}{*{20}c}
    1 & {1 - 2\alpha  + \beta }  \\
    2 & { - 1 + \alpha  - \beta }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  1 \\
    2 &  { - 1} \\
   \end{array}} \right| + \alpha \left| {\begin{array}{*{20}c}
    1 &  { - 2} \\
    2 &  1 \\
   \end{array}} \right| + \beta \left| {\begin{array}{*{20}c}
    1 &  1 \\
    2 &  { - 1} \\
   \end{array}} \right| =  - 3 + 5\alpha  - 3\beta .


W  ten  sposób  rozwiązanie  ma  postać

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  = 4 - 7\alpha  + 4\beta , \\ 
   x_{ 2}  = 3 - 5\alpha  + 3\beta , \\ 
   x_{ 3}  = \alpha , \\ 
   x_{ 4}  = \beta , & \alpha ,\beta  \in \boldsymbol{R} \\ 
   \end{array} \right. \quad \text{wektorowo:} \quad \left( {\begin{array}{*{20}c}
   {x_{ 1} }  \\
   {x_{ 2} }  \\
   {x_{ 3} }  \\
   {x_{ 4} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    4  \\
    3  \\
    0  \\
    0  \\
   \end{array}} \right) + \alpha \left( {\begin{array}{*{20}c}
    { - 7} \\
    { - 5} \\
    1 \\
    0 \\
   \end{array}} \right) + \beta \left( {\begin{array}{*{20}c}
    4  \\
    3  \\
    0  \\
    1  \\
   \end{array}} \right), \quad \alpha ,\beta  \in \boldsymbol{R}.


b.)	Wariant  zakończenia. Przyjmujemy :math:`x_{ 1}  = \alpha _{ 1}, x_{ 2}  = \alpha _{ 2}`.
	Układ  równań  na  :math:`x_{ 3}` i  :math:`x_{ 4}`   jest  również  kramerowski:

.. math::

   \left\{ \begin{array}{l}
   2x_{ 3}  - x_{ 4}  = 1 - \alpha _{ 1}  + \alpha _{ 2}  \\ 
   - x_{ 3}  + x_{ 4}  =  - 1 - 2\alpha _{ 1}  + 3\alpha _{ 2}  \\ 
   \end{array} \right. .


Dodając  stronami  otrzymujemy

.. math::

   x_{ 3}  =  - 3\alpha _{ 1}  + 4\alpha _{ 2} ,	x_{ 4}  =  - 1 - 2\alpha _{ 1}  + 3\alpha _{ 2}  - 3\alpha _{ 1}  + 4\alpha _{ 2}  =  - 1 - 5\alpha _{ 1}  + 7\alpha _{ 2} .


Stąd  ogólne  rozwiązanie

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  = \alpha _{ 1} , \\ 
   x_{ 2}  = \alpha _{ 2} , \\ 
   x_{ 3}  =  - 3\alpha _{ 1}  + 4\alpha _{ 2} , \\ 
   x_{ 4}  =  - 1 - 5\alpha _{ 1}  + 7\alpha _{ 2} . \\ 
   \end{array} \right. \quad \text{wektorowo:} \quad \left( {\begin{array}{*{20}c}
   {x_{ 1} }  \\
   {x_{ 2} }  \\
   {x_{ 3} }  \\
   {x_{ 4} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    0 \\
    0 \\
    0 \\
    { - 1} \\
   \end{array} } \right) + \alpha _{ 1} \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    { - 3} \\
    { - 5} \\
   \end{array}} \right) + \alpha _{ 2} \left( {\begin{array}{*{20}c}
    0  \\
    1  \\
    4  \\
    7  \\
   \end{array}} \right), \quad \alpha _{ 1} ,\alpha _{ 2}  \in \boldsymbol{R}.


