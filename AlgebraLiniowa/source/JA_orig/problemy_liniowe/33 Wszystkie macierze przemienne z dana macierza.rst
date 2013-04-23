33. Wszystkie macierze przemienne z daną macierzą
=================================================

Znajdź  wszystkie  macierze  przemienne  z  macierzą

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 & 2  \\
    1 & 1  \\
   \end{array}} \right),


tzn.  wszystkie  macierze  :math:`{\boldsymbol{X}}  \in  M_2 (\boldsymbol{R})`,  dla  których  :math:`{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{X}}{\boldsymbol{A}}`.

**Wskazówka:**  Oznacz  

.. math::

   {\boldsymbol{X}} = \left( {\begin{array}{*{20}c}
   {x_{ 1} } & {x_2 }  \\
   {x_3 } & {x_4 }  \\
   \end{array}} \right).

_____________________________________________________________________________________


Warunek  :math:`{\boldsymbol{A}}{\boldsymbol{X}} = {\boldsymbol{X}}{\boldsymbol{A}}`  przyjmuje  postać

.. math::

   \begin{array}{c}
   \left( {\begin{array}{*{20}c}
   1 & {2}  \\
   1 & {1}  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   {x_{ 1} } & {x_{ 2} }  \\
   {x_{ 3} } & {x_{ 4} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {x_{ 1} } & {x_{ 2} }  \\
   {x_{ 3} } & {x_{ 4} }  \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   1 & {2}  \\
   1 & {1}  \\
   \end{array}} \right) \\ 
   \left( {\begin{array}{*{20}c}
   {x_{ 1}  + 2x_{ 3} } & {x_{ 2}  + 2x_{ 4} }  \\
   {x_{ 1}  + x_{ 3} } & {x_{ 2}  + x_{ 4} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {x_{ 1}  + x_{ 2} } & {2x_{ 1}  + x_{ 2} }  \\
   {x_{ 3}  + x_{ 4} } & {2x_{ 3}  + x_{ 4} }  \\
   \end{array}} \right) \\ 
   \end{array}


skąd,  po  przyrównaniu  odpowiednich  elementów  macierzy,  otrzymujemy  jednorodny  układ
czterech  równań  na  cztery  niewiadome:

.. math::

   \left\{ \begin{array}{l}
   x_{ 1}  +  2x_{ 3}   = x_{ 1}  +  x_{ 2}  \\ 
   x_{ 2}  +  2x_{ 4}   = 2x_{ 1}  +  x_{ 2}  \\ 
   x_{ 1}  + x_{ 3}   = x_{ 3}  + x_{ 4}  \\ 
   x_{ 2}  + x_{ 4}   = 2x_{ 3}  +  x_{ 4}  \\ 
   \end{array} \right. \quad 
   \text{czyli} \quad \left\{ \begin{array}{l}
   x_{ 2}  -  2x_{ 3}   = 0 \\ 
   2(x_{ 1}  -  x_{ 4} ) = 0 \\ 
   x_{ 1}  -  x_{ 4}   = 0 \\ 
   x_{ 2}  -  2x_{ 3}   = 0 \\ 
   \end{array} \right. .


W  tym  układzie  tylko  dwa  równania  są  liniowo  niezależne:

.. math::

   \left\{ \begin{array}{l}
   x_{ 2}  -  2x_{ 3}   = 0 \\ 
   x_{ 1}  -  x_{ 4}   = 0 \\ 
   \end{array} \right.


Przyjmując  :math:`x_{ 4}   = \alpha , \quad x_{ 3}  = \beta`  otrzymujemy  ogólne  rozwiązanie:

.. math::

   x_{ 1}   = \alpha , \quad x_{ 2}   = 2\beta , \quad x_{ 3}   = \beta , \quad x_{ 4}   = \alpha , \quad \alpha ,\beta  \in \boldsymbol{R}.


Wobec  tego  szukane  macierze  mają  ogólną  postać

.. math::

   {\boldsymbol{X}} = \left( {\begin{array}{*{20}c}
   \alpha  & {2\beta }  \\
   \beta  & \alpha   \\
   \end{array}} \right), \quad \alpha ,\beta  \in \boldsymbol{R}


i  tworzą  2-wymiarową  podprzestrzeń  przestrzeni  :math:`M_2 (\boldsymbol{R})`:

.. math::

   \left( {\begin{array}{*{20}c}
   \alpha  & {2\beta }  \\
   \beta  & \alpha   \\
   \end{array}} \right) = \alpha \left( {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 1  \\
   \end{array}} \right) + \beta \left( {\begin{array}{*{20}c}
   0 & 2  \\
   1 & 0  \\
   \end{array}} \right),


z  przykładową  bazą

.. math::

   \cal{B} = \left\{ {\left( {\begin{array}{*{20}c}
   1 & 0 \\
   0 & 1 \\
   \end{array}} \right),\left( {\begin{array}{*{20}c}
   0 & 2 \\
   1 & 0 \\
   \end{array}} \right)} \right\}.


