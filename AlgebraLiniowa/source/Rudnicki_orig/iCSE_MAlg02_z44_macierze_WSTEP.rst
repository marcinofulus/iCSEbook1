=16pt

Z44: Algebra liniowa

Zagadnienie: przekształcenie liniowe, macierze, wyznaczniki

Zadanie: macierze i operacje na macierzach.

Macierze
========

Za pomocą macierzy można łatwo przedstawiać przekształcenia liniowe i
operacje na przekształceniach liniowych. Również zapis macierzowy
wykorzystywany jest w opisie pochodnych funkcji wielu zmiennych, w
rozwiązywaniu równań algebraicznych i różniczkowych, w gromadzeniu
danych i statystyce.

Dobrym punktem wyjścia do wprowadzenia macierzy jest zapis
przekształcenia liniowego. Niech :math:`\mathbf v_1, \dots, \mathbf v_n`
będzie bazą w przestrzeni :math:`\mathbf R^n` i niech
:math:`\mathbf w_1, \dots,
\mathbf w_m` będzie bazą w przestrzeni :math:`\mathbf R^m`\ . Zakładamy,
że odwzorowanie liniowe :math:`S\colon \mathbf R^n\to \mathbf R^m`
wyraża się na wektorach bazowych następująco

.. math::

   S\mathbf v_i=a_{1i}\mathbf w_1+ a_{2i}\mathbf w_2+\dots
   +a_{mi}\mathbf w_m.

 Niech

.. math:: \mathbf x= x_1\mathbf v_1+\dots+x_n\mathbf v_n.

 Wtedy

.. math::

   S\mathbf x=
   \sum_{j=1}^n \sum_{i=1}^m a_{ij}x_j\mathbf w_i=
   \sum_{i=1}^m  
   \Big(
   \sum_{j=1}^n a_{ij} x_j
   \Big)\mathbf w_i.

 Zapiszmy liczby :math:`a_{ij}` w postaci tablicy

.. math::

   A =
   \left[
   \begin{array}{cccc}
   a_{11} &a_{12}&\cdots & a_{1n}\\
   a_{21} &a_{22}&\cdots & a_{2n}\\
   \multicolumn{4}{c}\dotfill\\
   a_{m1} &a_{m2}&\cdots & a_{mn}
   \end{array}
   \right],

 mówiąc precyzyjniej :math:`A` jest funkcją, która parze liczb
naturalnych :math:`(i,j)`\ , gdzie :math:`1\le i\le m` oraz
:math:`1\le j \le n`\ , przyporządkowuje liczbę :math:`a_{ij}`\ .
Funkcję :math:`A` nazywamy *macierzą wymiaru* :math:`m\times n`\ ,
liczbę :math:`a_{ij}` nazywamy :math:`ij`\ -tym *wyrazem* macierzy
:math:`A`\ , zaś ciągi :math:`[a_{i1},\dots, a_{in}]` i

.. math::

   \left[
   \begin{array}{c}
   a_{1j}\\
   a_{21}\\
   \vdots\\
   a_{mj}
   \end{array}
   \right]

 nazywamy, odpowiednio :math:`i`\ -tym *wierszem* i :math:`j`\ -tą
*kolumną* macierzy :math:`A`\ . Wprowadzamy działanie mnożenia macierzy
:math:`A` przez wektor :math:`\mathbf x`

.. math::

   A\mathbf x =
   \left[
   \begin{array}{cccc}
   a_{11} &a_{12}&\cdots & a_{1n}\\
   a_{21} &a_{22}&\cdots & a_{2n}\\
   \multicolumn{4}{c}\dotfill\\
   a_{m1} &a_{m2}&\cdots & a_{mn}
   \end{array}
   \right]
   \left[
   \begin{array}{c}
   x_{1}\\
   x_{2}\\
   \vdots\\
   x_{n}
   \end{array}
   \right]
   =
   \left[
   \begin{array}{c}
   \sum_{j=1}^n a_{1j} x_j\\
   \sum_{j=1}^n a_{2j} x_j\\
   \vdots\\
   \sum_{j=1}^n a_{mj} x_j
   \end{array}
   \right],

 a więc :math:`i`\ -ty wyraz wektora :math:`A\mathbf x` jest postaci

