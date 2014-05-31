.. -*- coding: utf-8 -*-

Metoda eliminacji w ujęciu macierzowym
--------------------------------------

Omówiona wcześniej metoda eliminacji wykorzystuje przekształcenia elementarne dla doprowadzenia układu równań liniowych do postaci schodkowej. 

Ten sam efekt można osiągnąć, zastępując operacje elementarne na równaniach odpowiednimi operacjami na wierszach macierzy rozszerzonej, reprezentującej układ równań.

Macierz rozszerzona układu równań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dla układu :math:`\,m\,` równań o :math:`\,n\,` niewiadomych:

.. math::
   :label: 01

   \begin{array}{c}
      a_{11}\,x_1\; + \ \,a_{12}\,x_2\; + \ \,\ldots\  + \ \;a_{1n}\,x_n \ \, = \ \ b_1 \\
      a_{21}\,x_1\; + \ \,a_{22}\,x_2\; + \ \,\ldots\  + \ \;a_{2n}\,x_n \ \, = \ \ b_2 \\
      \quad\,\ldots\qquad\quad\ldots\qquad\ \,\ldots\qquad\ \ \ldots\qquad\ \ \,\ldots    \\
      a_{m1}\,x_1\; + \ \,a_{m2}\,x_2\; + \ \,\ldots\  + \ \;a_{mn}\,x_n \ \, = \ \ b_m
   \end{array}

gdzie współczynniki :math:`\,a_{ij}\,` 
oraz wolne wyrazy :math:`\,b_i\ \ (i=1,2,\ldots,m;\ j=1,2,\ldots,n)\,`
należą do pewnego ciała :math:`\,K,\,`
definiujemy :math:`\,` *macierz współczynników* :math:`\,\boldsymbol{A},\ \ `
*kolumnę wolnych wyrazów* :math:`\,\boldsymbol{b}\ \,` i :math:`\ `
*kolumnę niewiadomych* :math:`\,\boldsymbol{x}:`

.. math::

   \boldsymbol{A}\  =\  \left[\;\begin{array}{cccc}
                           a_{11} & a_{12} & \ldots & a_{1n} \\
                           a_{21} & a_{22} & \ldots & a_{2n} \\
                           \ldots & \ldots & \ldots & \ldots \\
                           a_{m1} & a_{m2} & \ldots & a_{mn}
                        \end{array}\right]\,,\qquad
   \boldsymbol{b}\,=\,\left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{m} \end{array}\right]\,,\qquad
   \boldsymbol{x}\,=\,\left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right]\,.

Układ :eq:`01` można wtedy zapisać zwięźle jako

.. math::
   :label: 02

   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{b}.

Gdy wszystkie wolne wyrazy znikają: :math:`\ \boldsymbol{b} = \boldsymbol{0},\ ` 
układ równań jest *jednorodny*. Jednorodny układ równań

.. math::

   \boldsymbol{A}\,\boldsymbol{x}\ =\ \boldsymbol{0}

jest :math:`\,` *stowarzyszony* :math:`\,` z niejednorodnym układem :eq:`02`.

Dwa układy równań są :math:`\,` *równoważne*, :math:`\,` gdy mają ten sam zbiór rozwiązań. :math:`\\`

Dla układu :eq:`01` definiujemy również :math:`\,` *macierz rozszerzoną* :math:`\ \boldsymbol{B}\,:`

.. math::

   \boldsymbol{B}\ \,:\,=\ \,[\,\boldsymbol{A}\,|\,\boldsymbol{b}\;]\ \,
                     =\ \,\left[\begin{array}{ccccc}
                                a_{11} & a_{12} & \ldots & a_{1n} & b_1    \\
                                a_{21} & a_{22} & \ldots & a_{2n} & b_2    \\
                                \ldots & \ldots & \ldots & \ldots & \ldots \\
                                a_{m1} & a_{m2} & \ldots & a_{mn} & b_m
                          \end{array}\right]\,.

Podanie macierzy :math:`\ \boldsymbol{B}\,`
określa całkowicie układ równań :eq:`01`,
a operacjom elementarnym na równaniach odpowiadają 
analogiczne operacje na wierszach tej macierzy:

#. przestawienie dwóch wierszy,
#. pomnożenie dowolnego wiersza przez liczbę różną od zera,
#. | dodanie do jednego z wierszy dowolnej wielokrotności innego wiersza
   | (w szczególności: :math:`\,` dodanie bądź odjęcie dwóch wierszy).

