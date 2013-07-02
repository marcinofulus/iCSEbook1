.. -*- coding: utf-8 -*-

Wektory i macierze w systemie Sage
----------------------------------
|
| W poprzedniej sekcji przyjmowaliśmy, że elementami macierzy są
  liczby rzeczywiste z ciała :math:`\ R\ ` albo liczby zespolone z ciała :math:`\ C.`
  Tymczasem działania na macierzach są możliwe, a własności tych działań są zachowane 
  również wtedy, gdy elementy należą do prostszej struktury :math:`\ ` - :math:`\ ` pierścienia z jednością
  (którym w szczególności może być ciało).
  Właśnie pierścień jest w systemie Sage podstawową strukturą algebraiczną,
  na której zbudowana jest algebra wielomianów i macierzy.

Poniżej znajduje się przegląd najważniejszych pierścieni stosowanych w Sage:

+-------------------+--------------------------------------------------+
| Symbol            |         Określenie                               | 
+===================+==================================================+
| ZZ                | | Pierścień liczb całkowitych                    |
|                   | | Integer Ring                                   |
+-------------------+--------------------------------------------------+
| QQ                | | Ciało liczb wymiernych                         |
|                   | | Rational Field                                 |                 
+-------------------+--------------------------------------------------+
| RR                | | Ciało liczb rzeczywistych                      |
|                   | | Real Field with 53 bits of precision           |
+-------------------+--------------------------------------------------+
| CC                | | Ciało liczb zespolonych                        | 
|                   | | Complex Field with 53 bits of precision        |
+-------------------+--------------------------------------------------+
| RDF               | | Ciało liczb rzeczywistych o podwójnej precyzji |     
|                   | | Real Double Field                              |
+-------------------+--------------------------------------------------+
| CDF               | | Ciało liczb zespolonych o podwójnej precyzji   |
|                   | | Complex Double Field                           |
+-------------------+--------------------------------------------------+
| RealField(12)     | | Ciało liczb rzeczywistych o zadanej precyzji   |
|                   | | (w tym wypadku: 12 bitów)                      |
|                   | | Real Field with 12 bits of precision           | 
+-------------------+--------------------------------------------------+
| ComplexField(248) | | Ciało liczb zespolonych o zadanej precyzji     |
|                   | | (w tym wypadku: 248 bitów)                     |
|                   | | Complex Field with 248 bits of precision       |
+-------------------+--------------------------------------------------+
| SR                | | Pierścień symboliczny                          | 
|                   | | Symbolic Ring                                  |
+-------------------+--------------------------------------------------+

W tej sytuacji istnieją dwie strategie rachunków na wektorach i macierzach:

* | dokładna algebra liniowa: elementy wektorów i macierzy należą do zbiorów ZZ, QQ, SR;
  | operacje są dokładne, ale nie wszystkie mogą być wykonane i wydajność jest ograniczona.

* | numeryczna algebra liniowa: elementami wektorów i macierzy są
    liczby o skończonej precyzji
  | ze zbiorów RR, CC, RDF, CDF. Błędy zaokrągleń kumulują się,
    co należy brać pod uwagę przy wykonywaniu różnych operacji.

.. admonition:: Uwaga

   | Pierścieniem bazowym macierzy, której elementy zależą od pewnych zmiennych,
     jest pierścień symboliczny SR. Po nadaniu konkretnych wartości liczbowych tym zmiennym,
     pierścieniem bazowym jest nadal SR, chociaż macierz składa się z samych liczb.
     Aby skorzystać z metod numerycznych dostępnych tylko dla macierzy liczbowych,
     należy jawnie zmienić pierścień przy użyciu funkcji ``change_ring()``.

Poniżej mamy przykład takiego postępowania:

.. code-block:: python

   sage: var('phi')
   sage: A = matrix([[cos(phi),-sin(phi)],
   ....              [sin(phi), cos(phi)]])

   sage: html.table([['A', '=', A]])
   sage: print "Pierścień bazowy macierzy A:", A.base_ring()

:math:`\begin{array}{ccc}
A & = & 
\left(\begin{array}{rr}
\cos\left(\phi\right) & -\sin\left(\phi\right) \\
\sin\left(\phi\right) & \cos\left(\phi\right)
\end{array}\right)
\end{array}`

