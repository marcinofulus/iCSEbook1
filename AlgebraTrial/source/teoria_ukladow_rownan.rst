.. -*- coding: utf-8 -*-

Rozwiązania układów równań liniowych
------------------------------------

Rząd macierzy
~~~~~~~~~~~~~

Niech :math:`\,\boldsymbol{A}\,` będzie prostokątną macierzą o :math:`\,m\,` wierszach
:math:`\,` i :math:`\ \ n\,` kolumnach nad ciałem :math:`\,K.`

.. math::
   
   \boldsymbol{A}\,\in M_{m\times n}(K).

.. Niech :math:`\,\boldsymbol{A}=[a_{ij}]_{m\times n}\,`
   będzie macierzą prostokątną nad ciałem :math:`\,K.`

**Definicja.** :math:`\,`
*Rząd wierszowy* macierzy :math:`\,\boldsymbol{A}\,`
jest liczbą liniowo niezależnych wierszy tej macierzy.
Odpowiednio, *rząd kolumnowy* jest liczbą liniowo niezależnych kolumn.

**Twierdzenie.** :math:`\,`
Rząd kolumnowy równa się rzędowi wierszowemu.

Można więc mówić o rzędzie macierzy :math:`\,\boldsymbol{A},\,`
równym liczbie liniowo niezależnych jej wierszy bądź kolumn.
Oznaczamy go :math:`\,\text{rz}\boldsymbol{A}.`

**Wniosek.** :math:`\\`
Rząd macierzy nie może przekroczyć żadnego z jej dwóch rozmiarów:
:math:`\ \,\text{rz}\boldsymbol{A}\,\leq\,m,n.`

**Twierdzenie.** :math:`\\`
Operacje elementarne na wierszach bądź kolumnach nie zmieniają rzędu macierzy.

**Wniosek 1.** :math:`\\` 
Rząd macierzy jest liczbą jedynek wiodących w jej zredukowanej postaci schodkowej.

**Wniosek 2.** :math:`\,`
Rząd macierzy równa się wymiarowi przestrzeni rozpiętej na jej wierszach 
(a także wymiarowi przestrzeni rozpiętej na jej kolumnach).

.. **Definicja.** :math:`\,`
   *Minor stopnia* :math:`\,k\,` macierzy :math:`\,\boldsymbol{A}\,`
   jest wyznacznikiem macierzy, :math:`\,` otrzymanej z :math:`\,\boldsymbol{A}\,` 
   przez skreślenie wybranych :math:`\,m-k\,` wierszy :math:`\ `
   i :math:`\ \ \,n-k\,` kolumn :math:`\ (1\leq k \leq m,n).`

**Twierdzenie.** :math:`\,`
Rząd macierzy :math:`\,\boldsymbol{A}\,` równa się najwyższemu stopniowi
jej niezerowych minorów.

Zastosujemy wymienione sposoby określania rzędu do konkretnej macierzy,
wykorzystując przy tym funkcje wbudowane do systemu Sage. :math:`\\`

.. .. code-block:: python

   sage: A = matrix(QQ,[[2, 3, 5,-3,-2],
   ...                  [3, 4, 3,-1,-3],
   ...                  [5, 6,-1, 3,-5]])

   sage: html.table([["A", "=", A]])

.. .. math::

   A\quad=\quad
   \left(\begin{array}{ccccc}
   2 & 3 & 5 & -3 & -2 \\
   3 & 4 & 3 & -1 & -3 \\
   5 & 6 & -1 & 3 & -5
   \end{array}\right)

   \;

Rząd macierzy określa bezpośrednio funkcja ``rank()``:

.. code-block:: python

   sage: A = matrix(QQ,[[2, 3, 5,-3,-2],
   ...                  [3, 4, 3,-1,-3],
   ...                  [5, 6,-1, 3,-5]])

   sage: rz_A = A.rank()
   sage: print "Rząd macierzy A wynosi", rz_A
   
   Rząd macierzy A wynosi 2

