01. Macierz przejścia jest nieosobliwa
======================================

Udowodnić,  że  macierz  przejścia  :math:`{\boldsymbol{S}} = (\sigma _{ij} )_{n \times n}`  od  bazy  
:math:`\cal{B} = (v_i )_1^n`  do  bazy  :math:`\cal{B'} = (v'_i )_1^n` *n*-wymiarowej  przestrzeni  :math:`V(K)`,  określona  przez  równości

.. math::

   v'_j  = \sum\limits_{i = 1}^n {\sigma _{ij} v_i ,  \quad j = 1,2, \ldots ,n},


jest  nieosobliwa.

___________________________________________________________________________________


Niech  :math:`{\boldsymbol{S}} = ({\boldsymbol{S}}_1 ,{\boldsymbol{S}}_2 , \ldots ,{\boldsymbol{S}}_n )`  –  zapis  kolumnowy  macierzy  :math:`\boldsymbol{S}`.

Wtedy

.. math::

   {\boldsymbol{S}}_j  \equiv \left( {\begin{array}{*{20}c}
   {\sigma _{1j} }  \\
   {\sigma _{2j} }  \\
    \ldots   \\
   {\sigma _{nj} }  \\
   \end{array}} \right) = I_{\cal{B}} (v'_j ), \quad j = 1,2, \ldots ,n:


–  *j*-ta  kolumna  macierzy  :math:`\boldsymbol{S}`  jest  kolumną  współrzędnych  (w bazie :math:`\cal{B}`)  *j*-tego  wektora  bazy  :math:`\cal{B'}`.

Odwzorowanie  :math:`I_{\cal{B}}`,  które  przyporządkowuje  każdemu  wektorowi  przestrzeni  :math:`V`   kolumnę  jego  współrzędnych  w  bazie :math:`\cal{B}`,  jest  izomorfizmem  przestrzeni  :math:`V`  na  przestrzeń  :math:`\boldsymbol{K}^n`.  A  zatem  :math:`I_{\cal{B}}`  (jako injekcja)  zachowuje  liniową  niezależność  wektorów.  Z  liniowej  niezależności  wektorów  :math:`v'_1 ,v'_2 , \ldots ,v'_n`  bazy  :math:`\cal{B'}`  wynika  więc  liniowa  niezależność  kolumn  :math:`{\boldsymbol{S}}_1, {\boldsymbol{S}}_2 , \ldots ,{\boldsymbol{S}}_n`  macierzy  :math:`\boldsymbol{S}`, co  jest  równoważne  nieosobliwości  tej  macierzy.

