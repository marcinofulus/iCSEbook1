29. Wyznaczenie wymiaru i bazy podprzestrzeni
=============================================

Określ  wymiar  i  znajdź  bazę  podprzestrzeni  :math:`L(x_1 ,x_2 ,x_3 ,x_4 )`,  gdzie

.. math::

   x_1  = \left( \begin{array}{*{20}c}
   2  \\
   1  \\
   2  \\
   \end{array} \right), \quad x_2  = \left( \begin{array}{*{20}c}
   1  \\
   3  \\
   1  \\
   \end{array} \right), \quad x_3  = \left( \begin{array}{*{20}c}
   1 \\
   { - 2} \\
   1 \\
   \end{array} \right), \quad x_4  = \left( \begin{array}{*{20}c}
   3 \\
   { - 1} \\
   3 \\
   \end{array} \right) \quad \in \boldsymbol{R}^{ 3} .


_____________________________________________________________________________________


Wymiar  przestrzeni  (podprzestrzeni  przestrzeni  :math:`\boldsymbol{R}^{ 3}` )  generowanej  przez  wektory  :math:`x_{ 1} ,x_2 ,x_3 ,x_4`
równa  się  rzędowi  macierzy  o  kolumnach  :math:`x_1 ,x_2 ,x_3 ,x_4` :

.. math::

   \dim L(x_{ 1} ,x_2 ,x_3 ,x_4 ) = \text{rz} \boldsymbol{A},


gdzie

.. math::

   \boldsymbol{A} = (x_1 ,x_2 ,x_3 ,x_4 ) = \left( \begin{array}{*{20}c}
    2 &  1 &  1 &  3 \\
    1 &  3 &  { - 2} &  { - 1} \\
    2 &  1 &  1 &  3 \\
   \end{array} \right).


|
Rząd  macierzy  :math:`\boldsymbol{A}`  można  wyznaczyć  (zmodyfikowaną)  metodą  minorów.

.. math::

   \left| \begin{array}{*{20}c}
   2 & 1  \\
   1 & 3  \\
   \end{array} \right| = 5 \ne 0 \quad \Rightarrow \quad \left[ \text{rz} \boldsymbol{A} \ge 2 \quad \wedge \quad (x_1 ,x_2 ) \text{ - l.n.} \right].


Z  drugiej  strony,  następujące  dwa  minory  3  stopnia  znikają:

.. math::

   \left| {x_1 ,x_2 ,x_3 } \right| = \left| \begin{array}{*{20}c}
    2 &  1 &  1 \\
    1 &  3 &  { - 2} \\
    2 &  1 &  1 \\
   \end{array} \right| = 0 \quad \Rightarrow \quad (x_1 ,x_2 ,x_3 ) - \text{l.z.} \quad \Rightarrow \quad x_3 \in L(x_1 ,x_2 ), \\
   \left| {x_1 ,x_2 ,x_4 } \right| = \left| \begin{array}{*{20}c}
    2 &  1 &  3 \\
    1 &  3 &  { - 1} \\
    2 &  1 &  3 \\
   \end{array} \right| = 0 \quad \Rightarrow \quad (x_1 ,x_2 ,x_4 ) - \text{l.z.} \quad \Rightarrow \quad x_4 \in L(x_1 ,x_2 ).


Wynika  stąd,  że  :math:`L(x_1, x_2, x_3, x_4) = L(x_1, x_2)`,  przy  czym  układ  wektorów :math:`(x_1, x_2)`  jest  bazą  podprzestrzeni :math:`L(x_1, x_2)`  (jako  l.n.  układ  generujący  tę  podprzestrzeń).  Tak  więc  :math:`\text{rz} \boldsymbol{A} = 2`.

Ostatecznie

.. math::

   \dim L(x_1 ,x_2 ,x_3 ,x_4 ) = \dim L(x_1 ,x_2 ) = 2.


Jako  bazę  podprzestrzeni  :math:`L(x_1 ,x_2 ,x_3 ,x_4 )`  można  przyjąć  układ

.. math::

   B = (x_1 ,x_2 ) = \left( {\left( \begin{array}{*{20}c}
   2  \\
   1  \\
   2  \\
   \end{array} \right),\left( \begin{array}{*{20}c}
   1  \\
   3  \\
   1  \\
   \end{array} \right)} \right).

