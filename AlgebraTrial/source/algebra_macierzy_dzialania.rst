
Definitions of Matrix Operations
--------------------------------

W tej sekcji zdefiniujemy dodawanie macierzy o tych samych rozmiarach, 
mnożenie macierzy przez liczbę oraz mnożenie macierzowe, gdzie iloczynem dwóch macierzy
o odpowiednio dobranych rozmiarach jest macierz.

Mnożenie macierzowe będzie wprowadzone w dwóch etapach: 
definicja iloczynu macierzy przez wektor kolumnowy 
(umożliwiająca zwięzły zapis układu równań liniowych)
będzie następnie uogólniona do przypadku mnożenia macierzy przez macierz wielokolumnową.

.. Jeżeli operację mnożenia wektora z lewej strony przez macierz uznać za działanie zewnętrzne
   w zbiorze wektorów, to iloczyn dwóch macierzy kwadratowych tego samego stopnia można zdefiniować
   niezależnie jako macierz, odpowiadającą złożeniu dwóch takich operacji.

.. Jeżeli mnożenie wektora z lewej strony przez macierz uznać za działanie zewnętrzne w zbiorze
   wektorów, to mnożenie macierzy kwadratowych tego samego stopnia można zdefiniować niezależnie 
   od poprzedniej definicji.

Addition and Scalar Multiplication. Vector Space of Matrices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważmy układ :math:`\,m\,` równań liniowych o :math:`\,n\,` niewiadomych:

.. math::
   :label: set_eqn

   \begin{array}{c}
      a_{11}\,x_1\; + \ \,a_{12}\,x_2\; + \ \,\ldots\  + \ \;a_{1n}\,x_n \ \, = \ \ b_1 \\
      a_{21}\,x_1\; + \ \,a_{22}\,x_2\; + \ \,\ldots\  + \ \;a_{2n}\,x_n \ \, = \ \ b_2 \\
      \quad\,\ldots\qquad\quad\ldots\qquad\,\ldots\qquad\ \ \ldots\qquad\ \ \,\ldots    \\
      a_{m1}\,x_1\; + \ \,a_{m2}\,x_2\; + \ \,\ldots\  + \ \;a_{mn}\,x_n \ \, = \ \ b_m
   \end{array}

Współczynniki :math:`\,a_{ij}\,` przy niewiadomych :math:`(i=1,2,\ldots,m;\ \;j=1,2,\ldots,n)` 
tworzą *macierz prostokątną* :math:`\,\boldsymbol{A}\,` o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach, oznaczaną krótko :math:`\,[a_{ij}]_{m\times n}:`

.. math::

   \boldsymbol{A}\  =\  [a_{ij}]_{m\times n} \  =\  \left[\begin{array}{cccc}
                                                        a_{11} & a_{12} & \ldots & a_{1n} \\
                                                        a_{21} & a_{22} & \ldots & a_{2n} \\
                                                        \ldots & \ldots & \ldots & \ldots \\
                                                        a_{m1} & a_{m2} & \ldots & a_{mn}
                                                    \end{array}\right]\,.

.. admonition:: Zapamiętaj: :math:`\,`

   Przy zapisie elementu :math:`\,a_{ij}\,` macierzy :math:`\,` pierwszy wskaźnik (tutaj: :math:`i`) 
   oznacza wiersz, :math:`\\`
   a drugi wskaźnik (tutaj: :math:`j`) :math:`\,` - :math:`\,` kolumnę, 
   w której znajduje się ten element.

Zbiór wszystkich macierzy prostokątnych o :math:`\ m\ ` wierszach :math:`\,` 
i :math:`\ \,n\ ` kolumnach, :math:`\,` których elementy należą do ciała :math:`\,K,\,` oznaczamy :math:`\,M_{m\times n}(K)\ `
(najczęściej :math:`\,K\,` jest ciałem liczb rzeczywistych :math:`\,R\,`
bądź ciałem liczb zespolonych :math:`\,C`).

