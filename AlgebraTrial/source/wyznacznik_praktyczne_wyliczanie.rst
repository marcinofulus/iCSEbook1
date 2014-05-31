
Praktyczne wyliczanie wyznaczników
----------------------------------

Przekształcenia elementarne
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Wykonując przekształcenia elementarne na wierszach macierzy kwadratowej można doprowadzić ją do postaci schodkowej, która jest górną macierzą trójkątną. Wyliczenie wyznacznika macierzy trójkątnej jest już zadaniem trywialnym :math:`\,` - :math:`\,` równa się on iloczynowi elementów na głównej przekątnej. Zastosowanie przekształceń elementarnych może więc być praktycznym sposobem wyliczania wyznaczników. Trzeba przy tym uwzględnić fakt, że przekształcenia elementarne macierzy mogą zmienić jej wyznacznik.

Efekt przekształceń elementarnych na wierszach (kolumnach) macierzy jest następujący:

.. Na podstawie wyprowadzonych wcześniej własności wyznacznika stwierdzamy, że

1. przestawienie dowolnych dwóch wierszy (kolumn) zmienia znak wyznacznika;

2. pomnożenie dowolnego wiersza (kolumny) przez różną od zera liczbę mnoży przez tę liczbę wyznacznik;

3. dodanie do wybranego wiersza innego wiersza pomnożonego przez dowolną liczbę,
   tak samo jak dodanie do wybranej kolumny innej kolumny pomnożonej przez dowolną liczbę,
   nie zmienia wyznacznika macierzy. :math:`\\`


**Przykład 1.** 
:math:`\qquad\left|\begin{array}{ccccc}
1 & 1 & 1 & 1 & 1 \\
1 & 2 & 1 & 1 & 1 \\
1 & 1 & 3 & 1 & 1 \\
1 & 1 & 1 & 4 & 1 \\
1 & 1 & 1 & 1 & 5
\end{array}
\right|\ \ = \ \ 
\left|\begin{array}{ccccc}
1 & 1 & 1 & 1 & 1 \\
0 & 1 & 0 & 0 & 0 \\
0 & 0 & 2 & 0 & 0 \\
0 & 0 & 0 & 3 & 0 \\
0 & 0 & 0 & 0 & 4
\end{array}
\right|\ \ =\ \ 24\,.`

Operacje wykonane na wierszach 
:math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\boldsymbol{R}_3,\,\boldsymbol{R}_4,\,\boldsymbol{R}_5:
\quad \boldsymbol{R}_i = \boldsymbol{R}_i - \boldsymbol{R}_1\,,\quad i = 2,3,4,5.`

.. .. math::
   
   \left|\begin{array}{ccccc}
         1 & 1 & 1 & 1 & 1 \\
         1 & 2 & 1 & 1 & 1 \\
         1 & 1 & 3 & 1 & 1 \\
         1 & 1 & 4 & 4 & 1 \\
         1 & 1 & 1 & 1 & 5
         \end{array}
   \right|\ \ = \ \ 
   \left|\begin{array}{ccccc}
         1 & 1 & 1 & 1 & 1 \\
         0 & 1 & 0 & 0 & 0 \\
         0 & 0 & 2 & 0 & 0 \\
         0 & 0 & 0 & 3 & 0 \\
         0 & 0 & 0 & 0 & 4
         \end{array}
   \right|\ \ =\ \ 24\,.

**Przykład 2.**

.. math::
   
   \left|\begin{array}{rrrr}
          1 &  2 & 1 &  1 \\
          2 &  3 & 2 &  3 \\
         -1 &  0 & 1 & -1 \\
         -2 & -1 & 4 & 0
         \end{array}
   \right|\ =\ 
   \left|\begin{array}{rrrr}
          1 &  2 & 1 & 1 \\
          0 & -1 & 0 & 1 \\
          0 &  2 & 2 & 0 \\
          0 &  3 & 6 & 2
         \end{array}
   \right|\ =\ 
   \left|\begin{array}{rrrr}
          1 &  2 & 1 & 1 \\
          0 & -1 & 0 & 1 \\
          0 &  0 & 2 & 2 \\
          0 &  0 & 6 & 5
         \end{array}
   \right|\ =\ 
   \left|\begin{array}{rrrr}
          1 &  2 & 1 &  1 \\
          0 & -1 & 0 &  1 \\
          0 &  0 & 2 &  2 \\
          0 &  0 & 0 & -1
         \end{array}
   \right|\ =\ 2\,.

Operacje wykonane na wierszach 
:math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\boldsymbol{R}_3,\,\boldsymbol{R}_4\ `
w kolejnych krokach:

:math:`\ 
\boldsymbol{R}_2 = \boldsymbol{R}_2 - 2\,\boldsymbol{R}_1,\ \ 
\boldsymbol{R}_3 = \boldsymbol{R}_3 + \boldsymbol{R}_1,\ \ 
\boldsymbol{R}_4 = \boldsymbol{R}_4 + 2\,\boldsymbol{R}_1\,;`

:math:`\ 
\boldsymbol{R}_3 = \boldsymbol{R}_3 + 2\,\boldsymbol{R}_2,\ \ 
\boldsymbol{R}_4 = \boldsymbol{R}_4 + 3\,\boldsymbol{R}_2\,;`

:math:`\ \boldsymbol{R}_4 = \boldsymbol{R}_4 - 3\,\boldsymbol{R}_3\,.`

**Przykład 3.** :math:`\ \ ` 
Wykorzystując równości 
:math:`\quad\left\{\ \,
\begin{array}{l}
1798\ =\ 31\,\cdot\,58 \\ 2139\ =\ 31\,\cdot\,69 \\
3255\ =\ 31\,\cdot\,105 \\ 4867\ =\ 31\,\cdot\,157
\end{array}\right.`

bez obliczania wartości wyznacznika uzasadnić, że 
:math:`\quad\left|\begin{array}{llll}
1 & 7 & 9 & 8 \\
2 & 1 & 3 & 9 \\
3 & 2 & 5 & 5 \\
4 & 8 & 6 & 7
\end{array}
\right|\quad` też dzieli się przez 31.


.. .. math::
   
   1798\ =\ 31\,\cdot\,58

   2139\ =\ 31\,\cdot\,69

   3255\ =\ 31\,\cdot\,105

   4867\ =\ 31\,\cdot\,157

   \left|\begin{array}{llll}
          1 & 7 & 9 & 8 \\
          2 & 1 & 3 & 9 \\
          3 & 2 & 5 & 5 \\
          4 & 8 & 6 & 7
         \end{array}
   \right|

**Rozwiązanie.** :math:`\,`

Operacja 
:math:`\ \,\boldsymbol{C}_4\ =\  
1000\,\cdot\,\boldsymbol{C}_1\,+\,100\,\cdot\,\boldsymbol{C}_2\,+\,
10\,\cdot\,\boldsymbol{C}_3\,+\,\boldsymbol{C}_4\ \,` 
na kolumnach :math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\boldsymbol{C}_3,\,\boldsymbol{C}_4\ ` 
nie zmienia wartości wyznacznika. W wyniku otrzymujemy:

.. math::
   
   \left|\begin{array}{llll}
          1 & 7 & 9 & 8 \\
          2 & 1 & 3 & 9 \\
          3 & 2 & 5 & 5 \\
          4 & 8 & 6 & 7
         \end{array}
   \right|\ \ =\ \ 
   \left|\begin{array}{llll}
          1 & 7 & 9 & 1798 \\
          2 & 1 & 3 & 2139 \\
          3 & 2 & 5 & 3255 \\
          4 & 8 & 6 & 4867
         \end{array}
   \right|\ \ =\ \ 
   \left|\begin{array}{llll}
          1 & 7 & 9 & 31\,\cdot\,58 \\
          2 & 1 & 3 & 31\,\cdot\,69 \\
          3 & 2 & 5 & 31\,\cdot\,105 \\
          4 & 8 & 6 & 31\,\cdot\,157
         \end{array}
   \right|\ \ =\ \ 
   31\ \cdot\ 
   \left|\begin{array}{llll}
          1 & 7 & 9 & 58 \\
          2 & 1 & 3 & 69 \\
          3 & 2 & 5 & 105 \\
          4 & 8 & 6 & 157
         \end{array}
   \right|\,.

Rozwinięcie Laplace'a
~~~~~~~~~~~~~~~~~~~~~

.. .. admonition:: Definicja.
   
   Niech będzie dana macierz :math:`\ \boldsymbol{A}\in M_{m\times n}(K)\ ` i :math:`\ `
   niech :math:`\ 1 \le k \le \min(m,n).\\`
   Jeśli :math:`\ \boldsymbol{B}\in M_n(K)\ ` jest macierzą otrzymaną z :math:`\,\boldsymbol{A}\ `
   przez skreślenie jakichś :math:`\ m-k\ ` wierszy oraz :math:`\ n-k\ ` kolumn, 
   to wyznacznik macierzy :math:`\ \boldsymbol{B}\ ` nazywa się *minorem stopnia* :math:`\,k\ `
   macierzy :math:`\ \boldsymbol{A}.`
   
.. admonition:: Definicja.

   *Minor stopnia* :math:`\,k\ ` macierzy :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\ `
   jest wyznacznikiem macierzy otrzymanej z :math:`\,\boldsymbol{A}\ ` 
   przez skreślenie wybranych :math:`\ m-k\ ` wierszy :math:`\ `
   i :math:`\ \ \,n-k\ ` kolumn :math:`\ (1\leq k \leq m,n).`
   
