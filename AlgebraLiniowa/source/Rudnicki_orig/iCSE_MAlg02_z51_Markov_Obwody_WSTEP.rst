Do Z51, Z52: Algebra liniowa

Zagadnienie: Zastosowania algebry liniowej

Zadanie: Teoria obwodów elektrycznych. Zadanie: procesy Markowa.

2mm

Procesy Markowa i Teoria obwodów elektrycznych.
===============================================

2mm

W zastosowaniach algebry ważną rolę odgrywają macierze o wyrazach
nieujemnych. Tego typu macierze służą do opisu przejścia od jednego
stanu zadanego wektorem nieujemnym (np. rozkładem prawdopodobieństwa) do
drugiego stanu też zadanego pewnym wektorem nieujemnym. Macierze o
wyrazach nieujemnych wykorzystywane są w opisie rozkładu populacji
(zarówno biologicznych jak i abstrakcyjnych), w łańcuchach Markowa oraz
w teorii grafów. Drugi typ macierzy wykorzystywany między innymi w
teorii obwodów elektrycznych, to macierze incydencji opisujące relację
miedzy wierzchołkami i krawędziami w grafie skierowanym.

2mm

Rozkład populacji i twierdzenie Perrona
=======================================

2mm

Rozpoczniemy od ogólnej sytuacji, w której wygodnie jest użyć
terminologii dynamiki populacyjnej. Populacja podzielona jest na
:math:`n` podpopulacji. Będziemy badać jak zmienia się liczebność
podpopulacji w kolejnych pokoleniach. Zakładamy, że :math:`p_{ij}` jest
średnią liczbą potomków osobnika z podpopulacji :math:`i` należących do
podpopulacji :math:`j`\ , a więc :math:`p_{ij}` jest liczbą nieujemną,
ale może być liczbą większa od 1. Niech :math:`x_i^k` oznacza liczbę
osobników w podpopulacji :math:`i`\ –tej w :math:`k`\ –tym pokoleniu.
Przyjmujemy oznaczenia

.. math::

   P =
   \left[
   \begin{array}{ccc}
   p_{11}  & \cdots & p_{1n}\\
   \cdots & \cdots & \cdots \\
   p_{n1} & \cdots & p_{nn}
   \end{array}
   \right]

 i :math:`\mathbf x^k =[x_1^k ,x_2^k,\dots,x_n^k]`\ . Wektor
:math:`{\mathbf x}^k` opisuje liczbę osobników w podpopulacjach w
:math:`k`\ –tym pokoleniu, a macierz :math:`P` opisuje relacje między
osobnikami w kolejnych pokoleniach. Relacje między kolejnymi pokoleniami
opisana w postaci macierzowej

.. math:: {\mathbf x}^{k+1} =  \mathbf x^{k}P.

 Zatem

.. math:: {\mathbf x}^k = \mathbf x^{0}P^k ,

 gdzie :math:`\mathbf x^0` opisuje wyjściowe pokolenie (pokolenie
zerowe).

Fundamentalnym wynikiem dotyczącym macierzy o wyrazach nieujemnych jest
następujące twierdzenie Perrona.

Twierdzenie Perrona
===================

. Jeżeli macierz :math:`P` ma wyrazy nieujemne, a dla pewnego :math:`r`
naturalnego macierz :math:`P^r` ma wszystkie wyrazy dodatnie, to
istnieją stała :math:`\lambda > 0` oraz ciągi :math:`x^* = (
x^*_1,\dots , x^*_n)` i :math:`y^* = ( y^*_1,\dots , y^*_n)` o wyrazach
dodatnich takie, że :math:`Px^*=\lambda x^*` oraz dla dowolnego
:math:`x\in
\mathbf R^n` mamy

.. math:: \lim_{k\to\infty} \lambda ^{-k} \mathbf x P^k  = \mathbf x^*\langle \mathbf y^*, \mathbf x \rangle ,

 gdzie :math:`\langle\cdot, \cdot\rangle` oznacza iloczyn skalarny w
:math:`\mathbf R^n`\ . Wektor :math:`\mathbf p^k=(p^k_1,\dots,p^k_n)`\ ,
gdzie

.. math::

   p^k_i=\frac{(\mathbf xP^k )_i}
   {\sum_{j=1}^n(\mathbf x P^k)_j }

 opisuje rozkład probabilistyczny populacji na podpopulacje w :math:`k`\ -tym
pokoleniu. Niech :math:`p^*=(p^*_1,\dots,p^*_n)`\ , gdzie

.. math::

   p^*_i=\frac{x^*_i}
   {\sum_{j=1}^n x^*_j }.

 Jeżeli spełnione są założenia twierdzenia Perrona, to

