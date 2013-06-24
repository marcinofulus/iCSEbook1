.. -*- coding: utf-8 -*-

Działania na macierzach
-----------------------
|
| W tym rozdziale zdefiniujemy dodawanie macierzy o tych samych wymiarach, 
  mnożenie macierzy przez liczbę oraz mnożenie macierzowe, w którym iloczynem dwóch macierzy
  o odpowiednio dobranych wymiarach jest macierz.

| Mnożenie macierzowe będzie wprowadzone w dwóch etapach: 
  definicja iloczynu macierzy przez wektor kolumnowy (umożliwiająca zwięzły zapis układu równań)
  będzie następnie uogólniona do mnożenia macierzy przez macierz wielokolumnową.

| Jeżeli mnożenie wektora z lewej strony przez macierz uznać za działanie zewnętrzne w zbiorze wektorów,
  to mnożenie macierzy kwadratowych tego samego stopnia można zdefiniować niezależnie od poprzedniej definicji.
|

Macierzowy zapis układów równań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
| Rozważmy układ :math:`\,m\,` równań o :math:`\,n\,` niewiadomych:

.. math::
   :label: eq01

   \begin{cases}\begin{array}{cccccccc}
   \ \;a_{11}\,x_1 & {\,} + {\,} & a_{12}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{1n}\,x_n & {\ } = {\ \ }  b_1    \\
       a_{21}\,x_1 & {\,} + {\,} & a_{22}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{2n}\,x_n & {\ } = {\ \ }  b_2    \\
       \ldots\ \   & {\,} + {\,} & \ldots\ \   & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & \ldots\ \   & {\ } = {\ }    \ldots \\
       a_{m1}\,x_1 & {\,} + {\,} & a_{m2}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{mn}\,x_n & {\ } = {\ \ }  b_m
   \end{array}\end{cases}

| Współczynniki :math:`\,a_{ij}\,` przy niewiadomych :math:`(i=1,2,\ldots,m;\ \;j=1,2,\ldots,n)` tworzą 
| **macierz prostokątną** :math:`\,\boldsymbol{A}\,` o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach,
  oznaczaną krótko :math:`\,[a_{ij}]_{m\times n}:`

.. math::

   \boldsymbol{A}\  =\  [a_{ij}]_{m\times n} \  =\  \left[\;\begin{array}{cccc}
                                                        a_{11} & a_{12} & \ldots & a_{1n} \\
                                                        a_{21} & a_{22} & \ldots & a_{2n} \\
                                                        \ldots & \ldots & \ldots & \ldots \\
                                                        a_{m1} & a_{m2} & \ldots & a_{mn} \\
                                                    \end{array}\right]\,.
.. admonition:: Zapamiętaj

   | Przy zapisie elementu :math:`\,a_{ij}\,` macierzy pierwszy wskaźnik (tutaj: :math:`\,i`) oznacza wiersz,
   | a drugi wskaźnik (tutaj: :math:`\,j`) :math:`\,` - :math:`\,` kolumnę, w której znajduje się ten element.

Zbiór wszystkich macierzy prostokątnych o :math:`\ m\ ` wierszach :math:`\,` i :math:`\ \,n\ ` kolumnach, :math:`\,`
których elementy należą do ciała :math:`\,K,\,` oznaczamy :math:`\,M_{m\times n}(K)\ `
(najczęściej :math:`\,K\,` jest ciałem liczb rzeczywistych :math:`\,R\,`
bądź ciałem liczb zespolonych :math:`\,C`).

| Jeżeli :math:`\,m=n,\,` to mówimy o macierzy kwadratowej stopnia :math:`\,n.`
| Zbiór wszystkich takich macierzy kwadratowych oznaczamy :math:`M_n(K).`

Macierze jednokolumnowe, tworzące zbiór :math:`\ M_{n\times 1}(K),\;`
będziemy utożsamiać z  :math:`\,n`-elementowymi wektorami kolumnowymi ze zbioru :math:`\ K^n\,.`
Przykładem są wektory niewiadomych :math:`\,x_j\ \;(j=1,2,\ldots,n)\,`
i :math:`\ ` wolnych wyrazów :math:`\,b_i\ \;(i=1,2,\ldots,m)\,` w równaniu :eq:`eq01`:

.. math::

   \boldsymbol{x}\,=\,\left[\begin{array}{c} x_{1} \\ x_{2} \\ \ldots \\ x_{n} \end{array}\right]
   \ \in K^n\ \simeq M_{n\times 1}(K)\,,
   \qquad
   \boldsymbol{b}\,=\,\left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{m} \end{array}\right]
   \ \in K^m\ \simeq M_{m\times 1}(K)\,.

Macierze należące do zbioru :math:`\,M_{m\times n}(K)\,` 
można dodawać:

.. math::

   \left[\;\begin{array}{ccc} 
       a_{11} & \ldots & a_{1n} \\
       a_{21} & \ldots & a_{2n} \\
       \ldots & \ldots & \ldots \\
       a_{m1} & \ldots & a_{mn}
   \end{array}\right]
   \ \ + \ \ 
   \left[\;\begin{array}{ccc} 
       b_{11} & \ldots & b_{1n} \\
       b_{21} & \ldots & b_{2n} \\
       \ldots & \ldots & \ldots \\
       b_{m1} & \ldots & b_{mn}
   \end{array}\right]
   \ \ :\,= \ \ 
   \left[\;\begin{array}{ccc} 
       a_{11} + b_{11} & \ldots & a_{1n} + b_{1n} \\
       a_{21} + b_{21} & \ldots & a_{2n} + b_{2n} \\
           \ldots      & \ldots &     \ldots      \\
       a_{m1} + b_{m1} & \ldots & a_{mn} + b_{mn}
   \end{array}\right]

i :math:`\,` mnożyć przez liczby :math:`\, c \in K`:

.. math::

   c \ \ 
   \left[\;\begin{array}{cccc} 
       a_{11} & a_{12} & \ldots & a_{1n} \\
       a_{21} & a_{22} & \ldots & a_{2n} \\
       \ldots  & \ldots & \ldots & \ldots \\
       a_{m1} & a_{m2} & \ldots & a_{mn}
   \end{array}\right]
   \ \ :\,= \ \ 
   \left[\;\begin{array}{cccc}
       c \; a_{11} & c \; a_{12} & \ldots & c \; a_{1n} \\
       c \; a_{21} & c \; a_{22} & \ldots & c \; a_{2n} \\
       \ldots      & \ldots      & \ldots & \ldots      \\
       c \; a_{m1} & c \; a_{m2} & \ldots & c \; a_{mn}
   \end{array}\right]\,.

| Jak widać,  dodawanie macierzy polega na dodawaniu ich odpowiednich elementów,  które są liczbami.
| Wynika stąd łączność i przemienność dodawania macierzowego:

:math:`\quad (\boldsymbol{A} + \boldsymbol{B}) \, + \, \boldsymbol{C}
\ \; = \ \;
\boldsymbol{A} \, + \, (\boldsymbol{B} + \boldsymbol{C})\,,`
  
:math:`\quad\boldsymbol{A}\, + \,\boldsymbol{B}\ \,=\ \,\boldsymbol{B}\, + \,\boldsymbol{A},
\qquad\boldsymbol{A}, \, \boldsymbol{B}, \, \boldsymbol{C}\,\in \, M_{m\times n}(K).`
   
Łatwo sprawdzić, że zbiór :math:`\ M_{m\times n}(K)\ ` jest grupą przemienną ze względu na dodawanie macierzy.

Inną łatwą do udowodnienia własnością działań na macierzach jest rozdzielność mnożenia macierzy przez liczby,
zarówno względem dodawania liczb, :math:`\,` jak i dodawania macierzy:

:math:`\quad (a + b)\,\boldsymbol{A}\ =\ a\,\boldsymbol{A}\, +\, b\,\boldsymbol{A}\,,`

:math:`\quad a\,(\boldsymbol{A} + \boldsymbol{B})\ =\ a\,\boldsymbol{A}\, +\, a\,\boldsymbol{B}\,,
\qquad a,\,b\,\in K,\quad\boldsymbol{A},\,\boldsymbol{B}\,\in\, M_{m\times n}(K)\,.`  

|

Mnożenie macierzy przez wektor kolumnowy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
| 
| Iloczyn macierzy :math:`\,\boldsymbol{A}\,` o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach
  przez :math:`\,n`-elementowy wektor kolumnowy :math:`\,\boldsymbol{x}\,` definiujemy następująco:

.. math::
   :label: eq02
   
   \boldsymbol{A}\,\boldsymbol{x}\ =\  
   \left[\;\begin{array}{cccc}
       a_{11} & a_{12} & \ldots & a_{1n} \\
       a_{21} & a_{22} & \ldots & a_{2n} \\
       \ldots & \ldots & \ldots & \ldots \\
       a_{m1} & a_{m2} & \ldots & a_{mn} \\
   \end{array}\right]
   \ 
   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right]
   \ :\,=\  
   \left[\begin{array}{ccccccc}
       a_{11}\,x_1 & {} + {} & a_{12}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{1n}\,x_n \\
       a_{21}\,x_1 & {} + {} & a_{22}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{2n}\,x_n \\
       \ldots\ \   & {} + {} & \ldots\ \   & {} + {} & \,\ldots\, & {} + {} & \ldots\ \ \ \\
       a_{m1}\,x_1 & {} + {} & a_{m2}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{mn}\,x_n
   \end{array}\right]
   
(działanie jest wykonalne tylko wtedy, gdy liczba kolumn macierzy równa się liczbie elementów wektora).

Tak więc pomnożenie :math:`\,n`-elementowego wektora :math:`\,\boldsymbol{x}\,`
z lewej strony przez macierz :math:`\,\boldsymbol{A}\,` o :math:`\,m\,` wierszach i :math:`\,n\,` kolumnach
daje :math:`\,m`-elementowy wektor :math:`\,\boldsymbol{y}:`

