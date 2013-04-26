18. WKW dla bazy przestrzeni wektorowej
=======================================

Niech  układ  wektorów  :math:`\cal{B} = (v_i )_1^n`  będzie  bazą  *n*-wymiarowej  przestrzeni  :math:`V(K)`. Rozważmy  układ  :math:`\cal{B'} = (v'_i )_1^n`,  gdzie

.. math::
   :label: OL18.1

   v'_j  = \sum\limits_{i = 1}^n {\sigma _{ij} v_i} , \quad  j = 1,2, \ldots ,n.


Udowodnić,  że układ  :math:`\cal{B'}`  jest  bazą  przestrzeni  :math:`V`  wtedy  i  tylko wtedy,  gdy  :math:`\det {\boldsymbol{S}} \ne 0`,  gdzie  :math:`{\boldsymbol{S}} = (\sigma _{ij} )_{n \times n}`.

**Uwaga:**  gdy  :math:`\det {\boldsymbol{S}} \ne 0`,  :math:`\boldsymbol{S}`  nazywa  się  macierzą przejścia  od  bazy  :math:`\cal{B}` do  bazy :math:`\cal{B'}`.

___________________________________________________________________________________


Równości  :eq:`OL18.1`  przedstawiają  wektory  układu  :math:`\cal{B'}`  w  postaci  kombinacji  liniowych
wektorów  bazy :math:`\cal{B}`:

.. math::

   \begin{array}{l}
   v'_{ 1}  = \sigma _{11} v_{ 1}  + \sigma _{21} v_{ 2}  +  \ldots  + \sigma _{n1} v_n  \\ 
   v'_{ 2}  = \sigma _{12} v_{ 1}  + \sigma _{22} v_{ 2}  +  \ldots  + \sigma _{n2} v_n  \\ 
   \ldots  \\ 
   v'_{ n}  = \sigma _{1n} v_{ 1}  + \sigma _{2n} v_{ 2}  +  \ldots  + \sigma _{nn} v_n  \\ 
   \end{array}


Przy  ustalonym  *j*,  elementy  :math:`\sigma _{ij}, (i = 1,2, \ldots ,n)`,  tworzące  *j*-tą  kolumnę  macierzy  :math:`\boldsymbol{S}`,  są  więc  współrzędnymi  wektora  :math:`v'_j` w  bazie  :math:`\cal{B}`.

Zapisując  macierz  :math:`\boldsymbol{S}`  w  postaci  kolumnowej:  :math:`{\boldsymbol{S}} = ({\boldsymbol{S}}_1 , {\boldsymbol{S}}_2 , \ldots , {\boldsymbol{S}}_n )`  otrzymujemy  związki

.. math::

   {\boldsymbol{S}}_j  \equiv \left( {\begin{array}{*{20}c}
   {\sigma _{1j} }  \\
   {\sigma _{2j} }  \\
    \ldots   \\
   {\sigma _{nj} }  \\
   \end{array}} \right) = I_B (v'_j ), \quad j = 1,2, \ldots ,n,


gdzie  :math:`I_{\cal{B}}`  jest  izomorfizmem  przestrzeni  :math:`V`  na  przestrzeń  :math:`K^{ n}`,  który  przyporządkowuje  każdemu  wektorowi  przestrzeni  :math:`V`  kolumnę  jego  współrzędnych  w  bazie :math:`\cal{B}`.

:math:`\Rightarrow :`	Odwzorowanie  :math:`I_{\cal{B}}`  (jako injekcja)  zachowuje  liniową  niezależność  wektorów.
	Jeżeli  układ  :math:`\cal{B'}`  jest  bazą  przestrzeni  :math:`V`,  to  wektory  :math:`v'_1 ,v'_2 , \ldots ,v'_n`   są  liniowo  niezależne.
	Wówczas  liniowo niezależne  są  również  kolumny  :math:`{\boldsymbol{S}}_1 ,{\boldsymbol{S}}_2 , \ldots ,{\boldsymbol{S}}_n`  macierzy  :math:`\boldsymbol{S}`,  skąd  :math:`\det {\boldsymbol{S}} \ne 0`.

:math:`\Leftarrow :`	Przy  (dowolnym)  odwzorowaniu  liniowym
	liniowa  niezależność  obrazów  implikuje  liniową  niezależność  argumentów.
	Jeżeli  :math:`\det {\boldsymbol{S}} \ne 0`,  to  kolumny  :math:`{\boldsymbol{S}}_1 ,{\boldsymbol{S}}_2 , \ldots ,{\boldsymbol{S}}_n`   macierzy  :math:`\boldsymbol{S}` są  liniowo  niezależne.
	Wynika  stąd  liniowa  niezależność  wektorów  :math:`v'_1 ,v'_2 , \ldots ,v'_n`  układu  :math:`\cal{B'}`.
	Wtedy  zaś  układ  :math:`\cal{B'}`,  jako  liniowo  niezależny  układ  :math:`n`  wektorów  w  *n*-wymiarowej  przestrzeni  :math:`V`,  jest  bazą.

