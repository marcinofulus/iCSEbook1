09. Liniowa zależność argumentów i obrazów
==========================================

Niech  :math:`F \in {\rm{Hom}}(V,W)`,  gdzie  :math:`V`  i  :math:`W`   –   przestrzenie nad ciałem  :math:`\boldsymbol{K}`,
oraz  niech  :math:`v_1 ,v_2 , \ldots ,v_r  \in V`.  Zbadać prawdziwość następujących stwierdzeń:

1.) :math:`v_1 ,v_2 , \ldots ,v_r \quad \text{- l.n.} \quad \Rightarrow \quad Fv_1 ,Fv_2 , \ldots ,Fv_r \quad \text{- l.n.}`

2.) :math:`v_1 ,v_2 , \ldots ,v_r \quad \text{- l.z.} \quad \Rightarrow \quad Fv_1 ,Fv_2 , \ldots ,Fv_r \quad \text{- l.z.}`

3.) :math:`Fv_1 ,Fv_2 , \ldots ,Fv_r \quad \text{- l.n.} \quad \Rightarrow \quad v_1 ,v_2 , \ldots ,v_r \quad \text{- l.n.}`

4.) :math:`Fv_1 ,Fv_2 , \ldots ,Fv_r \quad \text{- l.z.} \quad \Rightarrow \quad v_1 ,v_2 , \ldots ,v_r \quad \text{- l.z.}`

___________________________________________________________________________________


1.)  W  ogólności  twierdzenie  nie  jest  prawdziwe.  Zachodzi  mianowicie:

**Tw.:**  Odwzorowanie  :math:`F \in {\mathop{\rm Hom}\nolimits} (V,W)`  zachowuje  liniową  niezależność  dowolnego  układu  wektorów  p.w.  :math:`V`  wtedy  i  tylko  wtedy,  gdy  :math:`F`  jest  injekcją  (czyli odwzorowaniem różnowartościowym).

**Dowód.**   Wiadomo,  że:   :math:`F`   jest  injekcją   :math:`\quad \Leftrightarrow  \quad {\mathop{\rm def}\nolimits} F = 0`,   tzn.  :math:`{\mathop{\rm Ker}\nolimits} F = \{ \theta \}`.

:math:`\Rightarrow :`	Jeżeli  :math:`F`  nie  jest  injekcją,  to  :math:`{\mathop{\rm def}\nolimits} F = \dim {\mathop{\rm Ker}\nolimits} F \equiv k > 0`.
	Niech  :math:`\cal{B} = \left( {b_i } \right)_1^k`   będzie  bazą  :math:`{\mathop{\rm Ker}\nolimits} F`.  Wtedy
	:math:`(b_{ 1} ,b_{ 2} , \ldots ,b_k )`   –   l.n.,     podczas  gdy     :math:`(Fb_{ 1} ,Fb_{ 2} , \ldots ,Fb_{ k} ) = (\theta ',\theta ', \ldots ,\theta ')`   –   l.z.

:math:`\Leftarrow :`	Zakładamy,  że  :math:`F`  jest  injekcją.
	Niech  układ  :math:`(v_1 ,v_2 , \ldots ,v_r )`  będzie  liniowo  niezależny.  Wtedy
	jeżeli  :math:`\alpha _{ 1} Fv_1  + \alpha _{ 2} Fv_2  +  \ldots  + \alpha _r Fv_r  = \theta '`,
	to

.. math::

   \begin{array}{l}
   F\left( {\alpha _{ 1} v_{ 1}  + \alpha _{ 2} v_2  +  \ldots  + \alpha _r v_r } \right) = \theta ' \\
   \alpha _{ 1} v_{ 1}  + \alpha _{ 2} v_2  +  \ldots  + \alpha _r v_r  \in {\mathop{\rm Ker}\nolimits} F, \text{ ale } {\mathop{\rm Ker}\nolimits} F = \{ \theta \} ,  \text{ więc } \\
   \alpha _{ 1} v_{ 1}  + \alpha _{ 2} v_2  +  \ldots  + \alpha _r v_r  = \theta \\
   \alpha _{ 1}  = \alpha _{ 2}  =  \ldots  = \alpha _r  = 0
   \end{array}


\ 
	czyli  wektory   :math:`Fv_1 ,Fv_2 , \ldots ,Fv_r`   są  liniowo  niezależne.

2.)  Twierdzenie  jest  prawdziwe  dla  dowolnego  odwzorowania  liniowego  :math:`F`.
Rzeczywiście,  jeżeli  wektory  :math:`v_1 ,v_2 , \ldots ,v_r`   są  liniowo  zależne,  to  istnieje  nietrywialna  kombinacja  liniowa  tych  wektorów  równa  wektorowi  zerowemu:

.. math::

   \alpha _{ 1} v_{ 1}  + \alpha _{ 2} v_2  +  \ldots  + \alpha _r v_r  = \theta \quad \wedge \quad  \mathop  \vee \limits_{1 \le i \le r} \alpha _i  \ne 0.


Przyrównując  obrazy  obu  stron  równości  otrzymujemy