Przekształcenia te dają układ równoważny wyjściowemu.
Operacje elementarne na kolumnach macierzy :math:`\,\boldsymbol{B}\,`
zmieniają na ogół zbiór rozwiązań, a więc nie są dopuszczalne przy rozwiązywaniu problemów liniowych.
Czasem warto jednak zmienić kolejność kolumn macierzy :math:`\,\boldsymbol{A},\,`
co prowadzi do układu równań różniącego się od wyjściowego jedynie numeracją niewiadomych.

Postać schodkowa macierzy
~~~~~~~~~~~~~~~~~~~~~~~~~

Zaczniemy od kilku definicji.

* Wiersz macierzy składający się z samych zer nazywamy *wierszem zerowym*.
* Wiersz, w którym nie wszystkie elementy znikają, jest *wierszem niezerowym*.
* *Element wiodący* (ang. pivot) danego wiersza niezerowego jest pierwszym
  od lewej elementem różnym od zera.

Macierz ma :math:`\,` *wierszową postać schodkową*, :math:`\,` gdy:

1. wszystkie wiersze zerowe (jeśli takie występują) są pod wierszami niezerowymi;
2. jeżeli dwa sąsiednie wiersze są niezerowe, to element wiodący wiersza dolnego
   jest przesunięty w prawo względem elementu wiodącego wiersza górnego.

.. (począwszy od wiersza drugiego, element wiodący każdego wiersza niezerowego
   jest przesunięty w prawo względem elementu wiodącego wiersza leżącego bezpośrednio nad nim)

Wynika stąd, że jeżeli w danej kolumnie występuje element wiodący pewnego wiersza,
to wszystkie elementy tej kolumny leżące pod tym elementem wiodącym są równe zeru
(a zatem poniżej głównej przekątnej macierzy występują tylko zera).

.. | (nie ma elementów niezerowych poniżej głównej przekątnej macierzy).

Przykład macierzy w wierszowej postaci schodkowej (zaznaczone elementy wiodące):

.. math::
   
   \left[
   \begin{array}{rrrrr}
   \boxed{2} &       -1  & 0 &        5  &        4 \\
          0  & \boxed{5} & 3 &        1  &       -1 \\
          0  &        0  & 0 & \boxed{1} &        8 \\
          0  &        0  & 0 &        0  & \boxed{7}
   \end{array}
   \right]\,.

   \;

Macierz jest w :math:`\,` *zredukowanej wierszowej postaci schodkowej*, :math:`\,` gdy dodatkowo:

3. wszystkie elementy wiodące są równe 1 :math:`\,` (nazywamy je wtedy jedynkami wiodącymi);
4. każda jedynka wiodąca jest jedynym elementem niezerowym w swojej kolumnie.

Przykład zredukowanej wierszowej postaci schodkowej (zaznaczone jedynki wiodące):

.. math::
   
   \left[
   \begin{array}{rrrrr}
   \boxed{1} &        0  & 6 &        0  &  2 \\
          0  & \boxed{1} & 3 &        0  & -1 \\
          0  &        0  & 0 & \boxed{1} &  4 \\
          0  &        0  & 0 &        0  &  0
   \end{array}
   \right]\,.
   
   \;

W analogiczny sposób można zdefiniować (*zredukowaną*) *kolumnową postać schodkową* macierzy.
Macierz będzie w (zredukowanej) kolumnowej postaci schodkowej wtedy,
gdy jej transpozycja ma (zredukowaną) wierszową postać schodkową.

Ponieważ operacjom na równaniach odpowiadają odpowiednie operacje na wierszach macierzy rozszerzonej,
w dalszym ciągu interesować nas będzie wyłącznie wierszowa wersja postaci schodkowej. :math:`\\`