:math:`\quad\boldsymbol{A}\,\boldsymbol{x}\ =\ \boldsymbol{y}\,,
\qquad\text{gdzie}\quad y_i\ = \ 
\begin{array}{ccccccc}
a_{i1}\,x_1 & {} + {} & a_{i2}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{in}\,x_n
\end{array}
\,,\quad i=1,2,\ldots,m.`

|
| Prawą stronę równania :eq:`eq02` można przepisać następująco:

.. math::

   \left[\begin{array}{ccccccc}
       a_{11}\,x_1 & {} + {} & a_{12}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{1n}\,x_n \\
       a_{21}\,x_1 & {} + {} & a_{22}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{2n}\,x_n \\
       \ldots\ \   & {} + {} & \ldots\ \   & {} + {} & \,\ldots\, & {} + {} & \ldots\ \ \ \\
       a_{m1}\,x_1 & {} + {} & a_{m2}\,x_2 & {} + {} & \,\ldots\, & {} + {} & a_{mn}\,x_n
   \end{array}\right]
   \ =\  
   x_1 \; \left[\begin{array}{c} a_{11} \\ a_{21} \\ \ldots \\ a_{m1} \end{array}\right] \ +\ 
   x_2 \; \left[\begin{array}{c} a_{12} \\ a_{22} \\ \ldots \\ a_{m2} \end{array}\right] \ +\
   \ldots \ + \ 
   x_n \; \left[\begin{array}{c} a_{1n} \\ a_{2n} \\ \ldots \\ a_{mn} \end{array}\right]\,.
  
| 
| Przy oznaczeniach :math:`\ \,\boldsymbol{A}_1,\ \boldsymbol{A}_2,\ \ldots,\,\boldsymbol{A}_n\ \,`
  dla kolumn macierzy :math:`\boldsymbol{A}\,:`

.. math::
   
   \boldsymbol{A}\ =\ (\,\boldsymbol{A}_1,\ \boldsymbol{A}_2,\ \ldots,\,\boldsymbol{A}_n\,) 

równanie :eq:`eq02` przyjmuje więc postać

.. math::
   :label: eq03

   \boldsymbol{A} \, \boldsymbol{x} \ =\ 
   x_1\,\boldsymbol{A}_1 \ +\ x_2\,\boldsymbol{A}_2 \ +\ \ldots \ + \ x_n\,\boldsymbol{A}_n\,.

.. admonition:: Reguła 0.

   | Jeżeli :math:`\ \boldsymbol{A}\,\in M_{m\times n}(K)\,,\ \boldsymbol{x}\,\in\,K^n\,,` 
   | to iloczyn :math:`\ \boldsymbol{A}\,\boldsymbol{x}\ ` jest kombinacją liniową kolumn macierzy :math:`\ \boldsymbol{A}\,,`
   | przy czym współczynnikami kombinacji są odpowiednie elementy wektora :math:`\ \boldsymbol{x}\,.`  

|
| Wracając do układu równań :eq:`eq01`, :math:`\ ` zapiszmy go w postaci równości dwóch wektorów kolumnowych:

.. math::

   \left[\begin{array}{ccccccc}
       a_{11}\,x_1 & {\,} + {\,} & a_{12}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{1n}\,x_n \\
       a_{21}\,x_1 & {\,} + {\,} & a_{22}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{2n}\,x_n \\
       \ldots\ \   & {\,} + {\,} & \ldots\ \   & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & \ldots\ \ \ \\
       a_{m1}\,x_1 & {\,} + {\,} & a_{m2}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{mn}\,x_n
   \end{array}\right]
   \ \ =\ \ 
   \left[\begin{array}{c} b_{1} \\ b_{2} \\ \ldots \\ b_{m} \end{array}\right]\,.

Wprowadzona właśnie operacja mnożenia macierzy przez wektor pozwala na zwięzły zapis:

.. math::

   \boldsymbol{A} \, \boldsymbol{x} \ =\ \boldsymbol{b}\,.

Stosując :math:`\ ` **Regułę 0.** :math:`\,` i :math:`\,` wyrażający ją wzór :eq:`eq03`, :math:`\,` otrzymujemy postać kolumnową układu równań liniowych:

.. math::

   x_1\,\boldsymbol{A}_1 \ +\ x_2\,\boldsymbol{A}_2 \ +\ \ldots \ + \ x_n\,\boldsymbol{A}_n\ =\ \boldsymbol{b}\,.

|

