00. ﻿Wyznaczniki
===============

Przyjmujemy  aksjomatyczną  definicję  wyznacznika,
sformułowaną  w  zapisie  kolumnowym  macierzy:

**Def.** Wyznacznik  stopnia  *n*  jest  funkcją  :math:`\det :M_n (K) \to K`  spełniającą  warunki:


1.) :math:`\det (C_{ 1} , \ldots ,C_j  +  C'_j , \ldots ,C_n ) = \det (C_{ 1} , \ldots ,C_j , \ldots ,C_n ) + \det (C_{ 1} , \ldots ,C'_j , \ldots ,C_n )`.

2.) :math:`\det (C_{ 1} , \ldots ,\lambda C_j , \ldots ,C_n ) = \lambda  \cdot \det (C_{ 1} , \ldots ,C_j , \ldots ,C_n ), \,  \lambda  \in K, \quad  j = 1,2, \ldots ,n`.

3.) :math:`C_j  = C_{j + 1} \Rightarrow \det (C_{ 1} , \ldots ,C_j ,C_{j + 1} , \ldots ,C_n ) = 0, \quad j = 1,2, \ldots ,n - 1`. 

4.) :math:`\det {\boldsymbol{I}} = 1`,  gdzie   :math:`\boldsymbol{I}`   –   macierz  jednostkowa:

.. math::

   {\boldsymbol{I}} = \left( {\begin{array}{*{20}c}
   1 & 0 &  \ldots  & 0  \\
   0 & 1 &  \ldots  & 0  \\
   \ldots  &  \ldots  &  \ldots  &  \ldots   \\
   0 & 0 &  \ldots  & 1  \\
   \end{array}} \right).


Zapis:

.. math::

   \det {\boldsymbol{A}} = \det (\alpha _{ij} )_{n \times n}  = \det \left( {\begin{array}{*{20}c}
   {\alpha _{  11} }  & {\alpha _{  12} }  &  \ldots   & {\alpha _{  1n} }   \\
   {\alpha _{  21} }  & {\alpha _{  22} }  &  \ldots   & {\alpha  _{2n} }   \\
   { \ldots }  &  \ldots   &  \ldots   &  \ldots    \\
   {\alpha _{  n  1} }  & {\alpha _{  n2} }  &  \ldots   & {\alpha _{ n n} }   \\
   \end{array}} \right) = \left| {\begin{array}{*{20}c}
   {\alpha _{  11} }  & {\alpha _{  12} }  &  \ldots   & {\alpha _{  1n} }   \\
   {\alpha _{  21} }  & {\alpha _{  22} }  &  \ldots   & {\alpha  _{2n} }   \\
   \ldots   &  \ldots   &  \ldots   &  \ldots    \\
   {\alpha _{  n  1} }  & {\alpha _{  n2} }  &  \ldots   & {\alpha _{ n n} }   \\
   \end{array}} \right|.


Uwagi:


1°	Wyznacznik  jest  określony  tylko  dla  macierzy  kwadratowych  (m = n).
	Nie  istnieje  wyznacznik  macierzy  prostokątnej  niekwadratowej.

2°	Macierz  i  wyznacznik  macierzy  są  zupełnie  różnymi  obiektami  matematycznymi,
	co  powinno  znaleźć  odbicie  w  zapisie  (nawiasy dla macierzy, proste kreski dla wyznacznika).

3°	Z  definicji  nie  wynika  istnienie  funkcji  spełniającej  wymienione  postulaty  ani  jej
	jednoznaczność.  Definicja  nie  podaje  też  praktycznego  sposobu  wyliczania  wyznacznika.
	W  dalszym  ciągu  wykażemy,  że  istnieje  dokładnie  jedna  funkcja  spełniająca  postulaty  		definicji  oraz  wyprowadzimy  wzory  dla  efektywnego  obliczania  wyznaczników.