Rozważania te można uogólnić na przypadek macierzy
określonej nad dowolnym pierścieniem :math:`\,P\,` z jednością
(np. nad pierścieniem liczb całkowitych :math:`\,Z).`

Operacje elementarne na wierszach są teraz następujące:

#. przestawienie dwóch wierszy,
#. pomnożenie wybranego wiersza przez dowolny *odwracalny* element pierścienia,
#. dodanie do jednego z wierszy innego wiersza, pomnożonego przez dowolny element pierścienia
   (w szczególności: dodanie bądź odjęcie dwóch wierszy).

Wykonując operacje elementarne na wierszach, można każdą macierz nad pierścieniem :math:`\,P\,` 
z jednością przekształcić do postaci schodkowej. Postępowanie takie nazywa się eliminacją Gaussa.
Natomiast każdą macierz nad ciałem :math:`\,K\,` da się w ten sposób doprowadzić
do (jednoznacznie określonej) zredukowanej postaci schodkowej
:math:`\,` - :math:`\,` mówi się wtedy o eliminacji Gaussa-Jordana.

Poniższa macierz :math:`\,\boldsymbol{A}\,` może być określona 
zarówno nad pierścieniem liczb całkowitych :math:`\,Z,\,`
jak i nad ciałem liczb wymiernych :math:`\,Q:`

.. math::

   \boldsymbol{A}\ =\   
   \left[\begin{array}{rrrr}
      2 & 5 &  3 &  0 \\
      2 & 0 & -2 & -1 \\
      0 & 0 &  4 &  5
   \end{array}\right]\,.

Jeżeli :math:`\,\boldsymbol{A}\,` jest macierzą nad pierścieniem :math:`\,Z,\,`
to wykonując operacje elementarne na jej wierszach :math:`\,r0,\,r1,\,r2\,`
(w Sage numeracja zaczyna się od zera!)
da się ją doprowadzić jedynie do postaci schodkowej:

.. math::

   \begin{array}{ccccc}
      & & \begin{array}{c}\small{r1=r1-r0,} \\
                          \small{r1=r1+r2:}\end{array} 
      & & \begin{array}{c}\small{r0=r0+r1,} \\
                          \small{r1=-r1:} \end{array} \\ \\
      \left[\begin{array}{rrrr}
         2 & 5 &  3 &  0 \\
         2 & 0 & -2 & -1 \\
         0 & 0 &  4 &  5
      \end{array}\right] & \rightarrow & 
      \left[\begin{array}{rrrr}
         2 &  5 &  3 & 0 \\
         0 & -5 & -1 & 4 \\
         0 &  0 &  4 & 5
      \end{array}\right] & \rightarrow & 
      \left[\begin{array}{rrrr}
         2 & 0 & 2 &  4 \\
         0 & 5 & 1 & -4 \\
         0 & 0 & 4 &  5
      \end{array}\right]
   \end{array}

Postać schodkowa jest faktycznie osiągnięta już w pierwszym kroku.
Dalsze przekształcenia zmierzają do postaci zredukowanej, której jednak nie da się otrzymać
w ramach operacji elementarnych w pierścieniu :math:`\,Z.`

Jeżeli przyjąć, że :math:`\,\boldsymbol{A}\,` jest macierzą nad ciałem :math:`\,Q,\,`
to przekształcenia można kontynuować aż do zredukowanej postaci schodkowej:

.. math::

   \begin{array}{cccccc}
        & \begin{array}{c} \small{r0=2\ r0,} \\ 
                           \small{r1=4\ r1:} \end{array} 
      & & \begin{array}{c} \small{r0=r0-r2,} \\
                           \small{r1=r1-r2:} \end{array}
      & & \begin{array}{c} \small{r0=r0/4,}  \\
                           \small{r1=r1/20,} \\
                           \small{r2=r2/4:} \end{array} \\ \\
      \rightarrow &
      \left[\begin{array}{rrrr}
         4 &  0 & 4 &   8 \\
         0 & 20 & 4 & -16 \\
         0 &  0 & 4 &   5
      \end{array}\right] & \rightarrow & 
      \left[\begin{array}{rrrr}
         4 &  0 & 0 &   3 \\
         0 & 20 & 0 & -21 \\
         0 &  0 & 4 &   5
      \end{array}\right] & \rightarrow & 
      \left[\begin{array}{cccc}
         1 & 0 & 0 &   3/4  \\
         0 & 1 & 0 & -21/20 \\
         0 & 0 & 1 &   5/4
      \end{array}\right]\,.
   \end{array}

   \;

Praktyczna eliminacja w Sage
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

W systemie Sage istnieją funkcje (dokładnie: metody),
które wykonują operacje elementarne na macierzach:

#. ``swap_rows(i,j)`` przestawia wiersze i-ty oraz j-ty;
#. ``rescale_row(i,a)`` mnoży i-ty wiersz przez czynnik a;
#. ``add_multiple_of_row(i,j,a)`` do i-tego wiersza dodaje wiersz j-ty pomnożony przez czynnik a.

Jeżeli :math:`\,\boldsymbol{A}\,` jest macierzą, :math:`\ \,\boldsymbol{b}\ \ \,\text{-}\ `
macierzą albo wektorem, :math:`\,` to polecenie ``A.augment(b)`` zwraca macierz, 
otrzymaną z :math:`\,\boldsymbol{A}\,` przez dopisanie  z prawej strony kolumny
:math:`\,\boldsymbol{b}\,` (wektor :math:`\,\boldsymbol{b}\,` jest przekształcony wcześniej do macierzy 1-kolumnowej). Metodę ``augment()`` można więc użyć do utworzenia macierzy rozszerzonej 
z macierzy współczynników i kolumny wolnych wyrazów. 

Metoda ``echelon_form()`` zwraca macierz (zadaną nad dowolnym pierścieniem z jednością)
przekształconą do postaci schodkowej, natomiast ``rref()`` (ang.: reduced row echelon form)
daje w wyniku zredukowaną postać schodkową. Jeżeli pierścieniem bazowym macierzy nie jest ciało,
to operacja ``rref()`` jest wykonywana na równoważnej macierzy nad ciałem liczb wymiernych.

Wykorzystamy opisane operacje do sprawdzenia wyniku z końca poprzedniej sekcji:
   
.. sagecellserver::
   
   A = matrix([[2, 5, 3, 0],
               [2, 0,-2,-1],
               [0, 0, 4, 5]])
   
   show((A, A.echelon_form(), A.rref()))

:math:`\;`

**Przykład 1.** :math:`\,` **Układ oznaczony.**

Zastosujemy metodę eliminacji
do układu równań nad ciałem :math:`\,Q:`

.. math::
   :nowrap:

   \begin{alignat*}{4}
      2\,x_1 & {\,} - {\,} &    x_2 & {\,} - {\,} &    x_3 & {\;} = {\;} &  4 \\
      3\,x_1 & {\,} + {\,} & 4\,x_2 & {\,} - {\,} & 2\,x_3 & {\;} = {\;} & 11 \\
      3\,x_1 & {\,} - {\,} & 2\,x_2 & {\,} + {\,} & 4\,x_3 & {\;} = {\;} & 11
   \end{alignat*}

Macierz współczynników :math:`\,\boldsymbol{A},\,`
kolumna wolnych wyrazów :math:`\,\boldsymbol{b}\,`
oraz macierz rozszerzona :math:`\,\boldsymbol{B}:`

.. math::

   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrr}
      2 & -1 & -1 \\
      3 &  4 & -2 \\
      3 & -2 &  4
   \end{array}\right]\,,\quad
   \boldsymbol{b}\ =\ 
   \left[\begin{array}{r}
      4 \\ 11 \\ 11
   \end{array}\right]\,,\qquad
   \boldsymbol{B}\ =\ 
   \left[\begin{array}{rrrr}
      2 & -1 & -1 &  4 \\
      3 &  4 & -2 & 11 \\
      3 & -2 &  4 & 11 
   \end{array}\right]\,.

   \;

