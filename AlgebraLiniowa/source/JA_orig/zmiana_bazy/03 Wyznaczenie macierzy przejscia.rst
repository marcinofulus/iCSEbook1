03. Wyznaczenie macierzy przejścia
==================================

Znaleźć  macierz  przejścia  w  przestrzeni :math:`\boldsymbol{R}^4`:

a.)  od  bazy  kanonicznej   :math:`\cal{E}`   do  bazy

.. math::

   \cal{F} = \left( \left( {\begin{array}{*{20}c}
    1 \\
    1 \\
    0 \\
    0 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    1 \\
    0 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    0 \\
    1 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    1 \\
    1 \\
    1 \\
   \end{array}} \right) \right);

b.)  od  bazy

.. math::

   \cal{F} = \left( \left( {\begin{array}{*{20}c}
    1 \\
    2 \\
    -1 \\
    0 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    -1 \\
    1 \\
    1 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    -1 \\
    2 \\
    1 \\
    1 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    -1 \\
    -1 \\
    0 \\
    1 \\
   \end{array}} \right) \right)


do  bazy

.. math::

   \cal{G} = \left( \left( {\begin{array}{*{20}c}
    2 \\
    1 \\
    0 \\
    1 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    0 \\
    1 \\
    2 \\
    2 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    -2 \\
    1 \\
    1 \\
    2 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    3 \\
    1 \\
    2 \\
   \end{array}} \right) \right).


___________________________________________________________________________________


a.)  Wprowadźmy  oznaczenia:

.. math::

   \cal{F} = (f_{ 1} ,f_2 ,f_3 ,f_4 ) = \left( \left( {\begin{array}{*{20}c}
    1 \\
    1 \\
    0 \\
    0 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    1 \\
    0 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    0 \\
    0 \\
    1 \\
   \end{array}} \right), \left( {\begin{array}{*{20}c}
    1 \\
    1 \\
    1 \\
    1 \\
   \end{array}} \right) \right) \quad \text{— baza  (jako układ wektorów)}, \\

   \boldsymbol{F} = (f_1 ,f_2 ,f_3 ,f_4 ) = \left( {\begin{array}{*{20}c}
    1 & 1 & 1 & 1  \\
    1 & 0 & 0 & 1  \\
    0 & 1 & 0 & 1  \\
    0 & 0 & 1 & 1  \\
   \end{array}} \right) \quad \text{— macierz  (jako układ kolumn)}.


Z  definicji  *j*-ta  kolumna  macierzy  przejścia  :math:`\boldsymbol{S}`  od  bazy  kanonicznej  :math:`\cal{E}`  do  bazy  :math:`\cal{F}`  jest  kolumną  współrzędnych  (w bazie :math:`\cal{E}`)  *j*-tego  wektora  bazy  :math:`\cal{F} \quad (j = 1,2,3,4)`.

W  przestrzeni  :math:`\boldsymbol{K}^n`   każdy  wektor  jest  kolumną  swoich  współrzędnych  w  bazie  kanonicznej  tej  przestrzeni.

A  zatem  *j*-ta  kolumna  macierzy  przejścia  jest  wektorem  kolumnowym  :math:`f_j`  bazy  :math:`\cal{F} \quad (j = 1,2,3,4)`.

Ostatecznie,  macierzą  przejścia  jest  macierz  :math:`\boldsymbol{F}`:

.. math::

   {\boldsymbol{S}} = {\boldsymbol{F}} = (f_1 ,f_2 ,f_3 ,f_4 ) = \left( {\begin{array}{*{20}c}
    1 & 1 & 1 & 1  \\
    1 & 0 & 0 & 1  \\
    0 & 1 & 0 & 1  \\
    0 & 0 & 1 & 1  \\
   \end{array}} \right) .


**Uogólnienie**:

W  przestrzeni  :math:`\boldsymbol{K}^n`   macierz  przejścia  od  bazy  kanonicznej  :math:`\cal{E}`  do  danej  bazy  :math:`\cal{B}`  jest  macierzą  :math:`\boldsymbol{B}`, otrzymaną  przez  zestawienie  wektorów  bazy  :math:`\cal{B}`,  zapisanych  w  postaci  kolumnowej.

b.)  Wprowadźmy  oznaczenia  dla  wektorów  baz   :math:`\cal{F}`  i  :math:`\cal{G}`:

.. math::

   \cal{F} = (f_1 ,f_2 ,f_3 ,f_4 ), \quad \cal{G} = (g_1 ,g_2 ,g_3 ,g_4 ),