**Przykład.** :math:`\ ` Niech
:math:`\ \ \boldsymbol{A}\ \ =\ \ 
\left[\begin{array}{rrrrr}
-2 & 0 & 3 & 4 & 1 \\ 4 & 7 & 6 & -2 & 0 \\ 3 & 3 & 5 & 1 & 1 \\ -1 & 2 & 3 & 0 & 4
\end{array}\right]\in M_{4\times 5}(Q)\,.`

Minor stopnia trzeciego (jeden spośród 40) otrzymamy, skreślając 
np. trzeci wiersz oraz drugą i czwartą kolumnę:

.. math::
   
   \left|\begin{array}{rrr}
         -2 & 3 & 1 \\ 
          4 & 6 & 0 \\
         -1 & 3 & 4
         \end{array}
   \right|\ \ =\ \ 
   3\ \,
   \left|\begin{array}{rrr}
         -2 & 1 & 1 \\ 
          4 & 2 & 0 \\
         -1 & 1 & 4
         \end{array}
   \right|\ \ =\ \ 
   6\ \,
   \left|\begin{array}{rrr}
         -2 & 1 & 1 \\ 
          2 & 1 & 0 \\
         -1 & 1 & 4
         \end{array}
   \right|\ \ =\ \ 
   6\ \,(-13)\ \ =\ \ -78\,.

