
Applications of Determinants
----------------------------

Examination of the Linear Dependence of Vectors
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Twierdzenie 5. :math:`\\`
   
   Wyznacznik macierzy znika wtedy i tylko wtedy, 
   gdy jej kolumny są liniowo zależne. :math:`\\`

   A zatem jeżeli :math:`\ \boldsymbol{A}\,=\,
   [\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,\in\,M_n(K),\ \,` to

   .. math::
      
      \det\boldsymbol{A}\,=\,0\qquad\Leftrightarrow\qquad
      (\boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n)\ -\ 
      \text{układ liniowo zależny}\,.

**Dowód.**

:math:`\Leftarrow\ :\ \ `
Zakładamy, że kolumny :math:`\ \boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n\ `
są liniowo zależne.

Wtedy jedna spośród nich jest kombinacją liniową pozostałych. Niech na przykład

.. math::
   
   \boldsymbol{A}_n\ =\ \lambda_1\,\boldsymbol{A}_1\,+\;\lambda_2\,\boldsymbol{A}_2\,+\;\ldots\,+
                        \lambda_{n-1}\,\boldsymbol{A}_{n-1}\,.

Wówczas, :math:`\,` na podstawie postulatów :math:`\,` 1. :math:`\,` i :math:`\,` 2. :math:`\,` 
definicji aksjomatycznej

.. math::
   
   \det\boldsymbol{A}\ \ =\ \ 
   \det\,[\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,\boldsymbol{A}_{n-1}\,|\; 
   \lambda_1\,\boldsymbol{A}_1\,+\,\lambda_2\,\boldsymbol{A}_2\,+\,\ldots\,+\,
                        \lambda_{n-1}\,\boldsymbol{A}_{n-1}\,]\ \ =

   =\ \ \lambda_1\,\det\,[\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,
                          \boldsymbol{A}_{n-1}\,|\,\boldsymbol{A}_1\,]\ \ +

   +\ \ \lambda_2\,\det\,[\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,
                          \boldsymbol{A}_{n-1}\,|\,\boldsymbol{A}_2\,]\ \ +

   \ldots

   +\ \ \lambda_{n-1}\,\det\,[\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,
                          \boldsymbol{A}_{n-1}\,|\,\boldsymbol{A}_{n-1}\,]\,.

Każdy ze składników w ostatnim wyrażeniu jest proporcjonalny do wyznacznika macierzy o dwóch jednakowych kolumnach. Z własności IIIa. wynika więc, że 
:math:`\ \det\boldsymbol{A} = 0.` :math:`\\`

:math:`\Rightarrow\ :\ \ `
Zakładamy, że kolumny :math:`\ \boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n\ `
są liniowo niezależne.

Układ tych kolumn, jako liniowo niezależny układ :math:`\,n\,` wektorów w :math:`\,n`-wymiarowej
przestrzeni, jest bazą przestrzeni :math:`\,K^n.\ ` Oznacza to, że 
każdy wektor tej przestrzeni można przedstawić jednoznacznie w postaci kombinacji liniowej 
kolumn :math:`\ \boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n\,.\ `

Rozważmy takie przedstawienie dla wektorów bazy kanonicznej 
:math:`\ \boldsymbol{e}_j:`

.. math::
   :label: eqn_ej
   
   \boldsymbol{e}_j\ \ =\ \ \sum_{s\,=\,1}^n\ b_{sj}\,\boldsymbol{A}_s\,,\qquad
   \text{gdzie}\quad\boldsymbol{e}_j\ =\ 
   \left[\begin{array}{c} 0 \\ \dots \\ 1 \\ \dots \\ 0 \end{array}\right]
   \leftarrow j\,,\qquad j=1,2,\ldots,n.

Równania :eq:`eqn_ej` stwierdzają, że :math:`\,j`-ta kolumna macierzy jednostkowej
:math:`\,\boldsymbol{I}_n = [\,\boldsymbol{e}_1\,|\;\boldsymbol{e}_2\,|\,\dots\,|\,
\boldsymbol{e}_n\,]\ ` jest kombinacją liniową kolumn macierzy :math:`\,\boldsymbol{A}\ `
o współczynnikach z :math:`\,j`-tej kolumny macierzy :math:`\,\boldsymbol{B}=[b_{ij}]_{n\times n}.\ `
Według kolumnowej reguły mnożenia macierzowego oznacza to, że 
:math:`\ \boldsymbol{I}_n = \boldsymbol{A}\boldsymbol{B}.\ ` 

Korzystając z twierdzenia Cauchy'ego o wyznaczniku iloczynu macierzy, mamy
 
.. math::

   \det\boldsymbol{A}\,\cdot\,\det\boldsymbol{B}\ \ =\ \ 
   \det\,(\boldsymbol{A}\boldsymbol{B})\ \ =\ \ 
   \det\boldsymbol{I}_n\ =\ 1\,.

Stąd :math:`\ \det\boldsymbol{A}\ne 0,\ \,`
bo gdyby :math:`\ \det\boldsymbol{A} = 0,\ `
to mielibyśmy :math:`\ \det\boldsymbol{A}\,\cdot\,\det\boldsymbol{B}\,=\,0.` 

Zostało w ten sposób udowodnione, że