Mnożenie macierzy przez macierz
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
| 
| Przypomnijmy, przy zmienionych oznaczeniach, zapisaną w poprzedniej sekcji definicję mnożenia macierzy prostokątnej przez macierz jednokolumnową.
|
| Otóż iloczyn macierzy :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{m\times p}\ \;` i :math:`\quad \boldsymbol{B}\,=\,[b_{ij}]_{p\times 1}\ \,`
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
   \left[\begin{array}{ccccccc}
       a_{11}\,b_{11} & {} + {} & a_{12}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{1p}\,b_{p1} \\
       a_{21}\,b_{11} & {} + {} & a_{22}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{2p}\,b_{p1} \\
       \ldots\ \      & {} + {} & \ldots\ \      & {} + {} & \,\ldots\, & {} + {} & \ldots\ \ \ \\
       a_{m1}\,b_{11} & {} + {} & a_{m2}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{mp}\,b_{p1}
   \end{array}\right]\,.

Oznaczając :math:`\ \boldsymbol{A} \boldsymbol{B}\ =\ \boldsymbol{C}\ =\ [c_{ij}]_{m\times 1}\ ` otrzymujemy

.. math::
   :label: eq04

   \boldsymbol{C}\ =\
   \left[\begin{array}{c} c_{11} \\ c_{21} \\ \ldots \\ c_{m1} \end{array}\right]
   \ =\ 
   \left[\begin{array}{ccccccc}
       a_{11}\,b_{11} & {} + {} & a_{12}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{1p}\,b_{p1} \\
       a_{21}\,b_{11} & {} + {} & a_{22}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{2p}\,b_{p1} \\
       \ldots\ \      & {} + {} & \ldots\ \      & {} + {} & \,\ldots\, & {} + {} & \ldots\ \ \ \\
       a_{m1}\,b_{11} & {} + {} & a_{m2}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{mp}\,b_{p1}
   \end{array}\right]\,;

.. math::
   :label: eq05

   c_{i1}\ =\ 
   \begin{array}{ccccccc}
       a_{i1}\,b_{11} & {} + {} & a_{i2}\,b_{21} & {} + {} & \,\ldots\, & {} + {} & a_{ip}\,b_{p1}
   \end{array}
   \,,\quad i\,=\,1,2,\ldots,m\,.

Niech teraz macierz :math:`\ \boldsymbol{B}\ ` składa się z :math:`\,n\,` kolumn :math:`\,p`-elementowych:

.. math::

   \boldsymbol{B}\ \ =\ \ 
   \left(\,\boldsymbol{B}_1,\,\boldsymbol{B}_2,\,\ldots,\,\boldsymbol{B}_n\,\right)\ \ =\ \ 
   \left[\;\begin{array}{cccc}
      b_{11} & b_{12} & \ldots & b_{1n} \\
      b_{21} & b_{22} & \ldots & b_{2n} \\
      \ldots & \ldots & \ldots & \ldots \\
      b_{p1} & b_{p2} & \ldots & b_{pn} \\
   \end{array}\right]\,.

Iloczyn :math:`\ \boldsymbol{A} \boldsymbol{B}\ ` definiujemy wtedy jako macierz otrzymaną przez pomnożenie każdej kolumny 
macierzy :math:`\ \boldsymbol{B}\ ` z lewej strony przez macierz :math:`\ \boldsymbol{A}:`

.. math::

   \boldsymbol{A} \boldsymbol{B}\ =\  \boldsymbol{A}\ \,\left( \boldsymbol{B}_1,\,\boldsymbol{B}_2,\,\ldots,\,\boldsymbol{B}_n \right)
   \ \ :\,=\ \ 
   \left( \boldsymbol{A} \boldsymbol{B}_1,\ \boldsymbol{A} \boldsymbol{B}_2,\ \ldots,\ \boldsymbol{A} \boldsymbol{B}_n \right)\,.

.. admonition:: Reguła 1

   | Jeżeli :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K),\ `
     to :math:`\ j`-ta kolumna iloczynu :math:`\ \boldsymbol{A} \boldsymbol{B}\ ` 
   | jest iloczynem macierzy :math:`\ \boldsymbol{A}\ `
     przez :math:`\,j`-tą kolumnę macierzy :math:`\ \boldsymbol{B}\,,\ \ j=1,2,\ldots,n\,.` 

| 
| Wprowadzając oznaczenia 
  :math:`\ \boldsymbol{A}\boldsymbol{B}\ =\ \boldsymbol{C}\ =\ 
  (\,\boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\ldots,\,\boldsymbol{C}_n\,)\ =\ [c_{ij}]_{m\times n}\ `
| otrzymujemy, :math:`\,` w analogii do równań :math:`\ ` :eq:`eq04` :math:`\ ` i :math:`\ ` :eq:`eq05`:

.. math::
   :label: eq06

   \boldsymbol{C}_j\ =\ \left[\begin{array}{c} c_{1j} \\ c_{2j} \\ \ldots \\ c_{mj} \end{array}\right]
   \ =\ 
   \left[\begin{array}{ccccccc}
       a_{11}\,b_{1j} & {} + {} & a_{12}\,b_{2j} & {} + {} & \,\ldots\, & {} + {} & a_{1p}\,b_{pj} \\
       a_{21}\,b_{1j} & {} + {} & a_{22}\,b_{2j} & {} + {} & \,\ldots\, & {} + {} & a_{2p}\,b_{pj} \\
       \ldots\ \      & {} + {} & \ldots\ \      & {} + {} & \,\ldots\, & {} + {} & \ldots\ \ \    \\
       a_{m1}\,b_{1j} & {} + {} & a_{m2}\,b_{2j} & {} + {} & \,\ldots\, & {} + {} & a_{mp}\,b_{pj}
   \end{array}\right]\,;

   c_{ij}\ =\ 
   \begin{array}{ccccccc}
       a_{i1}\,b_{1j} & {} + {} & a_{i2}\,b_{2j} & {} + {} & \,\ldots\, & {} + {} & a_{ip}\,b_{pj}
   \end{array}
   \,,\qquad\begin{array}{l} i\,=\,1,2,\ldots,m\,; \\ j\,=\,1,2,\ldots,n.\end{array}

| Ostatni wzór wyraża elementy macierzy :math:`\ \boldsymbol{C} = \boldsymbol{A} \boldsymbol{B}\ `
| poprzez elementy czynników macierzowych :math:`\ \boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}.`