.. math:: a_{i1}x_1+a_{i2}x_2+\dots+ a_{in}x_n.

 Wtedy odwzorowanie :math:`S` wyraża się wzorem
:math:`S\mathbf x=A\mathbf x`\ , a macierz :math:`A` nazywamy *macierzą
odwzorowania liniowego* :math:`S`\ .

Pojęcie mnożenia macierzy przez wektor można uogólnić i zdefiniować
mnożenie macierzy przez macierz. Niech :math:`A` będzie macierzą wymiaru
:math:`m\times n`\ , a macierz :math:`B` wymiaru :math:`n\times p`\ .
Wtedy macierz :math:`C` wymiaru :math:`m\times p`\ , której ogólny wyraz
dany jest wzorem

.. math:: c_{ij}=a_{i1}b_{1j}+a_{i2}b_{2j} +\dots+a_{in}b_{nj}

 nazywamy *iloczynem* macierzy :math:`A`\ , :math:`B` i oznaczamy
:math:`AB`\ . W przypadku, gdy wyrazy macierzy :math:`A` i :math:`B` są
liczbami rzeczywistymi, to :math:`ij`\ -ty wyraz macierzy :math:`AB`
jest iloczynem skalarnym :math:`i`\ -tego wiersza macierzy :math:`A` i
:math:`j`\ -tej kolumny macierzy :math:`B`\ . Zauważmy, że mnożenie
macierzy :math:`A` i :math:`B` jest wykonalne wtedy i tylko wtedy, gdy
liczba kolumn macierzy :math:`A` jest taka sama jak liczba wierszy
macierzy :math:`B`\ . Nawet, gdy obie macierze :math:`AB` i :math:`BA`
są poprawnie określone, to nie muszą być równe, a nawet nie muszą być
tego samego wymiaru. Niech :math:`S\colon X\to Y` będzie odwzorowaniem
liniowym o macierzy :math:`A` i :math:`T\colon Y\to Z` będzie
odwzorowaniem liniowym o macierzy :math:`B`\ . Wtedy odwzorowanie
liniowe :math:`TS` ma macierz :math:`BA`\ .

Oprócz działania mnożenia macierzy stosunkowo prosto wprowadzamy
działanie mnożenia macierzy przez liczbę :math:`c`\ , mnożąc każdy
element macierzy przez :math:`c` oraz dodawania macierzy tego samego
wymiaru dodając wyrazy o tych samych współrzędnych. Kolejną operacją na
macierzach jest ich transponowanie. Jeżeli :math:`A` jest macierzą o
wymiarze :math:`m\times n`\ , to macierz :math:`B` jest macierzą o
wymiarze :math:`n\times m` nazywamy *macierzą transponowaną* do macierzy
:math:`A` i oznaczamy :math:`A^T`\ , jeżeli :math:`b_{ij}=a_{ji}` dla
:math:`1\le i\le n` i :math:`1\le j\le m`\ . Zatem macierz transponowaną
otrzymujemy z wyjściowej macierzy zamieniając wiersze z kolumnami. W
przypadku macierzy o wyrazach zespolonych można wprowadzić dwie operacje
sprzężenia macierzy. W pierwszej z nich (*sprzężenie trywialne*)
definiujemy macierz :math:`\bar A` o wyrazach sprzężonych do wyrazów
macierzy :math:`A`\ . W drugiej, macierz :math:`A^*` określamy wzorem
:math:`A^*= \bar A^T` i mówimy, że jest *sprzężona (hermitowsko)*.

