Wyznaczniki
===========

Przyjmujemy  aksjomatyczną  definicję  wyznacznika,
sformułowaną  w  zapisie  kolumnowym  macierzy:

Def.	Wyznacznik  stopnia  n  jest  funkcją  :math:`\det :\;\,M_n (K)\; \to \;K`  spełniającą  warunki:
1.)	:math:`\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j  + \;{\kern 1pt} C'_j ,\; \ldots ,\;C_n )\;\; = \;\;\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_n )\;\; + \;\;\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;C'_j ,\; \ldots ,\;C_n )`.
2.)	:math:`\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;\lambda \,C_j ,\; \ldots ,\;C_n )\;\; = \;\;\lambda \;\, \cdot \,\;\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_n )`,   :math:`\lambda  \in K`,    :math:`j\;\, = \;\,1,\;2,\; \ldots ,\;n`.
3.)	:math:`C_j \;\, = \;\;C_{j\, + \,1} {\rm{   }} \Rightarrow {\rm{   }}\det \;(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\;C_{j\, + \,1} ,\; \ldots ,\;C_n )\;\; = \;\;0,\;\;\;\;j\;\, = \;\,1,\;2,\; \ldots ,\;n - 1.` 
4.)	:math:`\det \;{\bf{I}}\;\; = \;\;1`,     gdzie   I   –   macierz  jednostkowa:   ${\bf{I}}\;\; = \;\;\left( {\;\begin{array}{*{20}c}
   1 & 0 &  \ldots  & 0  \\
   0 & 1 &  \ldots  & 0  \\
    \ldots  &  \ldots  &  \ldots  &  \ldots   \\
   0 & 0 &  \ldots  & 1  \\
\end{array}\;} \right)$.
Zapis:
        \[
\det {\bf{A}}\;\;\; = \;\;\;\det \;(\alpha _{ij} )_{n\, \times \,n} \;\; = \;\;\;\det \;\,\left( {\;\begin{array}{*{20}c}
   {\alpha _{{\kern 1pt} {\kern 1pt} 11} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 12} } \hfill &  \ldots  \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 1n} } \hfill  \\
   {\alpha _{{\kern 1pt} {\kern 1pt} 21} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 22} } \hfill &  \ldots  \hfill & {\alpha {\kern 1pt} _{2n} } \hfill  \\
   {\; \ldots } \hfill &  \ldots  \hfill &  \ldots  \hfill &  \ldots  \hfill  \\
   {\alpha _{{\kern 1pt} {\kern 1pt} n{\kern 1pt} {\kern 1pt} 1} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} n2} } \hfill &  \ldots  \hfill & {\alpha _{{\kern 1pt} n{\kern 1pt} n} } \hfill  \\
\end{array}\,} \right)\;\;\; = \;\;\;\left| {\;\,\begin{array}{*{20}c}
   {\alpha _{{\kern 1pt} {\kern 1pt} 11} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 12} } \hfill &  \ldots  \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 1n} } \hfill  \\
   {\alpha _{{\kern 1pt} {\kern 1pt} 21} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} 22} } \hfill &  \ldots  \hfill & {\alpha {\kern 1pt} _{2n} } \hfill  \\
    \ldots  \hfill &  \ldots  \hfill &  \ldots  \hfill &  \ldots  \hfill  \\
   {\alpha _{{\kern 1pt} {\kern 1pt} n{\kern 1pt} {\kern 1pt} 1} } \hfill & {\alpha _{{\kern 1pt} {\kern 1pt} n2} } \hfill &  \ldots  \hfill & {\alpha _{{\kern 1pt} n{\kern 1pt} n} } \hfill  \\
\end{array}\;} \right|
\].


Uwagi:
1°	Wyznacznik  jest  określony  tylko  dla  macierzy  kwadratowych  (m = n).
	Nie  istnieje  wyznacznik  macierzy  prostokątnej  niekwadratowej.
2°	Macierz  i  wyznacznik  macierzy  są  zupełnie  różnymi  obiektami  matematycznymi,
	co  powinno  znaleźć  odbicie  w  zapisie  (nawiasy dla macierzy, proste kreski dla wyznacznika).