``Pierścień bazowy macierzy A: Symbolic Ring``

.. code-block:: python

   # Kontynuacja kodu z poprzedniej komórki:
   sage: B = A.subs(phi=pi/4)

   sage: html.table([['B', '=', B]])
   sage: print "Pierścień bazowy macierzy B:", B.base_ring()

:math:`\begin{array}{ccc}
B & = &
\left(\begin{array}{rr}
\frac{1}{2} \, \sqrt{2} & -\frac{1}{2} \, \sqrt{2} \\
\frac{1}{2} \, \sqrt{2} & \frac{1}{2} \, \sqrt{2}
\end{array}\right) 
\end{array}`

``Pierścień bazowy macierzy B: Symbolic Ring``

.. code-block:: python

   # Kontynuacja kodu z poprzedniej komórki:
   sage: C = B.change_ring(RDF)

   sage: html.table([['C', '=', C]])
   sage: print "Pierścień bazowy macierzy C:", C.base_ring()

:math:`\begin{array}{ccc}
C & = &
\left(\begin{array}{rr}
0.707106781187 & -0.707106781187 \\
0.707106781187 & 0.707106781187
\end{array}\right)
\end{array}`

``Pierścień bazowy macierzy C: Real Double Field``

| W odróżnieniu od stylu przyjętego w poprzednich sekcjach tego skryptu
  (a także w większości pozycji literatury) Sage preferuje podejście wierszowe
  do wektorów i macierzy. Wektor wyświetlany jest w postaci "poziomej",
  a macierz jest układem (listą) wierszy. 
  Trzeba jednak zaznaczyć, że wektor w systemie Sage jest obiektem różnym
  zarówno od macierzy 1-wierszowej, jak i 1-kolumnowej 
  (czyli różnym od wprowadzonego wcześniej wektora kolumnowego).
  Wektor to po prostu skończony ciąg elementów pewnego pierścienia.
  Dopiero odpowiednie funkcje (o których dalej) przekształcają go w wymienione macierze.
  Ponadto przy wyświetlaniu macierzy poleceniem ``show()``
  używane są nawiasy zaokrąglone, a nie (jak poprzednio) prostokątne.

Konstrukcja wektorów i macierzy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. sidebar:: Programowanie obiektowe:

   | **Obiekt** :math:`\,` jest strukturą zawierającą 
   | *dane* :math:`\,` i :math:`\,` *metody*. :math:`\,` Metody są funkcjami
   | umożliwiającymi dostęp do danych 
   | i wykonywanie na nich operacji.
   | **Klasa** :math:`\,` to szablon do tworzenia
   | obiektów określonego typu.
   | Obiekt utworzony na podstawie
   | danej klasy nazywa się jej **instancją**.

W systemie Sage wektory i macierze są obiektami języka Python,
należącymi do odpowiedniej klasy.
Obiekty te powołuje się do życia używając konstruktorów ``vector()`` i ``matrix()``.
W podanych dalej przykładach zastosowana jest standardowa składnia programowania obiektowego:
jeżeli funkcja ``func()`` jest metodą pewnej klasy, to wynik jej zastosowania do obiektu ``obj``
tej klasy zapisuje się jako ``obj.func()``.

Wektory
.......

Przy wywołaniu konstruktora ``vector()`` można podać pierścień bazowy,
do którego należą elementy wektora, liczbę elementów i listę tych elementów.
Przy braku określenia pierścienia bazowego zostanie wybrana najmniejsza struktura,
w której znajdują się wszystkie elementy (domyślnie pierścień liczb całkowitych).
Gdy lista wartości elementów nie jest podana, powstanie wektor zerowy.

W poniższych przykładach metoda ``base_ring()`` podaje pierścień bazowy,
:math:`\ ` a :math:`\ ` ``parent()`` :math:`\ `- :math:`\ ` strukturę nadrzędną (klasę),
do której należy badany obiekt.

.. code-block:: python

   # Typowe użycie konstruktora wektora:
   sage: v = vector(QQ, [1.2, 3.6, -0.48])
   sage: v; v.base_ring(); v.parent()

   (6/5, 18/5, -12/25)
   Rational Field
   Vector space of dimension 3 over Rational Field

