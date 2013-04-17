02. Iloczyn w rozwinięciu wyznacznika
=====================================

Dobrać   i  oraz  k   tak,  aby  iloczyn   :math:`\alpha _{ 1i} \alpha _{ 32} \alpha _{ 4k} \alpha _{ 25} \alpha _{ 53}`  wystąpił  w  rozwinięciu  wyznacznika  5.  stopnia  ze  znakiem  plus.

___________________________________________________________________________________


Dla  macierzy  :math:`{\boldsymbol{A}} = (\alpha _{ij} )_{5 \times 5}  \in M_5 (\boldsymbol{K})`:

.. math::

   \begin{array}{c}
   \det {\boldsymbol{A}} = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{\sigma (1),1} \alpha _{\sigma (2),2} \alpha _{\sigma (3),3} \alpha _{\sigma (4),4} \alpha _{\sigma (5),5} }  =  \\ 
   = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{ 1,\sigma (1)} \alpha _{ 2,\sigma (2)} \alpha _{ 3,\sigma (3)} \alpha _{ 4,\sigma (4)} \alpha _{ 5,\sigma (5)} } . \\ 
   \end{array}


Według  drugiego  z  tych  wzorów,  podanemu  iloczynowi  odpowiada  permutacja

.. math::
   \sigma  = \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 \\
    i &  5 &  2 &  k &  3 \\
   \end{array}} \right).


Mamy  więc  dwie  możliwości:     a.)   :math:`i = 1, \quad k = 4`;     b.)   :math:`i = 4, \quad k = 1`.


W  przypadku  a.)

.. math::

   \sigma  = \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 \\
    1 &  5 &  2 &  4 &  3 \\
   \end{array}} \right) = (2,5,3) = (2,3)(2,5);


permutacja  parzysta  (4  inwersje:   5,2;  5,4;  5,3;  4,3):   :math:`{\mathop{\rm sgn}} \sigma  =  + 1`;
iloczyn  wchodzi  do  rozwinięcia  wyznacznika  ze  znakiem  plus.

W  przypadku  b.)

.. math::

   \sigma  = \left( {\begin{array}{*{20}c}
    1 &  2 &  3 &  4 &  5 \\
    4 &  5 &  2 &  1 &  3 \\
   \end{array}} \right) = (1,4)(2,5,3) = (1,4)(2,3)(2,5);


permutacja  nieparzysta  (7  inwersji:   4,2;  4,1;  4,3;   5,2;  5,1;  5,3;   2,1);
iloczyn  wchodzi  do  rozwinięcia  wyznacznika  ze  znakiem  minus.


Odpowiedź:   :math:`i = 1, \quad  k = 4`.