.. math::
   
   \text{kolumny}\ \ \boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n\ \ 
   \text{są liniowo niezależne}
   \quad\Rightarrow\quad
   \det\boldsymbol{A}\ne 0\,,

co przez kontrapozycję jest równoważne stwierdzeniu, :math:`\,` że

.. math::
   
   \det\boldsymbol{A}\ =\ 0
   \quad\Rightarrow\quad
   \text{kolumny}\ \ \boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n\ \ 
   \text{są liniowo zależne}\,.

**Dygresja.**

Wzory :eq:`eqn_ej` odnoszą się do sytuacji, :math:`\,` gdy w przestrzeni :math:`\,K^n\,` 
zostały określone dwie bazy: 
baza :math:`\ \,\mathcal{B}\,=\,(\boldsymbol{A}_1,\boldsymbol{A}_2,\dots,\boldsymbol{A}_n),\ \,`
złożona z liniowo niezależnych kolumn macierzy :math:`\,\boldsymbol{A},\ ` oraz baza kanoniczna
:math:`\ \mathcal{E}\,=\,(\boldsymbol{e}_1,\boldsymbol{e}_2,\dots,\boldsymbol{e}_n)\,.`

Macierz :math:`\,\boldsymbol{B}=[b_{ij}]_{n\times n}\,,\ ` której :math:`\,j`-ta kolumna 
składa się ze współrzędnych :math:`\,j`-tego wektora bazy :math:`\ \mathcal{E}\ `
w bazie :math:`\ \mathcal{B}\ \ \ (j=1,2,\ldots,n),\ \,` nazywa się :math:`\,` 
*macierzą przejścia* :math:`\,` od bazy :math:`\,\mathcal{B}\ ` do bazy 
:math:`\ \mathcal{E}.` :math:`\\`

.. admonition:: Uwaga:
   
   | Twierdzenie 5. można również zapisać w wersji wierszowej:
   | Wyznacznik macierzy znika wtedy i tylko wtedy, 
     gdy jej wiersze są liniowo zależne.

:math:`\;`

**Przykład.** :math:`\,` Należy pokazać, że wektory

.. math::
   
   \boldsymbol{f}_1\ =\ 
   \left[\begin{array}{c} 1 \\ 0 \\ 0 \\ \dots \\ 0 \end{array}\right]\,,\quad
   \boldsymbol{f}_2\ =\ 
   \left[\begin{array}{c} 1 \\ 1 \\ 0 \\ \dots \\ 0 \end{array}\right]\,,\quad
   \boldsymbol{f}_3\ =\ 
   \left[\begin{array}{c} 1 \\ 1 \\ 1 \\ \dots \\ 0 \end{array}\right]\,,\quad
   \dots,\quad
   \boldsymbol{f}_n\ =\ 
   \left[\begin{array}{c} 1 \\ 1 \\ 1 \\ \dots \\ 1 \end{array}\right]

tworzą bazę w przestrzeni :math:`\ K^n.`

**Rozwiązanie.**

Ponieważ w :math:`\,n`-wymiarowej przestrzeni wektorowej każdy liniowo niezależny układ :math:`\,n\ `
wektorów jest bazą, a :math:`\,\text{dim}\,K^n=n,\ ` wystarczy sprawdzić liniową niezależność
wektorów :math:`\,\boldsymbol{f}_1,\,\boldsymbol{f}_2,\,\ldots,\,\boldsymbol{f}_n.`

Wektory są liniowo niezależne, gdy wyznacznik macierzy z nich złożonej jest różny od zera.
W tym wypadku jest to wyznacznik macierzy trójkątnej:

.. math::
   
   \det\ [\,\boldsymbol{f}_1\,|\;\boldsymbol{f}_2\,|\,\ldots\,|\,\boldsymbol{f}_n\,]\ \ =\ \ 
   \left|
   \begin{array}{ccccc}
     1   &   1   &   1   & \dots &   1   \\
     0   &   1   &   1   & \dots &   1   \\
     0   &   0   &   1   & \dots &   1   \\
   \dots & \dots & \dots & \dots & \dots \\
     0   &   0   &   0   & \dots &   1
   \end{array}
   \right|
   \ \ =\ \ 1\ne 0\,.