.. code-block:: python

   # Wywołanie bez deklaracji pierścienia:
   sage: v = vector([3, 5, -11])
   sage: v; v.base_ring()

   (3, 5, -11)
   Integer Ring

.. code-block:: python

   # Zadana tylko liczba elementów, bez ich wartości:
   sage: v = vector(RDF,5)
   sage: v; v.parent()

   (0.0, 0.0, 0.0, 0.0, 0.0)
   Vector space of dimension 5 over Real Double Field

Polecenie systemu Sage ``VectorSpace(K,n)`` konstruuje :math:`n`-wymiarową przestrzeń wektorową,
złożoną z :math:`n`-elementowych wektorów nad ciałem :math:`\,K.`
Dysponując taką przestrzenią, można tworzyć wektory jako jej instancje:

.. code-block:: python

   sage: VS = VectorSpace(QQ,3)
   sage: v = VS([-1, 4, 3.5])
   sage: VS; v
   
   Vector space of dimension 3 over Rational Field
   (-1, 4, 7/2)

Macierze
........

Konstruktor ``matrix()`` macierzy działa według tych samych zasad co ``vector()``.
Opcjonalnymi argumentami są: pierścień bazowy (domyślnie pierścień liczb całkowitych),
liczba wierszy, liczba kolumn (domyślnie równa liczbie wierszy),
elementy macierzy w postaci płaskiej listy albo listy list (wierszy)
albo listy wektorów (jako wierszy).

.. code-block:: python

   # Konstruktor domyślny tworzy pustą macierz:
   sage: M = matrix()   
   sage: M; M.base_ring(); M.parent()

   []
   Integer Ring
   Full MatrixSpace of 0 by 0 dense matrices over Integer Ring

.. code-block:: python

   # Typowe użycie konstruktora macierzy:
   sage: M1 = matrix(RDF, 2,3, [1,2,3,4,5,6]) 
   sage: M2 = matrix(RDF, [[1,2,3],[4,5,6]])   
   sage: M1,M2; M1.parent()

   (
   [1.0 2.0 3.0]  [1.0 2.0 3.0]
   [4.0 5.0 6.0], [4.0 5.0 6.0]
   )
   Full MatrixSpace of 2 by 3 dense matrices over Real Double Field

.. code-block:: python

   # Elementy macierzy zadane w postaci listy wektorów:
   sage: v1 = vector([1,2,3]); v2 = vector([4,5,6])
   sage: M = matrix([v1,v2]); M

   [1 2 3]
   [4 5 6]

Polecenie ``MatrixSpace()`` kreuje przestrzeń macierzy o zadanych rozmiarach nad zadanym pierścieniem.
Obowiązkowymi argumentami są: pierścień bazowy, liczba wierszy.
Opcjonalnym argumentem jest liczba kolumn (domyślnie równa liczbie wierszy).
Odpowiednie metody dają dostęp do danych przestrzeni takich jak wymiar, rozmiary macierzy, baza. 

.. code-block:: python

   sage: MS32 = MatrixSpace(ZZ,3,2); 
   sage: MS32; MS32.dimension(); MS32.dims(); MS32.basis()

   Full MatrixSpace of 3 by 2 dense matrices over Integer Ring
   6
   (3, 2)
   [
   [1 0]  [0 1]  [0 0]  [0 0]  [0 0]  [0 0]
   [0 0]  [0 0]  [1 0]  [0 1]  [0 0]  [0 0]
   [0 0], [0 0], [0 0], [0 0], [1 0], [0 1]
   ]

.. code-block:: python

   # Mat() jest aliasem dla MatrixSpace():
   sage: MS = Mat(RealField(12),2) 
   sage: MS; MS.basis()

   Full MatrixSpace of 2 by 2 dense matrices over Real Field with 12 bits
   of precision
   [
   [ 1.00 0.000]  [0.000  1.00]  [0.000 0.000]  [0.000 0.000]
   [0.000 0.000], [0.000 0.000], [ 1.00 0.000], [0.000  1.00]
   ]

Mając do dyspozycji taką przestrzeń, można tworzyć macierze jako jej instancje:

.. code-block:: python

   sage: MS22 = Mat(QQ,2)
   sage: MS23 = Mat(QQ,2,3)
   sage: A = MS22([1,2,3,4])
   sage: B = MS23([1,2,3,4,5,6])
   sage: A, B, A*B # macierze A i B oraz iloczyn AB

   (
   [1 2]  [1 2 3]  [ 9 12 15]
   [3 4], [4 5 6], [19 26 33]
   )

Wariantem tego podejścia jest użycie konstruktora ``matrix()``
jako metody przynależnej klasie macierzy:

.. code-block:: python

   sage: MS22 = Mat(QQ,2)
   sage: MS23 = Mat(QQ,2,3)
   sage: A = MS22.matrix([1,2,3,4])
   sage: B = MS23.matrix([1,2,3,4,5,6])
   sage: A, B, A*B # macierze A i B oraz iloczyn AB

   (
   [1 2]  [1 2 3]  [ 9 12 15]
   [3 4], [4 5 6], [19 26 33]
   )

Oprócz konstruktora ``matrix()``, Sage dysponuje innymi 
użytecznymi funkcjami do tworzenia pewnych szczególnych macierzy:

.. code-block:: python

   sage: O = zero_matrix(QQ,3,2)
   sage: I = identity_matrix(3)
   sage: J = ones_matrix(3,4)
   sage: D = diagonal_matrix([1,2,3])
   sage: R = random_matrix(QQ, 3,3, algorithm='diagonalizable')
   sage: E = elementary_matrix(QQ, 3, row1=1, row2=2, scale=2)
   sage: O, I, J, D, R, E   

   (
   [0 0]  [1 0 0]  [1 1 1 1]  [1 0 0]  [  8  10 -20]  [1 0 0]
   [0 0]  [0 1 0]  [1 1 1 1]  [0 2 0]  [-36 -22  24]  [0 1 2]
   [0 0], [0 0 1], [1 1 1 1], [0 0 3], [-18 -10  10], [0 0 1]
   )

Ćwiczenie
.........

Zadanie nawiązuje do uwagi zapisanej w tej sekcji po tabeli podstawowych pierścieni
oraz do następującego potem przykładu.

* Sprawdź, nad jakim pierścieniem jest zbudowana macierz A (zastosuj ``A.base_ring()``).
* Utwórz macierz A dwoma innymi sposobami opisanymi powyżej.
* Zapisz macierz B otrzymaną z A przez podstawienie a = -1 (zastosuj ``A.subs()``) i sprawdź pierścień. 
* Zapisz macierz C otrzymaną z B przez zmianę pierścienia na RDF (zastosuj ``B.change_ring()``).

.. sagecellserver::
   
   var('a')
   A = matrix([[a, 2, 3.], [4/3, 5, 6]])
   show(A)

Własności wektorów i macierzy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wskaźniki
.........

Inaczej niż w tradycyjnym zapisie matematycznym, w systemie Sage numeracja
elementów list i wektorów oraz wierszy i kolumn macierzy
zaczyna się od zera, a nie od jedynki.

| Wektor :math:`\,n`-elementowy oraz macierz o :math:`\ m\,` wierszach
  :math:`\,` i :math:`\ \,n\;` kolumnach mają następującą strukturę:
|

.. math::
   
   v\ =\ (\, v[0],\ v[1],\ \ldots,\ v[n-1]\, )\,,

|

.. math::

   A\quad=\quad\left(\begin{array}{cccc}
       A[0,0]   & A[0,1]   & \ldots & A[0,n-1]   \\ 
       A[1,0]   & A[1,1]   & \ldots & A[1,n-1]   \\
       \ldots   & \ldots   & \ldots & \ldots     \\
       A[m-1,0] & A[m-1,1] & \ldots & A[m-1,n-1]
   \end{array}\right)\,.

|
| Według tej zasady można wydobyć jakiś element wektora
  albo wiersz, kolumnę bądź element macierzy:

.. code-block:: python

   sage: v = vector([-1, 5, 3, -4, 8])
   sage: print 'Wektor v i jego wybrane elementy:', '\n'
   sage: print 'v =', v, '\n\nv[0] =', v[0], '  v[4] =', v[4]

   Wektor v i jego wybrane elementy: 

   v = (-1, 5, 3, -4, 8) 

   v[0] = -1   v[4] = 8

