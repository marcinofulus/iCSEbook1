.. -*- coding: utf-8 -*-

Pouczający przykład z dyskusją
------------------------------

Zastosujemy omówione do tej pory metody do układu równań nad ciałem :math:`\,Q:`

.. math::
   :nowrap:

   \begin{alignat*}{6}
      x_1 & {\,} + {\,} & 3\,x_2 & {\,}   {\,} &        & {\,} + {\,} & 2\,x_4 & {\,} - {\,} &    x_5 & {\;} = {\;} & 2 \\
          & {\,}   {\,} &        & {\,}   {\,} &    x_3 & {\,} + {\,} & 4\,x_4 & {\,} - {\,} & 3\,x_5 & {\;} = {\;} & 2 \\
      x_1 & {\,} + {\,} & 3\,x_2 & {\,} + {\,} &    x_3 & {\,} + {\,} & 6\,x_4 & {\,} - {\,} & 4\,x_5 & {\;} = {\;} & 4
   \end{alignat*}

Zaczynamy od zapisania macierzy współczynników :math:`\,\boldsymbol{A},\ `
kolumny wolnych wyrazów :math:`\,\boldsymbol{b}\ `
oraz macierzy rozszerzonej :math:`\,\boldsymbol{B}\,` tego układu:

.. math::

   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrrrr}
      1 & 3 & 0 & 2 & -1 \\
      0 & 0 & 1 & 4 & -3 \\
      1 & 3 & 1 & 6 & -4
   \end{array}\right]\,,\quad
   \boldsymbol{b}\ =\ 
   \left[\begin{array}{r}
      2 \\ 2 \\ 4
   \end{array}\right]\,;\qquad
   \boldsymbol{B}\ =\ 
   \left[\begin{array}{rrrrrr}
      1 & 3 & 0 & 2 & -1 & 2 \\
      0 & 0 & 1 & 4 & -3 & 2 \\
      1 & 3 & 1 & 6 & -4 & 4
   \end{array}\right]\,.

Metoda eliminacji
~~~~~~~~~~~~~~~~~

Sprowadzenie macierzy rozszerzonej do zredukowanej postaci schodkowej:

.. code-block:: python

   sage: B = matrix(QQ,[[1, 3, 0, 2,-1, 2],
   ...                  [0, 0, 1, 4,-3, 2],
   ...                  [1, 3, 1, 6,-4, 4]])
   
   sage: html.table([[B, '$\\rightarrow$', B.rref()]])

.. math::
   :label: 09
   
   \left(\begin{array}{rrrrrr}
      1 & 3 & 0 & 2 & -1 & 2 \\
      0 & 0 & 1 & 4 & -3 & 2 \\
      1 & 3 & 1 & 6 & -4 & 4
   \end{array}\right)\quad\rightarrow\quad\left(\begin{array}{rrrrrr}
                                             1 & 3 & 0 & 2 & -1 & 2 \\
                                             0 & 0 & 1 & 4 & -3 & 2 \\
                                             0 & 0 & 0 & 0 & 0 & 0
                                          \end{array}\right)

Wyjściowy układ trzech równań jest więc równoważny układowi pierwszych dwóch spośród nich
(co jest zrozumiałe, bo równanie trzecie było po prostu sumą tych dwóch):

.. math::
   :nowrap:

   \begin{alignat*}{6}
      x_1 & {\,} + {\,} & 3\,x_2 & {\,}   {\,} &        & {\,} + {\,} & 2\,x_4 & {\,} - {\,} &    x_5 & {\;} = {\;} & 2 \\
          & {\,}   {\,} &        & {\,}   {\,} &    x_3 & {\,} + {\,} & 4\,x_4 & {\,} - {\,} & 3\,x_5 & {\;} = {\;} & 2 \\
   \end{alignat*}

