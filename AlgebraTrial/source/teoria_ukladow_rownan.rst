.. -*- coding: utf-8 -*-

Theorems on Solutions of Linear Equations
-----------------------------------------

Rank of a Matrix
~~~~~~~~~~~~~~~~

Niech :math:`\,\boldsymbol{A}\ ` będzie macierzą o :math:`\,m\,` wierszach
:math:`\ \ \text{i}\ \ \,n\ ` kolumnach nad ciałem 
:math:`\,K:\ \,\boldsymbol{A}\,\in M_{m\times n}(K). \\`

.. admonition:: Definicja. :math:`\,`

   *Rząd wierszowy* :math:`\,` macierzy :math:`\,\boldsymbol{A}\ \,`
   jest liczbą liniowo niezależnych wierszy tej macierzy. :math:`\\`
   Odpowiednio, :math:`\,` *rząd kolumnowy* :math:`\,` jest liczbą liniowo niezależnych kolumn.

.. admonition:: Twierdzenie. :math:`\,`

   Rząd kolumnowy równa się rzędowi wierszowemu.

Można więc mówić o rzędzie macierzy :math:`\,\boldsymbol{A},\,`
równym liczbie liniowo niezależnych jej wierszy bądź kolumn.
Oznaczamy go :math:`\ \text{rz}\,\boldsymbol{A}.`

.. **Wnioski:**

   1. Rząd macierzy nie może przekroczyć żadnego z jej dwóch rozmiarów:
   :math:`\ \,\text{rz}\,\boldsymbol{A}\,\leq\,m,n.`

   2. Rząd macierzy równa się wymiarowi przestrzeni rozpiętej na jej wierszach, :math:`\\`
   a także wymiarowi przestrzeni rozpiętej na jej kolumnach.

**Wniosek 1.** :math:`\\`
Rząd macierzy nie może przekroczyć żadnego z jej dwóch rozmiarów:
:math:`\ \,\text{rz}\boldsymbol{A}\,\leq\,m,n.`

**Wniosek 2.** :math:`\\`
Rząd macierzy równa się wymiarowi przestrzeni rozpiętej na jej wierszach, :math:`\\`
a także wymiarowi przestrzeni rozpiętej na jej kolumnach. :math:`\\`

.. admonition:: Twierdzenie. :math:`\,`

   Operacje elementarne na wierszach bądź kolumnach nie zmieniają rzędu macierzy.

.. **Wniosek.** :math:`\,`

Rząd macierzy jest więc liczbą jedynek wiodących w jej zredukowanej postaci schodkowej.

.. admonition:: Twierdzenie. :math:`\,`

   Rząd macierzy równa się najwyższemu stopniowi jej niezerowych minorów.  

.. **Definicja.** :math:`\,`
   *Minor stopnia* :math:`\,k\,` macierzy :math:`\,\boldsymbol{A}\,`
   jest wyznacznikiem macierzy, :math:`\,` otrzymanej z :math:`\,\boldsymbol{A}\,` 
   przez skreślenie wybranych :math:`\,m-k\,` wierszy :math:`\ `
   i :math:`\ \ \,n-k\,` kolumn :math:`\ (1\leq k \leq m,n).`

Zastosujemy wymienione sposoby określania rzędu do konkretnej macierzy,
wykorzystując przy tym funkcje wbudowane do systemu Sage. :math:`\\`

Rząd macierzy określa bezpośrednio funkcja ``rank()``:

.. code-block:: python

   sage: A = matrix(QQ,[[2, 3, 5,-3,-2],
   ...                  [3, 4, 3,-1,-3],
   ...                  [5, 6,-1, 3,-5]])

   sage: rz_A = A.rank()
   sage: print "Rząd macierzy A wynosi", rz_A
   
   Rząd macierzy A wynosi 2

Metody ``row_space()`` i ``column_space()`` tworzą przestrzeń rozpiętą na wierszach :math:`\\`
i na kolumnach macierzy, :math:`\,` podczas gdy ``dimension()`` daje wymiar przestrzeni:

.. code-block:: python

   sage: Vrow = A.row_space()
   sage: Vcol = A.column_space()
   sage: print "Wymiar przestrzeni wierszowej macierzy A:", Vrow.dimension()
   sage: print "Wymiar przestrzeni kolumnowej macierzy A:", Vcol.dimension()

   Wymiar przestrzeni wierszowej macierzy A: 2
   Wymiar przestrzeni kolumnowej macierzy A: 2

W zredukowanej postaci schodkowej macierz :math:`\,\boldsymbol{A}\,` ma dwie jedynki wiodące:

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