.. code-block:: python

   sage: A = matrix([[0,2,4,6],[1,3,5,7],[2,4,6,8]])
   sage: print 'Macierz A i jej wybrany wiersz, kolumna i elementy:', '\n'
   sage: print '   ', A.row(0).list(), '\n',\
   .....       'A =', A.row(1).list(), '\n',\
   .....       '   ', A.row(2).list()
   sage: print '\n1. wiersz  =', A.row(1),\
   .....       '\n0. kolumna =', A.column(0)
   sage: print '\nA[0,0] =', A[0,0], '  A[1,3] =', A[1,3], '  A[2,2] =', A[2,2]

   Macierz A i jej wybrany wiersz, kolumna i elementy: 

       [0, 2, 4, 6] 
   A = [1, 3, 5, 7] 
       [2, 4, 6, 8]

   1. wiersz  = (1, 3, 5, 7) 
   0. kolumna = (0, 1, 2)

   A[0,0] = 0   A[1,3] = 7   A[2,2] = 6

Elementy macierzy mogą być pewną funkcją ich wskaźników.
W takim przypadku możemy skonstruować macierz tworząc automatycznie listę
wierszy i przekazując ją do konstruktora macierzy.

| Poniżej podane są dwa przykłady takiego automatycznego generowania macierzy z zagnieżdżeniem list.
| :math:`A\ ` jest ogólną macierzą prostokątną o zadanych rozmiarach, :math:`\ B\ ` - :math:`\,` macierzą zespoloną o elementach

.. math::

   b_{kl}\,=\,k+l\cdot i\,,\qquad
   \begin{array}{l} k\,=\,0,1,\ldots,m-1\,; \\ \,l\,=\,0,1,\ldots,n-1.\end{array}

.. sagecellserver::

   m, n = 4, 5
   A = matrix([[var("a%d%d" % (k,l)) for l in range(n)]
                                     for k in range(m)])
   m, n = 4, 3 
   B = matrix([[CIF(k,l) for l in range(n)]
                         for k in range(m)])
   show((A,B))

Wycinanie
.........

Do wektorów i macierzy można zastosować technikę wycinania (ang. slicing),
ogólnie zdefiniowaną dla *sekwencji*. :math:`\,` Jeżeli np. ``L`` jest listą,
to wycinanie daje następujące wyniki:

* ``L[p:q]`` :math:`\ ` - :math:`\ ` lista kolejnych elementów o numerach od p do q-1; 
* ``L[:q]`` :math:`\ ` - :math:`\ ` lista kolejnych elementów od początku listy do numeru q-1;
* ``L[p:]`` :math:`\ ` - :math:`\ ` lista kolejnych elementów od numeru p do końca listy;
* ``L[p:q:r]`` :math:`\ ` - :math:`\ ` lista elementów o numerach od p do q-1 z krokiem r;
* ``L[-2]`` , ``L[-1]`` :math:`\ ` - :math:`\ ` przedostatni i ostatni element listy L.

.. code-block:: python

   sage: M = matrix(4,5,range(20))

   # Wycinanie daje macierz złożoną z:
   sage: A = M[1:3]     # wierszy 1., 2.
   sage: B = M[:,2:5]   # kolumn 2., 3., 4.
   sage: C = M[1:3,2:5] # elementów wierszy 1., 2. i kolumn 2., 3., 4.
   sage: D = M[1:,::2]  # elementów wierszy 1., 2., 3. i kolumn 0., 2., 4.

   sage: print M
   sage: A, B, C, D

   [ 0  1  2  3  4]
   [ 5  6  7  8  9]
   [10 11 12 13 14]
   [15 16 17 18 19]
   (
                     [ 2  3  4]                        
                     [ 7  8  9]              [ 5  7  9]
   [ 5  6  7  8  9]  [12 13 14]  [ 7  8  9]  [10 12 14]
   [10 11 12 13 14], [17 18 19], [12 13 14], [15 17 19]
   )