.. math::

   F(\alpha _{ 1} v_{ 1}  + \alpha _{ 2} v_2  +  \ldots  + \alpha _r v_r ) = F(\theta ) \\
   \alpha _{ 1} Fv_1  + \alpha _{ 2} Fv_2  +  \ldots  + \alpha _r Fv_r  = \theta '


czyli  ta  sama  nietrywialna  kombinacja  liniowa  obrazów  wektorów  :math:`v_1 ,v_2 , \ldots ,v_r`   równa  się  wektorowi  zerowemu  :math:`\theta '`.

3.)  Twierdzenie  ogólnie  prawdziwe,  równoważne  (przez  kontrapozycję)  twierdzeniu  2.)

4.)  Twierdzenie  równoważne,  przez  kontrapozycję,  twierdzeniu  1.)


Wnioski.

Niech  będzie  dana  *n*-wymiarowa  p.w.  :math:`V(\boldsymbol{K})`  z  bazą  :math:`\cal{B} = \left( {v_i } \right)_{ 1}^n`.  Odwzorowanie

.. math::

   I_{\cal{B}}: \quad V \ni  x = \sum\limits_{i = 1}^n {\alpha _{ i} v_i } \quad \to \quad I_{\cal{B}}(x): = \left( {\begin{array}{*{20}c}
   {\alpha _{ 1} }  \\
   {\alpha _{ 2} }  \\
    \ldots   \\
   {\alpha _{ n} }  \\
   \end{array}} \right) \in \boldsymbol{K}^n


jest  izomorfizmem  przestrzeni  :math:`V`  na  przestrzeń  :math:`\boldsymbol{K}^n`,  a  więc  injekcją.
:math:`I_{\cal{B}}`  zachowuje  zatem  liniową  niezależność  wektorów.

Rozważmy  układ  wektorów  :math:`(x_{ 1} ,x_2 , \ldots ,x_r )`,  przy  czym  niech

.. math::

   x_j  = \sum\limits_{i = 1}^n {\alpha _{ ij} v_i } , \quad \text{tzn.} \quad 
   I_B (x_j ) = \left( {\begin{array}{*{20}c}
   {\alpha _{ 1j} }  \\
   {\alpha _{ 2j} }  \\
    \ldots   \\
   {\alpha _{ nj} }  \\
   \end{array}} \right),  \quad  j = 1,2, \ldots ,r.


Z  wymienionej  własności  izomorfizmu  wynika,  że

.. math::

   (x_{ 1} ,x_2 , \ldots ,x_r ) \text{ – l.n.} \quad  \Leftrightarrow \quad 
   \left( {\left( {\begin{array}{*{20}c}
   {\alpha _{ 11} }  \\
   {\alpha _{ 21} }  \\
    \ldots   \\
   {\alpha _{ n1} }  \\
   \end{array}} \right),\left( {\begin{array}{*{20}c}
   {\alpha _{ 12} }  \\
   {\alpha _{ 22} }  \\
    \ldots   \\
   {\alpha _{ n2} }  \\
   \end{array}} \right), \ldots ,\left( {\begin{array}{*{20}c}
   {\alpha _{ 1r} }  \\
   {\alpha _{ 2r} }  \\
    \ldots   \\
   {\alpha _{ nr} }  \\
   \end{array}} \right)} \right)  \text{ – l.n.}


**Wniosek 1.**

W  *n*-wymiarowej  p.w. :math:`V(\boldsymbol{K})`  wektory  są  liniowo  niezależne  wtedy  i  tylko  wtedy,  gdy  kolumny  ich  współrzędnych  (jako wektory p.w. :math:`\boldsymbol{K}^n`)  w  dowolnej  bazie  przestrzeni  :math:`V`  są  liniowo  niezależne.


Jeżeli  :math:`r = n`,  kolumny  współrzędnych  tworzą  macierz  kwadratową.  Element  :math:`\alpha _{ij}`  tej  macierzy  jest  *i*-tą  współrzędną  *j*-tego  wektora  układu  :math:`(x_j )_{ 1}^n`.  Wtedy,  z  własności  wyznaczników:

.. math::

   (x_1 ,x_2 , \ldots ,x_n ) \text{ – l.n.} \quad \Leftrightarrow \quad \det (\alpha _{ij} ) \ne 0.


**Wniosek 2.**

W  *n*-wymiarowej  p.w.  :math:`V(\boldsymbol{K})`  układ  *n*  wektorów  jest  liniowo  niezależny  wtedy  i  tylko  wtedy, gdy  wyznacznik  macierzy  złożonej  ze  współrzędnych  tych  wektorów  jest  różny  od  zera.
W  *n*-wymiarowej  przestrzeni  wektorowej  każdy  liniowo  niezależny  układ  n  wektorów  jest  bazą.
Wniosek  można  więc  sformułować  następująco:
W  *n*-wymiarowej  p.w. :math:`V(\boldsymbol{K})`  układ  *n*  wektorów  jest  bazą  wtedy  i  tylko  wtedy,  gdy  wyznacznik  macierzy  złożonej  ze  współrzędnych  tych  wektorów  w  dowolnej  bazie  p.w.  :math:`V` jest  różny  od  zera.