oraz  dla  macierzy  utworzonych  z  tych  wektorów:

.. math::

   {\boldsymbol{F}} = (f_1 ,f_2 ,f_3 ,f_4 ) =  \left( {\begin{array}{*{20}c}
    1 &  1 &  { - 1} &  { - 1} \\
    2 &  { - 1} &  2 &  { - 1} \\
    { - 1} &  1 &  1 &  0 \\
    0 &  1 &  1 &  1 \\
   \end{array}} \right), \quad 
   {\boldsymbol{G}} = (g_1 ,g_2 ,g_3 ,g_4 ) =  \left( {\begin{array}{*{20}c}
    2 &  0 &  { - 2} &  1 \\
    1 &  1 &  1 &  3 \\
    0 &  2 &  1 &  1 \\
    1 &  2 &  2 &  2 \\
   \end{array}} \right).


Macierz  przejścia  :math:`{\boldsymbol{S}} = (\sigma _{ij} )_{4 \times 4}`  od  bazy  :math:`\cal{F}` do  bazy  :math:`\cal{G}`   określona  jest  przez  równości

.. math::
   :label: ZB03.1

   g_j  = \sum\limits_{i = 1}^4 {\sigma _{ij} } f_i , \quad j = 1,2,3,4,


według  których  *j*-ta  kolumna  macierzy  :math:`\boldsymbol{S}`  jest  kolumną  współrzędnych  (w bazie :math:`\cal{F}`)  *j*-tego  wektora  bazy  :math:`\cal{G} \quad (j = 1,2,3,4)`.


**Wariant I.**

Równości  :eq:`ZB03.1`  stwierdzają,  że  *j*-ta  kolumna  macierzy  :math:`\boldsymbol{G}`  jest  kombinacją  liniową  kolumn  macierzy  :math:`\boldsymbol{F}`,  o  współczynnikach  z  *j*-tej  kolumny  macierzy  :math:`\boldsymbol{S} \quad (j = 1,2,3,4)`.  Wobec  tego

.. math::

   {\boldsymbol{G}} = {\boldsymbol{F}}{\boldsymbol{S}}.


Macierz  :math:`\boldsymbol{F}`,  utworzona  z  liniowo  niezależnych kolumn :math:`f_1 ,f_2 ,f_3 ,f_4`,   jest  oczywiście  nieosobliwa. Stąd  szukana  macierz  przejścia

.. math::

   \blacktriangleright \quad {\mathbf{S}} = {\mathbf{F}}^{ - 1} {\mathbf{G}}.


**Wariant II.**

Niech  :math:`{\boldsymbol{F}} = (f_1 ,f_2 ,f_3 ,f_4 ) = \left( {\varphi _{ij} } \right)_{ 4 \times 4}, \quad {\boldsymbol{G}} = (g_1 ,g_2 ,g_3 ,g_4 ) = \left( {\gamma _{ij} } \right)_{ 4 \times 4}`.

Zauważmy,  że  :math:`\varphi _{ ij}   = \left( {f_j } \right)_{ i}` –  *i*-ta  współrzędna  wektora :math:`f_j`,

	:math:`\gamma _{ij}   = \left( { g_j } \right)_i`  –  *i*-ta  współrzędna  wektora  :math:`g_j`,
	
Przyrównując  *k*-te  współrzędne  wektorów  kolumnowych  po  obu  stronach  równości :eq:`ZB03.1` mamy

.. math::

   \begin{array}{l}
   \left( { g_j } \right)_k  = \sum\limits_{i = 1}^4 {\sigma _{ij} } \left( {f_i } \right)_k , \\
   \gamma _{kj}  = \sum\limits_{i = 1}^4 {\sigma _{ij} \varphi _{ ki} }, \\
   \gamma _{kj}  = \sum\limits_{i = 1}^4 {\varphi _{ ki} \sigma _{ij} }, \quad k,j = 1,2,3,4. \\
   {\boldsymbol{G}} = {\boldsymbol{F}}{\boldsymbol{S}},	\quad \text{skąd  otrzymujemy  ponownie:} \quad {\boldsymbol{S}} = {\boldsymbol{F}}^{ - 1}  {\boldsymbol{G}}.
   \end{array}


**Wariant III.**