3°	Z  definicji  nie  wynika  istnienie  funkcji  spełniającej  wymienione  postulaty  ani  jej  	jednoznaczność.  Definicja  nie  podaje  też  praktycznego  sposobu  wyliczania  wyznacznika.
	W  dalszym  ciągu  wykażemy,  że  istnieje  dokładnie  jedna  funkcja  spełniająca  postulaty  	definicji  oraz  wyprowadzimy  wzory  dla  efektywnego  obliczania  wyznaczników.
4°	Jeżeli   :math:`{\bf{A}},\;{\bf{B}}\;\, \in M_n (K),\;\;\;\lambda \;{\kern 1pt}  \in K`,
	to   :math:`\det \,({\bf{A}} + \;{\bf{B}})\;\, \ne \,\;\det \,{\bf{A}}\;\, + \,\;\det \,{\bf{B}}`,     :math:`\det \,(\lambda \,{\bf{A}})\;\, \ne \,\;\lambda \;\det \,{\bf{A}}{\rm{   }}(\,n > 1\,)`,
	tzn.  wyznacznik  nie  jest  funkcją  liniową.
	Natomiast,  dla  :math:`{\bf{A}}\;\, = \;\,(C_{{\kern 1pt} 1} ,\;C_{{\kern 1pt} 2} ,\; \ldots ,\;C_n )`  mamy  :math:`\lambda \;{\bf{A}}\;\, = \,\;(\,\lambda \,C_{{\kern 1pt} 1} ,\;\lambda \,C_{{\kern 1pt} 2} ,\; \ldots ,\;\lambda \,C_n \,)`,
	wobec  czego  :math:`\det \,(\lambda \,{\bf{A}})\;\, = \,\;\lambda ^n  \cdot \;\,\det \,{\bf{A}},{\rm{   }}n \in \user1{N}`.
Własności  funkcji  det,  wynikające  z  definicji  (przy założeniu, że funkcja taka istnieje).

I.)	:math:`C_j  = \;\,{\rm{\theta    }} \Rightarrow {\rm{   }}\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_n )\;\; = \;\;0`,   :math:`j\;\, = \,\;1,\;2,\; \ldots ,\;n`.
	(jeżeli jakaś kolumna macierzy składa się z samych zer, to wyznacznik znika).
	Dowód:   Oznaczmy   :math:`d\;\,:\; = \,\;\det \,(C_{{\kern 1pt} 1} ,C_{{\kern 1pt} 2} ,\; \ldots ,\;C_n )`.
	Jeżeli   :math:`C_j  = \;\,{\rm{\theta }}`,   to   :math:`C_j  = \;\,C_j  + \;{\kern 1pt} C_j \;\;\;\; \Rightarrow \;\;\;\;\;d\;\, = \,\;d\;\, + \,\;d\,,\;\;\;\;\;d\;\, = \,\;2\;d,\;\;\;\;\;d\;\, = \,\;0`.
	Wniosek:   :math:`\det \;{\bf{0}}\;\; = \;\;0`,   gdzie  :math:`{\bf{0}}`  jest  macierzą  zerową.

II.)	:math:`\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_k ,\; \ldots ,\;C_n )\;\; = \;\; - \;\,\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_k ,\; \ldots ,\;C_j ,\; \ldots ,\;C_n )\;,\;\;\;\;j < k\,,\;\;\;\;j,\;k\;\, = \,\;1,\;2,\; \ldots ,\;n\;.`
	(przestawienie dowolnych dwóch kolumn zmienia znak wyznacznika).
	Dowód.  Niech  najpierw  :math:`k = j + 1`  (przestawienie dwóch sąsiednich kolumn).
	                              $\begin{array}{l}
 j{\rm{          }}j + 1 \\ 
  \downarrow {\rm{          }} \downarrow  \\ 
 \end{array}$
	\[
\begin{array}{l}
 0\;\; = \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C + C',\;C + C',\; \ldots ,\;C_n )\;\; =  \\ 
 \;\;\;\, = \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C,\;C,\; \ldots ,\;C_n )\;\; + \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C,\;C',\; \ldots ,\;C_n )\;\; +  \\ 
 \;\;\;\, + \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C',\;C,\; \ldots ,\;C_n )\;\; + \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C',\;C',\; \ldots ,\;C_n )\;\; =  \\ 
 \;\;\;\, = \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C,\;C',\; \ldots ,\;C_n )\;\; + \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C',\;C,\; \ldots ,\;C_n )\,. \\ 
 \end{array}
