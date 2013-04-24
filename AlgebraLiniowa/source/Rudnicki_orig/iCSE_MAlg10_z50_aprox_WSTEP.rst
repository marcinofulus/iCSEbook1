Z50: Algebra liniowa

Zagadnienie: Zastosowania algebry liniowej

Zadanie: Metoda najmniejszych kwadratów, aproksymacja wielomianowa.

Metoda najmniejszych kwadratów, aproksymacja wielomianowa
=========================================================

2mm

Kluczową rolę w naukach doświadczalnych odgrywa wyznaczanie zależności
między różnymi wielkościami na podstawie wyników pomiarów. Można to
robić na dwa sposoby. Pierwszy z nich, to poszukiwanie w miarę prostych
zależności między wielkościami z pewną dokładnością. Na przykład w
pewnym eksperymencie mierzymy jednocześnie dwie wielkości fizyczne
:math:`x` i :math:`y`\ . Wynik :math:`n` pomiarów, to zbiór par

.. math:: \{(x_1,y_1),(x_2,y_2),\dots,(x_n,y_n)\}.

Szukamy funkcji liniowej lub innego typu, która najlepiej przybliża, w
jakimś ustalonym sensie, dane doświadczalne. Ten sposób postępowania
omówimy na przykładzie metody najmniejszych kwadratów, a szukaną funkcją
będzie funkcja liniowa. Drugi sposób, to wyznaczenie dokładnej
zależności funkcyjnej między danymi poprzez podanie funkcji :math:`f`
takiej, że :math:`y_k=f(x_k)` dla :math:`k=1,\dots,n`\ . Mówimy wtedy o
*interpolacji* funkcjami danego typu. Metodę tę omówimy na przykładzie
interpolacji wielomianami.

2mm

Metoda najmniejszych kwadratów
------------------------------

2mm Mamy wyniki :math:`n` pomiarów dwóch wielkości

.. math:: \{(x_1,y_1),(x_2,y_2),\dots,(x_n,y_n)\}.

Zmienną :math:`x` traktujemy jako niezależną i przewidujemy, że wartość
drugiej zmiennej :math:`\hat y` zależy liniowo od :math:`x`\ , a więc
:math:`\hat
y=ax+b`\ . Szukamy :math:`a` i :math:`b` takich, że wyrażenie

.. math:: S= \sum_{k=1}^n (\hat y_k- y_k)^2=\sum_{k=1}^n (y_k- ax_k-b)^2

ma najmniejszą wartość. Ze względu na wzór na :math:`S` taki sposób
wyznaczania zależności nazywamy *metodą najmniejszych kwadratów*.
Korzystając z metody wyznaczania ekstremów funkcji wielu zmiennych
wnioskujemy, że :math:`a` i :math:`b` spełniają następujące równania

.. math:: 2an+2b\sum_{k=1}^n x_k-2\sum_{k=1}^n y_k=0,

.. math:: 2b\sum_{k=1}^n x_k^2+2a\sum_{k=1}^n x_k-2\sum_{k=1}^n y_kx_k=0.

 Niech

.. math::

   m_x=\frac{x_1+\dots+x_n}{n},
   \quad 
   m_y=\frac{y_1+\dots+y_n}{n}

 będą średnimi zmiennych :math:`x` i :math:`y`\ . Wtedy

.. math::

   a=m_y-b m_x,  \quad b=
   \frac  
   {\sum\limits_{k=1}^n (y_k-m_y)(x_k-m_x)}{\sum\limits_{k=1}^n (x_k-m_x)^2}.

2mm

Interpolacja wielomianowa
-------------------------

2mm

Mamy wyniki :math:`n` pomiarów dwóch wielkości

.. math:: \{(x_1,y_1),(x_2,y_2),\dots,(x_n,y_n)\}

 i szukamy wielomianu :math:`W` stopnia :math:`n-1` takiego, że

.. math:: W(x_1)=y_1,\,\, W(x_2)=y_2,\,\,\ldots,\,\,W(x_n)=y_n.

Wielomian :math:`W` wyznaczamy w dwóch krokach. Najpierw dla dowolnego
:math:`j`\ , :math:`1\le j\le n`\ , znajdujemy wielomian :math:`W_j`
taki, że :math:`W_j(x_k)=0` dla :math:`k\ne j`\ , a następnie
przedstawiamy szukany wielomian :math:`W` w postaci kombinacji liniowej
wielomianów :math:`W_j`\ . Wielomian

.. math:: W_j(x)=(x-x_1)\dots (x-x_{j-1})(x-x_{j+1})\dots (x-x_{n})

spełnia warunek :math:`W_j(x_k)=0` dla :math:`k\ne j`\ . Wtedy

.. math:: W(x)=\sum_{j=1}^n \frac{y_j}{W_j(x_j)}W_j(x)

 jest szukanym wielomianem :math:`W`\ .

Inny sposób wyprowadzenia wzoru aproksymacyjnego. Niech

.. math:: W(x)=\sum_{i=0}^{n-1} c_ix^i

będzie wielomianem takim, że :math:`W(x_i)=y_i`\ . Wtedy spełniony jest
układ równań

.. math::

   \left\{
   \begin{array}{ll}
   c_0+c_1x_1+c_2x_1^2+\dots+c_{n-1}x_1^{n-1}=y_1&\\
   c_0+c_1x_2+c_2x_2^2+\dots+c_{n-1}x_2^{n-1}=y_2&\\
   \multicolumn{1}{c}\dotfill&\\
   c_0+c_1x_n+c_2x_n^2+\dots+c_{n-1}x_n^{n-1}=y_n,&
   \end{array}
   \right.

w którym niewiadomymi są współczynniki wielomianu
:math:`c_0,c_1,c_2,\dots,c_{n-1}`\ . Następnie rozwiązujemy ten układ
równań. Wyznacznik główny jest postaci

.. math::

   \left|
   \begin{array}{ccccc}
   1&x_1&x_1^2&\dots&x_1^{n-1}\\
   1&x_2&x_2^2&\dots&x_2^{n-1}\\
   \multicolumn{5}{c}\dotfill\\
   1&x_n&x_n^2&\dots&x_n^{n-1}
   \end{array}
   \right|

 i nosi nazwę *wyznacznika Vandermonde’a*
