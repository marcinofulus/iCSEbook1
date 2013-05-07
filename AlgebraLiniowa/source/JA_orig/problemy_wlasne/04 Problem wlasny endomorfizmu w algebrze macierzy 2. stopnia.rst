04. Problem własny endomorfizmu w algebrze macierzy 2. stopnia
==============================================================

Niech  :math:`V = M_2 (\boldsymbol{R})`.  Określamy odwzorowanie  :math:`F_{B} \in {\rm{End}}(V)`  równaniem

.. math::

   F_{B} ({\boldsymbol{A}}) = {\boldsymbol{B}}{\boldsymbol{A}}, \quad {\boldsymbol{B}} = \left( {\begin{array}{*{20}c}
     1 &  - 1 \\
    - 2 &  2 \\
   \end{array}} \right), \quad {\boldsymbol{A}} \in V.


Wyznaczyć  :math:`{\rm{Ker}}F_{B}`  oraz  :math:`{\rm{Im}}F_{B}`.  Rozwiązać problem własny  endomorfizmu  :math:`F_{B}`.

___________________________________________________________________________________


0.) Jądro  i  obraz  endomorfizmu :math:`F_B`.

Niech

.. math::

   {\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
   {\alpha _{ 1} } & {\alpha _{ 2} }  \\
   {\alpha _{ 3} } & {\alpha _{ 4} }  \\
   \end{array}} \right).


Wtedy

.. math::

   {\boldsymbol{B}}{\boldsymbol{A}} = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   {\alpha _{ 1} } & {\alpha _{ 2} }  \\
   {\alpha _{ 3} } & {\alpha _{ 4} }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {\alpha _{ 1}  -  \alpha _{ 3} } & {\alpha _{ 2}  -  \alpha _{ 4} }  \\
   { - 2(\alpha _{ 1}  -  \alpha _{ 3} )} & { - 2(\alpha _{ 2}  -  \alpha _{ 4} )}  \\
   \end{array}} \right).


Stąd

.. math::

   {\boldsymbol{B}}{\boldsymbol{A}} = {\boldsymbol{0}} \quad \Leftrightarrow \quad \left\{ \begin{array}{l}
 \alpha _{ 1}  =  \alpha _{ 3}  \\ 
 \alpha _{ 2}  =  \alpha _{ 4}  \\ 
 \end{array} \right.,


wobec czego

.. math::

   {\mathop{\rm Ker}\nolimits} F_B : = \{ {\boldsymbol{A}} \in M_2 (\boldsymbol{R}):{\boldsymbol{B}} {\boldsymbol{A}} = {\boldsymbol{0}}\}  = \left\{ {\left( {\begin{array}{*{20}c}
   \alpha  & \beta   \\
   \alpha  & \beta   \\
   \end{array}} \right):\alpha ,\beta  \in \boldsymbol{R}} \right\}.


Ponieważ  dla  każdej  macierzy  z  jądra  zachodzi  rozkład

.. math::

   \left( {\begin{array}{*{20}c}
   \alpha  & \beta   \\
   \alpha  & \beta   \\
   \end{array}} \right) = \alpha \left( {\begin{array}{*{20}c}
   1 & 0  \\
   1 & 0  \\
   \end{array}} \right) + \beta \left( {\begin{array}{*{20}c}
   0 & 1  \\
   0 & 1  \\
   \end{array}} \right),


przy czym macierze

.. math::

   \left( {\begin{array}{*{20}c}
   1 & 0  \\
   1 & 0  \\
   \end{array}} \right) \quad \text{i} \quad \left( {\begin{array}{*{20}c}
   0 & 1  \\
   0 & 1  \\
   \end{array}} \right)


są  liniowo niezależne,

to  jądro endomorfizmu :math:`F_B`  jest  podprzestrzenią  2-wymiarową:

.. math::

   {\mathop{\rm def}\nolimits} F_B  \equiv \dim {\mathop{\rm Ker}\nolimits} F_B  = 2.


Natomiast

.. math::

   \begin{array}{l}
   {\mathop{\rm Im}\nolimits} F_B : = \{ {\boldsymbol{B}} {\boldsymbol{A}}:{\boldsymbol{A}} \in M_2 (\boldsymbol{R})\} & =  \left\{ {\left( {\begin{array}{*{20}c}
   {\alpha _{ 1}  -  \alpha _{ 3} } & {\alpha _{ 2}  -  \alpha _{ 4} }  \\
   { - 2(\alpha _{ 1}  -  \alpha _3 )} & { - 2(\alpha _{ 2}  -  \alpha _{ 4} )}  \\
   \end{array}} \right):\alpha _{ 1} ,\alpha _{ 2} ,\alpha _{ 3} ,\alpha _{ 4}  \in \boldsymbol{R}} \right\} =  \\ 
    &  = \left\{ {\left( {\begin{array}{*{20}c}
   \alpha  & \beta   \\
   { - 2\alpha } & { - 2\beta }  \\
   \end{array}} \right):\alpha ,\beta  \in \boldsymbol{R}} \right\}. \\ 
   \end{array}


Każdą  macierz  z  obrazu  endomorfizmu  można  przedstawić  w  postaci kombinacji liniowej
dwóch  liniowo niezależnych  macierzy:

.. math::

   \left( {\begin{array}{*{20}c}
   \alpha  & \beta   \\
   { - 2\alpha } & { - 2\beta }  \\
   \end{array}} \right) = \alpha \left( {\begin{array}{*{20}c}
    1 &  0 \\
    { - 2} &  0 \\
   \end{array}} \right) + \beta \left( {\begin{array}{*{20}c}
    0 &  1 \\
    0 &  { - 2} \\
   \end{array}} \right),


wobec czego

.. math::

   {\mathop{\rm rz}\nolimits} F_B  \equiv \dim {\mathop{\rm Im}\nolimits} F_B  = 2.


W  ten  sposób  spełnione  jest  ogólne  twierdzenie

.. math::

   {\mathop{\rm rz}\nolimits} F_B  +  {\mathop{\rm def}\nolimits} F_B  = \dim V \quad ( = 4).


1.)  Macierz  endomorfizmu  :math:`F_B`   w  bazie  :math:`\cal{B} = ({\boldsymbol{e}}_1 ,{\boldsymbol{e}}_2 ,{\boldsymbol{e}}_3 ,{\boldsymbol{e}}_4 )`,  gdzie