Wobec tego w zredukowanej postaci schodkowej
macierz :math:`\,\boldsymbol{A}\,` ma dwie jedynki wiodące:

.. code-block:: python

   sage: html.table([["A", "=", A, '$\\rightarrow$', A.rref()]])

.. math::

   A\quad =\quad
   \left(\begin{array}{rrrrr}
      2 & 3 &  5 & -3 & -2 \\
      3 & 4 &  3 & -1 & -3 \\
      5 & 6 & -1 &  3 & -5
   \end{array}\right)\quad\rightarrow\quad\left(\begin{array}{rrrrr}
                                             1 & 0 & -11 &  9 & -1 \\
                                             0 & 1 &   9 & -7 &  0 \\
                                             0 & 0 &   0 &  0 &  0
                                          \end{array}\right)\,.

Metody ``row_space()`` i ``column_space()`` tworzą przestrzeń rozpiętą na wierszach i na kolumnach macierzy, a ``dimension()`` daje wymiar odpowiedniej przestrzeni.

.. code-block:: python

   sage: Vrow = A.row_space()
   sage: Vcol = A.column_space()
   sage: print "Wymiar przestrzeni wierszowej macierzy A:", Vrow.dimension()
   sage: print "Wymiar przestrzeni kolumnowej macierzy A:", Vcol.dimension()

   Wymiar przestrzeni wierszowej macierzy A: 2
   Wymiar przestrzeni kolumnowej macierzy A: 2

Metoda ``minors(k)`` podaje listę wszystkich minorów stopnia k badanej macierzy. :math:`\\`
Dla macierzy :math:`\,\boldsymbol{A}\,` istnieją niezerowe minory stopnia drugiego,
natomiast wszystkie minory stopnia trzeciego znikają:

.. code-block:: python
   
   sage: print A.minors(2)
   sage: print ""
   sage: print A.minors(3)

   [-1, -9, 7, 0, -11, 9, -1, 4, -9, 7, -3, -27, 21, 0, -33, 27, -3, 12,
   -27, 21, -2, -18, 14, 0, -22, 18, -2, 8, -18, 14]
   
   [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

W ten sposób ponownie stwierdzamy, że :math:`\,\text{rz}\boldsymbol{A}=2.`
:math:`\\`

Ogólne rozwiązanie układu równań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zajmiemy się (niejednorodnym) układem równań liniowych o postaci macierzowej

.. math::
   :label: 05

   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{b}

oraz stowarzyszonym z nim układem jednorodnym

.. math::
   :label: 06

   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{0}\,,

gdzie :math:`\,\boldsymbol{A}\,\in M_{m\times n}(K)\,`
oraz :math:`\,\boldsymbol{b}\in K^n.`

Warunek konieczny i wystarczający dla istnienia jakichkolwiek rozwiązań układu podaje

**Twierdzenie 0.** :math:`\,` (Kroneckera-Capellego) :math:`\\`
Układ równań liniowych :eq:`05` 
ma rozwiązania (jest niesprzeczny) wtedy i tylko wtedy,
gdy rząd macierzy współczynników
równa się rzędowi macierzy rozszerzonej tego układu:

.. math::
   :label: 07
      
   \text{rz}\boldsymbol{A}\,=\,\text{rz}\boldsymbol{B}\,,\qquad
   \text{gdzie}\quad\boldsymbol{B}=(\boldsymbol{A},\boldsymbol{b}).

Dla układu jednorodnego :eq:`06` warunek :eq:`07` jest zawsze spełniony,
bo dopisanie kolumny zerowej nie zmienia rzędu macierzy.
A zatem układ jednorodny nigdy nie jest sprzeczny :math:`\,` - :math:`\,` 
zawsze istnieje co najmniej rozwiązanie zerowe :math:`\,\boldsymbol{x} = \boldsymbol{0}.\,`
Kwestię istnienia rozwiązań niezerowych wyjaśnia

**Twierdzenie 1.** :math:`\\`
Jednorodny układ równań :eq:`02` ma rozwiązania niezerowe wtedy i tylko wtedy,
gdy rząd macierzy współczynników jest mniejszy od liczby niewiadomych:
:math:`\ \ \text{rz}\boldsymbol{A}\,<\,n\,.`

W szczególności rozwiązania niezerowe istnieją, 
gdy liczba równań jest mniejsza od liczby niewiadomych,
czyli gdy :math:`\,m < n.`

Wprowadźmy oznaczenia :math:`\ S\ \,` i :math:`\ \,S_0\ `
dla zbiorów rozwiązań układów :math:`\,` :eq:`05` :math:`\ ` i :math:`\ \,` :eq:`06` : 

.. math::
   :label: 08

   S\ :\,=\ \{\,\boldsymbol{X}\in K^n:\ \boldsymbol{A}\boldsymbol{X}\,=\,\boldsymbol{b}\,\}\,,
   \qquad
   S_0\ :\,=\ \{\,\boldsymbol{X}\in K^n:\ \boldsymbol{A}\boldsymbol{X}\,=\,\boldsymbol{0}\,\}\,.

Z własności mnożenia macierzowego wynika, że jeżeli dwa rozwiązania,
:math:`\,\boldsymbol{X}_1,\,\boldsymbol{X}_2,\,` należą do zbioru :math:`\,S_0,\,`
to należy doń również dowolna ich kombinacja liniowa
:math:`\,a_1\boldsymbol{X}_1+a_2\boldsymbol{X}_2,\ \,a_1,a_2\in K.`
Oznacza to, że :math:`\,S_0\,` jest przestrzenią wektorową.

**Twierdzenie 2.** :math:`\\`
Zbiór :math:`\,S_0\,` rozwiązań jednorodnego układu równań :eq:`06`
jest przestrzenią wektorową (podprzestrzenią przestrzeni :math:`\,K^n`),
której wymiar równa się różnicy liczby niewiadomych i rzędu macierzy współczynników:

.. math::
   
   \text{dim}\,S_0\ =\ n - \text{rz}\boldsymbol{A}\,.

Warto tu podkreślić, że zbiór :math:`\,S\,` rozwiązań układu niejednorodnego :eq:`05` 
*nie jest* przestrzenią wektorową (jest mianowicie *rozmaitością liniową*).

Gdy :math:`\,\text{rz}\boldsymbol{A} = n,\,` to :math:`\,\text{dim}\,S_0 = 0,\,`
czyli przestrzeń :math:`\,S_0\,` redukuje się do zbioru jednoelementowego,
zawierającego tylko wektor zerowy. Wynika stąd kolejny

**Wniosek.** :math:`\,`
Rozwiązanie zerowe jest jedynym rozwiązaniem jednorodnego układu równań :eq:`06`
wtedy i tylko wtedy, gdy rząd macierzy współczynników
równa się liczbie niewiadomych: :math:`\quad\text{rz}\boldsymbol{A} = n\,.\ \,`
Wniosek ten wynika też bezpośrednio z Twierdzenia 1.

Związek pomiędzy zbiorami rozwiązań :math:`\ S\ \,` i :math:`\ \,S_0\ `
zdefiniowanymi w równaniu :eq:`08` przedstawia

**Twierdzenie 3.** :math:`\\`
Niech :math:`\,X'\,` będzie pewnym szczególnym rozwiązaniem układu :eq:`05`:

.. math::
      
   \boldsymbol{A}\boldsymbol{X'} =\ \boldsymbol{b}\,.      

Wtedy zbiór :math:`\,S\,` wszystkich rozwiązań układu :eq:`05` otrzymamy
dodając :math:`\,X'\,` do każdego rozwiązania układu :eq:`06` ze zbioru :math:`\,S_0 :`

.. math::

   S\ =\ \{\,X'\}\ +\ S_0\,.

W ten sposób ogólne rozwiązanie niejednorodnego układu równań liniowych
jest sumą pewnego szczególnego rozwiązania tego układu i ogólnego rozwiązania
stowarzyszonego z nim układu jednorodnego.

Tak więc, przynajmniej w zasadzie, aby rozwiązać układ niejednorodny,
wystarczy znaleźć (np. odgadnąć) jakieś jego szczególne rozwiązanie
oraz rozwiązać ogólnie stowarzyszony z nim układ jednorodny.

**Wniosek.** :math:`\\`
Niejednorodny układ :eq:`05` ma dokładnie jedno (niezerowe) rozwiązanie
wtedy i tylko wtedy, gdy rząd macierzy współczynników
równa się liczbie niewiadomych: :math:`\ \text{rz}\boldsymbol{A} = n\,.\ `
Jest to konsekwencja poprzedniego wniosku z Twierdzenia 2. :math:`\\`

Układy równań w Sage
~~~~~~~~~~~~~~~~~~~~

Zgodnie z Twierdzeniem 3., rozwiązanie układu równań liniowych o postaci macierzowej

.. math::
   
   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{b}

gdzie :math:`\,\boldsymbol{A}\,\in M_{m\times n}(K)\,`
oraz :math:`\,\boldsymbol{b}\in K^n,\ `
przebiega w dwóch etapach:

* wyznaczenie jakiegoś szczególnego rozwiązania układu;
* ogólne rozwiązanie układu jednorodnego z nim stowarzyszonego.

:math:`\\`
Można w tym celu wykorzystać metody przynależne klasie macierzy w systemie Sage:

* ``A.solve_right(b)`` albo w skrócie ``A\b`` daje szczególne rozwiązanie układu;
* ``A.right_kernel_matrix()`` zwraca macierz, której wiersze tworzą
  bazę przestrzeni :math:`\,S_0\,` rozwiązań stowarzyszonego układu jednorodnego. :math:`\\`

**Przykład.** :math:`\,` Rozważmy układ równań nad ciałem liczb wymiernych :math:`\,Q:`

.. math::
   
   \begin{array}{l} 
      3\,x_1\ -\ 2\,x_2\ +\ 5\,x_3\ +\ 4\,x_4\ =\ 2 \\
      6\,x_1\ -\ 4\,x_2\ +\ 4\,x_3\ +\ 3\,x_4\ =\ 3 \\
      9\,x_1\ -\ 6\,x_2\ +\ 3\,x_3\ +\ 2\,x_4\ =\ 4
   \end{array}

.. code-block:: python
   
   sage: A = matrix(QQ,[[3,-2, 5, 4],
   ...                  [6,-4, 4, 3],
   ...                  [9,-6, 3, 2]]
               
   sage: b = vector(QQ,[2,3,4])

   # Rozwiązanie szczególne:
   sage: X = A.solve_right(b)

   # Wiersze macierzy B0 tworzą bazę
   # przestrzeni rozwiązań układu jednorodnego:
   sage: B0 = A.right_kernel_matrix()    
                               
   sage: show((X, B0))

.. math::
      
   \left(\quad\left(\ \frac{7}{18}\,,\ 0\,,\ \frac{1}{6}\,,\ 0\ \right),\quad
   \left(\ \begin{array}{rrrr}
      1 & 0 & -15 &  18 \\
      0 & 1 &  10 & -12
   \end{array}\ \right)\quad\right)

.. code-block:: python
   
   sage: # Sprawdzenie wyników:
   sage: A*X==b, A*B0.transpose()==zero_matrix(QQ,3,2)

   (True, True)

:math:`\;`

A zatem ogólnym rozwiązaniem układu jest zbiór wektorów postaci

.. math:: \\

   \left[\begin{array}{r} x_1 \\ x_2 \\ x_3 \\ x_4 \end{array}\right]\quad =\quad 
   \left[\begin{array}{c} \small{7/18} \\ 0 \\ \small{1/6} \\ 0 \end{array}\right]\ \ +\ \ s\ \, 
   \left[\begin{array}{r} 1 \\ 0 \\ -15 \\  18 \end{array}\right]\ \ +\ \ t\ \, 
   \left[\begin{array}{r} 0 \\ 1 \\  10 \\ -12 \end{array}\right]\,,\qquad s,t\in Q\,.
