Zachodzą  związki:

	:math:`g_j  = Tf_j , \quad j = 1,2,3,4`, co  można  przepisać  w  postaci  równości  macierzowych:
	:math:`g_j  = M(T) \cdot f_j  \equiv {\boldsymbol{A}} \cdot f_j`, gdzie :math:`M(T) = {\boldsymbol{A}}` – macierz  automorfizmu  przejścia  :math:`T` od  bazy  :math:`\cal{F}` do  bazy  :math:`\cal{G}`  w  bazie  kanonicznej  :math:`\cal{E}`.

Z  równości  wektorowych

.. math::

   g_{ 1} = {\boldsymbol{A}}f_{ 1}, \quad g_{ 2} = {\boldsymbol{A}}f_{ 2}, \quad g_{ 3} = {\boldsymbol{A}}f_{ 3}, \quad g_{ 4} = {\boldsymbol{A}}f_{ 4}


wynika  równość  macierzowa  (zapis kolumnowy):

.. math::

   \left( { g_1 ,g_2 ,g_3 ,g_4 } \right) = {\boldsymbol{A}}\left( { f_1 ,f_2 ,f_3 ,f_4  } \right)


czyli,  według  przyjętych  oznaczeń,

.. math::

   {\boldsymbol{G}} = {\boldsymbol{A}}{\boldsymbol{F}},	\quad \text{skąd} \quad {\boldsymbol{A}} = {\boldsymbol{G}}{\boldsymbol{F}}^{ - 1}.


Szukamy  macierzy  :math:`\boldsymbol{S}` automorfizmu  :math:`T`  w  bazie  :math:`\cal{F}`. Na  podstawie  wzorów  transformacyjnych:

.. math::

   {\boldsymbol{S}} \equiv M_{\cal{F}}(T) = {\boldsymbol{S}}_{\cal{F}}^{-1} {\boldsymbol{A}}{\boldsymbol{S}}_{\cal{F}}


gdzie  :math:`{\boldsymbol{S}}_{\cal{F}}`   jest  macierzą  przejścia  od  bazy  kanonicznej  do  bazy  :math:`\cal{F}`.  Ale   :math:`{\boldsymbol{S}}_{\cal{F}}  = {\boldsymbol{F}}`,  więc

.. math::

   {\boldsymbol{S}} = {\boldsymbol{F}}^{-1} ({\boldsymbol{G}}{\boldsymbol{F}}^{-1} ){\boldsymbol{F}} = {\boldsymbol{F}}^{-1} {\boldsymbol{G}}.


Wiadomo,  że  macierz  przejścia  :math:`\boldsymbol{S}` jest  również  macierzą  automorfizmu  :math:`T`  w  bazie  :math:`\cal{G}`.  Więc

.. math::

   {\boldsymbol{S}} = M_{\cal{G}}(T) = {\boldsymbol{S}}_{\cal{G}}^{-1} {\boldsymbol{A}}{\boldsymbol{S}}_{\cal{G}},


gdzie  :math:`{\boldsymbol{S}}_{\cal{G}}`  –  macierz  przejścia  od  bazy  kanonicznej  do  bazy  :math:`\cal{G}`:  :math:`{\boldsymbol{S}}_{\cal{G}}  = {\boldsymbol{G}}`.

A  zatem  jeszcze  raz  otrzymujemy

.. math::

  {\boldsymbol{S}} = {\boldsymbol{G}}^{-1} ( {\boldsymbol{G}}{\boldsymbol{F}}^{-1} ){\boldsymbol{G}} = {\boldsymbol{F}}^{-1} {\boldsymbol{G}}.


Konkretnie:

.. math::

   {\boldsymbol{S}} = \left( {\begin{array}{*{20}c}
    1 &  1 &  { - 1} &  { - 1} \\
    2 &  { - 1} &  2 &  { - 1} \\
    { - 1} &  1 &  1 &  0 \\
    0 &  1 &  1 &  1 \\
   \end{array}} \right)^{ - 1} \left( {\begin{array}{*{20}c}
    2 &  0 &  { - 2} &  1 \\
    1 &  1 &  1 &  3 \\
    0 &  2 &  1 &  1 \\
    1 &  2 &  2 &  2 \\
   \end{array}} \right).


W  szczególnym  przypadku,  gdy  baza  :math:`\cal{F}` jest  kanoniczna,  macierz  :math:`\boldsymbol{F}`  jest  macierzą  jednostkową:

.. math::

   {\boldsymbol{F}} = {\boldsymbol{I}}_{ 4},


wobec  czego

.. math::

   {\boldsymbol{S}} = {\boldsymbol{G}} \quad \text{– wynik otrzymany w punkcie a.)}.


