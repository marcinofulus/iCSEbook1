10. Endomorfizm zadany przez obrazy wektorów bazy
=================================================

Dany jest endomorfizm  :math:`F` przestrzeni :math:`\boldsymbol{R}^4`  określony przez obrazy wektorów bazy kanonicznej:

.. math::

   \begin{array}{l}
   F e_1 = e_1 - e_2 + e_3 - e_4  \\ 
   F e_2 = 2e_1 - 3e_3  \\ 
   F e_3 = 3e_2 - e_3 + e_4  \\ 
   F e_4 = e_1 + 2e_2 . \\ 
   \end{array}


Znaleźć

.. math::

   F \left( {\begin{array}{*{20}c}
    3 \\
    -2 \\
    5 \\
    0 \\
   \end{array}} \right).


Wyznaczyć  :math:`{\rm rz}F`  oraz  :math:`{\rm def} F`.

**Wskazówka:** obraz endomorfizmu  :math:`F`  jest podprzestrzenią  przestrzeni :math:`\boldsymbol{R}^4`,  generowaną przez obrazy wektorów bazy kanonicznej:  :math:`{\rm{Im }}F = L (Fe_1 , Fe_2 , Fe_3 , Fe_4 )`.

_____________________________________________________________________________________


Obraz  wektora

.. math::

   x = \left( {\begin{array}{*{20}c}
    3 \\
    -2 \\
    5 \\
    0 \\
   \end{array}} \right) = 3e_1 - 2e_2 + 5e_3


można  wyliczyć  bezpośrednio:

.. math::

   \begin{array}{l}
   F(x) & = F(3e_1 - 2e_2 + 5e_3 ) = 3F e_1 - 2F e_2 + 5F e_3 =  \\ 
    & = 3(e_1 - e_2 + e_3 - e_4 ) - 2(2e_1 - 3e_3 ) + 5(3e_2 - e_3 + e_4 ) =  \\ 
    & = 3e_1 - 3e_2 + 3e_3 - 3e_4 - 4e_1 + 6e_3 + 15e_2 - 5e_3 + 5e_4  =  \\ 
    & =  - e_1 + 12e_2 + 4e_3 + 2e_4 . \\ 
   \end{array}


Tak  więc

.. math::

   F \left( {\begin{array}{*{20}c}
    3 \\
    -2 \\
    5 \\
    0 \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    -1 \\
    12 \\
    4 \\
    2 \\
   \end{array}} \right).


Przy  bardziej  ogólnym  podejściu  można  zapisać  odwzorowanie  :math:`F`  w  postaci  macierzowej:

.. math::

   F(x) = {\boldsymbol{A}}{\boldsymbol{x}}, \quad {\boldsymbol{A}} \in M_4 (\boldsymbol{R}), \quad x \equiv {\boldsymbol{x}} \in \boldsymbol{R}^4  \simeq M_{4 \times 1} (\boldsymbol{R}).


Mianowicie,  niech

.. math::

   x = \left( {\begin{array}{*{20}c}
    {\xi _{ 1} } \\
    {\xi _{ 2} } \\
    {\xi _{ 3} } \\
    {\xi _{ 4} } \\
   \end{array}} \right) = \xi _{ 1} e_1 + \xi _{ 2} e_2 + \xi _{ 3} e_3 + \xi _{ 4} e_4 .


Wtedy

.. math::

   \begin{array}{l}
   F(x) & = F(\xi _{ 1} e_1 + \xi _{ 2} e_2 + \xi _{ 3} e_3 + \xi _{ 4} e_4 ) = \xi _{ 1} F e_1 + \xi _{ 2} F e_2 + \xi _{ 3} F e_3 + \xi _{ 4} F e_4  =  \\ 
    & = \xi _{ 1} (e_1 - e_2 + e_3 - e_4 ) + \xi _{ 2} (2e_1 - 3e_3 ) + \xi _{ 3} (3e_2 - e_3 + e_4 ) + \xi _{ 4} (e_1 + 2e_2 ) =  \\ 
    & = (\xi _{ 1}  +  2\xi _{ 2}  +  \xi _{ 4} )e_1 + ( - \xi _{ 1}  +  3\xi _{ 3}  +  2\xi _{ 4} )e_2 + (\xi _{ 1}  -  3\xi _{ 2}  -  \xi _{ 3} )e_3 + ( - \xi _{ 1}  +  \xi _{ 3} )e_4 , \\ 
   \end{array}


czyli