.. math:: \lim_{k\to\infty}\mathbf p^k=\mathbf p^*.

 Zatem niezależnie od rozkładu wyjściowego rozkład dąży do rozkładu
:math:`\mathbf p^*`\ , zaś wielkość populacji rośnie w tempie
geometrycznym (wykładniczym). Rozkład populacji na podpopulacje, z
czasem stabilizuje się i jest w granicy opisywany wektorem
:math:`\mathbf p^*` określonym wzorem. Jest to tzw. *prawo
asynchronicznego wzrostu*, bowiem po długim czasie rozkład populacji na
podpopulacje przestaje zależeć od wyjściowego rozkładu :math:`\mathbf x`\ .
Ponieważ cała populacja rośnie lub maleje w tempie wykładniczym mówimy,
że spełnia *prawo asynchronicznego wykładniczego wzrostu*.

Oznaczmy przez :math:`p_{ij}^r` wyrazy macierzy :math:`P^r`\ . Jeżeli
macierz :math:`P` ma wyrazy nieujemne to :math:`p_{ij}^r>0` wtedy i
tylko wtedy, gdy istnieje ciąg :math:`i_0,i_1,\dots,i_r` taki, że
:math:`i_0=i`\ , :math:`i_r=j` oraz

.. math:: p_{i_0 i_1}p_{i_1 i_2}\dots p_{i_{r-1}i_r}>0.

Rozważmy graf skierowany :math:`\mathcal G`\ , w którym wierzchołkami są
podpopulacje. Zakładamy, że skierowana krawędź :math:`(a,b)` należy do
grafu :math:`\mathcal G` wtedy i tylko wtedy, gdy :math:`p_{ab}>0`\ , a
więc, gdy osobnik w podpopulacji :math:`b` może być z dodatnim
prawdopodobieństwem dzieckiem osobnika z podpopulacji :math:`a`\ .
Warunek oznacza, że istnieje skierowana ścieżka długości :math:`r`
łącząca wierzchołek :math:`i` z wierzchołkiem :math:`j`\ .

2mm

Łańcuchy Markowa
================

2mm

Szczególnym przypadkiem modelu opisanego powyżej są łańcuchy Markowa na
przestrzeni stanów :math:`S=\{1,2,\dots,n\}`\ . Jeżeli w danej chwili
układ znajduje się w jednym ze stanów, powiedzmy :math:`i`\ , to
zakładamy, że z prawdopodobieństwem :math:`p_{ij}` układ może przejść ze
stanu :math:`i` do stanu :math:`j`\ . W tym przypadku :math:`p_{ij}` są
liczbami nieujemnymi, takimi, że

.. math:: p_{i1}+p_{i2}+\dots+p_{in}=1

 dla :math:`i=1,2,\dots,n`\ . Macierz :math:`P` nazywamy macierzą
przejścia. Niech :math:`\mathbf p=[p_1,p_2,\dots,p_n]` będzie
początkowym rozkładem stanów. Wtedy po :math:`k`\ -krokach rozkład jest
opisany wektorem :math:`\mathbf p^k= \mathbf pP^k`\ . Zauważmy, że
jeżeli dla pewnego :math:`r>0` macierz :math:`P^r` ma wyrazy dodatnie
(co oznacza, że każde dwa stany komunikują sie po :math:`r`\ -krokach),
to z twierdzenia Perrona wynika natychmiast, że

.. math:: \lim_{k\to\infty} \mathbf p^k=\pi,

 gdzie :math:`\pi=[\pi_1,\dots,\pi_n]` jest jedynym rozkładem
stacjonarnym, tj. takim, że :math:`\pi P=\pi`\ .

2mm

Ścieżki w grafach
=================

2mm

Rozważmy graf skierowany. Taki graf składa się :math:`n` wierzchołków
oraz pewnej liczby krawędzi skierowanych. Rozważmy macierz
:math:`P=[p_{ij}]` taką, że :math:`p_{ij}=1` jeżeli wierzchołki
:math:`i`\ , :math:`j` są połączone krawędzią skierowaną zaczynającą się
w wierzchołku :math:`i` i o końcu w wierzchołku :math:`j` oraz
:math:`p_{ij}=0` w przeciwnym przypadku. Rozważmy macierz :math:`P^r` i
niech :math:`p_{ij}^r` będzie :math:`ij`\ -tym wyrazem tej macierzy.
Wtedy :math:`p_{ij}^r` jest liczbą różnych ścieżek skierowanych
łączących wierzchołki :math:`i`\ , :math:`j`\ .

2mm

Macierze incydencji
===================

2mm

