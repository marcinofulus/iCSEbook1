16. Odwrócenie kolejności wektorów bazy
=======================================

W  bazie  :math:`\cal{B} = (v_1 ,v_2 ,v_3 )`  3-wymiarowej  przestrzeni  wektorowej  :math:`V(\boldsymbol{R})`  endomorfizm  :math:`F \in {\mathop{\rm End}\nolimits} (V)`  ma  macierz

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    3 &  { - 2} &  { - 1} \\
    2 &  1 &  { - 3} \\
    1 &  3 &  2 \\
   \end{array}} \right).


Podać  macierz  :math:`{\boldsymbol{A'}}`  tego  endomorfizmu  w  bazie  :math:`\cal{B'} = (v_3 ,v_2 ,v_1 )`.

______________________________________________________________________________________


1.)  Wykorzystanie  macierzy  przejścia.

Szukaną  macierz  :math:`{\boldsymbol{A'}}`  można  wyznaczyć  z  zależności

.. math::

   {\boldsymbol{A'}} = {\boldsymbol{S}}^{ - 1} {\boldsymbol{A}}{\boldsymbol{S}},


gdzie  :math:`\boldsymbol{S}`  jest  macierzą  przejścia  od  bazy  :math:`\cal{B} = (v_1 ,v_2 ,v_3 )`  do  bazy  :math:`\cal{B'} = (v_3 ,v_2 ,v_1 )`:

.. math::

   {\boldsymbol{S}} = \left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right).


Wyliczenie  macierzy  odwrotnej  :math:`{\boldsymbol{S}}^{ - 1}`:

.. math::

   \det {\boldsymbol{S}} =  - 1, \quad {\boldsymbol{S}}^{ - 1}  = \frac{1}{{( - 1)}}\left( {\begin{array}{*{20}c}
    0 &  0 &  { - 1} \\
    0 &  { - 1} &  0 \\
    { - 1} &  0 &  0 \\
   \end{array}} \right)^{T}  = \left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right) = {\boldsymbol{S}}.


Sprawdzenie:

.. math::

   {\boldsymbol{S}}{\boldsymbol{S}}^{ - 1}  = {\boldsymbol{S}}^2  = \left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 & 0 & 0  \\
    0 & 1 & 0  \\
    0 & 0 & 1  \\
   \end{array}} \right).


Tego  wyniku  należało  oczekiwać.  Rzeczywiście,  z definicji:  :math:`{\boldsymbol{S}} = M_B (T)`,
gdzie  :math:`T`   jest  automorfizmem  przejścia  od  bazy  :math:`\cal{B}`  do  bazy  :math:`\cal{B'}`:

.. math::

   \begin{array}{l}
   Tv_1  = v_3  \\ 
   Tv_2  = v_2  \\ 
   Tv_3  = v_1  \\ 
   \end{array}, \quad \text{wobec  czego} \quad \begin{array}{l}
   T^2 v_1  = Tv_3  = v_1  \\ 
   T^2 v_2  = Tv_2  = v_2  \\ 
   T^2 v_3  = Tv_1  = v_3  \\ 
   \end{array}.


Stąd   :math:`T^2  = I`   (endomorfizm jednostkowy)  i  w  konsekwencji   :math:`{\boldsymbol{S}}^2  = {\boldsymbol{I}}_3`,   a  więc   :math:`{\boldsymbol{S}}^{ - 1}  = {\boldsymbol{S}}`.

A  zatem

.. math::


   {\boldsymbol{A'}} = \left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    3 &  { - 2} &  { - 1} \\
    2 &  1 &  { - 3} \\
    1 &  3 &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 &  3 &  2 \\
    2 &  1 &  { - 3} \\
    3 &  { - 2} &  { - 1} \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    0 & 0 & 1  \\
    0 & 1 & 0  \\
    1 & 0 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    2 &  3 &  1 \\
    { - 3} &  1 &  2 \\
    { - 1} &  { - 2} &  3 \\
   \end{array}} \right).


2.)  Metoda bezpośrednia.

Oznaczenia:

.. math::

   {\boldsymbol{A}} = (\alpha _{ij} )_{3 \times 3}, \quad {\boldsymbol{A'}} = (\alpha '_{ij} )_{3 \times 3}, \quad B' = (v'_1 ,v'_2 ,v'_3 ), \quad \text{tzn.} \quad \left\{ \begin{array}{l}
   v'_1  = v_3 , \\ 
   v'_2  = v_2 , \\ 
   v'_3  = v_1  \\ 
   \end{array} \right.


Z definicji macierzy odwzorowania liniowego wynikają równości:

.. math::

   F v_j  = \sum\limits_{i = 1}^3 {\alpha _{ij}} v_i , \quad  F v'_j  = \sum\limits_{i = 1}^3 {\alpha '_{ij}} v'_i , \quad j = 1,2,3.


Konkretnie:

.. math::

   \begin{array}{l}
   Fv_1  = 3v_1  + 2v_2  + 1v_3  \\ 
   Fv_2  =  - 2v_1  + 1v_2  + 3v_3  \\ 
   Fv_3  =  - 1v_1  - 3v_2  + 2v_3  \\ 
   \end{array} , \quad \begin{array}{l}
   Fv'_1  = 2v'_1  - 3v'_2  - 1v'_3  \\ 
   Fv'_2  = 3v'_1  + 1v'_2  - 2v'_3  \\ 
   Fv'_3  = 1v'_1  + 2v'_2  + 3v'_3  \\ 
   \end{array}.


Stąd  macierz  endomorfizmu  :math:`F`  w  bazie  :math:`\cal{B'}`  ma  postać

.. math::

   {\boldsymbol{A'}} = \left( {\begin{array}{*{20}c}
     2 &  3 &  1 \\
    { - 3} &  1 &  2 \\
    { - 1} &  { - 2} &  3 \\
   \end{array}} \right).


Jak  widać,  odwrócenie  kolejności  wektorów  bazy  skutkuje  przestawieniem  wszystkich  kolumnn 
i  wierszy  macierzy  endomorfizmu.