Jeżeli :math:`\,m=n,\,` to mówimy o macierzy kwadratowej stopnia :math:`\,n.`
Zbiór wszystkich takich macierzy kwadratowych oznaczamy :math:`M_n(K).`

Macierze jednokolumnowe, tworzące zbiór :math:`\,M_{n\times 1}(K),\ `
będą utożsamiane z :math:`\,n`-elementowymi wektorami kolumnowymi ze zbioru :math:`\,K^n.\,`
Przykładem są wektory kolumnowe złożone z niewiadomych :math:`\ x_j\ \;(j=1,2,\ldots,n)\ \,`
i :math:`\ ` wolnych wyrazów :math:`\,b_i\ \;(i=1,2,\ldots,m):`

.. math::

   \boldsymbol{x}\,=\,\left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right]
   \ \in\ K^n\simeq M_{n\times 1}(K)\,,
   \qquad
   \boldsymbol{b}\,=\,\left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{m} \end{array}\right]
   \ \in\ K^m\simeq M_{m\times 1}(K)\,.
   
Macierze należące do zbioru :math:`\,M_{m\times n}(K)\,` można dodawać:

.. math::

   \left[\begin{array}{ccc} 
       a_{11} & \ldots & a_{1n} \\
       a_{21} & \ldots & a_{2n} \\
       \ldots & \ldots & \ldots \\
       a_{m1} & \ldots & a_{mn}
   \end{array}\right]
   \ \ + \ \ 
   \left[\begin{array}{ccc} 
       b_{11} & \ldots & b_{1n} \\
       b_{21} & \ldots & b_{2n} \\
       \ldots & \ldots & \ldots \\
       b_{m1} & \ldots & b_{mn}
   \end{array}\right]
   \ \ :\,= \ \ 
   \left[\begin{array}{ccc} 
       a_{11} + b_{11} & \ldots & a_{1n} + b_{1n} \\
       a_{21} + b_{21} & \ldots & a_{2n} + b_{2n} \\
           \ldots      & \ldots &     \ldots      \\
       a_{m1} + b_{m1} & \ldots & a_{mn} + b_{mn}
   \end{array}\right]

i :math:`\,` mnożyć przez liczby :math:`\, c \in K`:

.. math::

   c \ \ 
   \left[\begin{array}{cccc} 
       a_{11} & a_{12} & \ldots & a_{1n} \\
       a_{21} & a_{22} & \ldots & a_{2n} \\
       \ldots  & \ldots & \ldots & \ldots \\
       a_{m1} & a_{m2} & \ldots & a_{mn}
   \end{array}\right]
   \ \ :\,= \ \ 
   \left[\begin{array}{cccc}
       c \; a_{11} & c \; a_{12} & \ldots & c \; a_{1n} \\
       c \; a_{21} & c \; a_{22} & \ldots & c \; a_{2n} \\
       \ldots      & \ldots      & \ldots & \ldots      \\
       c \; a_{m1} & c \; a_{m2} & \ldots & c \; a_{mn}
   \end{array}\right]\,.

Jak widać,  dodawanie macierzy polega na dodawaniu ich odpowiednich elementów,  które są liczbami.
Wynika stąd łączność i przemienność dodawania macierzowego:

:math:`\quad (\boldsymbol{A} + \boldsymbol{B}) \, + \, \boldsymbol{C}
\ \; = \ \;
\boldsymbol{A} \, + \, (\boldsymbol{B} + \boldsymbol{C})\,,`
  
:math:`\quad\ \boldsymbol{A}\, + \,\boldsymbol{B}\ \,=\ \,\boldsymbol{B}\, + \,\boldsymbol{A},
\qquad\boldsymbol{A}, \, \boldsymbol{B}, \, \boldsymbol{C}\,\in \, M_{m\times n}(K).`
   
Łatwo następnie sprawdzić, że zbiór :math:`\ M_{m\times n}(K)\ ` jest grupą 
ze względu na dodawanie. 

