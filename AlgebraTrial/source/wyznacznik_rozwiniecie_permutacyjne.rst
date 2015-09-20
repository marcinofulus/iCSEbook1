
The Permutation Expansion
-------------------------

Kwestię istnienia i jednoznaczności wyznacznika
rozstrzyga następujące twierdzenie, które podajemy bez dowodu:

.. admonition:: Twierdzenie 0. :math:`\,` (rozwinięcie permutacyjne wyznacznika) :math:`\\`
   
   Istnieje dokładnie jedna funkcja :math:`\ \det: M_n(K)\to K\ ` 
   spełniającą  warunki 1. - 4. zawarte w definicji aksjomatycznej. 
   Mianowicie, dla macierzy :math:`\,\boldsymbol{A}\ =\ [a_{ij}]_{n\times n}:`

   .. math::
      :label: perm_exp_col
      
      \det\,\boldsymbol{A}\ \ =\ \ 
      \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
      a_{\sigma(1),1}\ a_{\sigma(2),2}\ \ldots\ a_{\sigma(n),n}\,.

.. Wyrażenie :eq:`perm_exp_col` będziemy nazywać 
   :math:`\,` *rozwinięciem permutacyjnym* :math:`\,` wyznacznika.

Warto zauważyć, że w rozwinięciu permutacyjnym:

* wyznacznik macierzy stopnia :math:`\,n\ ` jest sumą :math:`\,n!\,` składników
  odpowiadających permutacjom :math:`\ \sigma\ ` zbioru :math:`\,\{1,2,\ldots,n\};`

* składniki, odpowiadające permutacjom parzystym wchodzą do sumy ze znakiem plus,
  a odpowiadające permutacjom nieparzystym :math:`\,` - :math:`\,` ze znakiem minus;

* każdy składnik jest iloczynem :math:`\,n\,` elementów macierzowych,
  w którym występuje dokładnie jeden element z każdej kolumny
  i dokładnie jeden element z każdego wiersza.

| Na podstawie :eq:`perm_exp_col` wyprowadzimy teraz 
  wzory dla wyznaczników :math:`\,` 2. :math:`\,` i :math:`\,` 3. :math:`\,` stopnia.

Grupa :math:`\ S_2\ ` składa się z dwóch permutacji:

.. math::
   
   S_2\ \ =\ \ 
   \left\{\ 
   \left(\begin{array}{cc} 1 & 2 \\ 1 & 2 \end{array}\right),\ 
   \left(\begin{array}{cc} 1 & 2 \\ 2 & 1 \end{array}\right)
   \ \right\}\ \ =\ \ 
   \{\;\text{id},\,(1,2)\,\}\,,

przy czym :math:`\ \ \text{sgn}\ \text{id} = +1,\ \ \text{sgn}\,(1,2) = -1.\ \,`
Wobec tego

.. math::
   
   \det
   \left[\begin{array}{cc}
         a_{11} & a_{12} \\ 
         a_{21} & a_{22}
         \end{array}
   \right]\ \ =\ \ 
   \sum_{\sigma\,\in\,S_2}\ \text{sgn}\,\sigma\,\cdot\,a_{\sigma(1),1}\ a_{\sigma(2),2}\ \ =\ \ 
   a_{11}\,a_{22}\,-\ a_{21}\,a_{12}\,.

Grupa :math:`\ S_3\ ` zawiera sześć permutacji:
:math:`\ \text{id},\ (1,2,3),\ (3,2,1),\ (1,2),\ (1,3),\ (2,3)\,.\ `
Permutacja identycznościowa i obydwa cykle 3-wyrazowe są parzyste, a transpozycje są 
permutacjami nieparzystymi. A zatem 

.. math::
   
   \det
   \left[\begin{array}{ccc}
         a_{11} & a_{12} & a_{13} \\ 
         a_{21} & a_{22} & a_{23} \\
         a_{31} & a_{32} & a_{33}
         \end{array}
   \right]\ \ =\ \ 
   \sum_{\sigma\,\in\,S_3}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\sigma(1),1}\ a_{\sigma(2),2}\ a_{\sigma(3),3}\ \ =