Operacje elementarne na wierszach :math:`\,r0,\,r1,\,r2\,` macierzy :math:`\,\boldsymbol{B}:`

.. math::
   
   \begin{array}{cccccc}
      & & \small{r2=r2-r1:} 
      & & \begin{array}{c} \small{r1=r1-r0,} \\ 
                           \small{r2=-r2/6:} \end{array} & \\ \\
      \left[\begin{array}{rrrr}
         2 & -1 & -1 &  4 \\
         3 &  4 & -2 & 11 \\
         3 & -2 &  4 & 11
      \end{array}\right] & \rightarrow &
      \left[\begin{array}{rrrr}
         2 & -1 & -1 &  4 \\
         3 &  4 & -2 & 11 \\
         0 & -6 &  6 &  0
      \end{array}\right] & \rightarrow &
      \left[\begin{array}{rrrr}
         2 & -1 & -1 & 4 \\
         1 &  5 & -1 & 7 \\
         0 &  1 & -1 & 0
      \end{array}\right] & \rightarrow \\ \\ \\ \\
      \small{r0=r0-2\,r1:} & & \small{r0,r1,r2=r1,r2,r0:} & & \small{r2=r2+11\,r1:} & \\ \\
      \left[\begin{array}{rrrr}
         0 & -11 &  1 & -10 \\
         1 &   5 & -1 &   7 \\
         0 &   1 & -1 &   0
      \end{array}\right] & \rightarrow &
      \left[\begin{array}{rrrr}
         1 &   5 & -1 &   7 \\
         0 &   1 & -1 &   0 \\
         0 & -11 &  1 & -10
      \end{array}\right] & \rightarrow &
      \left[\begin{array}{rrrr}
         1 & 5 &  -1 &   7 \\
         0 & 1 &  -1 &   0 \\
         0 & 0 & -10 & -10
      \end{array}\right] & \rightarrow \\ \\
      \small{r2=-r2/10:} & & \begin{array}{l}\small{r0=r0+r2,} \\
                                             \small{r1=r1+r2:} \end{array} 
                         & & \small{r0=r0-5\,r1:} & \\ \\
      \left[\begin{array}{rrrr}
         1 & 5 & -1 & 7 \\
         0 & 1 & -1 & 0 \\
         0 & 0 &  1 & 1
      \end{array}\right] & \rightarrow &
      \left[\begin{array}{rrrr}
         1 & 5 & 0 & 8 \\
         0 & 1 & 0 & 1 \\
         0 & 0 & 1 & 1
      \end{array}\right] & \rightarrow & 
      \left[\begin{array}{rrrr}
         1 & 0 & 0 & 3 \\
         0 & 1 & 0 & 1 \\
         0 & 0 & 1 & 1
      \end{array}\right]\,. &   
   \end{array}