Calculation of the Inverse of a Matrix
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Twierdzenie 6. :math:`\,` (uogólnione rozwinięcie Laplace'a) :math:`\\`
   
   Dla macierzy :math:`\ \boldsymbol{A}=[a_{ij}]_{n\times n}\in M_n(K)\ `
   są spełnione następujące równości:
   
   .. math::
      
      a_{i1}\,A_{j1}\ +\ a_{i2}\,A_{j2}\ +\ \dots\ +\ a_{in}\,A_{jn}\ \ =\ \ 
      \delta_{ij}\,\cdot\,\det\boldsymbol{A}\,,\qquad i,j=1,2,\ldots,n;

      a_{1k}\,A_{1l}\ +\ a_{2k}\,A_{2l}\ +\ \dots\ +\ a_{nk}\,A_{nl}\ \ =\ \ 
      \delta_{kl}\,\cdot\,\det\boldsymbol{A}\,,\qquad k,l=1,2,\ldots,n.

      \text{gdzie}\quad\delta_{pq}\ \,=\ \,
      \left\{\ 
      \begin{array}{cc} 1 & \text{dla}\ \ p=q, \\ 0 & \text{dla}\ \ p\ne q; \end{array}
      \right.\qquad
      p,q=1,2,\ldots,n.\qquad
      \text{(delta Kroneckera)}

Przy użyciu skróconego zapisu sumy relacje przyjmują zwięzłą postać:

.. math::
   :label: Lap_exp_gen
   
   \sum_{k\,=\,1}^n\ a_{ik}\ A_{jk}\ \ =\ \ 
   \delta_{ij}\,\cdot\,\det\boldsymbol{A}\,,\qquad i,j=1,2,\ldots,n;\qquad
   \text{(wersja wierszowa)}
      
   \sum_{i\,=\,1}^n\ a_{ik}\ A_{il}\ \ =\ \  
   \delta_{kl}\,\cdot\,\det\boldsymbol{A}\,,\qquad k,l=1,2,\ldots,n;\qquad
   \text{(wersja kolumnowa)}

**Interpretacja** (wersja wierszowa):

* :math:`\ i=j:\ ` suma iloczynów kolejnych elementów wybranego wiersza macierzy 
  przez dopełnienia algebraiczne *tych samych elementów* równa się wyznacznikowi macierzy;

* :math:`\ i\ne j:\ ` suma iloczynów kolejnych elementów wybranego wiersza macierzy 
  przez dopełnienia algebraiczne *odpowiednich elementów innego wiersza* równa się zeru.

Analogicznie przedstawia się interpretacja wersji kolumnowej.

**Dowód.** Przy :math:`\ i=j\ ` wzór :eq:`Lap_exp_gen` przechodzi w rozwinięcie Laplace'a względem :math:`\ i`-tego wiersza. Wystarczy więc udowodnić przypadek :math:`\ i\ne j.`

.. Twierdzenia 6. :math:`\,` (wersja wierszowa, przypadek :math:`\,i\ne j`)

Biorąc za punkt wyjścia macierz :math:`\ \boldsymbol{A}=[a_{ij}]_{n\times n}\ `
tworzymy pomocniczą macierz :math:`\ \boldsymbol{B}=[b_{ij}]_{n\times n}\,,\ `
która różni się od :math:`\ \boldsymbol{A}\ ` tylko powtórzeniem :math:`\,i`-tego wiersza
na :math:`\,j`-tej pozycji:

.. math::
   
   \boldsymbol{A}\ \ =\ \ 
   \left[\begin{array}{c}
         \boldsymbol{A}_1 \\ 
         \dots            \\ 
         \boldsymbol{A}_i \\ 
         \dots            \\ 
         \boldsymbol{A}_j \\ 
         \dots            \\
         \boldsymbol{A}_n
         \end{array}
   \right]
         \begin{array}{c}
         \;           \\ 
         \;           \\        
         \leftarrow i \\ 
         \;           \\ 
         \leftarrow j \\ 
         \;           \\
         \;
         \end{array}
   \qquad\qquad
   \boldsymbol{B}\ \ =\ \ 
   \left[\begin{array}{c}
         \boldsymbol{A}_1 \\ 
         \dots            \\ 
         \boldsymbol{A}_i \\ 
         \dots            \\ 
         \boldsymbol{A}_i \\ 
         \dots            \\
         \boldsymbol{A}_n
         \end{array}
   \right]
         \begin{array}{c}
         \;           \\ 
         \;           \\        
         \leftarrow i \\ 
         \;           \\ 
         \leftarrow j \\ 
         \;           \\
         \;
         \end{array}

Dla elementów :math:`\,b_{jk}\,` i dopełnień algebraicznych :math:`\,B_{jk}\,`
macierzy :math:`\,\boldsymbol{B}\,` zachodzą związki:

.. math::
   :label: elem
   
   b_{jk}\,=\,b_{ik}\,=\,a_{ik}\,,\qquad B_{jk}\,=\,A_{jk}\,,\qquad k=1,2,\ldots,n.

Wyznacznik macierzy :math:`\,\boldsymbol{B}\,` o dwóch jednakowych wierszach równa się zeru.
Biorąc pod uwagę równości :eq:`elem` i rozwinięcie :math:`\,\det\boldsymbol{B}\ ` względem 
:math:`\,j`-tego wiersza otrzymujemy:

.. math::
   
   \sum_{k\,=\,1}^n\ a_{ik}\,A_{jk}\ \ =\ \    
   \sum_{k\,=\,1}^n\ b_{jk}\,B_{jk}\ \ =\ \ 
   \det\boldsymbol{B}\ \ =\ \ 0\,.

.. admonition:: Definicja.
   
   Niech :math:`\,\boldsymbol{A}\in M_n(K)\,.\ \,` Jeżeli :math:`\ \det\boldsymbol{A}=0,\ \,`
   to :math:`\ \boldsymbol{A}\ \,` jest :math:`\,` *macierzą osobliwą*. :math:`\\`
   W przeciwnym wypadku, :math:`\,` gdy :math:`\ \det\boldsymbol{A}\ne 0,\ \ \boldsymbol{A}\ \,` 
   jest :math:`\,` *macierzą nieosobliwą*.

.. admonition:: Twierdzenie 7.
   
   Macierz :math:`\ \boldsymbol{A}\in M_n(K)\ \,` jest odwracalna :math:`\,` wtedy i tylko wtedy, 
   :math:`\,` gdy jest nieosobliwa.

**Dowód.**

:math:`\Rightarrow\ :\ ` Jeżeli istnieje macierz odwrotna :math:`\,\boldsymbol{A}^{-1},\ \,` to
na podstawie twierdzenia Cauchy'ego: 

.. math::
   
   \det\boldsymbol{A}\,\cdot\,\det\boldsymbol{A}^{-1}\ \,=\ \,
   \det\,(\boldsymbol{A}\boldsymbol{A}^{-1})\ \,=\ \,
   \det\boldsymbol{I}_n\ \,=\ \,1\,.

Wynika stąd, że :math:`\ \det\boldsymbol{A}\ne 0,\ \,`
bo gdyby :math:`\ \det\boldsymbol{A} = 0,\ \,`
to mielibyśmy :math:`\ \det\boldsymbol{A}\,\cdot\,\det\boldsymbol{A}^{-1}\,=\;0.`

.. admonition:: Wniosek.
   
   Jeżeli macierz :math:`\,\boldsymbol{A}\in M_n(K)\ ` jest odwracalna, :math:`\,`
   to :math:`\ \,\det\boldsymbol{A}^{-1}\,=\ (\det\boldsymbol{A})^{-1}\,.`

:math:`\Leftarrow\ :\ ` 
Zakładamy, że macierz :math:`\ \boldsymbol{A}=[a_{ij}]_{n\times n}\ ` jest nieosobliwa:
:math:`\ \det\boldsymbol{A}\ne 0.\ ` Wtedy macierz

.. math::
   :label: rec_mat
   
   \boldsymbol{B}\ \,:\,=\ \,
   \frac{1}{\det\boldsymbol{A}}\ 
   \left[\begin{array}{cccc}
         A_{11} & A_{12} & \dots & A_{1n} \\
         A_{21} & A_{22} & \dots & A_{2n} \\
         \dots  & \dots  & \dots  & \dots \\
         A_{n1} & A_{n2} & \dots & A_{nn}
         \end{array}
   \right]^{\,T}=\ \ \,
   \frac{1}{\det\boldsymbol{A}}\ 
   \left[\begin{array}{cccc}
         A_{11} & A_{21} & \dots & A_{n1} \\
         A_{12} & A_{22} & \dots & A_{n2} \\
         \dots  & \dots  & \dots  & \dots \\
         A_{1n} & A_{2n} & \dots & A_{nn}
         \end{array}
   \right],

gdzie :math:`\ A_{ij}\ ` jest dopełnieniem algebraicznym elementu :math:`\ a_{ij}\,,\ \,`
jest macierzą odwrotną do :math:`\,\boldsymbol{A}\,.\ `

Istotnie, elementy :math:`\ b_{ij}\ ` macierzy :math:`\ \boldsymbol{B}\ ` dane są przez

.. math::
   
   b_{ij}\ \ =\ \ \frac{1}{\det\boldsymbol{A}}\ \ A_{ji}\,,\qquad i,j=1,2,\ldots,n.

Niech 
:math:`\ \boldsymbol{A}\boldsymbol{B}=\boldsymbol{C}=[c_{ij}]_{n\times n}\,,\ `
:math:`\ \boldsymbol{B}\boldsymbol{A}=\boldsymbol{C'}=[c_{ij}']_{n\times n}\,.\ `
Wykorzystując :eq:`Lap_exp_gen` otrzymujemy

.. math::
   
   c_{ij}\ \,=\ \ \sum_{s\,=\,1}^n\ a_{is}\,b_{sj}
         \ \,=\ \ \frac{1}{\det\boldsymbol{A}}\ \ \sum_{s\,=\,1}^n\ a_{is}\,A_{js}
         \ \,=\ \ \frac{1}{\det\boldsymbol{A}}\ \cdot\ \delta_{ij}\,\cdot\ \det\boldsymbol{A}
         \ \,=\ \,\delta_{ij}\,,

   c_{ij}'\ \,=\ \ \sum_{s\,=\,1}^n\ b_{is}\,a_{sj}
         \ \,=\ \ \frac{1}{\det\boldsymbol{A}}\ \ \sum_{s\,=\,1}^n\ a_{sj}\,A_{si}
         \ \,=\ \ \frac{1}{\det\boldsymbol{A}}\ \cdot\ \delta_{ji}\,\cdot\ \det\boldsymbol{A}
         \ \,=\ \,\delta_{ij}\,,

gdzie :math:`\ i,j=1,2,\ldots,n.\ \,` Macierz, której elementy są deltami Kroneckera 
:math:`\ \delta_{ij}\,,\ ` jest macierzą jednostkową. :math:`\,` Tak więc 
:math:`\ \boldsymbol{A}\boldsymbol{B}=\boldsymbol{B}\boldsymbol{A}=\boldsymbol{I}_n\,,\ `
co oznacza, że :math:`\ \boldsymbol{B}=\boldsymbol{A}^{-1}\,.`

.. admonition:: Definicja.
   
   Transponowana macierz dopełnień algebraicznych elementów macierzy 
   :math:`\,\boldsymbol{A}\ ` nazywa się :math:`\,` *macierzą dołączoną* :math:`\,` 
   do macierzy :math:`\ \boldsymbol{A}:`

   .. math::
      
      \boldsymbol{A}^D\ :\,=\ \ 
      \left[\begin{array}{cccc}
            A_{11} & A_{21} & \dots & A_{n1} \\
            A_{12} & A_{22} & \dots & A_{n2} \\
            \dots  & \dots  & \dots  & \dots \\
            A_{1n} & A_{2n} & \dots & A_{nn}
            \end{array}
      \right]\,.
 

Procedura wyliczenia macierzy odwrotnej do :math:`\,\boldsymbol{A}=[a_{ij}]_{n\times n}\in M_n(K)\ `
składa się zatem z następujących etapów:

0. wyliczenie :math:`\ \det\boldsymbol{A}\ \,` i :math:`\,` 
   sprawdzenie, czy :math:`\ \det\boldsymbol{A}\ne 0\,;`

1. wyliczenie dopełnień algebraicznych :math:`\ A_{ij}\,,\ \ i,j=1,2,\ldots,n;`

2. konstrukcja macierzy dołączonej :math:`\,\boldsymbol{A}^D:\quad
   a_{ij}\rightarrow A_{ji},\quad i,j=1,2,\ldots,n`;

3. podzielenie macierzy :math:`\,\boldsymbol{A}^D\ ` przez :math:`\ \det\boldsymbol{A}\,:\quad
   \boldsymbol{A}^{-1}\ =\ \,\frac{1}{\det\boldsymbol{A}}\ \ \boldsymbol{A}^D\,.` :math:`\\`

**Przykład.** :math:`\,` Wyliczenie odwrotności macierzy
:math:`\ \ \boldsymbol{A}\ =\ 
\left[\begin{array}{rrr} 2 & 2 & 3 \\ 1 & -1 & 0 \\ -1 & 2 & 1 \end{array}\right]\,.`

:math:`\ \det\boldsymbol{A}\ =\ 
\left|\begin{array}{rrr} 2 & 2 & 3 \\ 1 & -1 & 0 \\ -1 & 2 & 1 \end{array}\right|\ =\
\left|\begin{array}{rrr} 2 & 4 & 3 \\ 1 &  0 & 0 \\ -1 & 1 & 1 \end{array}\right|\ =\ 
-\ \left|\begin{array}{cc} 4 & 3 \\ 1 & 1 \end{array}\right|\ =\ -1\,.`

.. :math:`A_{11}=+\left|\begin{array}{rr} -1 &  0 \\  2 & 1 \end{array}\right|\ =\ -1\,;\ \ \ `
   :math:`A_{12}=-\left|\begin{array}{rr}  1 &  0 \\ -1 & 1 \end{array}\right|\ =\ -1\,;\ \ \ `
   :math:`A_{13}=+\left|\begin{array}{rr}  1 & -1 \\ -1 & 2 \end{array}\right|\ =\ +1\,;`
   
   :math:`A_{21}=-\left|\begin{array}{rr}  2 &  3 \\  2 & 1 \end{array}\right|\ =\ +4\,;\ \ \ `
   :math:`A_{22}=+\left|\begin{array}{rr}  2 &  3 \\ -1 & 1 \end{array}\right|\ =\ +5\,;\ \ \ `
   :math:`A_{23}=-\left|\begin{array}{rr}  2 &  2 \\ -1 & 2 \end{array}\right|\ =\ -6\,;`
   
   :math:`A_{31}=+\left|\begin{array}{rr}  2 &  3 \\ -1 &  0 \end{array}\right|\ =\ +3\,;\ \ \ `
   :math:`A_{32}=-\left|\begin{array}{rr}  2 &  3 \\  1 &  0 \end{array}\right|\ =\ +3\,;\ \ \ `
   :math:`A_{33}=+\left|\begin{array}{rr}  2 &  2 \\  1 & -1 \end{array}\right|\ =\ -4\,.`

.. math::
   
   \begin{array}{lll}
   A_{11}=+\left|\begin{array}{rr} -1 &  0 \\  2 &  1 \end{array}\right|\ =\ -1\,; &
   A_{12}=-\left|\begin{array}{rr}  1 &  0 \\ -1 &  1 \end{array}\right|\ =\ -1\,; &
   A_{13}=+\left|\begin{array}{rr}  1 & -1 \\ -1 &  2 \end{array}\right|\ =\ 1\,; \\ \\
   A_{21}=-\left|\begin{array}{rr}  2 &  3 \\  2 &  1 \end{array}\right|\ =\ 4\,; &
   A_{22}=+\left|\begin{array}{rr}  2 &  3 \\ -1 &  1 \end{array}\right|\ =\ 5\,; &
   A_{23}=-\left|\begin{array}{rr}  2 &  2 \\ -1 &  2 \end{array}\right|\ =\ -6\,; \\ \\
   A_{31}=+\left|\begin{array}{rr}  2 &  3 \\ -1 &  0 \end{array}\right|\ =\ 3\,; &
   A_{32}=-\left|\begin{array}{rr}  2 &  3 \\  1 &  0 \end{array}\right|\ =\ 3\,; &
   A_{33}=+\left|\begin{array}{rr}  2 &  2 \\  1 & -1 \end{array}\right|\ =\ -4\,.
   \end{array}

.. math::
   
   \begin{array}{l}
   \boldsymbol{A}^D\ \ =\ \ 
   \left[\begin{array}{rrr}
         -1 & -1 &  1 \\
          4 &  5 & -6 \\
          3 &  3 & -4
         \end{array}
   \right]^{\,T}=\ \ \,
   \left[\begin{array}{rrr}
          -1 &  4 &  3 \\
          -1 &  5 &  3 \\
           1 & -6 & -4
         \end{array}
   \right]\,; 
   \\ \\
   \displaystyle
   \boldsymbol{A}^{-1}\ \ =\ \ \,
   \frac{1}{(-1)}\ 
   \left[\begin{array}{rrr}
          -1 &  4 &  3 \\
          -1 &  5 &  3 \\
           1 & -6 & -4
         \end{array}
   \right]\ \ =\ \ 
   \left[\begin{array}{rrr}
           1 & -4 & -3 \\
           1 & -5 & -3 \\
          -1 &  6 &  4
         \end{array}
   \right]\,.
   \end{array}

   \;

Metoda ``inverse()`` pakietu Sage zastosowana do ogólnej macierzy kwadratowej zadanego stopnia 
:math:`\,n=2,3,\ldots\ ` podaje wyprowadzone tutaj wzory dla macierzy odwrotnej.

.. Sage potrafi podać wzory dla odwrotności macierzy kwadratowej stopnia :math:`\,n=2,3,\ldots\ ` 
   Należy w tym celu użyć metody ``inverse()`` w zastosowaniu do ogólnej macierzy stopnia :math:`\,n.`

.. admonition:: Poeksperymentuj z Sage:
   
   Poniższy program wyświetla ogólną macierz kwadratową 
   :math:`\,\boldsymbol{A}=[a_{ij}]_{n\times n}\ ` 
   oraz jej odwrotność. W mianownikach elementów macierzy odwrotnej można rozpoznać wyznacznik   
   macierzy :math:`\,\boldsymbol{A},\ ` a w licznikach :math:`\,`
   - :math:`\,` odpowiednie dopełnienia algebraiczne. :math:`\\`

.. sagecellserver::
   
   n = 2
   A = matrix([[var('a%d%d' % (i,j)) for j in range(1,n+1)] 
                                     for i in range(1,n+1)])
   show(A)
   show(A.inverse().factor())

Cramer's Rule to Solve Systems of Linear Equations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Układ :math:`\,n\,` równań liniowych o :math:`\,n\,` niewiadomych nad ciałem :math:`\,K:`

.. math::
   :label: cramer_0

   \begin{array}{c}
      a_{11}\,x_1\; + \ \,a_{12}\,x_2\; + \ \,\ldots\  + \ \;a_{1n}\,x_n \ \, = \ \ b_1 \\
      a_{21}\,x_1\; + \ \,a_{22}\,x_2\; + \ \,\ldots\  + \ \;a_{2n}\,x_n \ \, = \ \ b_2 \\
      \quad\,\ldots\qquad\quad\ldots\qquad\ \,\ldots\qquad\ \ \ldots\qquad\ \ \,\ldots    \\
      a_{n1}\,x_1\; + \ \,a_{n2}\,x_2\; + \ \,\ldots\  + \ \;a_{nn}\,x_n \ \, = \ \ b_n
   \end{array}

nazywamy :math:`\,` *układem kramerowskim* :math:`\,` (Gabriel Cramer, 1704-52), :math:`\,`
gdy jego macierz współczynników :math:`\ \boldsymbol{A}=[a_{ij}]_{n\times n}\ \,` 
jest nieosobliwa: :math:`\ \,\det\boldsymbol{A}\ne 0.`

Zapisując go w postaci macierzowej

.. math::
   
   \boldsymbol{A}\boldsymbol{X}\ =\ \boldsymbol{b}\,,

.. \qquad
   \boldsymbol{X}\,=\,\left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right]\,,
   \quad
   \boldsymbol{b}\,=\,\left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{n} \end{array}\right]\,,