*Macierzą incydencji* grafu skierowanego (bez pojedynczych pętli)
:math:`G` o zbiorze wierzchołków :math:`V = \{v_1,\dots,v_n\} ` i
krawędzi :math:`K =\{k_1,..,k_m\}` nazywamy macierz :math:`P = [p_{ij}]`\ ,
o wymiarze :math:`m\times n` taką, że:

a) :math:`p_{ij}=1`\ , gdy wierzchołek :math:`v_j` jest początkiem
krawędzi :math:`k_i`\ ,

b) :math:`p_{ij}=-1`\ , gdy wierzchołek :math:`v_j` jest końcem krawędzi
:math:`k_i`\ ,

c) :math:`p_{ij}=0`\ , w pozostałych przypadkach (tj. gdy wierzchołek
:math:`v_j` nie jest ani początkiem, ani końcem krawędzi :math:`k_i`\ ),

Na przykład, jeśli w grafie o wierzchołkach :math:`\{1,2,3,4\}` mamy
pięć krawędzi :math:`\{(1,3),(1,4),(2,1),(2,4),(3,1)\}` to macierz
incydencji jest postaci

.. math::

   \left[
   \begin{array}{rrrr}
   1&0&-1&0\\
   1&0&0&-1\\
   -1&1&0&0\\
   0&1&0&-1\\
   -1&0&1&0\\
   \end{array}
   \right].

Dalej rozważamy *grafy spójne*, a więc takie, że dowolne dwa wierzchołki
można połączyć krawędziami dowolnie skierowanymi. Jeżeli :math:`P` jest
macierzą incydencji grafu spójnego o :math:`n` wierzchołkach, to jądro
odwzorowania :math:`P` jest podprzestrzenią wektorów postaci
:math:`c\mathbf
1`\ , :math:`c\in \mathbf R`\ , gdzie :math:`\mathbf 1=[1,1,\dots,1]^T`\ .
Suma wyrazów w każdym wierszu jest równa zero. Oznacza to, że wiersze
macierzy :math:`P` są prostopadłe do wektora :math:`\mathbf 1`\ , więc
:math:`\mathbf p_i\mathbf 1=0` (dlatego wektor :math:`\mathbf 1` należy
do jądra macierzy :math:`A`\ ).

Przez *pętlę* będziemy rozumieć ciąg wierzchołków grafu kolejno
połączonych krawędziami dowolnie skierowanymi, przy czym ostatni
wierzchołek jest połączony również z pierwszym wierzchołkiem. Na
przykład wierzchołki :math:`1,4,2` w poprzednim grafie tworzą pętlę, bo
połączone są kolejno krawędziami :math:`(1,4)`\ , :math:`(2,4)`\ ,
:math:`(2,1)`\ . Wiersze w macierzy incydencji są zależne wtedy i tylko
wtedy, gdy odpowiadające im krawędzie tworzą pętlę. Jeżeli ustawimy
krawędzie występujace w pętli w ciąg :math:`k_1,k_2,\dots,k_s`\ , to

.. math:: \varepsilon_{k_1}\mathbf p_{k_1}+\varepsilon_{k_2}\mathbf p_{k_2}+\dots+\varepsilon_{k_s}\mathbf p_{k_s}=\mathbf 0,

 gdzie współczynniki :math:`\varepsilon_{k_i}` są równe albo :math:`1`\ ,
gdy kierunek krawędzi jest zgodny z kierunkiem pętli, albo :math:`-1`\ ,
gdy jest jest przeciwny, a wektor :math:`\mathbf p_{k_i}` oznacza
:math:`k_i`\ -wiersz macierzy :math:`P`\ .

Związek z obwodami elektrycznymi
================================

Zakładamy, że graf opisuje obwód elektryczny, a więc jego krawędzie
łączące węzły obwodu skierowane są zgodnie z kierunkiem przepływu prądu.
Jeżeli :math:`x_1,x_2,\dots,x_n` są potencjałami w poszczególnych
węzłach, a :math:`\mathbf x= [x_1,x_2,\dots,x_m]^T`\ , to wektor
:math:` P\mathbf x
` opisuje różnicę potencjałów wzdłuż krawędzi, a więc :math:`\mathbf
p_i\mathbf x` jest różnicę potencjałów na :math:`i`\ -tej krawędzi. W
przypadku obwodu zamkniętego sumę spadków napięć wynosi

.. math::

   \varepsilon_{k_1}\mathbf p_{k_1}\cdot\mathbf x+\varepsilon_{k_2}\mathbf p_{k_2}\cdot\mathbf x
   +\dots+\varepsilon_{k_s}\mathbf p_{k_s}\cdot\mathbf x=\mathbf 0\cdot \mathbf x=0,

 a więc otrzymujemy drugie prawo Kirchhoffa: w zamkniętym obwodzie suma
spadków napięć równa jest zeru.