\]
	\[
\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C,\;C',\; \ldots ,\;C_n )\;\; = \;\; - \;\,\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C',\;C,\; \ldots ,\;C_n )
\]
(przestawienie dwóch sąsiednich kolumn zmienia znak wyznacznika).
	Przestawienie  dowolnych  dwóch  kolumn  o  numerach  j  i  k  jest  złożeniem  nieparzystej  ilości  przestawień  kolumn  sąsiednich,  powoduje  więc  zmianę  znaku  wyznacznika.
	Wniosek:   Dla  dowolnej  permutacji  :math:`\sigma \;\, \in \,\;\Pi (n)`:
	                 :math:`\det \,(C_{\sigma (1)} ,\;C_{\sigma (2)} ,\; \ldots ,\;C_{\sigma (n)} )\;\; = \;\;{\mathop{\rm sgn}} \sigma \; \cdot \;\det \,(C_{{\kern 1pt} 1} ,C_{{\kern 1pt} 2} ,\; \ldots ,\;C_n )`,
	gdyż  przejście  od  naturalnego  układu  kolumn  do  układu  określonego  przez  permutację  :math:`\sigma `  wymaga  wykonania  parzystej  (gdy :math:`{\mathop{\rm sgn}} \sigma  =  + 1`)  bądź  nieparzystej  (gdy :math:`{\mathop{\rm sgn}} \sigma  =  - 1`)  ilości  transpozycji,  z  których  każda  zmienia  znak  wyznacznika.
Jakiekolwiek  przestawienie  kolumn  macierzy  zmienia  co  najwyżej  znak  wyznacznika.

III.)	 :math:`C_j  = C_k {\rm{   }} \Rightarrow {\rm{   }}\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_k ,\; \ldots ,\;C_n )\;\; = \;\;0\;,\;\;\;\;j < k\,,\;\;\;\;j,\;k\;\, = \,\;1,\;2,\; \ldots ,\;n\;.`
	 (gdy jakiekolwiek dwie kolumny macierzy są równe, to wyznacznik znika).
	Dowód:   Niech  :math:`d\;\,:\, = \,\;\det \,(C_{{\kern 1pt} 1} ,C_{{\kern 1pt} 2} ,\; \ldots ,\;C_n )`.  
                Wtedy   :math:`C_j  = \;{\kern 1pt} C_k {\rm{   }}(j \ne k){\rm{     }} \Rightarrow {\rm{     }}d\;\, = \,\; - \,d\;,\;\;\;\;\;2\,d\;\, = \,\;0\;,\;\;\;\;\;d\;\, = \,\;0\;.`
	Wniosek 1.   :math:`\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;\lambda \,C_j ,\; \ldots ,\;C_n )\;\; = \;\;0\;,\;\;\;\;\;j\;\, = \;\,1,\;2,\; \ldots ,\;n - 1\;.`
(jeżeli dwie kolumny macierzy są proporcjonalne, to wyznacznik znika).
	Wniosek 2.
	:math:`\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_k  + \lambda \,C_j ,\; \ldots ,\;C_n )\;\; = \;\;\det \,(C_{{\kern 1pt} 1} ,\; \ldots ,\;C_j ,\; \ldots ,\;C_k ,\; \ldots ,\;C_n )\;,\;\;\;\;j < k\;,\;\;\;\;j,\;k\;\, = \,\;1,\;2,\; \ldots ,\;n\;.`
	(dodanie do pewnej kolumny innej kolumny pomnożonej przez dowolny skalar nie zmienia wyznacznika).