Inną łatwą do udowodnienia własnością działań na macierzach jest rozdzielność mnożenia macierzy przez liczby,
zarówno względem dodawania liczb, :math:`\,` jak i dodawania macierzy:

:math:`\quad (a + b)\,\boldsymbol{A}\ =\ a\,\boldsymbol{A}\, +\, b\,\boldsymbol{A}\,,`

:math:`\quad a\,(\boldsymbol{A} + \boldsymbol{B})\ =\ a\,\boldsymbol{A}\, +\, a\,\boldsymbol{B}\,,
\qquad a,\,b\,\in K,\quad\boldsymbol{A},\,\boldsymbol{B}\,\in\, M_{m\times n}(K)\,.`

Spełnione są również warunki

:math:`\quad a\,(b\boldsymbol{A})\ =\ (ab)\,\boldsymbol{A},\qquad 1\,\boldsymbol{A}\ =\ \boldsymbol{A},
\qquad\qquad 1,\,a,\,b\,\in K,\quad\boldsymbol{A}\,\in\, M_{m\times n}(K)\,.`

Macierze o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach nad ciałem :math:`\,K\,` 
tworzą więc przestrzeń wektorową nad tym ciałem. 

.. Zbiór :math:`\,M_{m\times n}(K)\,` jest więc przestrzenią wektorową nad ciałem :math:`\,K.` 

Multiplication of a Matrix by a Column Vector (Matrix-Vector Product)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
Iloczyn macierzy :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,` 
o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach
przez :math:`\,n`-elementowy wektor kolumnowy :math:`\,\boldsymbol{x}\in K^n\,` 
definiujemy następująco:

.. math::
   :label: prod_col
   
   \left[\begin{array}{cccc}
      a_{11} & a_{12} & \ldots & a_{1n} \\
      a_{21} & a_{22} & \ldots & a_{2n} \\
      \ldots & \ldots & \ldots & \ldots \\
      a_{m1} & a_{m2} & \ldots & a_{mn} \\
   \end{array}\right]
   \ 
   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right]
   \ :\,=\  
   \left[\begin{array}{c}
      a_{11}\,x_1 +\,a_{12}\,x_2 + \,\ldots\, +\,a_{1n}\,x_n \\
      a_{21}\,x_1 +\,a_{22}\,x_2 + \,\ldots\, +\,a_{2n}\,x_n \\
      \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots         \\
      a_{m1}\,x_1 +\,a_{m2}\,x_2 + \,\ldots\, +\,a_{mn}\,x_n
   \end{array}\right]
   
(działanie jest wykonalne wtedy i tylko wtedy, gdy liczba kolumn macierzy równa się liczbie elementów wektora).

Tak więc pomnożenie :math:`\,n`-elementowego wektora :math:`\,\boldsymbol{x}\,`
z lewej strony przez macierz :math:`\,\boldsymbol{A}\,` o :math:`\,m\,` wierszach 
i :math:`\,n\,` kolumnach daje :math:`\,m`-elementowy wektor :math:`\,\boldsymbol{y}:`

.. math::
   
   \boldsymbol{A}\,\boldsymbol{x}\ =\ \boldsymbol{y}\,,\qquad\text{gdzie}
   \quad y_i\ = \ 
   a_{i1}\,x_1 + \,a_{i2}\,x_2 + \,\ldots\, + \,a_{in}\,x_n\,,
   \quad i=1,2,\ldots,m.

Prawą stronę równania :eq:`prod_col` można przepisać następująco:

.. math::

   \left[\begin{array}{c}
      a_{11}\,x_1 +\,a_{12}\,x_2 + \,\ldots\, +\,a_{1n}\,x_n \\
      a_{21}\,x_1 +\,a_{22}\,x_2 + \,\ldots\, +\,a_{2n}\,x_n \\
      \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots         \\
      a_{m1}\,x_1 +\,a_{m2}\,x_2 + \,\ldots\, +\,a_{mn}\,x_n
   \end{array}\right]
   \ \,=\ \, 
   x_1\left[\begin{array}{c} a_{11} \\ a_{21} \\ \ldots \\ a_{m1} \end{array}\right] \; +\ 
   x_2\left[\begin{array}{c} a_{12} \\ a_{22} \\ \ldots \\ a_{m2} \end{array}\right] \; +\
   \ldots \ + \ 
   x_n\left[\begin{array}{c} a_{1n} \\ a_{2n} \\ \ldots \\ a_{mn} \end{array}\right]\,.
  
Przy oznaczeniach :math:`\ \,\boldsymbol{A}_1,\ \boldsymbol{A}_2,\ \ldots,\,\boldsymbol{A}_n\ \,`
dla kolumn macierzy :math:`\,\boldsymbol{A}\,:`

.. math::
   
   \boldsymbol{A}\ \,=\ \,
   [\,\boldsymbol{A}_1\,|\,\boldsymbol{A}_2\,|\,\ldots\,|\,\boldsymbol{A}_n\,]

równanie :eq:`prod_col` przyjmuje więc postać

.. math::
   :label: prod_col_1

   \boldsymbol{A} \, \boldsymbol{x} \ =\ 
   x_1\,\boldsymbol{A}_1 \ +\ x_2\,\boldsymbol{A}_2 \ +\ \ldots \ + \ x_n\,\boldsymbol{A}_n\,.

.. **Reguła 0.** :math:`\,`

.. admonition:: Reguła 0. :math:`\,`

   Jeżeli :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,,\ \boldsymbol{x}\in K^n\,,\ ` 
   to iloczyn :math:`\,\boldsymbol{A}\,\boldsymbol{x}\ ` jest kombinacją liniową kolumn  
   macierzy :math:`\,\boldsymbol{A}.\ ` Współczynnikami tej kombinacji są kolejne elementy 
   wektora :math:`\,\boldsymbol{x}\,.`  