i mnożąc obustronnie (z lewej strony) przez macierz :math:`\ \boldsymbol{A}^{-1}\ `
otrzymamy od razu rozwiązanie:

.. math::
   
   \boldsymbol{X}\ =\ \boldsymbol{A}^{-1}\,\boldsymbol{b}\,.

Aby wyprowadzić praktyczne wyrażenia dla poszczególnych niewiadomych,
wykorzystamy wyrażenie :eq:`rec_mat` dla macierzy odwrotnej:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \left[\begin{array}{c} x_1 \\ x_2 \\ \dots \\ x_n \end{array}\right]
   & = &
   \frac{1}{\det\boldsymbol{A}}\ 
   \left[\begin{array}{cccc}
         A_{11} & A_{21} & \dots & A_{n1} \\
         A_{12} & A_{22} & \dots & A_{n2} \\
         \dots  & \dots  & \dots  & \dots \\
         A_{1n} & A_{2n} & \dots & A_{nn}
         \end{array}
   \right]\ 
   \left[\begin{array}{c} b_1 \\ b_2 \\ \dots \\ b_n \end{array}\right] \\ \\ 
   & = &
   \frac{1}{\det\boldsymbol{A}}\ 
   \left[\begin{array}{c}
         A_{11}\,b_1\ +\ A_{21}\,b_2\ +\ \dots\ +\ A_{n1}\,b_n \\
         A_{12}\,b_1\ +\ A_{22}\,b_2\ +\ \dots\ +\ A_{n2}\,b_n \\
         \dots\qquad\ \ \dots\qquad\ \dots\qquad\dots                \\
         A_{1n}\,b_1\ +\ A_{2n}\,b_2\ +\ \dots\ +\ A_{nn}\,b_n
         \end{array}
   \right]\,.
   \end{eqnarray*}