.. admonition:: Definicja.
   
   Niech będzie dana kwadratowa macierz 
   :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{n\times n}\in M_{n}(K).` :math:`\\`
   Wybieramy w niej element :math:`\ a_{ij}\ \ \,\text{i}\ \ ` skreślamy :math:`\,i`-ty wiersz
   oraz :math:`\,j`-tą kolumnę. :math:`\\`
   Otrzymany w ten sposób minor :math:`\,M_{ij}\,` 
   stopnia :math:`\ n-1\ ` pomnożony przez :math:`\ (-1)^{i+j}\ ` nazywamy *dopełnieniem
   algebraicznym* :math:`\,` elementu :math:`\ a_{ij}\ ` i :math:`\,` oznaczamy :math:`\ A_{ij}:`

   .. math::
      
      A_{ij}\ \,:\,=\ \,(-1)^{i+j}\,M_{ij}\,,\qquad i,j=1,2,\ldots,n.

**Przykład.** :math:`\ ` Niech
:math:`\ \ \boldsymbol{A}\ \ =\ \ 
\left[\begin{array}{rrrr}
2 & 1 & 0 & 6 \\ 3 & -1 & 7 & 4 \\ 1 & 0 & 5 & 2 \\ -1 & -2 & 1 & 5
\end{array}\right]\in M_4(Q)\,.`

Wyliczymy np. dopełnienia algebraiczne elementów :math:`\ a_{12}=1\ \ \ \text{i}\ \ \ a_{33}=5:`

.. :math:`A_{12}\ =\ (-1)^{1+2}\ 
   \left|\begin{array}{rrr} 3 & 7 & 4 \\ 1 & 1 & 2 \\ -1 & 1 & 5 \end{array}\right|\ \ =\ \ 32\,;
   \quad
   A_{33}\ =\ (-1)^{3+3}\ 
   \left|\begin{array}{rrr} 2 &  1 & 6 \\ 3 & -1 & 4 \\ -1 & -2 & 5 \end{array}\right|\ \ =\ \ -55\,.`

.. math::
   
   A_{12}\ =\ (-1)^{1+2}\ 
   \left|\begin{array}{rrr}
         3 & 7 & 4 \\ 
         1 & 1 & 2 \\
        -1 & 1 & 5
         \end{array}
   \right|\ \ =\ \ 32\,;
   \quad
   A_{33}\ =\ (-1)^{3+3}\ 
   \left|\begin{array}{rrr}
         2 &  1 & 6 \\ 
         3 & -1 & 4 \\
        -1 & -2 & 5
         \end{array}
   \right|\ \ =\ \ - 55\,.

Warto zauważyć, że dopełnienie algebraiczne elementu :math:`\,a_{ij}\,` nie zależy
od wartości tego elementu ani nawet od wartości wszystkich elementów w :math:`\,i`-tym wierszu
oraz w :math:`\,j`-tej kolumnie. :math:`\\`

.. admonition:: Twierdzenie 4. :math:`\,` (rozwinięcie Laplace'a) :math:`\\`
   
   Wyznacznik macierzy :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{n\times n}\in M_{n}(K)\ `
   równa się: :math:`\\`

   1. sumie iloczynów kolejnych elementów dowolnie wybranego :math:`\,i`-tego wiersza
      przez dopełnienia algebraiczne tych elementów (rozwinięcie wyznacznika względem 
      :math:`\,i`-tego wiersza):

      .. math::
         :label: Lap_exp_verse
         
         \det\boldsymbol{A}\ =\ a_{i1}\,A_{i1}\,+\,a_{i2}\,A_{i2}\,+\,\dots\,+\,a_{in}\,A_{in}\,,
         \quad i=1,2,\ldots,n.

   2. sumie iloczynów kolejnych elementów dowolnie wybranej :math:`\,j`-tej kolumny
      przez dopełnienia algebraiczne tych elementów (rozwinięcie wyznacznika względem 
      :math:`\,j`-tej kolumny):

      .. math::
         :label: Lap_exp_col
         
         \det\boldsymbol{A}\ =\ a_{1j}\,A_{1j}\,+\,a_{2j}\,A_{2j}\,+\,\dots\,+\,a_{nj}\,A_{nj}\,,
         \quad j=1,2,\ldots,n.

Godny uwagi jest fakt, że do rozwinięcia Laplace'a można wybrać *dowolny* wiersz albo *dowolną* kolumnę :math:`\,` - :math:`\,` wynik będzie zawsze taki sam.

Dowód może polegać na sprawdzeniu, że funkcje określone przez prawe strony równań :eq:`Lap_exp_verse` i :eq:`Lap_exp_col` spełniają postulaty aksjomatycznej definicji wyznacznika.

Rozwinięcie Laplace'a jest regułą rekurencyjną: 
sprowadza problem wyliczenia wyznacznika stopnia :math:`\,n\,` do wyliczenia :math:`\,n\,`
wyznaczników stopnia :math:`\,n-1\,` itd. Ostatecznie otrzymujemy więc :math:`\,n!\,` składników,
tak jak w rozwinięciu permutacyjnym. Metoda okazuje się wydajna wtedy, gdy w jakimś wierszu (albo kolumnie) występują zera :math:`\,` - :math:`\,` najlepiej, gdy tylko jeden element jest niezerowy.
Można zawsze do tego doprowadzić wykonując przekształcenia elementarne.

Praktyczne odręczne obliczanie wyznaczników przebiega w dwóch etapach:

* | przekształcenie macierzy do postaci, w której w jakimś wierszu (bądź kolumnie) 
  | tylko jeden element jest różny od zera;

* zastosowanie rozwinięcia Laplace'a względem tego wiersza (bądź kolumny). :math:`\\`

**Przykład.** :math:`\,` Pod obliczeniami znajduje się opis zastosowanych przekształceń. :math:`\\` 