Warto zauważyć, że ze zredukowanej postaci schodkowej macierzy rozszerzonej :eq:`09`
można odczytać pewne szczególne rozwiązanie układu wyjściowego: :math:`\,`
liczby w ostatniej kolumnie tej macierzy dają wartości niewiadomych
odpowiadających kolumnom z jedynkami wiodącymi, przy zerowych wartościach 
pozostałych niewiadomych. Tym szczególnym rozwiązaniem jest 

.. math::
   :label: 10

   x_1 = x_3 = 2,\quad x_2 = x_4 = x_5 = 0.

Otrzymany powyżej układ dwóch równań przepisujemy jako

.. math::
   :nowrap:

   \begin{alignat*}{5}
      x_1 & {\;} = {\;} & 2 & {\,} - {\,} & 3\,x_2 & {\,} - {\,} & 2\,x_4 & {\,} + {\,} & x_5 \\
      x_3 & {\,} = {\,} & 2 & {\,} - {\,} & 4\,x_4 & {\,} + {\,} & 3\,x_5  
   \end{alignat*}

Niewiadome :math:`\ x_2,\,x_4\ \,\text{i}\ \, x_5\ `
(odpowiadające kolumnom bez jedynek wiodących) przyjmujemy za dowolne parametry:

.. math::
   
   x_2 = s,\ \,x_4 = t,\ \,x_5 = u,\qquad s,t,u\,\in\,Q,

wobec czego otrzymujemy rozwiązanie w postaci

.. math::

   \begin{array}{l}
      x_1 \ =\ 2 \ - \ 3\,s \ - \ 2\,t \ + \ u \\
      x_2 \ = \ s \\
      x_3 \ = \ 2 \ - \ 4\,t \ + \ 3\,u \\
      x_4 \ = \ t \\
      x_5 \ = \ u
   \end{array}\qquad\quad
   s,t,u\,\in\,Q\,.

Ostatecznie, rozwiązanie układu w wersji wektorowej przedstawia się następująco:

.. math::
   :label: 11

   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5 \end{array}\right]\ \,=\ \,  
   \left[\begin{array}{r}  2  \\  0  \\  2  \\  0  \\  0  \end{array}\right]\ +\ s\ 
   \left[\begin{array}{r} -3  \\  1  \\  0  \\  0  \\  0  \end{array}\right]\ +\ t\ 
   \left[\begin{array}{r} -2  \\  0  \\ -4  \\  1  \\  0  \end{array}\right]\ +\ u\ 
   \left[\begin{array}{r}  1  \\  0  \\  3  \\  0  \\  1 \end{array}\right]\,,\quad
   s,t,u\,\in\,Q.

.. Pierwszy składnik po znaku równości przedstawia rozwiązanie szczególne :eq:`10`,
   podczas gdy dalsze wyrazy dają ogólne rozwiązanie układu jednorodnego,
   stowarzyszonego z niejednorodnym układem wyjściowym. 
   Tę ostatnią interpretację potwierdzą dalsze rachunki w tym przykładzie.

Metoda bezpośrednia
~~~~~~~~~~~~~~~~~~~

Użyjemy metod ``solve_right()`` oraz ``right_kernel_matrix()`` do wyznaczenia
szczególnego rozwiązania wyjściowego układu niejednorodnego oraz ogólnego rozwiązania 
stowarzyszonego z nim układu jednorodnego:

.. code-block:: python

   sage: A = matrix(QQ,[[1, 3, 0, 2,-1],[0, 0, 1, 4,-3],[1, 3, 1, 6,-4]])
              
   sage: b = vector(QQ,[2,2,4])
   
   sage: X = A\b   # rozwiązanie szczególne

   # Wiersze macierzy B0 tworzą bazę przestrzeni rozwiązań układu jednorodnego:
   sage: B0 = A.right_kernel_matrix()
   sage: B0 = 2*B0 # aby pozbyć się ułamków

   sage: show((X, B0))