4°	Jeżeli   :math:`{\boldsymbol{A}},{\boldsymbol{B}} \in M_n (K), \quad \lambda \in K`,
	to   :math:`\det ({\boldsymbol{A}} + {\boldsymbol{B}}) \ne \det {\boldsymbol{A}} + \det {\boldsymbol{B}}, \quad  \det (\lambda {\boldsymbol{A}}) \ne \lambda \det {\boldsymbol{A}} \quad (n > 1)`,
	tzn.  wyznacznik  nie  jest  funkcją  liniową.
	Natomiast,  dla  :math:`{\boldsymbol{A}} = (C_{ 1} ,C_{ 2} , \ldots ,C_n )`  mamy  :math:`\lambda {\boldsymbol{A}} = (\lambda C_{ 1} ,\lambda C_{ 2} , \ldots ,\lambda C_n )`,
	wobec  czego  :math:`\det (\lambda {\boldsymbol{A}}) = \lambda ^n  \cdot \det {\boldsymbol{A}}, \quad n \in \boldsymbol{N}`.


**Własności  funkcji  det,  wynikające  z  definicji  (przy założeniu, że funkcja taka istnieje).**


I.) :math:`C_j  = \theta \Rightarrow \det (C_{ 1} , \ldots ,C_j , \ldots ,C_n ) = 0, \quad  j = 1,2, \ldots ,n`.
    (jeżeli jakaś kolumna macierzy składa się z samych zer, to wyznacznik znika).

    **Dowód:**  Oznaczmy   :math:`d: = \det (C_{ 1} ,C_{ 2} , \ldots ,C_n )`.
    Jeżeli   :math:`C_j  = \theta`,   to   :math:`C_j  = C_j  +  C_j  \Rightarrow d = d + d, \quad d = 2d, \quad d = 0`.

    **Wniosek:**   :math:`\det {\boldsymbol{0}} = 0`,   gdzie  :math:`{\boldsymbol{0}}`  jest  macierzą  zerową.

II.) :math:`\det (C_{ 1} , \ldots ,C_j , \ldots ,C_k , \ldots ,C_n ) =  - \det (C_{ 1} , \ldots ,C_k , \ldots ,C_j , \ldots ,C_n ), \quad j < k,j, \quad k = 1,2, \ldots ,n`.
     (przestawienie dowolnych dwóch kolumn zmienia znak wyznacznika).

     **Dowód.**  Niech  najpierw  :math:`k = j + 1`  (przestawienie dwóch sąsiednich kolumn).


.. math::

   \begin{array}{*{20}c}
   j & j + 1 &  &  &  &  \\ 
   \downarrow & \downarrow &  &  &  &  \\ 
   \end{array}