.. math::

   F(x) = F\left( {\begin{array}{*{20}c}
    {\xi _{ 1} } \\
    {\xi _{ 2} } \\
    {\xi _{ 3} } \\
    {\xi _{ 4} } \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 1} &  0 &  3 &  2 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    {\xi _{ 1} } \\
    {\xi _{ 2} } \\
    {\xi _{ 3} } \\
    {\xi _{ 4} } \\
   \end{array}} \right).


W  szczególności

.. math::

   F \left( {\begin{array}{*{20}c}
    3 \\
    -2 \\
    5 \\
    0 \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 1} &  0 &  3 &  2 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
    3 \\
    -2 \\
    5 \\
    0 \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    -1 \\
    12 \\
     4 \\
     2 \\
   \end{array}} \right).


Zauważmy,  że

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 1} &  0 &  3 &  2 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right) = \left( {F e_1 ,F e_2 ,F e_3 ,F e_4 } \right).


Obraz  endomorfizmu  :math:`F`  jest  podprzestrzenią  przestrzeni  :math:`\boldsymbol{R}^4`,   generowaną  przez  obrazy  wektorów  bazy  kanonicznej  tej  przestrzeni.  Wobec  tego

.. math::

   {\mathop{\rm rz}\nolimits} F = \dim {\mathop{\rm Im}\nolimits} F = \dim L(F e_1 ,F e_2 ,F e_3 ,F e_4 ) = {\mathop{\rm rz}\nolimits} \left( {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 1} &  0 &  3 &  2 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right) = {\mathop{\rm rz}\nolimits} {\boldsymbol{A}},


bo  rząd macierzy  równa  się  wymiarowi  (pod)przestrzeni,  generowanej  przez  kolumny  tej  macierzy.

Jądro  endomorfizmu  :math:`F`  jest  podprzestrzenią  przestrzeni  :math:`\boldsymbol{R}^4`,  złożoną  z  tych  wszystkich  wektorów,  które  są  odwzorowane  w  wektor  zerowy:

.. math::

   {\mathop{\rm Ker}\nolimits} F = \left\{ {x  \in \boldsymbol{R}^4 :F(x) = {\rm{\theta }}} \right\} = \left\{ {{\boldsymbol{x}}  \in M_{4 \times 1} (\boldsymbol{R}):{\boldsymbol{A}} {\boldsymbol{x}} = {\rm{\theta }}} \right\},


czyli  :math:`{\mathop{\rm Ker}\nolimits} F = S_0`,  gdzie  :math:`S_0`   jest  przestrzenią  rozwiązań  jednorodnego  problemu  liniowego  :math:`{\boldsymbol{A}} {\boldsymbol{x}} = {\rm{\theta }}`.

W  ten  sposób

.. math::

   {\mathop{\rm def}\nolimits} F = \dim {\mathop{\rm Ker}\nolimits} F = \dim S_0 = 4 - {\mathop{\rm rz}\nolimits} {\boldsymbol{A}} = 4 - {\mathop{\rm rz}\nolimits} F.


Tak  więc  :math:`{\mathop{\rm def}\nolimits} F  + {\mathop{\rm rz}\nolimits} F = 4`,  zgodnie  z  ogólnym  twierdzeniem,  według  którego

.. math::

   {\mathop{\rm def}\nolimits} F  +  {\mathop{\rm rz}\nolimits} F = \dim V,


gdzie  :math:`V`  jest  przestrzenią,  w  której  zostało  określone  odwzorowanie  liniowe  :math:`F`.

Wyznaczenie  rzędu  macierzy  :math:`\boldsymbol{A}`  metodą  minorów:

.. math::

   \left| {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 1} &  0 &  3 &  2 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  2 &  0 &  1 \\
    { - 3} &  { - 4} &  3 &  0 \\
    1 &  { - 3} &  { - 1} &  0 \\
    { - 1} &  0 &  1 &  0 \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
    { - 3} &  { - 4} &  3 \\
    1 &  { - 3} &  { - 1} \\
    { - 1} &  0 &  1 \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    3 &  { - 4} &  3 \\
    { - 1} &  { - 3} &  { - 1} \\
    1 &  0 &  1 \\
   \end{array}} \right| = 0, \\
   \left| {\begin{array}{*{20}c}
    1 &  2 &  0 \\
    { - 1} &  0 &  3 \\
    1 &  { - 3} &  { - 1} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    1 &  0 &  0 \\
    { - 1} &  2 &  3 \\
    1 &  { - 5} &  { - 1} \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
    2 &  3 \\
    { - 5} &  { - 1} \\
   \end{array}} \right| = 13 \ne 0.


A  zatem  :math:`{\mathop{\rm rz}\nolimits} F  = 3, \quad {\mathop{\rm def}\nolimits} F  = 1`.