.. math::

   \left(\quad\left(2,\,0,\,2,\,0,\,0\right),\quad 
   \left(\ \begin{array}{rrrrr}
      2 & 0 & 0 & -3 & - 4 \\
      0 & 2 & 0 & -9 & -12 \\
      0 & 0 & 2 &  1 &   2
   \end{array}\ \right)\quad\right)

Rozwiązaniem ogólnym jest więc zbiór wektorów postaci

.. math::
   :label: 12

   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5 \end{array}\right]\ \, =\ \,  
   \left[\begin{array}{r}  2  \\  0  \\  2  \\  0  \\   0 \end{array}\right]\ +\ s\ 
   \left[\begin{array}{r}  2  \\  0  \\  0  \\ -3  \\  -4 \end{array}\right]\ +\ t\ 
   \left[\begin{array}{r}  0  \\  2  \\  0  \\ -9  \\ -12 \end{array}\right]\ +\ u\ 
   \left[\begin{array}{r}  0  \\  0  \\  2  \\  1  \\   2 \end{array}\right]\,,\quad
   s,t,u\,\in\,Q.

Porównanie wyników
~~~~~~~~~~~~~~~~~~

Wzory :eq:`11` i :eq:`12`, przedstawiające ogólne rozwiązanie układu równań,
nie są identyczne: zawierają takie samo rozwiązanie szczególne, 
ale różne są wektory rozpinające przestrzenie rozwiązań układu jednorodnego.

Aby sprawdzić wzajemną zgodność tych wzorów, zbudujemy i porównamy obie wymienione
przestrzenie. Znajdzie tu zastosowanie funkcja ``span()``,
która zwraca przestrzeń rozpiętą na podanych (w postaci listy) wektorach:

.. code-block:: python

   sage: V1 = span(QQ,[[-3, 1, 0, 0, 0],[-2, 0,-4, 1,  0],[1, 0, 3, 0, 1]])              
   sage: V2 = span(QQ,[[ 2, 0, 0,-3,-4],[ 0, 2, 0,-9,-12],[0, 0, 2, 1, 2]])
   
   sage: V1==V2

   True

.. sage: print V1, '\n'
   sage: print V2, '\n'
   
   Vector space of degree 5 and dimension 3 over Rational Field
   Basis matrix:
   [   1    0    0 -3/2   -2]
   [   0    1    0 -9/2   -6]
   [   0    0    1  1/2    1] 
   
   Vector space of degree 5 and dimension 3 over Rational Field
   Basis matrix:
   [   1    0    0 -3/2   -2]
   [   0    1    0 -9/2   -6]
   [   0    0    1  1/2    1] 
  
Różnica we wzorach :eq:`11` i :eq:`12` mogła wystąpić dlatego,
że baza przestrzeni wektorowej nie jest określona jednoznacznie:
bazą jest *każdy* maksymalny liniowo niezależny układ wektorów.
Nietrywialne przestrzenie nad ciałami liczbowymi :math:`\,Q,\,R,\,C\,`
mają nieskończenie wiele baz.

Alternatywne rozwiązanie układu jednorodnego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Występujący w tym przykładzie jednorodny układ równań o postaci macierzowej

.. math::
   :label: 13

   \boldsymbol{A}\,\boldsymbol{x}\ =\ \boldsymbol{0}\,,
   \qquad
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{ccccc}
      1 & 3 & 0 & 2 & -1 \\
      0 & 0 & 1 & 4 & -3 \\
      1 & 3 & 1 & 6 & -4
   \end{array}\right]\,,

można rozwiązać też innym, niestandardowym sposobem.

Przede wszystkim wyznaczymy rząd macierzy :math:`\,\boldsymbol{A}\ \,`
i :math:`\ ` wymiar przestrzeni rozwiązań :math:`\,S_0.\ ` Stwierdzamy, że:

* :math:`\ \text{rz}\boldsymbol{A} < 3,\,` bo wiersze są liniowo zależne
  (trzeci jest sumą pierwszych dwóch);
* | :math:`\ \text{rz}\boldsymbol{A}\geq 2,\,` bo istnieją niezerowe minory stopnia drugiego
  | :math:`\qquad\qquad\ ` (np. minor wycięty w prawym górnym rogu).