.. math::

   {\boldsymbol{e}}_1  = \left( {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 0  \\
   \end{array}} \right),\quad {\boldsymbol{e}}_2  = \left( {\begin{array}{*{20}c}
   0 & 1  \\
   0 & 0  \\
   \end{array}} \right),\quad {\boldsymbol{e}}_3  = \left( {\begin{array}{*{20}c}
   0 & 0  \\
   1 & 0  \\
   \end{array}} \right),\quad {\boldsymbol{e}}_4  = \left( {\begin{array}{*{20}c}
   0 & 0  \\
   0 & 1  \\
   \end{array}} \right). \\

   F_B ({\boldsymbol{e}}_1 ) = {\boldsymbol{B}}{\boldsymbol{e}}_1  = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 &  0 \\
    { - 2} &  0 \\
   \end{array}} \right) = 1 \cdot {\boldsymbol{e}}_1  + 0 \cdot {\boldsymbol{e}}_2  + ( - 2) \cdot {\boldsymbol{e}}_3  + 0 \cdot {\boldsymbol{e}}_4 , \\
   F_B ({\boldsymbol{e}}_2 ) = {\boldsymbol{B}}{\boldsymbol{e}}_2  = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   0 & 1  \\
   0 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    0 &  1 \\
    0 &  { - 2} \\
   \end{array}} \right) = 0 \cdot {\boldsymbol{e}}_1  + 1 \cdot {\boldsymbol{e}}_2  + 0 \cdot {\boldsymbol{e}}_3  + ( - 2) \cdot {\boldsymbol{e}}_4 , \\
   F_B ({\boldsymbol{e}}_3 ) = {\boldsymbol{B}}{\boldsymbol{e}}_3  = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   0 & 0  \\
   1 & 0  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    { - 1} &  0 \\
    2 &  0 \\
   \end{array}} \right) = ( - 1) \cdot {\boldsymbol{e}}_1  + 0 \cdot {\boldsymbol{e}}_2  + 2 \cdot {\boldsymbol{e}}_3  + 0 \cdot {\boldsymbol{e}}_4 , \\
   F_B ({\boldsymbol{e}}_4 ) = {\boldsymbol{B}}{\boldsymbol{e}}_4  = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   0 & 0  \\
   0 & 1  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    0 &  { - 1} \\
    0 &  2 \\
   \end{array}} \right) = 0 \cdot {\boldsymbol{e}}_1  + ( - 1) \cdot {\boldsymbol{e}}_2  + 0 \cdot {\boldsymbol{e}}_3  + 2 \cdot {\boldsymbol{e}}_4 . \\

   M_{\cal{B}} (F_B ) = \left( {\begin{array}{*{20}c}
    1 &  0 &  { - 1} &  0 \\
    0 &  1 &  0 &  { - 1} \\
    { - 2} &  0 &  2 &  0 \\
    0 &  { - 2} &  0 &  2 \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
    1 &  { - 1} \\
    { - 2} &  2 \\
   \end{array}} \right) \otimes \left( {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 1  \\
   \end{array}} \right) = {\boldsymbol{B}} \otimes {\boldsymbol{I}}_2 .