IV.)  Jeżeli  :math:`{\bf{A}},\;{\bf{B}}\;\, \in \,\;M_n (K),{\rm{   }}{\bf{A}} = (\alpha _{ij} )_{n\, \times \,n} ,{\rm{   }}{\bf{B}} = (\beta _{ij} )_{n\, \times \,n} `,
	to   :math:`\det \,({\bf{AB}})\;\;\, = \,\;\;\det \,{\bf{A}}\;\;\, \cdot \sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \,\sigma } \; \cdot \;\beta _{\sigma (1),\,1} \;\beta _{\sigma (2),\,2} \; \ldots \;\beta _{\sigma (n),\,n} `.
	Dowód.   Niech  :math:`{\bf{A}}\;\, = \,\;(C_{{\kern 1pt} 1} ,\;C_{{\kern 1pt} 2} ,\; \ldots ,\;C_n )`,   :math:`{\bf{AB}}\;\, = \,\;(H_{{\kern 1pt} 1} ,\;H_{{\kern 1pt} 2} ,\; \ldots ,\;H_n )`     (zapis kolumnowy).   Wtedy
	                 $H_j \;\; = \;\;\left( {\begin{array}{*{20}c}
   {\sum\limits_{s\, = \,1}^n {\alpha _{{\kern 1pt} 1s} \,\beta _{sj} } }  \\
   {\sum\limits_{s\, = \,1}^n {\alpha _{{\kern 1pt} 2s} \,\beta _{sj} } }  \\
    \ldots   \\
   {\sum\limits_{s\, = \,1}^n {\alpha _{{\kern 1pt} ns} \,\beta _{sj} } }  \\
\end{array}} \right)\;\;\, = \,\;\;\sum\limits_{s\, = \,1}^n {\;\left( {\begin{array}{*{20}c}
   {\alpha _{{\kern 1pt} 1s} }  \\
   {\alpha _{{\kern 1pt} 2s} }  \\
    \ldots   \\
   {\alpha _{ns} }  \\
\end{array}} \right)} \;\beta _{sj} \;\; = \;\;\sum\limits_{s\, = \,1}^n {\beta _{sj} \;C_s } :math:`,     `j\;\, = \;\,1,\;2,\; \ldots ,\;n$.
	Ogólna  własność  mnożenia  macierzowego:  j-ta  kolumna  macierzy  AB  jest  kombinacją  liniową  kolumn  macierzy  A,  o  współczynnikach  z  j-tej  kolumny  macierzy  B  (:math:`j\;\, = \;\,1,\;2,\; \ldots ,\;n`).
Wobec  tego
	\[
\begin{array}{l}
 \det \;({\bf{AB}})\;\;\, = \,\;\;\det \,(H_{{\kern 1pt} 1} ,\;H_{{\kern 1pt} 2} ,\; \ldots ,\;H_n )\;\;\, = \;\;\,\det \,\;\left( {\sum\limits_{s_1 \, = \,1}^n {\beta _{s_1 ,\,1} \,C_{s_1 } ,\;\sum\limits_{s_2 \, = \,1}^n {\beta _{s_2 ,\,2} } } \,C_{s_2 } ,\; \ldots ,\;\sum\limits_{s_n \, = \,1}^n {\beta _{s_n ,\,n} \,C_{s_n } } } \right)\;\;\, =  \\ 
  &  = \;\;\sum\limits_{s_1 \, = \,1}^n {\sum\limits_{s_2 \, = \,1}^n { \ldots \sum\limits_{s_n \, = \,1}^n \; } } \beta _{s_1 ,\,1} \,\beta _{s_2 ,\,2} \; \ldots \;\beta _{s_n ,\,n} \;\det \;\left( {C_{s_1 } ,\;C_{s_2 } ,\; \ldots ,\;C_{s_n } } \right) \\ 
 \end{array}
\]
	Różne  od  zera  mogą  być  tylko  te  składniki,  w  których  kolumny  \[
C_{s_1 } ,\;C_{s_2 } ,\; \ldots ,\;C_{s_n } 
\]  mają  różne  wskaźniki,  czyli  te,  dla  których  układ  wartości  wskaźników  :math:`s_{{\kern 1pt} 1} ,\;s_{{\kern 1pt} 2} ,\; \ldots ,\;s_{{\kern 1pt} n} `  jest  permutacją  zbioru  :math:`\{ \,1,\;2,\; \ldots ,\;n\,\} `. Sumowanie  przebiega  więc  po  permutacjach  zbioru  :math:`\{ \,1,\;2,\; \ldots ,\;n\,\} `:
	$\begin{array}{l}
 \det \;({\bf{AB}})\;\;\, = \,\;\;\sum\limits_{\sigma \, \in \,\Pi (n)} {\beta _{\sigma (1),\,1} \;} \beta _{\sigma (2),\,2} \; \ldots \;\beta _{\sigma (n),\,n} \;\det \,\left( {C_{\sigma (1)} ,\;C_{\sigma (2)} ,\; \ldots ,\;C_{\sigma (n)} } \right)\;\;\, =  \\ 
  &  = \,\;\;\det \,{\bf{A}}\;\;\, \cdot \sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \sigma \;\, \cdot \,\;\beta _{\sigma (1),\,1} \;} \beta _{\sigma (2),\,2} \; \ldots \;\beta _{\sigma (n),\,n} \;. \\ 
 \end{array}$
	Kładąc  :math:`{\bf{A}} = {\bf{I}}`  otrzymujemy
	Wniosek:   Jeżeli  funkcja  det,  określona  przez  postulaty  1. –  4.   istnieje,  to
	                      :math:`\det \,{\bf{B}}\;\;\, = \sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \,\sigma } \;\, \cdot \,\;\beta _{\sigma (1),\,1} \;\beta _{\sigma (2),\,2} \; \ldots \beta _{\sigma (n),\,n} `.