.. math::

   \begin{array}{l}
   0 = \det (C_{ 1} , \ldots ,C + C',C + C', \ldots ,C_n ) =  \\ 
   = \det (C_{ 1} , \ldots ,C,C, \ldots ,C_n ) + \det (C_{ 1} , \ldots ,C,C', \ldots ,C_n ) +  \\ 
   + \det (C_{ 1} , \ldots ,C',C, \ldots ,C_n ) + \det (C_{ 1} , \ldots ,C',C', \ldots ,C_n ) =  \\ 
   = \det (C_{ 1} , \ldots ,C,C', \ldots ,C_n ) + \det (C_{ 1} , \ldots ,C',C, \ldots ,C_n ). \\ 
   \end{array}


:math:`\det (C_{ 1} , \ldots ,C,C', \ldots ,C_n ) =  - \det (C_{ 1} , \ldots ,C',C, \ldots ,C_n )`

(przestawienie dwóch sąsiednich kolumn zmienia znak wyznacznika).
Przestawienie  dowolnych  dwóch  kolumn  o  numerach  j  i  k  jest  złożeniem  nieparzystej  ilości  przestawień  kolumn  sąsiednich,  powoduje  więc  zmianę  znaku  wyznacznika.

**Wniosek:**  Dla  dowolnej  permutacji  :math:`\sigma  \in \Pi (n)`:

.. math::

   \det (C_{\sigma (1)} ,C_{\sigma (2)} , \ldots ,C_{\sigma (n)} ) = {\mathop{\rm sgn}} \sigma  \cdot \det (C_{ 1} ,C_{ 2} , \ldots ,C_n ),


gdyż  przejście  od  naturalnego  układu  kolumn  do  układu  określonego  przez  permutację  :math:`\sigma`   wymaga  wykonania  parzystej  (gdy :math:`{\mathop{\rm sgn}} \sigma  =  + 1`)  bądź  nieparzystej  (gdy :math:`{\mathop{\rm sgn}} \sigma  =  - 1`)  ilości  transpozycji,  z  których  każda  zmienia  znak  wyznacznika.
Jakiekolwiek  przestawienie  kolumn  macierzy  zmienia  co  najwyżej  znak  wyznacznika.


III.) :math:`C_j  = C_k \Rightarrow \det (C_{ 1} , \ldots ,C_j , \ldots ,C_k , \ldots ,C_n ) = 0, \quad j < k, \quad j, k = 1,2, \ldots ,n`.
      (gdy jakiekolwiek dwie kolumny macierzy są równe, to wyznacznik znika).

      **Dowód:**  Niech  :math:`d: = \det (C_{ 1} ,C_{ 2} , \ldots ,C_n )`.  
      Wtedy   :math:`C_j  =  C_k \quad (j \ne k) \quad \Rightarrow \quad d =  - d, \quad 2d = 0, \quad d = 0`.

      **Wniosek 1.**   :math:`\det (C_{ 1} , \ldots ,C_j , \ldots ,\lambda C_j , \ldots ,C_n ) = 0, \quad j = 1,2, \ldots ,n - 1`.
      (jeżeli dwie kolumny macierzy są proporcjonalne, to wyznacznik znika).

      **Wniosek 2.**
      :math:`\det (C_{ 1} , \ldots ,C_j , \ldots ,C_k  + \lambda C_j , \ldots ,C_n ) = \det (C_{ 1} , \ldots ,C_j , \ldots ,C_k , \ldots ,C_n ), \quad j < k, \quad j, k = 1,2, \ldots ,n`.
      (dodanie do pewnej kolumny innej kolumny pomnożonej przez dowolny skalar nie zmienia wyznacznika).

IV.)  Jeżeli  :math:`{\boldsymbol{A}},{\boldsymbol{B}} \in M_n (K), {\boldsymbol{A}} = (\alpha _{ij} )_{n \times n} , \quad {\boldsymbol{B}} = (\beta _{ij} )_{n \times n}` ,
      to   :math:`\det ({\boldsymbol{AB}}) = \det {\boldsymbol{A}} \cdot \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma }  \cdot \beta _{\sigma (1),1} \beta _{\sigma (2),2}  \ldots \beta _{\sigma (n),n}` .

      **Dowód.**   Niech  :math:`{\boldsymbol{A}} = (C_{ 1} ,C_{ 2} , \ldots ,C_n ),   {\boldsymbol{AB}} = (H_{ 1} ,H_{ 2} , \ldots ,H_n )`     (zapis kolumnowy).   Wtedy

.. math::

   H_j  = \left( {\begin{array}{*{20}c}
   {\sum\limits_{s = 1}^n {\alpha _{ 1s} \beta _{sj} } }  \\
   {\sum\limits_{s = 1}^n {\alpha _{ 2s} \beta _{sj} } }  \\
   \ldots   \\
   {\sum\limits_{s = 1}^n {\alpha _{ ns} \beta _{sj} } }  \\
   \end{array}} \right) = \sum\limits_{s = 1}^n {\left( {\begin{array}{*{20}c}
   {\alpha _{ 1s} }  \\
   {\alpha _{ 2s} }  \\
   \ldots   \\
   {\alpha _{ns} }  \\
   \end{array}} \right)} \beta _{sj}  = \sum\limits_{s = 1}^n {\beta _{sj} C_s } ,     j = 1,2, \ldots ,n.


\ 
      **Ogólna  własność  mnożenia  macierzowego:** *j*-ta  kolumna  macierzy  :math:`AB`  jest  kombinacją  liniową  kolumn  macierzy  :math:`A`,  o  współczynnikach  z  *j*-tej  kolumny  macierzy  :math:`B \quad  (j = 1,2, \ldots ,n)`.

      Wobec  tego

.. math::

   \begin{array}{l}
   \det ({\boldsymbol{AB}}) = \det (H_{ 1} ,H_{ 2} , \ldots ,H_n ) & = \det \left( {\sum\limits_{s_1  = 1}^n {\beta _{s_1 ,1} C_{s_1 } ,\sum\limits_{s_2  = 1}^n {\beta _{s_2 ,2} } } C_{s_2 } , \ldots ,\sum\limits_{s_n  = 1}^n {\beta _{s_n ,n} C_{s_n } } } \right) =  \\ 
     & = \sum\limits_{s_1  = 1}^n {\sum\limits_{s_2  = 1}^n { \ldots \sum\limits_{s_n  = 1}^n  } } \beta _{s_1 ,1} \beta _{s_2 ,2}  \ldots \beta _{s_n ,n} \det \left( {C_{s_1 } ,C_{s_2 } , \ldots ,C_{s_n } } \right) \\ 
   \end{array}