2.)  Równanie  charakterystyczne  i  wartości  własne.

.. math::

   \det \left( {\begin{array}{*{20}c}
   {1 - \lambda } & 0 & { - 1} & 0  \\
   0 & {1 - \lambda } & 0 & { - 1}  \\
   { - 2} & 0 & {2 - \lambda } & 0  \\
   0 & { - 2} & 0 & {2 - \lambda }  \\
   \end{array} } \right) = 0.


Wyliczenie wyznacznika charakterystycznego:

.. math::

   \begin{array}{l}
   \left| {\begin{array}{*{20}c}
   {1 - \lambda } & 0 & { - 1} & 0  \\
   0 & {1 - \lambda } & 0 & { - 1}  \\
   { - 2} & 0 & {2 - \lambda } & 0  \\
   0 & { - 2} & 0 & {2 - \lambda }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   { - \lambda } & 0 & { - 1} & 0  \\
   0 & { - \lambda } & 0 & { - 1}  \\
   { - \lambda } & 0 & {2 - \lambda } & 0  \\
   0 & { - \lambda } & 0 & {2 - \lambda }  \\
   \end{array}} \right| = \lambda ^{ 2} \left| {\begin{array}{*{20}c}
   1 & 0 & { - 1} & 0  \\
   0 & 1 & 0 & { - 1}  \\
   1 & 0 & {2 - \lambda } & 0  \\
   0 & 1 & 0 & {2 - \lambda }  \\
   \end{array}} \right| =  \\ 
   C_1  \leftarrow C_1  + C_3 , C_2  \leftarrow C_2  + C_4 \quad \quad \quad 
   \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad 
   C_1  \leftarrow C_1  + C_3 , C_2  \leftarrow C_2  + C_4  \\ 
   \\ 
   = \lambda ^{ 2} \left| {\begin{array}{*{20}c}
   0 & 0 & { - 1} & 0  \\
   0 & 0 & 0 & { - 1}  \\
   {3 - \lambda } & 0 & {2 - \lambda } & 0  \\
   0 & {3 - \lambda } & 0 & {2 - \lambda }  \\
   \end{array}} \right| = \lambda ^{ 2} (3 - \lambda )^{ 2} \left| {\begin{array}{*{20}c}
   0 & 0 & { - 1} & 0  \\
   0 & 0 & 0 & { - 1}  \\
   1 & 0 & {2 - \lambda } & 0  \\
   0 & 1 & 0 & {2 - \lambda }  \\
   \end{array}} \right| = \lambda ^{ 2} (\lambda  - 3)^{ 2} , \\ 
   \end{array}


bo

.. math::

   \left| {\begin{array}{*{20}c}
   0 & 0 & { - 1} & 0  \\
   0 & 0 & 0 & { - 1}  \\
   1 & 0 & {2 - \lambda } & 0  \\
   0 & 1 & 0 & {2 - \lambda }  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   0 & { - 1} & 0  \\
   0 & 0 & { - 1}  \\
   1 & 0 & {2 - \lambda }  \\
   \end{array}} \right| = 1.


Inny sposób wyliczenia wyznacznika charakterystycznego.

.. math::
   :label: PW04.1

   \left( {\begin{array}{*{20}c}
   {1 - \lambda } & 0 & { - 1} & 0  \\
   0 & {1 - \lambda } & 0 & { - 1}  \\
   { - 2} & 0 & {2 - \lambda } & 0  \\
   0 & { - 2} & 0 & {2 - \lambda }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   {1 - \lambda } & { - 1}  \\
   { - 2} & {2 - \lambda }  \\
   \end{array}} \right) \otimes \left( {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 1  \\
   \end{array}} \right).