.. math::

   =\ \ a_{11}\,a_{22}\,a_{33}\ +\ a_{21}\,a_{32}\,a_{13}\ +\ a_{31}\,a_{12}\,a_{23}\ \ +

   -\ \ a_{21}\,a_{12}\,a_{33}\ -\ a_{31}\,a_{22}\,a_{13}\ -\ a_{11}\,a_{32}\,a_{23}\,.

Wynik ten można otrzymać stosując *schemat Sarrusa*: do macierzy dopisujemy z prawej strony dwie pierwsze kolumny, a następnie od trzech iloczynów wzdłuż przekątnych wyznaczonych przez górne strzałki odejmujemy trzy iloczyny wzdłuż przekątnych wyznaczonych przez dolne strzałki:

.. math::
   
   \begin{array}{cccccc}
   \searrow & \searrow & \searrow &   &    &                 \\
            &  a_{11}  &  a_{12}  & a_{13} & a_{11} & a_{12} \\ 
            &  a_{21}  &  a_{22}  & a_{23} & a_{21} & a_{22} \\
            &  a_{31}  & a_{32}   & a_{33} & a_{31} & a_{32} \\
   \nearrow & \nearrow & \nearrow &        &        &
   \end{array}\quad :\quad 
   \begin{array}{r}
   +\ \ a_{11}\,a_{22}\,a_{33}\ +\ a_{12}\,a_{23}\,a_{31}\ +\ a_{13}\,a_{21}\,a_{32} \\
   -\ \ a_{31}\,a_{22}\,a_{13}\ -\ a_{32}\,a_{23}\,a_{11}\ -\ a_{33}\,a_{21}\,a_{12}
   \end{array}

.. warning:: Metodę Sarrusa można stosować *tylko* do wyznaczników 3. stopnia!

Liczba składników w rozwinięciu permutacyjnym szybko rośnie ze stopniem wyznacznika: :math:`\\`
dla :math:`\,n=4\ ` mamy :math:`\,4!=24\ ` składniki w postaci iloczynu czterech elementów
macierzowych, dla :math:`\,n=5\ ` jest :math:`\,5!=120\ ` iloczynów pięciu elementów  itd. 
Dla dużych :math:`\,n\ ` ta metoda wyliczania wyznaczników jest więc nieefektywna.
Można jednak ją użyć do wyprowadzenia wzoru dla wyznacznika macierzy trójkątnej:

.. admonition:: Twierdzenie 1.
   
   Wyznacznik macierzy trójkątnej (dolnej bądź górnej) równa się iloczynowi elementów 
   na głównej przekątnej.

**Dowód.** :math:`\,` Rozważmy górną macierz trójkątną stopnia :math:`\,n:`

.. math::
   
   \boldsymbol{A}\ \ =\ \ 
   \left[\begin{array}{cccccc}
         a_{11} & a_{12} & a_{13} & \dots  & a_{1,n-1}   & a_{1n}    \\
           0    & a_{22} & a_{23} & \dots  & a_{2,n-1}   & a_{2n}    \\
           0    &   0    & a_{33} & \dots  & a_{3,n-1}   & a_{3n}    \\
         \dots  & \dots  & \dots  & \dots  & \dots       & \dots     \\
           0    &   0    &   0    & \dots  & a_{n-1,n-1} & a_{n-1,n} \\
           0    &   0    &   0    & \dots  &    0        & a_{nn} 
         \end{array}
   \right]\,.

Wyznacznik macierzy :math:`\ \boldsymbol{A}\ ` jest sumą (wziętych z odpowiednim znakiem)
:math:`\ n!\ ` iloczynów, przy czym w każdym iloczynie występuje 
dokładnie jeden element z każdej kolumny i dokładnie jeden element z każdego wiersza:

.. math::
   
   \det\boldsymbol{A}\ =\ 
   \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\sigma(1),1}\ a_{\sigma(2),2}\ a_{\sigma(3),3}\ \dots\ a_{\sigma(n-1),n-1}\ a_{\sigma(n),n}\,.