Wracając do wyjściowego ogólnego układu równań :eq:`set_eqn`, zapiszmy go w postaci równości dwóch wektorów kolumnowych:

.. math::

   \left[\begin{array}{c}
      a_{11}\,x_1 +\,a_{12}\,x_2 + \,\ldots\, +\,a_{1n}\,x_n \\
      a_{21}\,x_1 +\,a_{22}\,x_2 + \,\ldots\, +\,a_{2n}\,x_n \\
      \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots         \\
      a_{m1}\,x_1 +\,a_{m2}\,x_2 + \,\ldots\, +\,a_{mn}\,x_n
   \end{array}\right]
   \ \ =\ \ 
   \left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{m} \end{array}\right]\,.

Wprowadzona operacja :eq:`prod_col` mnożenia macierzy przez wektor pozwala na zwięzły zapis:

.. math::

   \boldsymbol{A} \, \boldsymbol{x} \ =\ \boldsymbol{b}\,.

Stosując wzór :eq:`prod_col_1`, :math:`\,` otrzymujemy postać kolumnową układu równań liniowych:

.. math::

   x_1\,\boldsymbol{A}_1 \ +\ x_2\,\boldsymbol{A}_2 \ +\ \ldots \ + \ x_n\,\boldsymbol{A}_n
   \ =\ \boldsymbol{b}\,.

Matrix Multiplication (Product of Two Matrices)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Przypomnijmy, przy zmienionych oznaczeniach, zapisaną w poprzedniej sekcji definicję :eq:`prod_col`
mnożenia macierzy prostokątnej przez wektor, czyli przez macierz jednokolumnową. :math:`\\`