Z przyrównania odpowiednich współrzędnych wektorów po obu stronach równości mamy

.. math::
   :nowrap:

   \begin{eqnarray*}   
   x_j & = & \frac{1}{\det\boldsymbol{A}}\ \ 
             (b_1\,A_{1j}\ +\ b_2\,A_{2j}\ +\ \dots\ +\ b_n\,A_{nj}) \\
   & = &
   \frac{1}{\det\boldsymbol{A}}\ \ 
   \left|\begin{array}{ccccccc}
         a_{11} & \dots & a_{1,j-1} &  b_1  & a_{1,j+1} & \dots & a_{1n} \\
         a_{21} & \dots & a_{2,j-1} &  b_2  & a_{2,j+1} & \dots & a_{2n} \\
         \dots  & \dots &  \dots    & \dots &  \dots    & \dots & \dots  \\ 
         a_{n1} & \dots & a_{n,j-1} &  b_n  & a_{n,j+1} & \dots & a_{nn}
         \end{array}
   \right|\,,\qquad j=1,2,\ldots,n.
   \end{eqnarray*}

.. admonition:: Twierdzenie 8. :math:`\,` (wzory Cramera) 
   
   Kramerowski układ równań :eq:`cramer_0` ma dokładnie jedno rozwiązanie dane przez
   
   .. math::
      
      x_j\ \ =\ \ \frac{D_j}{D}\,,\qquad j=1,2,\ldots,n,

   gdzie :math:`\,D\,` jest wyznacznikiem macierzy współczynników :math:`\,\boldsymbol{A},\ ` 
   a :math:`\,D_j\,` jest wyznacznikiem macierzy otrzymanej z :math:`\,\boldsymbol{A}\ `
   przez zastąpienie w niej :math:`\,j`-tej kolumny kolumną wolnych wyrazów 
   :math:`\,\boldsymbol{b}.\ ` Przy kolumnowym zapisie macierzy :math:`\,` (:math:`j=1,2,\ldots,n`) :

   .. math::
      
      D\ \,=\ \,\det\;[\;\boldsymbol{A}_1\,|\,\dots\,|\,
      \boldsymbol{A}_j\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,,
      
      D_j\ =\ \,\det\;[\;\boldsymbol{A}_1\,|\,\dots\,|\ 
      \boldsymbol{b}\,|\ \dots\,|\,\boldsymbol{A}_n\,]\,.

**Przykład.** :math:`\,` 
Rozwiążemy układ trzech równań o trzech niewiadomych nad ciałem :math:`\,Q:`

.. math::
   :nowrap:

   \begin{alignat*}{4}
   2\,x_1 & {\,} - {\,} &    x_2 & {\,} - {\,} &    x_3 & {\;} = {} &  4 \\
   3\,x_1 & {\,} + {\,} & 4\,x_2 & {\,} - {\,} & 2\,x_3 & {\;} = {} & 11 \\
   3\,x_1 & {\,} - {\,} & 2\,x_2 & {\,} + {\,} & 4\,x_3 & {\;} = {} & 11 
   \end{alignat*}

Jeżeli w danym układzie liczba równań zgadza się z liczbą niewiadomych
(macierz współczynników :math:`\,\boldsymbol{A}\,` jest kwadratowa),
to przede wszystkim należy obliczyć :math:`\ D=\det\boldsymbol{A}.\ `
Tutaj

.. math::
   
   D\ =\ 
   \left|\begin{array}{rrr} 2 & -1 & -1 \\  3 & 4 & -2 \\  3 & -2 & 4 \end{array}\right|\ =\ 
   \left|\begin{array}{rrr} 0 &  0 & -1 \\ -1 & 6 & -2 \\ 11 & -6 & 4 \end{array}\right|\ =\ 
   -\ \left|\begin{array}{rr} -1 & 6 \\  11 & -6 \end{array}\right|\ =\ 
   6\ \left|\begin{array}{rr}  1 & 1 \\ -11 & -1 \end{array}\right|\ =\ 60\,.

Skoro :math:`\,D\ne 0,\ ` wyliczamy wyznaczniki :math:`\,D_1,\,D_2\ \ \text{i}\ \ D_3\ `
ze wzorów Cramera:

:math:`D_1\ =\ 
\left|\begin{array}{rrr} 4 & -1 & -1 \\ 11 & 4 & -2 \\ 11 & -2 & 4 \end{array}\right|\ =\ 
\left|\begin{array}{rrr} 0 &  0 & -1 \\  3 & 6 & -2 \\ 27 & -6 & 4 \end{array}\right|\ =\ 
-\ \left|\begin{array}{rr} 3 &  6 \\ 27 & -6 \end{array}\right|\ =\ 
18\ \left|\begin{array}{rr} 1 & -1 \\  9 &  1 \end{array}\right|\ =\ 180\,,`

:math:`D_2\ =\ 
\left|\begin{array}{rrr} 2 & 4 & -1 \\  3 & 11 & -2 \\  3 & 11 & 4 \end{array}\right|\ =\ 
\left|\begin{array}{rrr} 0 & 0 & -1 \\ -1 &  3 & -2 \\ 11 & 27 & 4 \end{array}\right|\ =\ 
-\ \left|\begin{array}{rr} -1 & 3 \\  11 & 27 \end{array}\right|\ =\ 
3\ \left|\begin{array}{rr}  1 & 1 \\ -11 &  9 \end{array}\right|\ =\ 60\,,`

:math:`D_3\ =\ 
\left|\begin{array}{rrr} 2 & -1 & 4 \\  3 & 4 & 11 \\  3 & -2 & 11 \end{array}\right|\ =\ 
\left|\begin{array}{rrr} 0 & -1 & 0 \\ 11 & 4 & 27 \\ -1 & -2 &  3 \end{array}\right|\ =\ 
\left|\begin{array}{rr} 11 & 27 \\ -1 & 3 \end{array}\right|\ =\ 
3\ \left|\begin{array}{rr} 11 &  9 \\ -1 & 1 \end{array}\right|\ =\ 60\,.`

.. .. math::
   
   D_1\ =\ 
   \left|\begin{array}{rrr} 4 & -1 & -1 \\ 11 & 4 & -2 \\ 11 & -2 & 4 \end{array}\right|\ =\ 
   \left|\begin{array}{rrr} 0 &  0 & -1 \\  3 & 6 & -2 \\ 27 & -6 & 4 \end{array}\right|\ =\ 
    -\ \left|\begin{array}{rr} 3 &  6 \\ 27 & -6 \end{array}\right|\ =\ 
   18\ \left|\begin{array}{rr} 1 & -1 \\  9 &  1 \end{array}\right|\ =\ 180\,,

   D_2\ =\ 
   \left|\begin{array}{rrr} 2 & 4 & -1 \\  3 & 11 & -2 \\  3 & 11 & 4 \end{array}\right|\ =\ 
   \left|\begin{array}{rrr} 0 & 0 & -1 \\ -1 &  3 & -2 \\ 11 & 27 & 4 \end{array}\right|\ =\ 
   -\ \left|\begin{array}{rr} -1 & 3 \\  11 & 27 \end{array}\right|\ =\ 
   3\ \left|\begin{array}{rr}  1 & 1 \\ -11 &  9 \end{array}\right|\ =\ 60\,,

   D_3\ =\ 
   \left|\begin{array}{rrr} 2 & -1 & 4 \\  3 & 4 & 11 \\  3 & -2 & 11 \end{array}\right|\ =\ 
   \left|\begin{array}{rrr} 0 & -1 & 0 \\ 11 & 4 & 27 \\ -1 & -2 &  3 \end{array}\right|\ =\ 
      \left|\begin{array}{rr} 11 & 27 \\ -1 & 3 \end{array}\right|\ =\ 
   3\ \left|\begin{array}{rr} 11 &  9 \\ -1 & 1 \end{array}\right|\ =\ 60\,.

Ostatecznie, :math:`\,` jedynym rozwiązaniem układu równań jest

.. math::
   
   x_1\ =\ \textstyle{180\over 60}\ =\ 3\,,\quad
   x_2\ =\ \textstyle{60\over 60}\ =\ 1\,,\quad
   x_3\ =\ \textstyle{60\over 60}\ =\ 1\,.

W systemie Sage można otrzymać wzory Cramera w ogólnej postaci dla każdej zadanej liczby
:math:`\,n=2,3,\ldots\ ` równań układu kramerowskiego. Należy w tym celu wywołać metodę ``rref()`` dla sprowadzenia macierzy rozszerzonej 
:math:`\,\boldsymbol{B}=[\,\boldsymbol{A}\,|\,\boldsymbol{b}\,]\ ` do zredukowanej postaci schodkowej.

.. admonition:: Poeksperymentuj z Sage:
   
   Poniższy program dla zadanego stopnia :math:`\,n\,` wyświetla macierz :math:`\,\boldsymbol{B}\ ` 
   w jej oryginalnej oraz zredukowanej schodkowej postaci.
   W tym drugim przypadku elementy ostatniej kolumny są wartościami niewiadomych (wartości te są 
   następnie powtórzone w powiększeniu). Można tam rozpoznać w mianownikach wyznacznik :math:`\,D\,` 
   macierzy :math:`\,\boldsymbol{A},\ ` a w licznikach wyznaczniki :math:`\,D_j\,` ze wzorów Cramera.

.. sagecellserver::

   n = 2
   
   A = matrix([[var('a%d%d' % (i,j)) for j in range(1,n+1)] 
                                     for i in range(1,n+1)])

   b = vector([var('b%d' % j) for j in range(1,n+1)])

   B = A.augment(b); 
   R = B.rref().factor()
   B.subdivide(n,n); R.subdivide(n,n)

   html.table([[B, '$\\rightarrow$', R]])
   for i in range(n): show(R[i,n])






