Permutacja :math:`\ \sigma\ ` da niezerowy przyczynek do sumy tylko wtedy, gdy wszystkie elementy
w odpowiadającym jej iloczynie będą różne od zera. Tak będzie tylko wtedy, gdy

.. math::
   
   \sigma(1)=1,\quad\sigma(2)=2,\quad\sigma(3)=3,\quad\dots,\quad
   \sigma(n-1)=n-1,\quad\sigma(n)=n\,.

Tak więc jedyny niezerowy składnik w sumie pochodzi od permutacji identycznościowej.

Ponieważ :math:`\ \text{sgn}\,\text{id} = +1,\ ` to ostatecznie:
:math:`\quad\det\boldsymbol{A}\ =\ a_{11}\ a_{22}\ a_{33}\ \dots\ a_{n-1,n-1}\ a_{nn}\,.`

Analogiczne rozumowanie można zastosować dla dolnej macierzy trójkątnej. 

.. Twierdzenie 1. dotyczy również macierzy diagonalnej, która jest szczególnym przypadkiem macierzy  
   trójkątnej:

**Wniosek.** :math:`\\` 
Wyznacznik macierzy diagonalnej równa się iloczynowi elementów na głównej przekątnej:
 
.. math::
   
   \left|\,\begin{array}{cccccc}
         a_{11} &   0    &   0    & \dots  &   0         &   0    \\
           0    & a_{22} &   0    & \dots  &   0         &   0    \\
           0    &   0    & a_{33} & \dots  &   0         &   0    \\
         \dots  & \dots  & \dots  & \dots  & \dots       & \dots  \\
           0    &   0    &   0    & \dots  & a_{n-1,n-1} &   0    \\
           0    &   0    &   0    & \dots  &    0        & a_{nn} 
         \end{array}
   \right|\ \ =\ \ 
   a_{11}\ a_{22}\ a_{33}\ \dots\ a_{n-1,n-1}\ a_{nn}\,.

:math:`\;`

Zapiszemy dwa ważne twierdzenia, których dowody korzystają z rozwinięcia permutacyjnego. :math:`\\`