Ogólnie,  dla  :math:`{\boldsymbol{A}} \in M_m (\boldsymbol{K}), \quad {\boldsymbol{B}} \in M_n (\boldsymbol{K}): \quad \det ({\boldsymbol{A}} \otimes {\boldsymbol{B}}) = (\det {\boldsymbol{A}})^n  \cdot (\det {\boldsymbol{B}})^m`.

Tutaj:

.. math::

   \left| {\begin{array}{*{20}c}
   {1 - \lambda } & 0 & { - 1} & 0  \\
   0 & {1 - \lambda } & 0 & { - 1}  \\
   { - 2} & 0 & {2 - \lambda } & 0  \\
   0 & { - 2} & 0 & {2 - \lambda }  \\
   \end{array} } \right| = \left| {\begin{array}{*{20}c}
   {1 - \lambda } & { - 1}  \\
   { - 2} & {2 - \lambda }  \\
   \end{array}} \right|^{2}  \cdot \left| {\begin{array}{*{20}c}
   1 & 0  \\
   0 & 1  \\
   \end{array}} \right|^{2}  = \left| {\begin{array}{*{20}c}
   {1 - \lambda } & { - 1}  \\
   { - 2} & {2 - \lambda }  \\
   \end{array}} \right|^{2}  = \lambda ^2 (\lambda  - 3)^2 ,


bo

.. math::

   \left| {\begin{array}{*{20}c}
   {1 - \lambda } & { - 1}  \\
   { - 2} & {2 - \lambda }  \\
   \end{array}} \right| = (1 - \lambda )(2 - \lambda ) - 2 = 2 -  3\lambda  + \lambda ^2  - 2 = \lambda (\lambda  - 3).


Ostatecznie,  endomorfizm  :math:`F_B`  ma  dwie  wartości  własne:  :math:`\lambda _{0}  =  0,\lambda _{1}  =  3`, obie  algebraicznie  dwukrotne.


3.)  Wektory  własne.

Zbiór  wektorów  własnych  należących  do  wartości  :math:`\lambda _{0}  = 0`,  uzupełniony  o  wektor  zerowy,  jest  oczywiście  jądrem  endomorfizmu :math:`F_B`.

Współrzędne  wektorów  własnych  dla  wartości  :math:`\lambda _{1}  = 3`  otrzymamy  wstawiając  tę  wartość  do  problemu  jednorodnego  o  macierzy  :eq:`PW04.1` :

.. math::

   \left( {\begin{array}{*{20}c}
    { - 2} &  0 &  { - 1} &  0 \\
    0 &  { - 2} &  0 &  { - 1} \\
    { - 2} &  0 &  { - 1} &  0 \\
    0 &  { - 2} &  0 &  { - 1} \\
   \end{array}} \right)\left( {\begin{array}{*{20}c}
   {\alpha _1 }  \\
   {\alpha _2 }  \\
   {\alpha _3 }  \\
   {\alpha _4 }  \\
   \end{array}} \right) = \left( {\begin{array}{*{20}c}
   0  \\
   0  \\
   0  \\
   0  \\
   \end{array}} \right)


Otrzymujemy  dwie  identyczne  pary  równań:

.. math::

   \left\{ \begin{array}{l}
   - 2\alpha _{ 1}  - \alpha _{ 3}  = 0 \\ 
   - 2\alpha _{ 2}  - \alpha _{ 4}  = 0 \\ 
   \end{array} \right., \quad  \left\{ \begin{array}{l}
   - 2\alpha _{ 1}  - \alpha _{ 3}  = 0 \\ 
   - 2\alpha _{ 2}  - \alpha _{ 4}  = 0 \\ 
   \end{array} \right. .


Rozwiązania:

.. math::

   \alpha _{ 3}  =  - 2\alpha _{ 1} , \quad \alpha _{ 4}  =  - 2\alpha _{ 2} , \quad \alpha _{ 1} ,\alpha _{ 2}  \in \boldsymbol{R}.


Macierze  własne  dla  wartości  :math:`\lambda _{1} = 3`  mają  więc  postać

.. math::

   \left( {\begin{array}{*{20}c}
   \alpha  & \beta   \\
   { - 2\alpha } & { - 2\beta }  \\
   \end{array}} \right), \quad \alpha ,\beta  \in \boldsymbol{R}, \quad \alpha ^{ 2}  + \beta ^{ 2}  > 0.


Ich  zbiór,  uzupełniony  o  wektor  zerowy,   jest  zatem  obrazem  endomorfizmu  :math:`F_B`.

Ponieważ,  z  poprzedniej  analizy,  :math:`\dim {\mathop{\rm Ker}\nolimits} F_B  = \dim {\mathop{\rm Im}\nolimits} F_B  = 2`,  krotności  geometryczne  obu  wartości  własnych  wynoszą  2.  Tak  więc  krotności  algebraiczne  równają  się  krotnościom  geometrycznym.

| 

Czy

.. math::
   :label: PW04.2

   M_2(\boldsymbol{R}) = {\rm Ker} F_B \oplus {\rm Im} F_B ?

algebra :math:`M_2 (\boldsymbol{R})` rozkłada się na sumę prostą jądra i obrazu operatora :math:`F` ?

Ozn.

.. math::

   f_1 = \left( \begin{array}{*{20}c}
    1 & 0 \\
    1 & 0 \\
   \end{array} \right), \quad f_2 = \left( \begin{array}{*{20}c}
    0 & 1 \\
    0 & 1 \\
   \end{array} \right), \quad g_1 = \left( \begin{array}{*{20}c}
    1 & 0 \\
   -2 & 0 \\
   \end{array} \right), \quad g_2 = \left( \begin{array}{*{20}c}
    0 & 1 \\
    0 & -2 \\
   \end{array} \right).


Wtedy

.. math::

   \begin{array}{l}
   \cal{B}_f = (f_1 , f_2 ) \quad \text{- baza jądra}, \\
   \cal{B}_g = (g_1 , g_2 ) \quad \text{- baza obrazu operatora} \quad {\rm F}.
   \end{array}


Warunek :eq:`PW04.2` zaistnieje, gdy układ :math:`\cal{B}_{fg} = (f_1 , f_2 , g_1 , g_2 )` będzie bazą algebry :math:`M_2 (\boldsymbol{R})`. Rzeczywiście, wtedy dla dowolnej macierzy :math:`\boldsymbol{A} \in M_2 (\boldsymbol{R})`

.. math::

   \boldsymbol{A} = \{\alpha_1 f_1 + \alpha_2 f_2 \} \in {\rm Ker}F \quad + \quad \{\beta_1 g_1 + \beta_2 g_2 \} \in {\rm Im}F \quad \quad \text{(rozkład jednoznaczny)}


Tak z kolei będzie wtedy i tylko wtedy, gdy macierze :math:`f_1 , f_2 , g_1 , g_2` będą l.n.

Wystarczy sprawdzić l.n. kolumn współrzędnych tych wektorów w bazie :math:`\cal{B} = (\boldsymbol{e}_1 , \boldsymbol{e}_2 , \boldsymbol{e}_3 , \boldsymbol{e}_4 )`:

.. math::

   \det \left( \begin{array}{*{20}c}
   1 & 0 & 1 & 0 \\
   0 & 1 & 0 & 1 \\
   1 & 0 & -2 & 0 \\
   0 & 1 & 0 & -2 \\
   \end{array} \right) = \det \left( \begin{array}{*{20}c}
   1 {\left( \begin{array}{*{20}c}
     1 & 0 \\
     0 & 1 \\
     \end{array} \right)} & 1 {\left( \begin{array}{*{20}c}
     1 & 0 \\
     0 & 1 \\
     \end{array} \right)} \\
   1 {\left( \begin{array}{*{20}c}
     1 & 0 \\
     0 & 1 \\
     \end{array} \right)} & -2 {\left( \begin{array}{*{20}c}
     1 & 0 \\
     0 & 1 \\
     \end{array} \right)} \\
   \end{array} \right) = \\
   = \det \left( \left( \begin{array}{*{20}c}
   1 & 1 \\
   1 & -2 \\
   \end{array} \right) \otimes \left( \begin{array}{*{20}c}
   1 & 0 \\
   0 & 1 \\
   \end{array} \right) \right) = \\
   = \left| \begin{array}{*{20}c}
   1 & 1 \\
   1 & -2 \\
   \end{array} \right| ^2 \cdot \left| \begin{array}{*{20}c}
   1 & 0 \\
   0 & 1 \\
   \end{array} \right| ^2 = (-3)^2 \cdot 1^2 = 9 \ne 0.


A zatem relacja :eq:`PW04.2` zachodzi.