A zatem :math:`\ \,\text{rz}\boldsymbol{A} = 2,\ ` a wymiar przestrzeni :math:`\,S_0\,,`
równy różnicy liczby niewiadomych i rzędu macierzy :math:`\,\boldsymbol{A},\,`
wynosi :math:`\ 5 - 2 = 3.\ `
Dla określenia przestrzeni :math:`\,S_0\,` wystarczy podać jakąkolwiek jej bazę,
złożoną z trzech liniowo niezależnych wektorów kolumnowych należących do przestrzeni :math:`\,Q^5.`

**Dyskusja ogólna.**

W tej sytuacji zagadnienie rozwiązania układu :eq:`13` jest równoważne wyznaczeniu
macierzy :math:`\,\boldsymbol{X}\,` o pięciu wierszach i trzech liniowo niezależnych kolumnach,
spełniającej warunek

.. math::
   :label: 14

   \boldsymbol{A}\,\boldsymbol{X}\ =\ \boldsymbol{O}_3\,,

gdzie po prawej stronie występuje zerowa macierz kwadratowa stopnia trzeciego.

Rzeczywiście, załóżmy, że macierz :math:`\,\boldsymbol{X}\in M_{5\times 3}(Q)\,`
spełnia równanie :eq:`14`. Oznaczając jej kolumny przez
:math:`\,\boldsymbol{X}_1,\,\boldsymbol{X}_2,\,\boldsymbol{X}_3\ \,`
i :math:`\ \,` stosując kolumnowy zapis macierzy, mamy

.. math::

   \boldsymbol{A}\,\boldsymbol{X}\ \,=\ \,
   \boldsymbol{A}\ 
   \left[\,\boldsymbol{X}_1\,|\;\boldsymbol{X}_2\,|\;\boldsymbol{X}_3\,\right]\ \,=\ \,
   \left[\,
   \boldsymbol{A}\boldsymbol{X}_1\,|\;
   \boldsymbol{A}\boldsymbol{X}_2\,|\;
   \boldsymbol{A}\boldsymbol{X}_3\,\right]\ \,=\ \,
   \left[\,\boldsymbol{0}\,|\,\boldsymbol{0}\,|\,\boldsymbol{0}\,\right]

skąd, przez przyrównanie do siebie odpowiednich kolumn dwóch ostatnich macierzy:
 
.. math::

   \boldsymbol{A}\boldsymbol{X}_1\ =\ \boldsymbol{0},\qquad
   \boldsymbol{A}\boldsymbol{X}_2\ =\ \boldsymbol{0},\qquad
   \boldsymbol{A}\boldsymbol{X}_3\ =\ \boldsymbol{0}\,.

A zatem kolumny :math:`\,\boldsymbol{X}_1,\,\boldsymbol{X}_2,\,\boldsymbol{X}_3\ `
macierzy :math:`\,\boldsymbol{X}\,` spełniają równanie :eq:`13` :math:`\,`
i :math:`\,` (z założenia ich liniowej niezależności) tworzą poszukiwaną bazę 
przestrzeni :math:`\,S_0.`

**Wyznaczenie bazy przestrzeni rozwiązań.**

Szukaną macierz :math:`\,\boldsymbol{X}\,` można zbudować, biorąc za punkt wyjścia
zredukowaną postać schodkową :math:`\,\boldsymbol{C}\,` macierzy współczynników 
:math:`\,\boldsymbol{A}\,` układu :eq:`13`. :math:`\ ` Według wzoru :eq:`09`:
 
.. math::
   :label: 15
   
   \boldsymbol{C}\quad =\quad
   \left[\begin{array}{rrrrr}
      1 & 3 & 0 & 2 & -1 \\
      0 & 0 & 1 & 4 & -3 \\
      0 & 0 & 0 & 0 &  0
   \end{array}\right]\,.

