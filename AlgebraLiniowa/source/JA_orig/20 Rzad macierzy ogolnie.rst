20. Rząd  macierzy
==================

**Def.** Rzędem  macierzy  :math:`\boldsymbol{A} \in M_{m \times n} (\boldsymbol{K})`  nazywamy  (maksymalną)  ilość  jej  kolumn  liniowo  niezależnych.  Oznaczenie:   :math:`\text{rz} \boldsymbol{A}`.

|
**Tw.** Rząd  macierzy  :math:`\boldsymbol{A} = (C_1 , C_2 , \ldots , C_n ) \in M_{m \times n} (\boldsymbol{K})`  równa  się  wymiarowi  przestrzeni (podprzestrzeni  p.w. :math:`\boldsymbol{K}^{ m}` )  generowanej  przez  jej  kolumny:

.. math::

   \text{rz} \boldsymbol{A} = \dim L(C_1 , C_2 , \ldots , C_n )


**Dowód:**  Niech  :math:`\text{rz} \boldsymbol{A} = k`,  przy  czym  l.n.  są  kolumny  :math:`C_1 ,C_2 , \ldots , C_k`.

Wtedy

.. math::

   \mathop \wedge \limits_{k + 1 \le l \le n} (C_1 , C_2 , \ldots , C_k , C_l ) \quad \text{ -   układ  l.z.}


czyli

.. math::

   C_l  \in L(C_1 , C_2 , \ldots , C_k ).


Wobec tego :math:`L(C_1 , C_2 , \ldots , C_k , C_{k + 1} , \ldots , C_n ) = L(C_1 , C_2 , \ldots , C_k )`,

przy  czym  układ  kolumn  :math:`(C_1 , C_2 , \ldots , C_k )`  jest  bazą  przestrzeni  :math:`L(C_1 , C_2 , \ldots , C_k )`,
jako  l.n.  układ  wektorów  generujący  tę  przestrzeń.

A  zatem

.. math::

   \dim L(C_1 , C_2 , \ldots , C_n ) = \dim L(C_1 , C_2 , \ldots , C_k ) = k = \text{rz}  \boldsymbol{A}.

|
**Tw.** Jeżeli  :math:`\boldsymbol{A} \in M_{m \times n} (\boldsymbol{K})`,   to  :math:`\text{rz} \boldsymbol{A}^{T}  = \text{rz} \boldsymbol{A}`.

**Dowód:**  Patrz:  J. Komorowski,  *Od  liczb  zespolonych ...*,  B. Gleichgewicht,  *Algebra*.

**Wniosek:**  Rząd  macierzy  jest  również  ilością  jej  wierszy  liniowo  niezależnych,  a  także  	wymiarem  przestrzeni  generowanej  przez  jej  wiersze.

|
**Def.** Następujące  przekształcenia  macierzy  zbioru  :math:`M_{m \times n} (\boldsymbol{K})`  nazywają  się  przekształceniami  elementarnymi:


    a) przestawienie  dwóch  kolumn  (wierszy)  macierzy;
    b) pomnożenie  dowolnie  wybranej  kolumny  (wiersza)  przez  dowolny,  różny  od  zera  skalar;
    c) dodanie  do  dowolnej  kolumny  (wiersza)  dowolnej  innej  kolumny  (wiersza).


|
Rząd  macierzy  można  określić  przy  pomocy  następujących  twierdzeń:

**Tw.1.** Przekształcenia  elementarne  nie  zmieniają  rzędu  macierzy  (chociaż,  oczywiście,  zmieniają  samą  macierz  oraz,  z  wyjątkiem  przekształcenia  c.,  również  wyznacznik  macierzy  kwadratowej).

**Tw.2.** Rząd  macierzy  diagonalnej  równa  się  ilości  różnych  od  zera  elementów  jej  głównej  przekątnej.

**Tw.3.** Każdą  macierz  prostokątną  można  sprowadzić  do  postaci  diagonalnej  za  pomocą  skończonej  liczby  przekształceń  elementarnych.

**Dowody:**  Patrz:  B. Gleichgewicht,  *Algebra*.