Program, wykonujący krok po kroku te operacje, przedstawia się następująco:

.. code-block:: python

   sage: A = matrix(QQ,[[2,-1,-1],      # macierz współczynników
   ...                  [3, 4,-2],
   ...                  [3,-2, 4]])

   sage: b = vector([4,11,11])          # wektor wolnych wyrazów

   sage: B = A.augment(b)               # macierz rozszerzona
                                        
   sage: B.add_multiple_of_row(2,1,-1)  # od trzeciego wiersza odejmij drugi
                                        
   sage: B.add_multiple_of_row(1,0,-1)  # od drugiego wiersza odejmij pierwszy
   sage: B.rescale_row(2,-1/6)          # trzeci wiersz podziel przez -6
                                        
   sage: B.add_multiple_of_row(0,1,-2)  # od pierwszego wiersza odejmij podwojony drugi
                                        
   sage: B.swap_rows(0,1)               # przestaw wiersz pierwszy z drugim
   sage: B.swap_rows(1,2)               # przestaw wiersz drugi z trzecim 
                                        
   sage: B.add_multiple_of_row(2,1,11)  # do trzeciego wiersza dodaj drugi 
                                        # pomnożony przez 11
                                        
   sage: B.rescale_row(2,-1/10)         # trzeci wiersz podziel przez -10
                                        
   sage: B.add_multiple_of_row(0,2,1)   # do pierwszego wiersza dodaj trzeci
   sage: B.add_multiple_of_row(1,2,1)   # do drugiego wiersza dodaj trzeci
                                        
   sage: B.add_multiple_of_row(0,1,-5)  # od pierwszego wiersza odejmij drugi 
                                        # pomnożony przez 5

   sage: B                              # pokaż przekształconą macierz B

Funkcja ``rref()`` daje wynik bezpośrednio:

.. code-block:: python

   sage: A = matrix(QQ,[[2,-1,-1],      # macierz współczynników
   ...                  [3, 4,-2],
   ...                  [3,-2, 4]])

   sage: b = vector([4,11,11])          # wektor wolnych wyrazów

   sage: B = A.augment(b)               # macierz rozszerzona   

   sage: B.rref()                       # pokaż zredukowaną schodkową postać macierzy B

   [1 0 0 3]
   [0 1 0 1]
   [0 0 1 1]

Zredukowanej schodkowej macierzy :math:`\,\boldsymbol{B}\,`
odpowiada trywialna postać układu równań:

.. math::
   :nowrap:

   \begin{alignat*}{4}
      1\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 0\,x_3 & {\;} = {\;} & 3 \\
      0\,x_1 & {\,} + {\,} & 1\,x_2 & {\,} + {\,} & 0\,x_3 & {\;} = {\;} & 1 \\
      0\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 1\,x_3 & {\;} = {\;} & 1
   \end{alignat*}


z której odczytujemy od razu rozwiązanie: :math:`\ \ x_1 = 3,\ x_2=x_3 = 1.` :math:`\\`

**Ćwiczenie.** :math:`\,`
W komórce z kodem programu zadana jest macierz współczynników :math:`\boldsymbol{A}\,`
i wektor wolnych wyrazów :math:`\,\boldsymbol{b}\,` pewnego układu czterech równań
o czterech niewiadomych nad ciałem liczb wymiernych.