Przestawienie drugiej i trzeciej kolumny w :math:`\,\boldsymbol{C}\,`
daje macierz :math:`\,\boldsymbol{D}\,` o przejrzystej strukturze blokowej
(oznaczenia bloków zawierają ich rozmiary):

.. math::
   :label: 16   

   \boldsymbol{D}\quad =\quad 
   \left[\begin{array}{cc|ccc}
      1 & 0 & 3 & 2 & -1 \\
      0 & 1 & 0 & 4 & -3 \\
      \hline
      0 & 0 & 0 & 0 &  0
   \end{array}\right]
   \quad \equiv\quad
   \left[\begin{array}{c|c}
      \boldsymbol{I_2}      & \boldsymbol{F_{23}} \\
      \hline                
      \boldsymbol{O_{12}}   & \boldsymbol{O_{13}}
   \end{array}\right]\,.

Zauważmy od razu, że :math:`\,\boldsymbol{D}\,` jest (zredukowaną schodkową) macierzą układu,
otrzymanego z :eq:`13` przez zmianę numeracji niewiadomych: :math:`\ x_2\leftrightarrow x_3.\ \,`
Wprowadzamy nową macierz

.. math::
   :label: 17

   \boldsymbol{Y}\quad :\,=\quad
   \left[\begin{array}{c}
      \boldsymbol{-F_{23}} \\
      \hline
      \boldsymbol{I_3}
   \end{array}\right]
   \quad =\quad
   \left[\begin{array}{rrr}
      -3 & -2 & 1 \\
       0 & -4 & 3 \\
      \hline
       1 &  0 & 0 \\
       0 &  1 & 0 \\
       0 &  0 & 1
    \end{array}\right]\,.

Z reguł mnożenia macierzy blokowych wynika, że

.. math::
   :label: 18

   \boldsymbol{D}\cdot\boldsymbol{Y}\ \,=\ \,   
   \left[\begin{array}{c|c}
      \boldsymbol{I_2}    & \boldsymbol{F_{23}} \\
      \hline
      \boldsymbol{O_{12}} & \boldsymbol{O_{13}}
   \end{array}\right]\ \cdot\ 
   \left[\begin{array}{c}
      \boldsymbol{-F_{23}} \\
      \hline
      \boldsymbol{I_3}
   \end{array}\right]\ \,=\ \,
   \left[\begin{array}{c}
      -\boldsymbol{I_2 F_{23}}+\boldsymbol{F_{23}I_3} \\
      \hline
      \boldsymbol{-O_{12}F_{23}}+\boldsymbol{O_{13}I_3}
   \end{array}\right]\ \,=

   =\ \,
   \left[\begin{array}{c}
      \boldsymbol{-F_{23}}+\boldsymbol{F_{23}} \\
      \hline
      \boldsymbol{-O_{13}}+\boldsymbol{O_{13}}
   \end{array}\right]\ \,=\ \,
   \left[\begin{array}{c}
      \boldsymbol{O_{23}} \\
      \hline
      \boldsymbol{O_{13}}
   \end{array}\right]\ \,=\ \,\boldsymbol{O_3}.

Kolumny macierzy :math:`\,\boldsymbol{Y}\,` są więc rozwiązaniami układu
o zredukowanej schodkowej macierzy :math:`\,\boldsymbol{D},\,` 
czyli z przestawionymi niewiadomymi :math:`\ x_2,\,x_3.\ `
Rozwiązaniami wyjściowego układu :eq:`13` będą kolumny macierzy :math:`\,\boldsymbol{X},\,`
otrzymanej z :math:`\,\boldsymbol{Y}\,` poprzez przestawienie drugiego i trzeciego wiersza
(bo w tych macierzach wiersze odnoszą się do kolejnych niewiadomych):

.. math::
   :label: 19

   \boldsymbol{X}\quad =\quad
   \left[\begin{array}{rrr}
      -3 & -2 & 1 \\
       1 &  0 & 0 \\
       0 & -4 & 3 \\
       0 &  1 & 0 \\
       0 &  0 & 1
    \end{array}\right]\,.