.. admonition:: Twierdzenie 2. (Cauchy'ego)
   
   Wyznacznik iloczynu dwóch macierzy równa się iloczynowi ich wyznaczników:

   .. math::
      
      \det\,(\boldsymbol{A}\boldsymbol{B})\ \,=\ \,\det\boldsymbol{A}\,\cdot\,\det\boldsymbol{B}\,,
      \qquad\boldsymbol{A},\boldsymbol{B}\in M_n(K).

**Dowód.** :math:`\,` 

.. Niech :math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\dots,\,\boldsymbol{C}_n\ `
   będą kolumnami macierzy :math:`\ \boldsymbol{C} = \boldsymbol{A}\boldsymbol{B}:`

Niech 
:math:`\ \boldsymbol{A}\ =\ [\,\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\,\dots\,|\,
\boldsymbol{A}_n\,]\,,\quad
\boldsymbol{B}\ =\ [b_{ij}]_{n\times n}\,,\quad
\boldsymbol{A}\boldsymbol{B}\ =\ 
[\,\boldsymbol{C}_1\,|\;\boldsymbol{C}_2\,|\,\dots\,|\,\boldsymbol{C}_n\,]\,.`

Według kolumnowej reguły mnożenia macierzowego, :math:`\,j`-ta kolumna macierzy
:math:`\boldsymbol{A}\boldsymbol{B}\ ` jest kombinacją liniową kolumn macierzy 
:math:`\boldsymbol{A}\ ` o współczynnikach z :math:`\,j`-tej kolumny macierzy
:math:`\boldsymbol{B}:`

.. math::
   
   \boldsymbol{C}_j\ \ =\ \ \sum_{p\,=\,1}^n\ b_{pj}\ \boldsymbol{A}_p\,, 
   \qquad j=1,2,\dots,n\,.

Wykorzystując liniowość wyznacznika ze względu na każdą kolumnę z osobna otrzymujemy

.. math::

   \det\,(\boldsymbol{A}\boldsymbol{B})\ \,=\ \,
   \det\,[\,\boldsymbol{C}_1\,|\;\boldsymbol{C}_2\,|\,\dots\,|\,\boldsymbol{C}_n\,]\ \ =

   =\ \ 
   \det\,\left[\left.\ \   \sum_{r\,=\,1}^n\ \,b_{r1}\,\boldsymbol{A}_r\ \ \right| 
               \left.\ \   \sum_{s\,=\,1}^n\ \,b_{s2}\,\boldsymbol{A}_s\ \ \right|
               \ \ \dots\ \ 
               \left|\ \ \,\sum_{t\,=\,1}^n\ \,b_{tn}\,\boldsymbol{A}_t\ \,\right.
         \right]\ \ =

   =\ \ 
   \sum_{r\,=\,1}^n\ \sum_{s\,=\,1}^n\ \ldots\ \sum_{t\,=\,1}^n\ \ 
   b_{r1}\ b_{s2}\ \ldots\ b_{tn}\ 
   \det\,[\,\boldsymbol{A}_r\,|\;\boldsymbol{A}_s\,|\,\dots\,|\,\boldsymbol{A}_t\,]\,.

Na podstawie własności IIIa. wyznacznika stwierdzamy, że różne od zera mogą być tylko te składniki, 
w których kolumny :math:`\ \boldsymbol{A}_r,\,\boldsymbol{A}_s,\,\ldots,\,\boldsymbol{A}_t\ `
mają różne wskaźniki, a więc te, dla których układ wartości wskaźników :math:`\ r,s,\dots,t\ `
jest permutacją zbioru :math:`\ \{1,2,\dots,n\}.\ ` Sumowanie przebiega więc faktycznie po permutacjach :math:`\,\sigma\in S_n\,.`

.. zbioru :math:`\ \{1,2,\dots,n\}.\ ` 

Korzystając następnie z własności :math:`\,` IIc. :math:`\,` i :math:`\,` wzoru :eq:`perm_exp_col`
:math:`\,` dla rozwinięcia permutacyjnego, dochodzimy do tezy twierdzenia:

.. math::
   
   \det\,(\boldsymbol{A}\boldsymbol{B})\ \,=\ \,    
   \sum_{\sigma\,\in\,S_n}\ 
   b_{\sigma(1),1}\ b_{\sigma(2),2}\ \ldots,\ b_{\sigma(n),n}\ 
   \det\,[\,\boldsymbol{A}_{\sigma(1)}\,|\;\boldsymbol{A}_{\sigma(2)}\,|\,\ldots\,|\,
   \boldsymbol{A}_{\sigma(n)}\,]\ \ =
   
   =\ \ 
   \det\boldsymbol{A}\,\cdot\,\sum_{\sigma\,\in\,S_n}\ 
   \text{sgn}\,\sigma\,\cdot\,
   b_{\sigma(1),1}\ b_{\sigma(2),2}\ \ldots,\ b_{\sigma(n),n}\ \ =\ \ 
   \det\boldsymbol{A}\,\cdot\,\det\boldsymbol{B}\,.

.. admonition:: Twierdzenie 3.
   
   Transpozycja macierzy nie zmienia wartości wyznacznika:

   .. math::
      
      \det\boldsymbol{A}^T\ =\ \,\det\boldsymbol{A}\,,\qquad\boldsymbol{A}\in M_n(K).

.. Dowód jest podany w innym miejscu.

**Wniosek.** :math:`\,`
Twierdzenia dotyczące wyznaczników pozostają słuszne, jeżeli słowa "kolumna" zamienić na "wiersz" i odwrotnie. W szczególności, własności I., II. i III., wyprowadzone w poprzedniej sekcji, odnoszą się również do wierszy. Samą definicję wyznacznika można sformułować w terminach wierszy, dochodząc do wierszowej wersji rozwinięcia permutacyjnego:

.. math::
   :label: perm_exp_verse
      
   \det\,\boldsymbol{A}\ \ =\ \ 
   \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{1,\,\sigma(1)}\ a_{2,\,\sigma(2)}\ \ldots\ a_{n,\,\sigma(n)}\,.

Dowód :math:`\,` Twierdzenia 3. :math:`\,` poprzedzą trzy lematy.

**Lemat 1.** :math:`\\` 
Zbiór odwrotności wszystkich elementów grupy :math:`\,S_n\ ` jest identyczny ze zbiorem :math:`\,S_n:`

.. math::
   
   \{\ \sigma^{-1}:\ \sigma\in S_n\ \}\ =\ S_n\ =\ \{\ \sigma:\ \sigma\in S_n\ \}\,.

Wynika to stąd, że odwzorowanie 
:math:`\ f :\ S_n\ni\sigma\ \rightarrow\ f(\sigma):\,=\sigma^{-1}\in S_n,\ `
które przypisuje każdemu elementowi :math:`\,\sigma\,` jego odwrotność,
jest bijekcją czyli wzajemnie jednoznacznym odwzorowaniem zbioru :math:`\,S_n\;` na siebie.

**Wniosek.** :math:`\,` 
Jeżeli dodawanie elementów :math:`\,F(\sigma)\,` jest przemienne, :math:`\,` to 

.. math::
   :label: lem_1
   
   \sum_{\sigma\,\in\,S_n} F(\sigma)\ \,=\ \,\sum_{\sigma\,\in\,S_n} F(\sigma^{-1})\,.

.. :math:`\displaystyle\quad\sum_{\sigma\,\in\,S_n} F(\sigma)\ =\ 
   \sum_{\sigma\,\in\,S_n} F(\sigma^{-1})\,.`

.. .. math::
   
   \sum_{\sigma\,\in\,S_n} F(\sigma)\ =\ \sum_{\sigma\,\in\,S_n} F(\sigma^{-1})\,.

**Lemat 2.** :math:`\,` 
Zbiorem wartości permutacji :math:`\,\sigma\in S_n\,` jest zbiór :math:`\,\{\,1,2,\ldots,n\,\}\,:`

.. math::
   
   \left\{\;\sigma(i):\ i\in\{1,2,\ldots,n\,\}\,\right\}\ =\ \{1,2,\ldots,n\,\}\,.

Wynika to z definicji permutacji 
jako odwzorowania zbioru :math:`\,\{\,1,2,\ldots,n\,\}\,` :math:`\,` *na* :math:`\,` siebie.

**Wniosek.** :math:`\,`
Jeżeli mnożenie elementów :math:`\,F(i)\,` jest przemienne, :math:`\,` to

.. math::
   :label: lem_2
   
   \prod_{i\,=\,1}^n\,F(i)\ \,=\ \,\prod_{i\,=\,1}^n\,F[\sigma(i)]\,.
 
.. :math:`\displaystyle\quad\prod_{i\,=\,1}^n F(i)\ =\ \prod_{i\,=\,1}^n F[\sigma(i)]\,.`

**Lemat 3.** :math:`\\` 
Permutacja odwrotna do :math:`\,\sigma\in S_n\ ` ma tę samą parzystość co 
wyjściowa permutacja :math:`\,\sigma:`

.. math::
   :label: lem_3
   
   \text{sgn}\,\sigma^{-1}\ =\ \,\text{sgn}\,\sigma\,,\qquad\sigma\in S_n\,.

**Dowód.** :math:`\,` 
Niech rozkład permutacji :math:`\,\sigma\,` na iloczyn transpozycji ma postać:

.. math::
   
   \sigma\ \,=\ \,\tau_1\ \tau_2\ \ldots\ \tau_{k-1}\ \tau_k\,.

Wtedy :math:`\ \ \sigma^{-1}\ =\ (\tau_1\,\tau_2\,\ldots\,\tau_{k-1}\,\tau_k)^{-1}\ =\ \,
\tau_k^{-1}\ \tau_{k-1}^{-1}\ \ldots\,\tau_2^{-1}\ \tau_1^{-1}\ =\ \,
\tau_k\ \tau_{k-1}\ \ldots\ \tau_2\ \tau_1\,,`

.. .. math::
   
   \sigma^{-1}\ =\ (\tau_1\,\tau_2\,\ldots\,\tau_{k-1}\,\tau_k)^{-1}\ =\ 
   \tau_k^{-1}\,\tau_{k-1}^{-1}\,\ldots\,\tau_2^{-1}\,\tau_1^{-1}\ =\ 
   \tau_k\,\tau_{k-1}\,\ldots\,\tau_2\,\tau_1\,,

bo odwrotność transpozycji :math:`\ \tau\ ` jest tą samą transpozycją. Stąd
:math:`\ \ \text{sgn}\,\sigma^{-1}\ =\ (-1)^k\ =\ \text{sgn}\,\sigma\,.` 

.. .. math::
   
   \text{sgn}\,\sigma^{-1}\ =\ (-1)^k\ =\ \text{sgn}\,\sigma\,. 



**Dowód** :math:`\,` Twierdzenia 3.

Niech :math:`\,\boldsymbol{A}  = [a_{ij}]_{n\times n}\in M_n(K).\ \ `

Wtedy :math:`\,\boldsymbol{A}^T= [\,a_{ij}^T\,]_{n\times n},\ \ `
gdzie :math:`\ \ a_{ij}^T = a_{ji},\ \ i,j = 1,2,\ldots,n.`

Wykorzystując równania 
:math:`\,` :eq:`lem_1`, :math:`\,` :eq:`lem_2` :math:`\,` i :math:`\,` :eq:`lem_3`, otrzymujemy 

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \det\boldsymbol{A}^T\  
   & = & 
   \ \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\,\sigma(1),\,1}^T\ \,a_{\,\sigma(2),\,2}^T\ \,\ldots\ \,a_{\,\sigma(n),\,n}^T \ \ = \\
   & = & 
   \ \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\,1,\,\sigma(1)}\ \,a_{\,2,\,\sigma(2)}\ \,\ldots\ \,a_{\,n,\,\sigma(n)} \ \ = \\
   & = & 
   \ \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma^{-1}\,\cdot\,
   a_{\,1,\,\sigma^{-1}(1)}\ \,a_{\,2,\,\sigma^{-1}(2)}\ \,\ldots\ \,a_{\,n,\,\sigma^{-1}(n)}\ \ = \\
   & = & 
   \ \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma^{-1}\,\cdot\,
   a_{\,\sigma(1),\,\sigma^{-1}[\sigma(1)]}\ \,a_{\,\sigma(2),\,\sigma^{-1}[\sigma(2)]}\ \,\ldots\ \,
   a_{\,\sigma(n),\,\sigma^{-1}[\sigma(n)]} \ \ = \\
   & = & 
   \ \sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\,\sigma(1),1}\ \,a_{\,\sigma(2),2}\ \,\ldots\ \,a_{\,\sigma(n),n} \ \ = \\
   & = &
   \ \det\boldsymbol{A}\;.
   \end{eqnarray*}

.. .. math::
   
   \begin{array}{ccl}
   \det\boldsymbol{A}^T 
   & = & 
   \ \displaystyle\sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\sigma(1),1}^T\ a_{\sigma(2),2}^T\ \ldots\ a_{\sigma(n),n}^T\ \ = \\
   & = & 
   \ \displaystyle\sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{1,\,\sigma(1)}\ a_{2,\,\sigma(2)}\ \ldots\ a_{n,\,\sigma(n)}\ \ = \\
   & = & 
   \ \displaystyle\sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma^{-1}\,\cdot\,
   a_{1,\,\sigma^{-1}(1)}\ a_{2,\,\sigma^{-1}(2)}\ \ldots\ a_{n,\,\sigma^{-1}(n)}\ \ = \\
   & = & 
   \ \displaystyle\sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma^{-1}\,\cdot\,
   a_{\sigma(1),\,\sigma^{-1}[\sigma(1)]}\ a_{\sigma(2),\,\sigma^{-1}[\sigma(2)]}\ \ldots\ 
   a_{\sigma(n),\,\sigma^{-1}[\sigma(n)]}\ \ = \\
   & = & 
   \ \displaystyle\sum_{\sigma\,\in\,S_n}\ \text{sgn}\,\sigma\,\cdot\,
   a_{\sigma(1),1}\ a_{\sigma(2),2}\ \ldots\ a_{\sigma(n),n}\ \ = \\
   & = &
   \ \ \det\boldsymbol{A}\;.
   \end{array}

   



