Można  sprawdzić  (patrz np.: B. Gleichgewicht, Algebra),  że  funkcja  określona  powyższym  wzorem  spełnia  wymienione  postulaty,  co  dowodzi  istnienia  funkcji  det.
Tw.	Istnieje  dokładnie  jedna  funkcja  :math:`\det :\;\,M_n (K)\; \to \;K`,  spełniająca  warunki  1. –  4.
	Mianowicie,  dla  macierzy  :math:`{\bf{A}}\;\, = \,\;(\alpha _{ij} )_{n\, \times \,n} `:
		        :math:`\det \,{\bf{A}}\;\;\, = \,\;\;\sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \,\sigma } \;\, \cdot \,\;\alpha _{\sigma (1),\,1} \;\alpha _{\sigma (2),\,2} \; \ldots \;\alpha _{\sigma (n),\,n} `                 (rozwinięcie  permutacyjne).
Z  własności  IV  wynika  ponadto
Tw.  (Cauchy):   Jeżeli  :math:`{\bf{A}},\;{\bf{B}}\;\, \in \,\;M_n (K)`,   to   :math:`\det \;({\bf{AB}})\;\;\, = \,\;\;\det \,{\bf{A}}\;\, \cdot \,\;\det \,{\bf{B}}`.
Transpozycja  macierzy.
Def.	Niech  :math:`{\bf{A}} = (\alpha _{ij} )_{m\, \times \,n} `.  Macierzą  transponowaną  względem  A  jest  macierz  :math:`{\bf{A}}^{\rm{T}}  = (\alpha _{ij}^{\rm{T}} )_{n\, \times \,m} `, 
	gdzie
	                               :math:`\alpha _{ij}^{\rm{T}} \;\,:\, = \,\;\alpha _{ji} \;,\;\;\;\;i\;\, = \,\;1,\;2,\; \ldots ,\;n;{\rm{   }}j\;\, = \,\;1,\;2,\; \ldots ,\;m\;.`