1. Utwórz macierz rozszerzoną :math:`\,\boldsymbol{B}\,`
   i sprowadź ją do zredukowanej postaci schodkowej.

2. Dla sprawdzenia otrzymanego rozwiązania zbadaj,
   czy iloczyn macierzy :math:`\boldsymbol{A}\,` przez kolumnę wyliczonych wartości niewiadomych
   równa się kolumnie wolnych wyrazów.

Wskazówki do punktu 2.: :math:`\,`
Kolumna wartości niewiadomych jest ostatnią kolumną
macierzy rozszerzonej w zredukowanej postaci schodkowej;
można ją wyodrębnić operacją wycinania.
Do przekształcenia wektora w macierz jednokolumnową służy metoda ``column()``. :math:`\\`

.. sagecellserver::

   sage: A = matrix(QQ,[[1, 2, 3,-2],
   ...                  [2,-1,-2,-3],
   ...                  [3, 2,-1, 2],
   ...                  [2,-3, 2, 1]])
               
   sage: b = vector([6,8,4,-8])

:math:`\,`

**Przykład 2.** :math:`\,` **Układ nieoznaczony.**

Zajmiemy się teraz układem trzech równań o czterech niewiadomych
nad ciałem liczb wymiernych :math:`\,Q:`

.. math::
   :nowrap:

   \begin{alignat*}{5}
      x_1 & {\,} - {\,} &    x_2 & {\,} + {\,} & 2\,x_3 & {\,} - {\,} &    x_4 & {\;} = {\;} &  1 \\
   2\,x_1 & {\,} - {\,} & 3\,x_2 & {\,} - {\,} &    x_3 & {\,} + {\,} &    x_4 & {\;} = {\;} & -1 \\
      x_1 & {\,}   {\,} &        & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} &  4
   \end{alignat*}

   \;

Macierz rozszerzoną przekształcamy od razu do zredukowanej postaci schodkowej:

.. code-block:: python

   sage: B = matrix(QQ,[[1,-1, 2,-1, 1],
   ...                  [2,-3,-1, 1,-1],
   ...                  [1, 0, 7,-4, 4]])

   sage: html.table([[B, '$\\rightarrow$', B.rref()]])

.. math::

   \left(\begin{array}{rrrrr}
         1 & -1 &  2 & -1 &  1 \\
         2 & -3 & -1 &  1 & -1 \\
         1 &  0 &  7 & -4 &  4
         \end{array}\right)\quad\rightarrow\quad\left(\begin{array}{rrrrr}
                                                      1 & 0 & 7 & -4 & 4 \\
                                                      0 & 1 & 5 & -3 & 3 \\
                                                      0 & 0 & 0 &  0 & 0
                                                      \end{array}\right)\,,

   \;

której odpowiada równoważny wyjściowemu układ dwóch równań o czterech niewiadomych
(trzecie równanie o wszystkich współczynnikach zerowych jest spełnione tożsamościowo):

.. .. math::
   :nowrap:

   \begin{alignat*}{5}
   1\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} &  4 \\
   0\,x_1 & {\,} + {\,} & 1\,x_2 & {\,} + {\,} & 5\,x_3 & {\,} - {\,} & 3\,x_4 & {\;} = {\;} &  3
   \end{alignat*}

.. math::

   \begin{array}{l}
   1\,x_1 \ + \ 0\,x_2 \ + \ 7\,x_3 \ - \ 4\,x_4 \ = \ 4 \\
   0\,x_1 \ + \ 1\,x_2 \ + \ 5\,x_3 \ - \ 3\,x_4 \ = \ 3 \,.
   \end{array}

   \;

Przepisując go w postaci

.. math::
   
   \begin{array}{c} 
   x_1\ =\ 4\ -\ 7\,x_3\ +\ 4\,x_4 \\ x_2\ =\ 3\ -\ 5\,x_3\ +\ 3\,x_4
   \end{array}

.. .. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\;} = {\;} & 4 & {\,} - {\,} & 7\,x_3 & {\,} + {\,} & 4\,x_4 \\
      x_2 & {\;} = {\;} & 3 & {\,} - {\,} & 5\,x_3 & {\,} + {\,} & 3\,x_4
   \end{alignat*}