Metoda ``minors(k)`` podaje listę wszystkich minorów stopnia :math:`\,k\ ` 
badanej macierzy:

.. code-block:: python
   
   sage: print A.minors(2)
   sage: print ""
   sage: print A.minors(3)

   [-1, -9, 7, 0, -11, 9, -1, 4, -9, 7, -3, -27, 21, 0, -33, 27, -3, 12,
   -27, 21, -2, -18, 14, 0, -22, 18, -2, 8, -18, 14]
   
   [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

Jak widać, dla macierzy :math:`\,\boldsymbol{A}\ ` istnieją niezerowe minory stopnia drugiego, 
natomiast wszystkie minory stopnia trzeciego znikają. :math:`\\`

Ostatecznie, każda z zastosowanych metod daje ten sam wynik: 
:math:`\ \,\text{rz}\,\boldsymbol{A} = 2.`

General Solution of a System of Equations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zajmiemy się (niejednorodnym) układem równań liniowych o postaci macierzowej

.. math::
   :label: 05

   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{b}

oraz stowarzyszonym z nim układem jednorodnym

.. math::
   :label: 06

   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{0}\,,

gdzie :math:`\,\boldsymbol{A}\,\in M_{m\times n}(K)\,`
oraz :math:`\,\boldsymbol{b}\in K^m.`

Warunek konieczny i wystarczający dla istnienia jakichkolwiek rozwiązań układu podaje

.. **Twierdzenie 0.** :math:`\,` (Kroneckera-Capellego) :math:`\\`

.. admonition:: Twierdzenie 0. :math:`\,` (Kroneckera-Capellego) :math:`\,`

   Układ równań liniowych :eq:`05` 
   ma rozwiązania (jest niesprzeczny) wtedy i tylko wtedy,
   gdy rząd macierzy współczynników
   równa się rzędowi macierzy rozszerzonej:

   .. math::
      :label: 07
      
      \text{rz}\,\boldsymbol{A}\,=\,\text{rz}\,\boldsymbol{B}\,,\qquad
      \text{gdzie}\quad\boldsymbol{B}\,=\,[\,\boldsymbol{A}\,|\,\boldsymbol{b}\,].

Dla układu jednorodnego :eq:`06` warunek :eq:`07` jest zawsze spełniony,
bo dopisanie kolumny zerowej nie zmienia rzędu macierzy.
A zatem układ jednorodny nigdy nie jest sprzeczny :math:`\,` - :math:`\,` 
zawsze istnieje co najmniej rozwiązanie zerowe :math:`\,\boldsymbol{x} = \boldsymbol{0}.\,`
Kwestię istnienia rozwiązań niezerowych wyjaśnia

.. **Twierdzenie 1.** :math:`\\`

.. admonition:: Twierdzenie 1. :math:`\,`

   Jednorodny układ równań :eq:`06` ma rozwiązania niezerowe wtedy i tylko wtedy,
   gdy rząd macierzy współczynników jest mniejszy od liczby niewiadomych:
   :math:`\ \ \text{rz}\boldsymbol{A}\,<\,n\,.`

W szczególności rozwiązania niezerowe istnieją, 
gdy liczba równań jest mniejsza od liczby niewiadomych, czyli gdy :math:`\,m<n.`

Rozważmy ważny przypadek :math:`\ \,m=n.\ \,` 
Wówczas warunek :math:`\ \,\text{rz}\boldsymbol{A}<n\ \,`
jest spełniony wtedy i tylko wtedy, :math:`\,` gdy :math:`\ \det\boldsymbol{A}=0.\ \,` 
Stąd, a także ze wzorów Cramera wynika

.. admonition:: Twierdzenie 1a.
   
   Jednorodny układ równań o kwadratowej macierzy :math:`\,\boldsymbol{A}\,`
   ma rozwiązania niezerowe wtedy i tylko wtedy, :math:`\,` gdy :math:`\ \det\boldsymbol{A}=0.`

:math:`\;`

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
:math:`\,a_1\boldsymbol{X}_1+a_2\boldsymbol{X}_2,\ \,a_1,a_2\in K:`

.. math::
   
   \boldsymbol{A}\boldsymbol{X}_1=\boldsymbol{A}\boldsymbol{X}_2=\boldsymbol{0}
   \qquad\Rightarrow\qquad
   \boldsymbol{A}\ (a_1\boldsymbol{X}_1+\,a_2\boldsymbol{X}_2)\ =\ 
   a_1\,\boldsymbol{A}\boldsymbol{X}_1\,+\ a_2\,\boldsymbol{A}\boldsymbol{X}_2\ =\ 
   \boldsymbol{0}\,.

Oznacza to, że zbiór :math:`\,S_0\,` jest podprzestrzenią przestrzeni :math:`\,K^n\,.\ `
Dokładniej charakteryzuje go

.. **Twierdzenie 2.** :math:`\\`

.. admonition:: Twierdzenie 2. :math:`\,`

   Zbiór :math:`\,S_0\,` rozwiązań jednorodnego układu równań :eq:`06`
   jest przestrzenią wektorową (podprzestrzenią przestrzeni :math:`\,K^n`), :math:`\,`
   której wymiar równa się różnicy liczby niewiadomych i rzędu macierzy współczynników:
   
   .. math::
   
      \text{dim}\,S_0\ =\ n - \text{rz}\boldsymbol{A}\,.

Warto tu podkreślić, że zbiór :math:`\,S\,` rozwiązań układu niejednorodnego :eq:`05` 
*nie jest* przestrzenią wektorową (jest mianowicie *rozmaitością liniową*).

Gdy :math:`\,\text{rz}\boldsymbol{A} = n,\,` to :math:`\,\text{dim}\,S_0 = 0,\,`
czyli przestrzeń :math:`\,S_0\,` redukuje się do zbioru jednoelementowego,
zawierającego tylko wektor zerowy. Oznacza to, że (zgodnie z Twierdzeniem 1.) 
układ równań ma tylko rozwiązanie  zerowe.

.. **Wniosek.** :math:`\,`

.. .. admonition:: Wniosek. :math:`\,`

   Rozwiązanie zerowe jest jedynym rozwiązaniem jednorodnego układu równań :eq:`06`
   wtedy i tylko wtedy, gdy rząd macierzy współczynników
   równa się liczbie niewiadomych: :math:`\ \ \text{rz}\boldsymbol{A} = n\,.\ \,`
   
.. Wniosek ten wynika też bezpośrednio z Twierdzenia 1. :math:`\\`

Związek pomiędzy zbiorami rozwiązań :math:`\ S\ \,` i :math:`\ \,S_0\ `
zdefiniowanymi w równaniu :eq:`08` przedstawia

.. **Twierdzenie 3.** :math:`\\`

.. admonition:: Twierdzenie 3. :math:`\,`

   Niech :math:`\,\boldsymbol{X'}\,` będzie pewnym szczególnym rozwiązaniem układu :eq:`05`:
   
   .. math::
      
      \boldsymbol{A}\boldsymbol{X'} =\ \boldsymbol{b}\,.      
   
   Wtedy zbiór :math:`\,S\,` wszystkich rozwiązań układu :eq:`05` otrzymamy
   dodając :math:`\,\boldsymbol{X'}\,` :math:`\\` 
   do każdego rozwiązania układu :eq:`06` ze zbioru :math:`\,S_0 :`
   
   .. math::
   
      S\ =\ \{\,\boldsymbol{X'}\}\ +\ S_0\,.

W ten sposób ogólne rozwiązanie niejednorodnego układu równań liniowych
jest sumą pewnego szczególnego rozwiązania tego układu i ogólnego rozwiązania
stowarzyszonego z nim układu jednorodnego.

.. **Wniosek.** :math:`\\`

.. admonition:: Wniosek. :math:`\,`

   Niejednorodny układ :eq:`05` ma dokładnie jedno rozwiązanie
   wtedy i tylko wtedy, gdy rząd macierzy współczynników
   równa się liczbie niewiadomych: :math:`\ \text{rz}\boldsymbol{A} = n\,.\ `

.. Jest to konsekwencja poprzedniego wniosku z Twierdzenia 2. :math:`\\`

Tak więc, przynajmniej w zasadzie, aby rozwiązać układ niejednorodny,
wystarczy znaleźć (np. odgadnąć) jakieś jego szczególne rozwiązanie
oraz rozwiązać ogólnie stowarzyszony z nim układ jednorodny. 

Systems of Linear Equations in Sage
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zgodnie z Twierdzeniem 3., :math:`\,` rozwiązanie układu równań liniowych o postaci macierzowej

.. math::
   
   \boldsymbol{A}\,\boldsymbol{x}\,=\,\boldsymbol{b}

gdzie :math:`\,\boldsymbol{A}\,\in M_{m\times n}(K)\,`
oraz :math:`\,\boldsymbol{b}\in K^m,\ `
może przebiegać w dwóch etapach:

* wyznaczenie jakiegoś szczególnego rozwiązania układu;
* ogólne rozwiązanie układu jednorodnego z nim stowarzyszonego.

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
