Otóż iloczyn macierzy 
:math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{m\times p}\ \;` i 
:math:`\quad \boldsymbol{B}\,=\,[b_{ij}]_{p\times 1}\ \,`
przedstawia się następująco:

.. math::

   \boldsymbol{A} \boldsymbol{B}
   \ =\ 
   \left[\,\begin{array}{cccc}
       a_{11} & a_{12} & \ldots & a_{1p} \\
       a_{21} & a_{22} & \ldots & a_{2p} \\
       \ldots & \ldots & \ldots & \ldots \\
       a_{m1} & a_{m2} & \ldots & a_{mp} \\
   \end{array}\right] \ 
   \left[\begin{array}{c} b_{11} \\ b_{21} \\ \ldots \\ b_{p1} \end{array}\right]
   \ =\ 
   \left[\begin{array}{c}
      a_{11}\,b_{11} +\,a_{12}\,b_{21} + \,\ldots\, +\,a_{1p}\,b_{p1} \\
      a_{21}\,b_{11} +\,a_{22}\,b_{21} + \,\ldots\, +\,a_{2p}\,b_{p1} \\
      \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots                \\
      a_{m1}\,b_{11} + a_{m2}\,b_{21} + \,\ldots\, +\,a_{mp}\,b_{p1}
   \end{array}\right]\,.

Oznaczając :math:`\ \boldsymbol{A} \boldsymbol{B}\ =\ \boldsymbol{C}\ =\ [c_{ij}]_{m\times 1}\ ` otrzymujemy

.. math::

   \boldsymbol{C}\ =\
   \left[\begin{array}{c} c_{11} \\ c_{21} \\ \ldots \\ c_{m1} \end{array}\right]
   \ =\ 
   \left[\begin{array}{c}
      a_{11}\,b_{11} +\,a_{12}\,b_{21} + \,\ldots\, +\,a_{1p}\,b_{p1} \\
      a_{21}\,b_{11} +\,a_{22}\,b_{21} + \,\ldots\, +\,a_{2p}\,b_{p1} \\
      \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots                  \\
      a_{m1}\,b_{11} + a_{m2}\,b_{21} + \,\ldots\, +\,a_{mp}\,b_{p1}
   \end{array}\right]\,,

Jeżeli przez :math:`\ \boldsymbol{A}_1,\,\boldsymbol{A}_2,\,\dots,\,\boldsymbol{A}_p\ ` 
oznaczymy kolumny macierzy :math:`\ \boldsymbol{A},\ ` to można zapisać 

.. math::
   :label: eqn_C
   
   \begin{array}{lll}
   & \qquad & \boldsymbol{C}\ =\ 
   b_{11}\,\boldsymbol{A}_1\ +\ b_{21}\,\boldsymbol{A}_2\ +\ \dots\ +\ b_{p1}\,\boldsymbol{A}_p
   \\ \\
   \text{oraz} & \qquad & c_{i1}\ =\ 
   a_{i1}\,b_{11} + a_{i2}\,b_{21} + \,\ldots\, + a_{ip}\,b_{p1}
   \,,\quad i\,=\,1,2,\ldots,m\,.
   \end{array}

Niech teraz macierz :math:`\ \boldsymbol{B}\ ` 
składa się z :math:`\,n\,` kolumn :math:`\,p`-elementowych:

.. math::

   \boldsymbol{B}\ \ =\ \ 
   \left[\,\boldsymbol{B}_1\,|\,\boldsymbol{B}_2\,|\,\ldots\,|\,\boldsymbol{B}_n\,\right]\ \ =\ \ 
   \left[\begin{array}{cccc}
      b_{11} & b_{12} & \ldots & b_{1n} \\
      b_{21} & b_{22} & \ldots & b_{2n} \\
      \ldots & \ldots & \ldots & \ldots \\
      b_{p1} & b_{p2} & \ldots & b_{pn} \\
   \end{array}\right]\,.

Iloczyn :math:`\ \boldsymbol{A} \boldsymbol{B}\ \,` *definiujemy* :math:`\ ` wtedy jako macierz otrzymaną przez pomnożenie każdej kolumny macierzy :math:`\ \boldsymbol{B}\ \,` 
(z lewej strony) przez macierz :math:`\ \boldsymbol{A}:`

.. math::
   :label: rule_col_1

   \boldsymbol{A}\boldsymbol{B}\ \equiv\ 
   \boldsymbol{A}\ \left[\,\boldsymbol{B}_1\,|\,\boldsymbol{B}_2\,|\,\ldots\,|\,
   \boldsymbol{B}_n\,\right]\ \ :\,=\ \ 
   \left[\;\boldsymbol{A}\boldsymbol{B}_1\;|\;\boldsymbol{A}\boldsymbol{B}_2\;|\;\ldots\;|\; 
   \boldsymbol{A}\boldsymbol{B}_n\;\right]\,.

Wprowadzając oznaczenia 
:math:`\ \boldsymbol{A}\boldsymbol{B}\ =\ \boldsymbol{C}\ =\ 
[\;\boldsymbol{C}_1\,|\,\boldsymbol{C}_2\,|\,\ldots\,|\,
\boldsymbol{C}_n\;]\ =\ [c_{ij}]_{m\times n}\ `
otrzymujemy, :math:`\,` w analogii do równań :eq:`eqn_C`: 

.. math::

   \boldsymbol{C}_j\ =\ 
   \left[\begin{array}{c} 
         c_{1j} \\ c_{2j} \\ \ldots \\ c_{mj} 
         \end{array}
   \right]\ =\ 
   \left[\begin{array}{c}
         a_{11}\,b_{1j} +\,a_{12}\,b_{2j} + \,\ldots\, +\,a_{1p}\,b_{pj} \\
         a_{21}\,b_{1j} +\,a_{22}\,b_{2j} + \,\ldots\, +\,a_{2p}\,b_{pj} \\
         \ \ldots\qquad\ \ldots\qquad\ldots\qquad\ldots                  \\
         a_{m1}\,b_{1j} +\,a_{m2}\,b_{2j} + \,\ldots\, +\,a_{mp}\,b_{pj}
        \end{array}
   \right]\,,

.. math::
   :label: rule_col_2

   \begin{array}{rcl}
   \text{czyli} & \quad &
   \boldsymbol{C}_j\ =\ 
   b_{1j}\,\boldsymbol{A}_1\ +\ b_{2j}\,\boldsymbol{A}_2\ +\ \ldots\ + \ b_{pj}\,\boldsymbol{A}_p
   \\ \\ 
   \text{oraz} & \quad &
   c_{ij}\ =\ 
   a_{i1}\,b_{1j} +\,a_{i2}\,b_{2j} + \,\ldots\, +\,a_{ip}\,b_{pj}
   \,,\qquad 
   \begin{array}{l} i\,=\,1,2,\ldots,m\,; \\ j\,=\,1,2,\ldots,n.\end{array}
   \end{array}



Z definicji :math:`\,` :eq:`rule_col_1` :math:`\,` i :math:`\,` wynikających z niej wzorów 
:math:`\,` :eq:`rule_col_2` :math:`\,` wypływa następująca

.. admonition:: Reguła 1. :math:`\,` (kolumnowa reguła mnożenia macierzowego) :math:`\\`

   Jeżeli 
   :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K),\ `
   to :math:`\ j`-ta kolumna iloczynu :math:`\ \boldsymbol{A} \boldsymbol{B}:` :math:`\\`
 
   1. jest iloczynem macierzy :math:`\ \boldsymbol{A}\ \,`
      przez :math:`\,j`-tą kolumnę macierzy :math:`\ \boldsymbol{B}\,;` :math:`\\`

   2. jest kombinacją liniową kolumn macierzy :math:`\,\boldsymbol{A},\ `
      której współczynnikami są kolejne elementy :math:`\,j`-tej kolumny macierzy 
      :math:`\,\boldsymbol{B},\ \ j\,=\,1,2,\ldots,n.`