stwierdzamy, że każdemu układowi wartości :math:`\,x_3,\,x_4\,`
odpowiada dokładnie jedna para wartości :math:`\,x_1,\,x_2,` dla których układ jest spełniony.
W tej sytuacji przyjmujemy :math:`\,x_3,\,x_4\,` za dowolne parametry:
:math:`\ x_3 = s,\ x_4 = t,\ ` a rozwiązanie zapisujemy jako

.. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\;} = {\;} & 4 & {\,} - {\,} & 7\,s & {\,} + {\,} & 4\,t \\
      x_2 & {\;} = {\;} & 3 & {\,} - {\,} & 5\,s & {\,} + {\,} & 3\,t \\
      x_3 & {\;} = {\;} & s \\
      x_4 & {\;} = {\;} & t
   \end{alignat*}

gdzie :math:`\,s\ \,\text{i}\ \,t\,` są dowolnymi liczbami wymiernymi. :math:`\,` 
W zapisie wektorowym:

.. math::
   :label: 03

   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \\ x_4 \end{array}\right]\ \ =\ \   
   \left[\begin{array}{c}
      4 - 7\,s + 4\,t \\
      3 - 5\,s + 3\,t \\
      s               \\
      t
   \end{array}\right]\ \  =\ \  
   \left[\begin{array}{r}  4 \\  3 \\ 0 \\ 0 \end{array}\right]\ +\ s\ \,
   \left[\begin{array}{r} -7 \\ -5 \\ 1 \\ 0 \end{array}\right]\ +\ t\ \,
   \left[\begin{array}{r} 4 \\ 3 \\ 0 \\ 1 \end{array}\right],\quad
   s,t\in Q.

   \;

Omówiony przykład sugeruje ogólną metodę postępowania z nieoznaczonym układem równań:
po doprowadzeniu macierzy rozszerzonej do zredukowanej postaci schodkowej
niewiadome, odpowiadające kolumnom z jedynkami wiodącymi wyrażamy poprzez pozostałe niewiadome, 
po czym te ostatnie przyjmujemy za parametry o dowolnych wartościach. :math:`\\`

**Przykład 3.** :math:`\,` **Układ sprzeczny.**

Zbadamy układ równań, różniący się od poprzedniego tylko jednym wolnym wyrazem:

.. math::
   :nowrap:

   \begin{alignat*}{5}
      x_1 & {\,} - {\,} &    x_2 & {\,} + {\,} & 2\,x_3 & {\,} - {\,} &    x_4 & {\;} = {\;} & 1 \\
   2\,x_1 & {\,} - {\,} & 3\,x_2 & {\,} - {\,} &    x_3 & {\,} + {\,} &    x_4 & {\;} = {\;} & 1 \\
      x_1 & {\,}   {\,} &        & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} & 4
   \end{alignat*}

Ta drobna zmiana powoduje, że układ staje się sprzeczny.

Rzeczywiście, macierzy rozszerzonej przekształconej do zredukowanej postaci schodkowej:

.. .. code-block:: python

   sage: B = matrix(QQ,[[1,-1, 2,-1, 1],
   ...                  [2,-3,-1, 1, 1],
   ...                  [1, 0, 7,-4, 4]])

   sage: html.table([[B, '$\\rightarrow$', B.rref()]])

.. math::

   \left[\begin{array}{rrrrr}
         1 & -1 &  2 & -1 &  1 \\
         2 & -3 & -1 &  1 &  1 \\
         1 &  0 &  7 & -4 &  4
         \end{array}\right]\quad\rightarrow\quad\left[\begin{array}{rrrrr}
                                                      1 & 0 & 7 & -4 & 0 \\
                                                      0 & 1 & 5 & -3 & 0 \\
                                                      0 & 0 & 0 &  0 & 1
                                                      \end{array}\right]

odpowiada teraz (równoważny wyjściowemu) układ równań

.. math::
   :nowrap:

   \begin{alignat*}{5}
   1\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} &  0 \\
   0\,x_1 & {\,} + {\,} & 1\,x_2 & {\,} + {\,} & 5\,x_3 & {\,} - {\,} & 3\,x_4 & {\;} = {\;} &  0 \\
   0\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 0\,x_3 & {\,} + {\,} & 0\,x_4 & {\;} = {\;} &  1
   \end{alignat*}

który ewidentnie nie ma żadnych rozwiązań, 
bo dla żadnych wartości :math:`\,x_1,\,x_2,\,x_3,\,x_4\,`
nie będzie spełnione ostatnie równanie :math:`\ 0=1.`