.. math::
   
   \left|\begin{array}{rrrr}
         2 & -5 &  1 & 2 \\
        -3 &  7 & -1 & 4 \\
         5 & -9 &  2 & 7 \\
         4 & -6 &  1 & 2
         \end{array}
   \right|\ \ =\ \ 
   \left|\begin{array}{rrrr}
         2 & -5 &  1 & 2 \\
        -1 &  2 &  0 & 6 \\
         1 &  1 &  0 & 3 \\
         2 & -1 &  0 & 0
         \end{array}
   \right|\ \ =\ \ 
   \left|\begin{array}{rrr}
        -1 &  2 &  6 \\
         1 &  1 &  3 \\
         2 & -1 &  0 \\
         \end{array}
   \right|\ \ =\ \ 
   3\ \ 
   \left|\begin{array}{rrr}
        -1 &  2 &  2 \\
         1 &  1 &  1 \\
         2 & -1 &  0 \\
         \end{array}
   \right|\,;

Operacje na wierszach 
:math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2,\,\boldsymbol{R}_3,\,\boldsymbol{R}_4:`
:math:`\boldsymbol{R}_2 = \boldsymbol{R}_2 + \boldsymbol{R}_1,\ \ 
\boldsymbol{R}_3 = \boldsymbol{R}_3 - 2\,\boldsymbol{R}_1,\ \ 
\boldsymbol{R}_4 = \boldsymbol{R}_4 - \boldsymbol{R}_1.`
Rozwinięcie Laplace'a względem trzeciej kolumny.
Wyłączenie liczby :math:`\ 3\ ` z trzeciej kolumny. :math:`\\`

.. math::

   \left|\begin{array}{rrr}
        -1 &  2 &  2 \\
         1 &  1 &  1 \\
         2 & -1 &  0 \\
         \end{array}
   \right|\ \ =\ \ 
   \left|\begin{array}{rrr}
        -1 &  3 &  3 \\
         1 &  0 &  0 \\
         2 & -3 & -2 \\
         \end{array}
   \right|\ \ =\ \
   3\ \ 
   \left|\begin{array}{rrr}
        -1 &  1 &  3 \\
         1 &  0 &  0 \\
         2 & -1 & -2 \\
         \end{array}
   \right|\ \ =\ \ 
   -\ 3\ \ 
   \left|\begin{array}{rr}
         1 &  3 \\
        -1 & -2
         \end{array}
   \right|\ \ =\ \ -\ 3\,;

Operacje wykonane na kolumnach 
:math:`\ \boldsymbol{C}_1,\,\boldsymbol{C}_2,\,\boldsymbol{C}_3:\ ` 
:math:`\boldsymbol{C}_2 = \boldsymbol{C}_2 - \boldsymbol{C}_1,\ \ 
\boldsymbol{C}_3 = \boldsymbol{C}_3 - \boldsymbol{C}_1.\ `
Wyłączenie czynnika :math:`\ 3\ ` z drugiej kolumny.
Rozwinięcie Laplace'a względem drugiego wiersza. :math:`\\`

Ostatecznie
:math:`\quad\left|\begin{array}{rrrr}
2 & -5 &  1 & 2 \\ -3 &  7 & -1 & 4 \\ 5 & -9 &  2 & 7 \\ 4 & -6 &  1 & 2
\end{array}\right|\ \ =\ \ 
3\ \ \left|\begin{array}{rrr} -1 &  2 &  2 \\ 1 &  1 &  1 \\ 2 & -1 &  0 \end{array}\right|\ \ =\ \ 
-\ 9\,. \\`

W systemie Sage wyznacznik zadanej macierzy kwadratowej można wyliczyć stosując funkcję (metodę) ``determinant()``, w skrócie ``det()``. Użyjemy jej do wyliczenia wyznacznika 4. stopnia z poprzedniego przykładu i do sprawdzenia twierdzenia o wyznaczniku macierzy transponowanej:

.. code-block:: python
   
   sage: A = matrix(QQ,[[ 2,-5, 1, 2],
   ...                  [-3, 7,-1, 4],
   ...                  [ 5,-9, 2, 7],
   ...                  [ 4,-6, 1, 2]])

   sage: det_A  = A.determinant()
   sage: det_At = A.T.det()     # skrócone oznaczenia transpozycji i wyznacznika

   sage: print "det A =", det_A; det_A==det_At

   det A = -9
   True 