Wzór :math:`\,` :eq:`rule_col_2` :math:`\,` wyraża elementy macierzy 
:math:`\ \boldsymbol{C} = \boldsymbol{A} \boldsymbol{B}\ `
poprzez elementy czynników :math:`\,\boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}.`

Mianowicie, element :math:`\ \,c_{ij}\,` jest iloczynem 
(w sensie wzoru :eq:`prod_col_1` :math:`\,` i :math:`\:` Reguły 0.) 
:math:`\ i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\ `
przez :math:`\,j`-tą kolumnę macierzy :math:`\,\boldsymbol{B}:`

.. math::
   
   c_{ij}\ =\ a_{i1}\,b_{1j} + a_{i2}\,b_{2j} + \,\ldots \;+\; a_{ip}\,b_{pj}\ \,=\ \;
   [\ a_{i1}\ \ a_{i2}\ \ \ldots\ \ a_{ip}\ ] \ 
   \left[\begin{array}{c} b_{1j} \\ b_{2j} \\ \ldots \\ b_{pj} \end{array}\right]\,.

Daje to praktyczny sposób obliczania elementów iloczynu dwóch macierzy:

.. admonition:: Reguła 2. :math:`\\` 

   Jeżeli 
   :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K)\,,\ `
   to element w :math:`\,i`-tym wierszu oraz w :math:`\,j`-tej kolumnie iloczynu 
   :math:`\,\boldsymbol  {A} \boldsymbol{B}\ `
   jest iloczynem :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\ `
   przez :math:`\,j`-tą kolumnę macierzy :math:`\boldsymbol{B},\ `
   w postaci sumy iloczynów odpowiednich elementów tego wiersza oraz tej kolumny,
   :math:`\ \,i\,=\,1,2,\ldots,m\,,\ \,j\,=\,1,2,\ldots,n.`