np.             $\left( {\begin{array}{*{20}c}
   \hfill 3 & \hfill 1 & \hfill { - 2} & \hfill 0 \\
   \hfill { - 1} & \hfill 5 & \hfill 2 & \hfill 4 \\
\end{array}\;} \right)^{\,{\rm{T}}} \; = \;\;\;\left( {\begin{array}{*{20}c}
   \hfill 3 & \hfill { - 1} \\
   \hfill 1 & \hfill 5 \\
   \hfill { - 2} & \hfill 2 \\
   \hfill 0 & \hfill 4 \\
\end{array}\;} \right)$     –     wiersze  przechodzą  w  kolumny  i  vice  versa;
	        $\left( {\;\begin{array}{*{20}c}
   \hfill 2 & \hfill 1 & \hfill { - 1} \\
   \hfill 0 & \hfill 3 & \hfill { - 2} \\
   \hfill 5 & \hfill { - 3} & \hfill 4 \\
\end{array}\;} \right)^{\,{\rm{T}}} \; = \;\;\;\left( {\begin{array}{*{20}c}
   \hfill 2 & \hfill 0 & \hfill 5 \\
   \hfill 1 & \hfill 3 & \hfill { - 3} \\
   \hfill { - 1} & \hfill { - 2} & \hfill 4 \\
\end{array}\;\,} \right)$     –     odbicie  względem  głównej  przekątnej.
Tw.	Jeżeli  :math:`{\bf{A}} \in M_n (K)`,  to  :math:`\det \,{\bf{A}}^{\rm{T}}  = \;\;\det \,{\bf{A}}`.
Dowód:   Niech  :math:`{\bf{A}} = (\alpha _{ij} )_{n\, \times \,n} `.  Wtedy
                \[
\begin{array}{l}
 \det \,{\bf{A}}^{\rm{T}} \;\, = \;\;\,\sum\limits_{\rho \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \rho \;\, \cdot \,\;\alpha _{\rho (1),\,1}^{\rm{T}} \;\alpha _{\rho (2),\,2}^{\rm{T}} \; \ldots \;\alpha _{\rho (n),\,n}^{\rm{T}} } \;\;\, =  \\ 
  &  = \;\;\,\sum\limits_{\rho \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \rho \;\, \cdot \,\;\alpha _{\,1,\,\rho (1)} \;\alpha _{\,2,\,\rho (2)} \; \ldots \alpha _{\,n,\,\rho (n)} } \;\;\, =  \\ 
  &  = \;\;\,\sum\limits_{\rho \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \rho \;\, \cdot \,\;\alpha _{\,\rho ^{ - 1} [\rho (1)],\,\rho (1)} \;\alpha _{\,\rho ^{ - 1} [\rho (2)],\,\rho (2)} \; \ldots \alpha _{\,\rho ^{ - 1} [\rho (n)],\,\rho (n)} } \;\;\, =  \\ 
 (1) &  = \;\;\,\sum\limits_{\rho \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \rho \;\, \cdot \,\;\alpha _{\,\rho ^{ - 1} (1),\,1} \;\alpha _{\,\rho ^{ - 1} (2),\,2} \; \ldots \alpha _{\,\rho ^{ - 1} (n),\,n} } \;\;\, =  \\ 
 (2) &  = \;\;\,\sum\limits_{\rho \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \rho ^{ - 1} \;\, \cdot \,\;\alpha _{\,\rho ^{ - 1} (1),\,1} \;\alpha _{\,\rho ^{ - 1} (2),\,2} \; \ldots \alpha _{\,\rho ^{ - 1} (n),\,n} } \;\;\, =  \\ 
 (3) &  = \;\;\,\sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \sigma \;\, \cdot \,\;\alpha _{\,\sigma (1),\,1} \;\alpha _{\,\sigma (2),\,2} \; \ldots \alpha _{\,\sigma (n),\,n} } \;\;\, = \;\;\,\det \,{\bf{A}}\,. \\ 
 \end{array}
\]
Uzasadnienie  przekształceń:
(1):	albowiem  w  ciągu   :math:`\rho (1),\;\;\;\rho (2),\;\;\; \ldots ,\;\;\;\rho (n)`
 	każda   z   liczb            1,        2,      ,      n    
	występuje  dokładnie  raz,  a  czynniki  w  iloczynie  są  przemienne;
(2):	:math:`{\mathop{\rm sgn}} \rho ^{ - 1}  = \;\;{\mathop{\rm sgn}} \rho `,  bo  jeżeli  :math:`\rho \;\, = \;\,\tau _1 \;\tau _2 \; \ldots \;\tau _{k - 1} \;\tau _k `  (rozkład na iloczyn transpozycji),
	                                    to      :math:`\rho ^{ - 1}  = \;\;\tau _k^{ - 1} \;\tau _{k - 1}^{ - 1}  \ldots \;\tau _2^{ - 1} \;\tau _1^{ - 1}  = \;\,\tau _k \;\tau _{k - 1} \; \ldots \;\tau _2 \;\tau _1 `;
(3):	:math:`\{ \;\rho ^{ - 1} :\;\,\rho \;{\kern 1pt}  \in \Pi (n)\;\} \;\;\, = \,\;\;\Pi (n)\,\;\; = \,\;\;\{ \;\sigma :\;\,\sigma \;{\kern 1pt}  \in \Pi (n)\;\} `.
Wniosek:  Każde  twierdzenie  dotyczące  wyznaczników  pozostaje  słuszne,  jeżeli  słowa  "kolumna"  zamienić  na  "wiersz"  i  odwrotnie.  W  szczególności,  samą  definicję  wyznacznika  można  podać  
w  terminach  wierszy,  dochodząc  do  wzoru
	                          :math:`\det \,{\bf{A}}\;\;\, = \sum\limits_{\sigma \, \in \,\Pi (n)} {{\mathop{\rm sgn}} \sigma \;\, \cdot \,\;\alpha _{{\kern 1pt} 1,\,\sigma (1)} \;\alpha _{{\kern 1pt} 2,\,\sigma (2)} \; \ldots \;\alpha _{{\kern 1pt} n,\,\sigma (n)} } `.