.. admonition:: Uwaga

   | Jeżeli :math:`\,A\,` jest macierzą o :math:`\,m\,` wierszach i :math:`\ n\,` kolumnach,
     to jej :math:`\,k`-ty wiersz można otrzymać na trzy sposoby, przy czym różny będzie typ wyniku:
     
   | ``A[k]``, :math:`\ ` ``A.row(k)``  :math:`\ ` - :math:`\ ` wektor :math:`\,n`-elementowy;
   | ``A[k,:]`` :math:`\ ` - :math:`\ ` 1-wierszowa macierz o :math:`\,n\,` elementach.

   | Dla :math:`\,k`-tej kolumny pozostają dwie możliwości:

   | ``A.column(k)`` :math:`\ ` - :math:`\ ` wektor `\ m`-elementowy;
   | ``A[:,k]`` :math:`\ ` - :math:`\ ` 1-kolumnowa macierz o :math:`\,m` elementach.

.. code-block:: python

   sage: A = random_matrix(ZZ,3,4); print A, '\n'
   sage: A[0]; type(A[0]); A.row(0); type(A.row(0)); A[0,:]; type(A[0,:])

   [ -3   0   1  -3]
   [  1   1   1 -36]
   [  1   0   1   0] 

   (-3, 0, 1, -3)
   <type 'sage.modules.vector_integer_dense.Vector_integer_dense'>
   (-3, 0, 1, -3)
   <type 'sage.modules.vector_integer_dense.Vector_integer_dense'>
   [-3  0  1 -3]
   <type 'sage.matrix.matrix_integer_dense.Matrix_integer_dense'>

Ćwiczenie
.........

* | Utwórz przypadkową macierz A o 5 wierszach i 4 kolumnach
    nad pierścieniem liczb całkowitych poleceniem ``random_matrix()``.
* | Stosując technikę wycinania utwórz macierz B, której kolejne wiersze będą
  | ostatnim, środkowym i pierwszym (początkowym) wierszem macierzy A.
  | *Wskazówka*. Użyj wzorca ``[p:q:r]`` z domyślną wartością q: :math:`\ ` ``[p::r]`` :math:`\ ` dla p = -1, r = -2.
  | Ile faktycznie wynosi q? 
* | Zapisz wybraną kolumnę macierzy A jako wektor v oraz jako macierz 1-kolumnową C.
  | Sprawdż typ otrzymanych obiektów.

.. sagecellserver::

   A = 
   B = 
   v =
   C =
 
   show ((A, B, v, C))
   print type(v)
   print type(C)     

Działania na wektorach i macierzach
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Dodawanie :math:`\,n`-elementowych wektorów nad pierścieniem :math:`\,P\,`
i mnożenie ich przez liczby z :math:`\,P\,`
określone jest analogicznie do działań na wektorach kolumnowych.

Jeżeli wektor :math:`\,w\,=\,(w_0,w_1,\ldots,w_{n-1})` jest kombinacją liniową
wektorów :math:`\,x\,=\,(x_0,x_1,\ldots,x_{n-1})\ ` oraz :math:`\ \,y\,=\,(y_0,y_1,\ldots,y_{n-1})\ `
o współczynnikach :math:`\,a\ ` i :math:`\ \,b\,:`

.. math::

   w\ =\ a\,x\ +\ b\,y\,,

to jego elementy dane są przez

.. math::

   w_i\ =\ a\,x_i\ +\ b\,y_i\,,\qquad i\,=\,0,1,\ldots,n-1.

Łatwo sprawdzić, że :math:`\,n`-elementowe wektory nad ciałem :math:`\,K\,`
tworzą przestrzeń wektorową nad tym ciałem ze względu na dodawanie i mnożenie przez liczby z :math:`\,K.`

Iloczyn skalarny dwóch wektorów o tej samej długości równa się z definicji
sumie iloczynów odpowiednich elementów, :math:`\,` jest więc liczbą należącą do :math:`\,P:`

.. math::

   x\cdot y \ \,:\,=\ \,x_0\,y_0\,+\,x_1\,y_1\,+\,\ldots\,+\,x_{n-1}\,y_{n-1}
              \ \equiv\ \sum_{i=0}^{n-1} \,x_i\,y_i\,.

Przykład kombinacji liniowej i iloczynu skalarnego wektorów:

.. code-block:: python

   sage: x = vector([-1,2,5])
   sage: y = vector([3,0,4])
   # Kombinacja liniowa w wektorów x, y o współczynnikach 3, -2:
   sage: w = 3*x-2*y  
   # Iloczyn skalarny p wektorów x, y:  
   sage: p = x*y
   sage: html.table([[3,'$\cdot$',x,'-',2,'$\cdot$',y,'=',w]])
   sage: html.table([[x,'$\cdot$',y,'=',p]])

:math:`\begin{array}{ccccccccc}
3 & \cdot & \left(-1,\,2,\,5\right) & - & 2 & \cdot & \left(3,\,0,\,4\right) & = & 
\left(-9,\,6,\,7\right)\end{array}`

:math:`\begin{array}{ccccc}
\left(-1,\,2,\,5\right) & \cdot & \left(3,\,0,\,4\right) & = & 17
\end{array}`

|
| Jeżeli :math:`\ x\ ` jest wektorem :math:`\,n`-elementowym, :math:`\ `
  a :math:`\ \,A\ ` - :math:`\ ` macierzą kwadratową stopnia :math:`\,n:`

.. math::
   
   x\ =\ (x_0,x_1,\ldots,x_{n-1})\,,\qquad 
   A\ =\ \left(\begin{array}{cccc}
       a_{00}    & a_{01}    & \ldots & a_{0,n-1} \\
       a_{10}    & a_{11}    & \ldots & a_{1,n-1} \\
       \ldots    & \ldots    & \ldots & \ldots    \\ 
       a_{n-1,0} & a_{n-1,1} & \ldots & a_{n-1,n-1}
   \end{array}\right)\,,

to istnieją iloczyny :math:`\ \ v = x\cdot A\ \ ` oraz :math:`\ \ w = A\cdot x\,.`

Obydwa wyniki, :math:`\ v\ \ \text{i}\ \ w\,,\ ` są wektorami, :math:`\,` przy czym

.. math::

   v_j\ :\,=\ \sum_{i=0}^{n-1}\, x_i\,a_{ij}\,,\qquad j\,=\,0,1,\ldots,n-1,

   w_i\ :\,=\ \sum_{j=0}^{n-1}\, a_{ij}\,x_j\,,\qquad i\,=\,0,1,\ldots,n-1.

Sprawdźmy to na przykładzie:

.. code-block:: python

   sage: x = vector(range(3))
   sage: A = matrix(3,range(9))
   sage: v = x*A; w = A*x
   sage: html.table([[x,'$\cdot$',A,'=',v]])
   sage: html.table([[A,'$\cdot$',x,'=',w]])

:math:`\begin{array}{ccccc}
\left(0,\,1,\,2\right) & \cdot & 
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \\ 6 & 7 & 8 \end{array}\right) &
= & \left(15,\,18,\,21\right) 
\end{array}`

:math:`\begin{array}{ccccc}
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \\ 6 & 7 & 8 \end{array}\right) &
\cdot & \left(0,\,1,\,2\right) &
= & \left(5,\,14,\,23\right)
\end{array}`

Zauważmy, że jeżeli zastąpić wektory przez macierze 1-wierszowe,
a iloczyn wektora i macierzy przez iloczyn macierzowy,
to pierwsze równanie pozostanie prawdziwe, podczas gdy drugie straci sens
(nie istnieje iloczyn macierzy kwadratowej przez macierz 1-wierszową).
Aby otrzymać prawdziwą wersję macierzową drugiego równania, w miejsce wektorów należy podstawić macierze 1-kolumnowe.

.. Otrzymane równania pozostaną prawdziwe, gdy występujące w nich wektory
   zastąpi się odpowiednimi macierzami 1-wierszowymi albo 1-kolumnowymi,
   a mnożenie wektora i macierzy :math:`\ ` - :math:`\ ` mnożeniem macierzowym.

Wektor można przekształcić do postaci macierzy 1-wierszowej
albo do postaci macierzy 1-kolumnowej (czyli wektora kolumnowego) 
przy użyciu metod ``row()`` i ``column()``.

Proszę zwrócić uwagę na różnicę w zapisie wektora i macierzy 1-wierszowej:

.. code-block:: python

   sage: x = vector([0,1,2]) # wyjściowy wektor
   sage: xr = x.row()        # macierzowa postać wierszowa
   sage: xc = x.column()     # macierzowa postać kolumnowa
   sage: show((x,xr,xc))