**Przykład 4.** :math:`\,` **Układ jednorodny.** :math:`\\`

Rozwiążemy teraz układ jednorodny
stowarzyszony z układem w przykładzie 2.:

.. math::
   :nowrap:

   \begin{alignat*}{5}
      x_1 & {\,} - {\,} &    x_2 & {\,} + {\,} & 2\,x_3 & {\,} - {\,} &    x_4 & {\;} = {\;} & 0 \\
   2\,x_1 & {\,} - {\,} & 3\,x_2 & {\,} - {\,} &    x_3 & {\,} + {\,} &    x_4 & {\;} = {\;} & 0 \\
      x_1 & {\,}   {\,} &        & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} & 0
   \end{alignat*}

Po przekształceniu macierzy rozszerzonej do zredukowanej postaci schodkowej:

.. code-block:: python

   sage: B = matrix(QQ,[[1,-1, 2,-1, 0],
   ...                  [2,-3,-1, 1, 0],
   ...                  [1, 0, 7,-4, 0]])

   sage: html.table([[B, '$\\rightarrow$', B.rref()]])

.. math::

   \left(\begin{array}{rrrrr}
         1 & -1 &  2 & -1 &  0 \\
         2 & -3 & -1 &  1 &  0 \\
         1 &  0 &  7 & -4 &  0
         \end{array}\right)\quad\rightarrow\quad\left(\begin{array}{rrrrr}
                                                      1 & 0 & 7 & -4 & 0 \\
                                                      0 & 1 & 5 & -3 & 0 \\
                                                      0 & 0 & 0 &  0 & 0
                                                      \end{array}\right)

   \;

otrzymujemy równoważny układ dwóch równań (trzecie jest spełnione tożsamościowo): :math:`\\`

.. math::
   :nowrap:

   \begin{alignat*}{5}
   1\,x_1 & {\,} + {\,} & 0\,x_2 & {\,} + {\,} & 7\,x_3 & {\,} - {\,} & 4\,x_4 & {\;} = {\;} &  0 \\
   0\,x_1 & {\,} + {\,} & 1\,x_2 & {\,} + {\,} & 5\,x_3 & {\,} - {\,} & 3\,x_4 & {\;} = {\;} &  0
   \end{alignat*}

Przepisujemy go jako

.. :math:`\qquad\qquad
   \begin{array}{c} 
   x_1\ =\ -\ 7\,x_3\ +\ 4\,x_4 \\ x_2\ =\ -\ 5\,x_3\ +\ 3\,x_4
   \end{array}`

.. math::
   :nowrap:

   \begin{alignat*}{3}
      x_1 & {\;} = {\,} - {\,} & 7\,x_3 & {\,} + {\,} & 4\,x_4 \\
      x_2 & {\;} = {\,} - {\,} & 5\,x_3 & {\,} + {\,} & 3\,x_4
   \end{alignat*}

i :math:`\,` tak jak w przykładzie 2., :math:`\,` 
przyjmujemy :math:`\,x_3,\,x_4\,` za dowolne parametry: :math:`\ x_3 = s,\ x_4 = t :` 

.. math::

   \begin{array}{l}
      x_1 \ =\ - 7\,s\ +\ 4\,t \\
      x_2 \ =\ - 5\,s\ +\ 3\,t \\
      x_3 \ =\quad s                                \\
      x_4 \ =\quad t
   \end{array}
   \qquad\qquad s,t\in Q\,.

Ostatecznie, rozwiązanie w postaci wektorowej dane jest przez :math:`\\`

.. math::
   :label: 04

   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \\ x_4 \end{array}\right]\quad =\quad  
   \left[\begin{array}{c}
      - 7\,s + 4\,t \\
      - 5\,s + 3\,t \\
      s             \\
      t
   \end{array}\right]\quad =\quad 
   s\ \left[\begin{array}{r} -7 \\ -5 \\ 1 \\ 0 \end{array}\right]\ \, +\ \: 
   t\ \left[\begin{array}{r} 4 \\ 3 \\ 0 \\ 1 \end{array}\right]\,,\qquad
   s,t\in Q\,.

   \;

Porównanie rozwiązań :eq:`03` i :eq:`04` układów w przykładach 2. i 4. sugeruje związek
pomiędzy rozwiązaniami układu niejednorodnego i stowarzyszonego z nim układu jednorodnego.
Sprawa ta będzie omówiona ogólnie w dalszym rozdziale.












 
  


  