Ograniczymy się teraz do macierzy kwadratowych, a więc o wymiarze
:math:`n\times n`\ , gdzie :math:`n` jest ustaloną liczbą naturalną.
Wśród macierzy kwadratowych można wyróżnić *macierz jednostkową*
:math:`I`\ , która na głównej przekątnej ma jedynki, a poza nią zera, a
więc jej wyrazy są *deltami Kroneckera*, tj. :math:`\delta_{ii}=1` oraz
:math:`\delta_{ij}=0`\ , gdy :math:`i\ne j`\ . Jeżeli :math:`A` jest
dowolną macierzą o wymiarze :math:`n\times n`\ , to :math:`AI=IA=A`\ .
Jeżeli macierz istnieje macierz :math:`B` taka, że :math:`AB=I`\ , to
:math:`B` nazywamy *macierzą odwrotną* do macierzy :math:`A` i oznaczamy
ją przez :math:`A^{-1}`\ . Prawdziwe są równości :math:`A^{-1}A=I` oraz
:math:`(A^{-1})^{-1}=A`\ . Jeżeli macierz :math:`A` ma wyznacznik różny
od zera, to ma macierz odwrotną. Wzór na macierz odwrotną można uzyskać
korzystając z wyznaczników. W tym celu oznaczmy przez :math:`\det A`
wyznacznik macierzy :math:`A`\ , a przez :math:`A_{ij}` wyznacznik
macierzy powstałej z macierzy :math:`A` po skreśleniu :math:`i`\ -tego
wiersza i :math:`j`\ -tej kolumny. Jeżeli :math:`B` jest macierzą
odwrotną do macierzy :math:`A`\ , to wyrazy macierzy :math:`B` są
postaci

.. math:: b_{ij}=\frac{(-1)^{i+j}A_{ji}}{\det A}.

W klasie macierzy kwadratowych można wyróżnić następujące macierze
specjalne:

a) *samosprzężoną* lub *hermitowską*, gdy :math:`A=A^*`\ ,

b) *unitarną*, gdy :math:`AA^*=I`\ ,

c) *symetryczną*, gdy :math:`A=A^T`\ ,

d) *antysymetryczną*, gdy :math:`A+A^T=O`\ , gdzie :math:`O` oznacza
macierz o wyrazach zerowych,

e) *przekątniową*, gdy poza główną przekątną ma zerowe wyrazy,

f) *trójkątną górną*, gdy pod główną przekątną ma zerowe wyrazy,

g) *trójkątną dolną*, gdy nad główną przekątną ma zerowe wyrazy.

Ponieważ w tej samej przestrzeni liniowej możemy rozważać różne bazy,
więc ważne jest jak to samo odwzorowanie liniowe wyraża się w różnych
bazach. Niech :math:`X=\mathbf R^n` i niech
:math:`\mathcal V=\{\mathbf v_1, \dots, \mathbf v_n\}` oraz
:math:`\mathcal W=\{\mathbf w_1, \dots, \mathbf  w_n\}` będą bazami w
przestrzeni :math:`\mathbf R^n`\ . Zakładamy, że

.. math::

   \mathbf w_i=p_{1i}\mathbf v_1+ p_{2i}\mathbf v_2+\dots
   +p_{ni}\mathbf v_n.

 dla :math:`i=1,\dots,n`\ . Wtedy macierz :math:`P=[p_{ij}]` nazywamy
*macierzą przejścia od bazy :math:`\mathcal V` do bazy
:math:`\mathcal W`\ *. W szczególności, jeżeli
:math:`\mathcal V=\{\mathbf e_1, \dots, \mathbf e_n\}` jest bazą
kanoniczną, to kolumnami macierzy :math:`P` są wektory
:math:`\mathbf w_i`\ . Jeżeli ten sam wektor ma przedstawienie w starej
bazie

.. math:: x_1\mathbf v_1+\dots+x_n\mathbf v_n,

 i nowej bazie

.. math:: x'_1\mathbf w_1+\dots+x'_n\mathbf w_n,

 to

.. math:: \mathbf x=P \mathbf x'.

 Macierz :math:`P` jest odwracalna, a macierz odwrotna :math:`P^{-1}`
wyraża przejście od nowej bazy do starej. Jeżeli odwzorowanie :math:`S`
ma macierz :math:`A` w bazie :math:`\mathcal V`\ , to to odwzorowanie ma
macierz :math:`P^{-1}AP` w bazie :math:`\mathcal W`\ .