:math:`\left(\quad\left(0,\,1,\,2\right)\,,\quad
\left(\begin{array}{rrr} 0 & 1 & 2 \end{array}\right)\,,\quad
\left(\begin{array}{r} 0 \\ 1 \\ 2 \end{array}\right)\quad\right)`

.. Aby otrzymać wersję macierzową poprzednich równań,
   wystarczy w pierwszym z nich ("wizualnie macierzowo poprawnym")
   zastąpić wektory przez macierze 1-wierszowe.
   Drugie równanie jest "wizualnie macierzowo niepoprawne":
   iloczyn macierzowy będzie miał sens tylko wtedy,
   gdy zapisane "poziomo" wektory zastąpimy przez macierze 1-kolumnowe.

Poniższy program wykonuje opisane przekształcenia i działania
oraz wyświetla poprzednie równania w wersji macierzowej:

.. code-block:: python

   sage: x = vector(range(3))
   sage: A = matrix(3,range(9))
   sage: xr = x.row()
   sage: xc = x.column()    
   sage: vr = xr*A; wc = A*xc
   sage: html.table([[xr,'$\cdot$',A,'=',vr]])
   sage: html.table([[A,'$\cdot$',xc,'=',wc]])

:math:`\begin{array}{ccccc}
\left(\begin{array}{rrr} 0 & 1 & 2 \end{array}\right) & \cdot & 
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \\ 6 & 7 & 8 \end{array}\right) &
= & \left(\begin{array}{rrr} 15 & 18 & 21 \end{array}\right)
\end{array}` 

:math:`\begin{array}{ccccc}
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \\ 6 & 7 & 8 \end{array}\right) &
\cdot & \left(\begin{array}{r} 0 \\ 1 \\ 2 \end{array}\right) &
= & \left(\begin{array}{r} 5 \\ 14 \\ 23 \end{array}\right)
\end{array}`

Pierwsze równanie można przepisać w postaci kolumnowej poprzez obustronną transpozycję:

.. code-block:: python

   sage: x = vector(range(3))
   sage: A = matrix(3,range(9))
   sage: xc = x.column()
   sage: At = A.transpose()
   sage: vc = At*xc
   sage: html.table([[At,'$\cdot$',xc,'=',vc]])

:math:`\begin{array}{ccccc}
\left(\begin{array}{rrr} 0 & 3 & 6 \\ 1 & 4 & 7 \\ 2 & 5 & 8 \end{array}\right) &
\cdot & \left(\begin{array}{r} 0 \\ 1 \\ 2 \end{array}\right) &
= & \left(\begin{array}{r} 15 \\ 18 \\ 21 \end{array}\right)
\end{array}`

|
| Sage oczywiście obsługuje mnożenie dowolnych dwóch macierzy o odpowiednio dobranych wymiarach
  (ilość kolumn pierwszej musi równać się ilości wierszy drugiej):

.. code-block:: python

   sage: A = matrix(2,3,range(6))
   sage: B = matrix(3,range(9))
   sage: C = A*B
   sage: html.table([[A,'$\cdot$',B,'=',C]])

:math:`\begin{array}{ccccc}
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \end{array}\right) & \cdot &
\left(\begin{array}{rrr} 0 & 1 & 2 \\ 3 & 4 & 5 \\ 6 & 7 & 8 \end{array}\right) & = &
\left(\begin{array}{rrr} 15 & 18 & 21 \\ 42 & 54 & 66 \end{array}\right)
\end{array}`

|
| Pokazane przykłady pozwalają zauważyć, że występujące w kodzie programu symbole 
  dodawania, odejmowania i mnożenia mają różne znaczenie zależne od kontekstu:

``+``/``-`` :math:`\ ` oznaczają dodawanie/odejmowanie liczb, wektorów albo macierzy;

| ``*`` :math:`\ ` oznacza mnożenie liczb, mnożenie wektora przez liczbę, mnożenie macierzy przez liczbę,
|       :math:`\ ` mnożenie skalarne wektorów, mnożenie wektora przez macierz bądź macierzy przez wektor,
|       :math:`\ ` mnożenie macierzy przez macierz.
















 