:math:`\;`

Zapisane w tej sekcji formuły dotyczące iloczynu macierzowego można zebrać następująco: 

.. admonition:: Podsumowanie. :math:`\\`

   Niech :math:`\,\boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}\ \,` będą macierzami nad tym samym
   ciałem :math:`\,K.\,` :math:`\\`
   Ich iloczyn :math:`\,\boldsymbol{A} \boldsymbol{B}\ ` istnieje wtedy i tylko wtedy, 
   gdy liczba kolumn macierzy :math:`\,\boldsymbol{A}\ ` równa się liczbie wierszy macierzy 
   :math:`\,\boldsymbol{B}.\ `
   Wówczas macierz :math:`\,\boldsymbol{A} \boldsymbol{B}\ ` ma tyle wierszy, 
   co macierz :math:`\,\boldsymbol{A}\,` i tyle kolumn, co macierz :math:`\,\boldsymbol{B},\ `
   przy czym element iloczynu :math:`\,\boldsymbol{A} \boldsymbol{B}\ `
   znajdujący się w :math:`\,i`-tym wierszu oraz w :math:`\,j`-tej kolumnie
   jest iloczynem :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\ `
   przez :math:`\,j`-tą kolumnę macierzy :math:`\,\boldsymbol{B}.\\`
   
   Konkretnie, jeżeli 
   :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{m\times p}\,,\ \boldsymbol{B}\,=\,[b_{ij}]_{p\times n}\,,\ `
   to :math:`\ \,\boldsymbol{A} \boldsymbol{B} = \boldsymbol{C} = [c_{ij}]_{m\times n}\,,\ ` gdzie
   
   .. math::
   
      c_{ij}\ =\ [\; a_{i1}\ \ a_{i2}\ \ \ldots\ \ a_{ip}\; ]
      \ \left[\begin{array}{c} b_{1j} \\ b_{2j} \\ \ldots \\ b_{pj} \end{array}\right]
      \ \, =\ \,\sum_{k=1}^p \; a_{ik}\,b_{kj}\,, 
      \qquad\begin{array}{l} i\,=\,1,2,\ldots,m\,; \\ j\,=\,1,2,\ldots,n. \end{array}