| Element :math:`\ \,c_{ij}\,` można przedstawić w postaci iloczynu 
| :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\,`
  przez :math:`\,j`-tą kolumnę macierzy :math:`\,\boldsymbol{B}:`
| :math:`c_{ij}\ =\ a_{i1}\,b_{1j} + a_{i2}\,b_{2j} + \,\ldots \;+\; a_{ip}\,b_{pj}\ \,=\ \;
  [\ a_{i1}\ \ a_{i2}\ \ \ldots\ \ a_{ip}\ ] \ 
  \left[\begin{array}{c} b_{1j} \\ b_{2j} \\ \ldots \\ b_{pj} \end{array}\right]\,.`

Wynika stąd praktyczny sposób obliczania iloczynu dwóch macierzy:

.. admonition:: Reguła 2.

   | Jeżeli :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K)\,,`
   | to element w :math:`\,i`-tym wierszu oraz w :math:`\,j`-tej kolumnie iloczynu :math:`\,\boldsymbol{A} \boldsymbol{B}\,`
   | jest iloczynem :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\ `
     przez :math:`\,j`-tą kolumnę macierzy :math:`\boldsymbol{B},`
   | w postaci sumy iloczynów odpowiednich elementów tego wiersza i tej kolumny,
   | :math:`i\,=\,1,2,\ldots,m\,;\quad j\,=\,1,2,\ldots,n.`

|
| Zauważmy teraz, że równanie :eq:`eq06` można przepisać jako:

.. math::
   
   \boldsymbol{C}_j\ =\ 
   b_{1j}\,\boldsymbol{A}_1 \ +\ b_{2j}\,\boldsymbol{A}_2 \ +\ \ldots \ + \ b_{pj}\,\boldsymbol{A}_p\,,
   \qquad j\,=\,1,2,\ldots,n,

gdzie :math:`\ \boldsymbol{A}_1,\,\boldsymbol{A}_2,\,\ldots,\,\boldsymbol{A}_p\ `
są kolumnami macierzy :math:`\ \boldsymbol{A}\,.`

.. admonition:: Reguła 3.

   | Jeżeli :math:`\ \boldsymbol{A}\,\in M_{m\times p}(K),\ \boldsymbol{B}\,\in M_{p\times n}(K)\,,`
   | to :math:`\,j`-ta kolumna macierzy :math:`\,\boldsymbol{A} \boldsymbol{B}\ `
     jest kombinacją liniową kolumn macierzy :math:`\ \boldsymbol{A}\ `
   | o współczynnikach z :math:`\,j`-tej kolumny macierzy :math:`\ \boldsymbol{B}\,,\quad j\,=\,1,2,\ldots,n.`

| Łatwo zauważyć, że :math:`\,` **Reguła 0.** :math:`\,` z poprzedniej sekcji jest szczególnym przypadkiem :math:`\,` **Reguły 3.**.
|

.. admonition:: Podsumowanie

   | Niech :math:`\ \boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}\ \,` będą macierzami nad tym samym ciałem :math:`\,K.`
   | Ich iloczyn :math:`\,\boldsymbol{A} \boldsymbol{B}\ ` istnieje wtedy i tylko wtedy, gdy
   | liczba kolumn macierzy :math:`\,\boldsymbol{A}\ ` równa się liczbie wierszy macierzy :math:`\,\boldsymbol{B}.\ `
   | Wówczas macierz :math:`\,\boldsymbol{A} \boldsymbol{B}\ ` ma tyle wierszy, 
     co macierz :math:`\,\boldsymbol{A}\ ` i tyle kolumn, co macierz :math:`\,\boldsymbol{B},\ `
   | przy czym element tego iloczynu znajdujący się w :math:`\,i`-tym wierszu oraz w :math:`\,j`-tej kolumnie
   | jest iloczynem :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{A}\ `
     przez :math:`\,j`-tą kolumnę macierzy :math:`\,\boldsymbol{B}.`

   | Konkretnie, jeżeli :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{m\times p}\,,\ \boldsymbol{B}\,=\,[b_{ij}]_{p\times n}\,,\ `
     to :math:`\ \,\boldsymbol{A} \boldsymbol{B} = \boldsymbol{C} = [c_{ij}]_{m\times n}\,,\ `
   | gdzie
   | :math:`\ c_{ij}\ =\ [\; a_{i1}\ \ a_{i2}\ \ \ldots\ \ a_{ip}\; ]
     \ \left[\begin{array}{c} b_{1j} \\ b_{2j} \\ \ldots \\ b_{pj} \end{array}\right]
     \ \, =\ \,\displaystyle\sum_{k=1}^p \; a_{ik}\,b_{kj}\,, 
     \qquad\begin{array}{l} i\,=\,1,2,\ldots,m\,; \\ j\,=\,1,2,\ldots,n. \end{array}`

|

Niezależna definicja iloczynu macierzy kwadratowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
| Pomnożenie :math:`\,n`-elementowego wektora kolumnowego z lewej strony przez macierz kwadratową stopnia :math:`\,n\ ` 
  daje w wyniku wektor tego samego typu. :math:`\,` Jest to więc działanie (zewnętrzne) w zbiorze
  :math:`\ K^n\ \,n`-elementowych wektorów :math:`\ ` - :math:`\ ` odpowiednik :math:`\ `
  (i uogólnienie) :math:`\ ` mnożenia wektorów przez liczby.
  Otrzymany w ten sposób wektor można powtórnie pomnożyć z lewej strony przez (jakąś inną) macierz,
  czego wynikiem będzie znowu pewien wektor ze zbioru :math:`\,K^n.`

| Pozwala to wprowadzić niezależne określenie iloczynu dwóch macierzy kwadratowych tego samego stopnia.

.. admonition:: Definicja

   | Niech będą dane macierze :math:`\ \boldsymbol{A},\ \boldsymbol{B}\,\in\,M_n(K)\,.`
   | Wtedy ich iloczyn :math:`\ \boldsymbol{A} \boldsymbol{B}\ `
     jest macierzą ze zbioru :math:`\ M_n(K)\ ` spełniającą warunek   

   .. math::

      \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x}) \ =\ (\boldsymbol{A} \boldsymbol{B})\,\boldsymbol{x}

   | dla dowolnego wektora :math:`\,\boldsymbol{x}\in K^n\,.`

|
| Dla sprawdzenia, że ta definicja jest zgodna z (bardziej ogólnym)
  określeniem mnożenia macierzy prostokątnych w poprzedniej sekcji, 

| rozważmy wektory kolumnowe :math:`\ \ \boldsymbol{x} = [x_i]_n,
  \ \ \boldsymbol{y} = [y_i]_n,\ \ \boldsymbol{z} = [z_i]_n \;\in\;K^n\ `

| oraz macierze kwadratowe :math:`\ \ \boldsymbol{A} = [a_{ij}]_{n\times n}\,,
  \ \ \boldsymbol{B} = [b_{ij}]_{n\times n} \;\in\;M_n(K)\,,\ `

| dla których zachodzą związki:

.. math::

   \boldsymbol{z}\ =\ \boldsymbol{A}\,\boldsymbol{y}\,,
   \qquad\text{czyli}\qquad z_i\ =\ \sum_{k=1}^n\;a_{ik}\;y_k\,, \quad i=1,2,\ldots,n\,,

   \boldsymbol{y}\ =\ \boldsymbol{B}\,\boldsymbol{x}\,,
   \qquad\text{czyli}\qquad y_k\ =\ \sum_{j=1}^n\;b_{kj}\;x_j\,, \quad k=1,2,\ldots,n\,.

Wtedy, podstawiając wyrażenia w drugim wierszu do odpowiednich wzorów w wierszu poprzednim, otrzymujemy

.. math::

   \boldsymbol{z}\ =\ \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x})\,,

   z_i\ =\ \sum_{k=1}^n\ a_{ik}\,\left(\;\sum_{j=1}^n\;b_{kj}\;x_j \right)
   \ =\ \sum_{k,j=1}^n\;a_{ik}\;b_{kj}\;x_j
   \ =\ \sum_{j=1}^n\ \left(\ \sum_{k=1}^n\;a_{ik}\;b_{kj}\right)\ x_j\,.

Ostatni wzór można przepisać jako

.. math::
   :label: eq07
      
   z_i\ =\ \sum_{j=1}^n\;c_{ij}\;x_j\,,\qquad\text{gdzie}
   \qquad c_{ij}\ =\ \sum_{k=1}^n\;a_{ik}\;b_{kj}\,,\quad i,j\,=\,1,2,\ldots,n\,.

Oznacza to, że wektor :math:`\ \boldsymbol{z}\ ` można otrzymac bezpośrednio z wektora :math:`\ \boldsymbol{x}\ `
mnożąc wektor :math:`\ \boldsymbol{x}\ ` z lewej strony przez macierz :math:`\ \boldsymbol{C} = [c_{ij}]_{n\times n}\,:`

.. math::

   \boldsymbol{z}\ =\ \boldsymbol{C}\,\boldsymbol{x}\,.

A zatem

.. math::

   \boldsymbol{A}\,(\boldsymbol{B}\,\boldsymbol{x}) \ =\ \boldsymbol{C}\,\boldsymbol{x}

gdzie macierz :math:`\ \boldsymbol{C}\ ` o elementach :math:`\ c_{ij}\ ` danych przez :eq:`eq07` jest
iloczynem macierzy :math:`\ \boldsymbol{A}\ ` i :math:`\ \boldsymbol{B}\ `
w sensie definicji w poprzedniej sekcji: :math:`\ \boldsymbol{C} = \boldsymbol{A} \boldsymbol{B}\,.`

| Podana tutaj definicja mnożenia macierzy kwadratowych jest więc szczególnym przypadkiem
  określenia iloczynu macierzy prostokątnych o odpowiednio dobranych wymiarach.
|

Własności mnożenia macierzowego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
| Opierając się na definicji iloczynu macierzy prostokątnych oraz na wyprowadzonych
  z niej regułach i wzorach można udowodnić następujące własności:
|

1. :math:`\,` Mnożenie macierzy jest łączne:

   :math:`\,\ (\boldsymbol{A} \boldsymbol{B})\,\boldsymbol{C} \ =\ 
   \boldsymbol{A}\,(\boldsymbol{B} \boldsymbol{C})\,,
   \qquad\quad
   \boldsymbol{A}\in M_{m\times p}(K),\ \  
   \boldsymbol{B}\in M_{p\times q}(K),\ \ 
   \boldsymbol{C}\in M_{q\times n}(K)\,.`

2. :math:`\,` Mnożenie macierzy jest rozdzielne względem dodawania:

   :math:`\,\ (\boldsymbol{A}+\boldsymbol{B})\,\boldsymbol{C} \ =\ 
   \boldsymbol{A} \boldsymbol{C}\,+\,\boldsymbol{B} \boldsymbol{C}\,,
   \qquad\quad
   \boldsymbol{A},\boldsymbol{B}\in M_{m\times p}(K),\ \ \boldsymbol{C}\in M_{p\times n}(K)\,;`

   :math:`\,\ \boldsymbol{A}\,(\boldsymbol{B}+\boldsymbol{C})\ =\ 
   \boldsymbol{A} \boldsymbol{B}\ +\ \boldsymbol{A} \boldsymbol{C}\,,
   \qquad\quad
   \boldsymbol{A}\in M_{m\times p}(K),\ \ \boldsymbol{B},\boldsymbol{C}\in M_{p\times n}(K)\,.`

3. :math:`\,` Mnożenie przez liczby jest związane z mnożeniem macierzowym następująco:      
      
   :math:`\,\ c\ (\boldsymbol{A} \boldsymbol{B})\ =\ 
   (c \boldsymbol{A})\,\boldsymbol{B}\ =\ 
   \boldsymbol{A}\,(c \boldsymbol{B})\,,
   \qquad
   c\in K,\ \ \boldsymbol{A}\in M_{m\times p}(K),\ \ \boldsymbol{B}\in M_{p\times n}(K)\,.`

4. | :math:`\,` Elementem neutralnym dla mnożenia w zbiorze macierzy kwadratowych :math:`\ M_n(K)\ `
   | :math:`\,` jest macierz jednostkowa

   | :math:`\,\ \qquad\boldsymbol{I}_n \ :\,=\ 
     \left[\begin{array}{cccc} 
     1      &    0   & \ldots &    0   \\
     0      &    1   & \ldots &    0   \\
     \ldots & \ldots & \ldots & \ldots \\
     0      &    0   & \ldots &    1     
     \end{array}\right]\,.`

   :math:`\ ` Rzeczywiście,
   :math:`\quad\boldsymbol{I}_n\,\boldsymbol{A}\ =\ \boldsymbol{A}\,\boldsymbol{I}_n\ =\ \boldsymbol{A}\quad`
   dla każdej macierzy :math:`\ \boldsymbol{A}\in M_n(K).`

5. | :math:`\,` Mnożenie macierzowe jest nieprzemienne:
   | :math:`\,` na ogół :math:`\ \boldsymbol{A} \boldsymbol{B} \neq \boldsymbol{B} \boldsymbol{A}\ `
     nawet wtedy, gdy obydwa iloczyny istnieją,
   | :math:`\,` np. dla macierzy kwadratowych tego samego stopnia.
   |

   :math:`\ ` Drastyczny przykład nieprzemienności:

   :math:`\,\ \boldsymbol{A}\ =\ [\,a_1\ a_2\ a_3\,]\,,\quad 
   \boldsymbol{B}\ =\ \left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\,;`

   :math:`\,\ \boldsymbol{A} \boldsymbol{B}\ =\ 
   [\,a_1\ a_2\ a_3\,]\ \left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\ =\    
   a_1\,b_1\;+\;a_2\,b_2\;+\;a_3\,b_3`

   :math:`\,` (formalnie :math:`\ \boldsymbol{A} \boldsymbol{B}\ \in M_{1\times 1}(K)\ \simeq\ K)\,;`

   :math:`\;\ \boldsymbol{B} \boldsymbol{A}\ \,=\ \,
   \left[\begin{array}{c} b_1 \\ b_2 \\ b_3 \end{array}\right]\ 
   [\,a_1\ a_2\ a_3\,]\ =\ 
   \left[\,\begin{array}{ccc}
   b_1\,a_1 & b_1\,a_2 & b_1\,a_3 \\ 
   b_2\,a_1 & b_2\,a_2 & b_2\,a_3 \\
   b_3\,a_1 & b_3\,a_2 & b_3\,a_3
   \end{array}\right]\,.`

   |
   | :math:`\,` Jedynie macierze proporcjonalne do macierzy jednostkowej

   :math:`\,\ \qquad
   c\ \boldsymbol{I}_n\ =\ \left[\begin{array}{cccc} 
   c      &    0   & \ldots &    0   \\
   0      &    c   & \ldots &    0   \\
   \ldots & \ldots & \ldots & \ldots \\
   0      &    0   & \ldots &    c     
   \end{array}\right]\,,\qquad c\,\in\,K,`

   | :math:`\,` są przemienne ze wszystkimi macierzami ze zbioru :math:`\ M_n(K).`

|
| Z przedstawionych własności wynika, że zbiór :math:`\ M_n(K)\ ` macierzy kwadratowych stopnia :math:`\ n\ `
  jest nieprzemiennym pierścieniem z jednością ze względu na dodawanie macierzy i mnożenie macierzowe.
|

Mnożenie macierzy blokowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
| Każdą macierz można podzielić na cztery (lub więcej) prostokątnych
  bloków. Po takim podziale macierz nazywana jest macierzą blokową.
  Zaznaczenie struktury blokowej może uwidocznić regularność,
  występującą wśród elementów macierzy.

Ponadto zachodzi ciekawa własność, że mnożenie macierzy blokowych można
zapisać w taki sam sposób, jak mnożenie macierzy elementarnych:

.. math::
   :label: blok1

   \left[\begin{array}{c|c}
       \boldsymbol{A} & \boldsymbol{B} \\
       \hline
       \boldsymbol{C} & \boldsymbol{D}
    \end{array}\right]
    \left[\begin{array}{c|c}
        \boldsymbol{X} \\
        \hline
        \boldsymbol{Y}
   \end{array}\right]
   \ =\ 
   \left[\begin{array}{c|c}
       \boldsymbol{A} \boldsymbol{X} + \boldsymbol{B} \boldsymbol{Y} \\
       \hline
       \boldsymbol{C} \boldsymbol{X} + \boldsymbol{D} \boldsymbol{Y}
   \end{array}\right]\,.

Bloki :math:`\ \boldsymbol{A},\boldsymbol{B},\boldsymbol{C},\boldsymbol{D},\boldsymbol{X},\boldsymbol{Y}\ `
są tutaj macierzami o dowolnych rozmiarach pod warunkiem, że liczby kolumn i wierszy umożliwiają ich mnożenie. 
Wykonanie mnożenia w powyższy sposób na macierzach gęstych zasadniczo nie zmniejsza liczby operacji. 
Jeżeli jednak pewne bloki (podmacierze) są zerowe lub są macierzami jednostkowymi, 
to rachunki mogą istotnie się uprościć. 

Weźmy na przykład sytuację, gdy dwa bloki są zerowe (oznaczone :math:`\ \boldsymbol{O}`). :math:`\ ` Wtedy:

.. math::

   \left[\begin{array}{c|c}
      \boldsymbol{A} & \boldsymbol{O} \\
      \hline
      \boldsymbol{O} & \boldsymbol{D}
   \end{array}\right]
   \left[\begin{array}{c|c}
       \boldsymbol{X} \\
       \hline
       \boldsymbol{Y}
   \end{array}\right]
   \ =\ 
   \left[\begin{array}{c|c}
       \boldsymbol{A} \boldsymbol{X} \\
       \hline
       \boldsymbol{D} \boldsymbol{Y}
   \end{array}\right]

.. admonition:: Poeksperymentuj z Sage
    
   | W systemie Sage istnieje możliwość wykonywania operacji na
     macierzach blokowych - można poskładać macierz z bloków za pomocą
     funkcji ``block_matrix()``. 

   | W poniższym programie można praktycznie sprawdzić wzór :eq:`blok1`. 
     Zachęcam do eksperymentów z innymi postaciami i wielkościami macierzy.

.. sagecellserver::

   A  = random_matrix(QQ,2,2)
   B1 = block_matrix([[identity_matrix(2),A],[zero_matrix(1,2),zero_matrix(1,2)]])
   B2 = block_matrix([[A],[identity_matrix(2)]])

   html.table([["$\qquad\qquad B1$","$\qquad\ B2$","","$\quad\ B1\cdot B2$"],[B1,B2,"=",B1*B2]])