\ 
      Różne  od  zera  mogą  być  tylko  te  składniki,  w  których  kolumny  :math:`C_{s_1 } ,C_{s_2 } , \ldots ,C_{s_n }` mają  różne  wskaźniki,  czyli  te,  dla  których  układ  wartości  wskaźników  :math:`s_{ 1} ,s_{ 2} , \ldots ,s_{ n}`   jest  permutacją  zbioru  :math:`\{ 1,2, \ldots ,n\}` . Sumowanie  przebiega  więc  po  permutacjach  zbioru  :math:`\{ 1,2, \ldots ,n\}` :

.. math::

   \begin{array}{l}
   \det ({\boldsymbol{AB}}) & = \sum\limits_{\sigma  \in \Pi (n)} {\beta _{\sigma (1),1} } \beta _{\sigma (2),2}  \ldots \beta _{\sigma (n),n} \det \left( {C_{\sigma (1)} ,C_{\sigma (2)} , \ldots ,C_{\sigma (n)} } \right) =  \\ 
     & = \det {\boldsymbol{A}} \cdot \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \beta _{\sigma (1),1} } \beta _{\sigma (2),2}  \ldots \beta _{\sigma (n),n} . \\ 
   \end{array}


\ 
      Kładąc  :math:`{\boldsymbol{A}} = {\boldsymbol{I}}`  otrzymujemy

      **Wniosek:**   Jeżeli  funkcja  det,  określona  przez  postulaty  1. –  4.   istnieje,  to

.. math::

   \det {\boldsymbol{B}} = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma }  \cdot \beta _{\sigma (1),1} \beta _{\sigma (2),2}  \ldots \beta _{\sigma (n),n} .


Można  sprawdzić  (patrz np.: B. Gleichgewicht, Algebra),  że  funkcja  określona  powyższym  wzorem  spełnia  wymienione  postulaty,  co  dowodzi  istnienia  funkcji  det.

**Tw.** Istnieje  dokładnie  jedna  funkcja  :math:`\det :M_n (K) \to K`,  spełniająca  warunki  1. –  4.
        Mianowicie,  dla  macierzy  :math:`{\boldsymbol{A}} = (\alpha _{ij} )_{n \times n}` :

.. math::

   \det {\boldsymbol{A}} = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma }  \cdot \alpha _{\sigma (1),1} \alpha _{\sigma (2),2}  \ldots \alpha _{\sigma (n),n} \quad  \text{(rozwinięcie  permutacyjne)}.


Z  własności  IV  wynika  ponadto
**Tw.**  (Cauchy):   Jeżeli  :math:`{\boldsymbol{A}},{\boldsymbol{B}} \in M_n (K)`,   to   :math:`\det ({\boldsymbol{AB}}) = \det {\boldsymbol{A}} \cdot \det {\boldsymbol{B}}`.


**Transpozycja  macierzy.**

**Def.** Niech  :math:`{\boldsymbol{A}} = (\alpha _{ij} )_{m \times n}` .  Macierzą  transponowaną  względem  :math:`A`  jest  macierz  :math:`{\boldsymbol{A}}^{\rm{T}}  = (\alpha _{ij}^{\rm{T}} )_{n \times m}` , gdzie

.. math::

   \alpha _{ij}^{\rm{T}} : = \alpha _{ji} ,i = 1,2, \ldots ,n; \quad j = 1,2, \ldots ,m.


np.

.. math::

   \left( {\begin{array}{*{20}c}
   3 &  1 &  { - 2} &  0 \\
   { - 1} &  5 &  2 &  4 \\
   \end{array}} \right)^{{\rm{T}}}  = \left( {\begin{array}{*{20}c}
   3 &  { - 1} \\
   1 &  5 \\
   { - 2} &  2 \\
   0 &  4 \\
   \end{array}} \right)    \text{ - wiersze  przechodzą  w  kolumny  i  vice  versa}; \\
   \left( {\begin{array}{*{20}c}
   2 &  1 &  { - 1} \\
   0 &  3 &  { - 2} \\
   5 &  { - 3} &  4 \\
   \end{array}} \right)^{{\rm{T}}}  = \left( {\begin{array}{*{20}c}
   2 &  0 &  5 \\
   1 &  3 &  { - 3} \\
   { - 1} &  { - 2} &  4 \\
   \end{array}} \right)    \text{ - odbicie  względem  głównej  przekątnej}.