Trzeba jeszcze sprawdzić, że kolumny macierzy :math:`\,\boldsymbol{X}\,`
są liniowo niezależne, czyli że :math:`\,\text{rz}\,\boldsymbol{X} = 3.\,`
Świadczy o tym niezerowy minor 3. stopnia, utworzony z pierwszych trzech wierszy
macierzy:

.. math::

   \det\,
   \left[\begin{array}{rrr}
   -3 & -2 & 1 \\
    1 &  0 & 0 \\
    0 & -4 & 3
   \end{array}\right]\ \,=\ \, 2.

Ostatecznie, ogólne rozwiązanie jednorodnego układu :eq:`13` ma postać

.. math::
   :label: 20

   \left[\begin{array}{c} x_1 \\ x_2 \\ x_3 \\ x_4 \\ x_5 \end{array}\right]\quad =\quad  
   s\ \,\left[\begin{array}{r} -3  \\  1  \\  0  \\  0  \\  0 \end{array}\right]\ +\ 
   t\ \,\left[\begin{array}{r} -2  \\  0  \\ -4  \\  1  \\  0 \end{array}\right]\ +\ 
   u\ \,\left[\begin{array}{r}  1  \\  0  \\  3  \\  0  \\  1 \end{array}\right]\,,\qquad
   s,t,u\,\in\,Q\,,

zgodną z rozwiązaniem :eq:`11` układu niejednorodnego. :math:`\\`

**Zastosowanie algebry komputerowej.**

Użyjemy teraz narzędzi systemu Sage do przeprowadzenia opisanych operacji macierzowych.

1. Przekształcenie macierzy :math:`\,\boldsymbol{A}\,` do zredukowanej postaci schodkowej 
   :math:`\,\boldsymbol{C}\,` (wzór :eq:`15`):

   .. code-block:: python

      sage: A = matrix(QQ,[[1, 3, 0, 2,-1],
      ...                  [0, 0, 1, 4,-3],
      ...                  [1, 3, 1, 6,-4]])

      sage: C = A.rref(); C

      [ 1  3  0  2 -1]
      [ 0  0  1  4 -3]
      [ 0  0  0  0  0]

2. | Utworzenie macierzy :math:`\,\boldsymbol{D}\,` poprzez przestawienie
     drugiej i trzeciej kolumny macierzy :math:`\,\boldsymbol{C}\,`
   | i zaznaczenie struktury blokowej macierzy :math:`\,\boldsymbol{D}\,` (wzór :eq:`16`):

   .. code-block:: python

      sage: D = copy(C).with_swapped_columns(1,2)
      sage: D.subdivide(2,2); D

      [ 1  0| 3  2 -1]
      [ 0  1| 0  4 -3]
      [-----+--------]
      [ 0  0| 0  0  0]

3. Wyodrębnienie bloku :math:`\,\boldsymbol{F_{23}}\,`
   i utworzenie macierzy :math:`\,\boldsymbol{Y}\ ` (wzór :eq:`17`):

   .. code-block:: python

      sage: F23 = D.subdivision(0,1)
      sage: I3 = identity_matrix(3)
      sage: Y = block_matrix([[-F23],[I3]]); Y

      [-3 -2  1]
      [ 0 -4  3]
      [--------]
      [ 1  0  0]
      [ 0  1  0]
      [ 0  0  1]

4. Sprawdzenie, że iloczyn macierzy :math:`\,\boldsymbol{D}\ \,\text{i}\ \,\boldsymbol{Y}\,`
   równa się macierzy zerowej 3. stopnia :math:`\\` (wzór :eq:`18`):

   .. code-block:: python

      sage: D*Y

      [0 0 0]
      [0 0 0]
      [-----]
      [0 0 0]