**Tw.** Jeżeli  :math:`{\boldsymbol{A}} \in M_n (K)`,  to  :math:`\det {\boldsymbol{A}}^{\rm{T}}  = \det {\boldsymbol{A}}`.

**Dowód:**  Niech  :math:`{\boldsymbol{A}} = (\alpha _{ij} )_{n \times n}` .  Wtedy

.. math::

   \begin{array}{l}
   \det {\boldsymbol{A}}^{\rm{T}} & = \sum\limits_{\rho  \in \Pi (n)} {{\mathop{\rm sgn}} \rho  \cdot \alpha _{\rho (1),1}^{\rm{T}} \alpha _{\rho (2),2}^{\rm{T}}  \ldots \alpha _{\rho (n),n}^{\rm{T}} }  =  \\ 
     &  = \sum\limits_{\rho  \in \Pi (n)} {{\mathop{\rm sgn}} \rho  \cdot \alpha _{1,\rho (1)} \alpha _{2,\rho (2)}  \ldots \alpha _{n,\rho (n)} }  =  \\ 
     &  = \sum\limits_{\rho  \in \Pi (n)} {{\mathop{\rm sgn}} \rho  \cdot \alpha _{\rho ^{ - 1} [\rho (1)],\rho  (1)} \alpha _{\rho ^{ - 1} [\rho (2)],\rho (2)}  \ldots \alpha _{\rho ^{ - 1} [\rho (n)],\rho (n)} }  =  \\ 
   (1) &  = \sum\limits_{\rho  \in \Pi (n)} {{\mathop{\rm sgn}} \rho  \cdot \alpha _{\rho ^{ - 1} (1),1} \alpha _{\rho ^{ - 1} (2),2}  \ldots \alpha _{\rho ^{ - 1} (n),n} }  =  \\ 
   (2) &  = \sum\limits_{\rho  \in \Pi (n)} {{\mathop{\rm sgn}} \rho ^{ - 1}  \cdot \alpha _{\rho ^{ - 1} (1),1} \alpha _{\rho ^{ - 1} (2),2}  \ldots \alpha _{\rho ^{ - 1} (n),n} }  =  \\ 
   (3) &  = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{\sigma (1),1} \alpha _{\sigma (2),2}  \ldots \alpha _{\sigma (n),n} }  = \det {\boldsymbol{A}}. \\ 
   \end{array}


Uzasadnienie  przekształceń:


(1): albowiem  w  ciągu   :math:`\rho (1),\rho (2), \ldots ,\rho (n)`
     każda   z   liczb    :math:`1, 2, \ldots ,  n`
     występuje  dokładnie  raz,  a  czynniki  w  iloczynie  są  przemienne;

(2): :math:`{\mathop{\rm sgn}} \rho ^{ - 1}  = {\mathop{\rm sgn}} \rho` ,  bo  jeżeli  :math:`\rho  = \tau _1 \tau _2  \ldots \tau _{k - 1} \tau _k`   (rozkład na iloczyn transpozycji), to
     :math:`\rho ^{ - 1}  = \tau _k^{ - 1} \tau _{k - 1}^{ - 1}  \ldots \tau _2^{ - 1} \tau _1^{ - 1}  = \tau _k \tau _{k - 1}  \ldots \tau _2 \tau _1` ;

(3): :math:`\{ \rho ^{ - 1} :\rho   \in \Pi (n)\}  = \Pi (n) = \{ \sigma :\sigma   \in \Pi (n)\}` .


**Wniosek:**  Każde  twierdzenie  dotyczące  wyznaczników  pozostaje  słuszne,  jeżeli  słowa  "kolumna"  zamienić  na  "wiersz"  i  odwrotnie.  W  szczególności,  samą  definicję  wyznacznika  można  podać  
w  terminach  wierszy,  dochodząc  do  wzoru

.. math::

   \det {\boldsymbol{A}} = \sum\limits_{\sigma  \in \Pi (n)} {{\mathop{\rm sgn}} \sigma  \cdot \alpha _{ 1,\sigma (1)} \alpha _{ 2,\sigma (2)}  \ldots \alpha _{ n,\sigma (n)} } .