5. | Utworzenie macierzy :math:`\,\boldsymbol{X}\,` przez przestawienie
     drugiego i trzeciego wiersza macierzy :math:`\,\boldsymbol{Y}\,`
   | i usunięcie struktury blokowej macierzy :math:`\,\boldsymbol{X}\,` (wzór :eq:`19`):

   .. code-block:: python

      sage: X = Y.with_swapped_rows(1,2)
      sage: X.subdivide(); X

      [-3 -2  1]
      [ 1  0  0]
      [ 0 -4  3]
      [ 0  1  0]
      [ 0  0  1]

6. Sprawdzenie, że otrzymana macierz :math:`\,\boldsymbol{X}\,` spełnia równanie :eq:`14`:

   .. code-block:: python

      sage: A*X

      [0 0 0]
      [0 0 0]
      [0 0 0]

.. admonition:: Uwaga:
   
   W odróżnieniu od metod ``swap_columns()`` i :math:`\,` ``swap_rows()``,
   które wykonują operacje bezpośrednio na oryginalnej macierzy, 
   użyte tutaj metody ``with_swapped_columns()`` i ``with_swapped_rows()`` 
   zwracają przekształconą macierz zachowując przy tym niezmieniony oryginał.  

.. Na uwagę zasługuje użycie metod ``with_swapped_columns()`` oraz ``with_swapped_rows()`` 
   zamiast ``swap_columns()`` oraz ``swap_rows()`` w punktach 2. i :math:`\,` 5. :math:`\ `
   Rzecz w tym, że ``swap_columns()`` i ``swap_rows()`` wykonują operacje bezpośrednio
   na oryginalnej macierzy, nie zwracając żadnej wartości (inaczej: zwracając obiekt pusty).
   Natomiast ``with_swapped_columns()`` i ``with_swapped_rows()``
   zwracają zmienioną macierz (którą można oznaczyć nową nazwą i dalej wykorzystać) 
   zachowując przy tym niezmieniony oryginał. :math:`\\` 

Łącząc wszystkie operacje otrzymamy wynik :eq:`20`:

.. sagecellserver::

   A = matrix(QQ,[[1, 3, 0, 2,-1],
                  [0, 0, 1, 4,-3],
                  [1, 3, 1, 6,-4]])
   C = A.rref()
   D = copy(C).with_swapped_columns(1,2)
   D.subdivide(2,2)
   F23 = D.subdivision(0,1)
   I3 = identity_matrix(3)
   Y = block_matrix([[-F23],[I3]])
   X = Y.with_swapped_rows(1,2)

   cmpnt = '$ %s \\ \\left[\\begin{array}{r} %s \\\ %s \\\ %s \\\ %s \\\ %s \\end{array}\\right]$'

   html(cmpnt % (' ',  'x_1',  'x_2',  'x_3',  'x_4',  'x_5') + '  $=$  ' +\
        cmpnt % ('s', X[0,0], X[1,0], X[2,0], X[3,0], X[4,0]) + '  $+$  ' +\
        cmpnt % ('t', X[0,1], X[1,1], X[2,1], X[3,1], X[4,1]) + '  $+$  ' +\
        cmpnt % ('u', X[0,2], X[1,2], X[2,2], X[3,2], X[4,2]) + '$\\,,$ ' +\
        '$\\qquad s,t,u \\in Q.$')

Trzeba jednak zaznaczyć, że przedstawiony w tej sekcji sposób rozwiązania układu :eq:`13`,
chociaż pouczający, nie jest metodą uniwersalną: okazał się skuteczny tylko dzięki
specyficznej budowie macierzy współczynników :math:`\,\boldsymbol{A},\,`
prowadzącej do postaci blokowej :eq:`16`. Podstawowym postępowaniem jest opisana wcześniej
metoda bezpośrednia bądź metoda eliminacji. 

| **Ćwiczenie.**
| Sprawdź odręcznym rachunkiem, 
  że macierz :math:`\,\boldsymbol{X}\,` dana wzorem :eq:`19` spełnia równanie :eq:`14`.








 
