
Wyznaczenie macierzy odwrotnej metodą eliminacji
------------------------------------------------

Niech będą dane macierze
:math:`\ \boldsymbol{A}=[\,a_{ij}\,]_{n\times n}\,,\,
\boldsymbol{B}=[\,b_{ij}\,]_{n\times n}\in M_n(K)\,.`
Będziemy nazywać *agregatem* macierz :math:`\ [\,\boldsymbol{A}\,|\,\boldsymbol{B}\,]\ `
otrzymaną przez dołączenie do macierzy :math:`\ \boldsymbol{A}\,` macierzy :math:`\,\boldsymbol{B}\,:`

.. math::
   
   \left[\,\boldsymbol{A}\,|\,\boldsymbol{B}\,\right]\ \,:\,=\ \,
   \left[\begin{array}{cccccc}
      a_{11} & \ldots & a_{1n} & b_{11} & \ldots & b_{1n} \\
      a_{21} & \ldots & a_{2n} & b_{21} & \ldots & b_{2n} \\
      \ldots & \ldots & \ldots & \ldots & \ldots & \ldots \\
      a_{n1} & \ldots & a_{nn} & b_{n1} & \ldots & b_{nn}
   \end{array}\right]\,\in\,M_{n\times 2n}(K)\,.

.. admonition:: Lemat. :math:`\,` 

   Zakładamy, jak wyżej, że :math:`\ \boldsymbol{A},\boldsymbol{B}\in M_n(K)\,.` 

   1. Niech :math:`\ O\ ` będzie operacją elementarną. :math:`\,` 
      Wtedy :math:`\ \,O\,\left[\,\boldsymbol{A}\,|\,\boldsymbol{B}\,\right]\ =\ 
      \left[\,O\boldsymbol{A}\,|\,O\boldsymbol{B}\,\right]\,.`
   
   2. Niech :math:`\ \boldsymbol{C}\in M_n(K)\,.\ \,` 
      Wtedy :math:`\ \,\boldsymbol{C}\,\left[\,\boldsymbol{A}\,|\,\boldsymbol{B}\,\right]\,=\,
      \left[\;\boldsymbol{C}\boldsymbol{A}\,|\,\boldsymbol{C}\boldsymbol{B}\;\right]\,.`

**Dowód** punktu 2.

Oznaczmy przez :math:`\ \boldsymbol{A}_1,\,\boldsymbol{A}_2,\,\dots,\,\boldsymbol{A}_n\ \ ` i
:math:`\ \ \boldsymbol{B}_1,\,\boldsymbol{B}_2,\,\dots,\,\boldsymbol{B}_n\ \ ` kolumny
macierzy :math:`\,\boldsymbol{A}\ \ ` i :math:`\ \ \boldsymbol{B}:` 

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\;\boldsymbol{A}_1\,|\;\boldsymbol{A}_2\,|\;\dots\,|\,\boldsymbol{A}_n\;\right]\,,
   \qquad
   \boldsymbol{B}\ =\ 
   \left[\;\boldsymbol{B}_1\,|\;\boldsymbol{B}_2\,|\;\dots\,|\,\boldsymbol{B}_n\;\right]\,.

Wykorzystując kolumnową regułę mnożenia macierzowego można zapisać:

.. math::
   
   \boldsymbol{C}\boldsymbol{A}\ \ =\ \ 
   \boldsymbol{C}\,
   \left[\,\boldsymbol{A}_1\,|\;
           \boldsymbol{A}_2\,|\;\dots\,|\,
           \boldsymbol{A}_n\;
   \right]\ \ =\ \  
   \left[\ \boldsymbol{C}\boldsymbol{A}_1\,|\;
           \boldsymbol{C}\boldsymbol{A}_2\,|\;\dots\,|\,
           \boldsymbol{C}\boldsymbol{A}_n\,
   \right]\,;

   \boldsymbol{C}\boldsymbol{B}\ \ =\ \ 
   \boldsymbol{C}\,
   \left[\,\boldsymbol{B}_1\,|\;
           \boldsymbol{B}_2\,|\;\dots\,|\,
           \boldsymbol{B}_n\,
   \right]\ \ =\ \ 
   \left[\ \boldsymbol{C}\boldsymbol{B}_1\,|\;
           \boldsymbol{C}\boldsymbol{B}_2\,|\;\dots\,|\;
           \boldsymbol{C}\boldsymbol{B}_n\;\right]\,;

   \boldsymbol{C}\,\left[\,\boldsymbol{A}\,|\,\boldsymbol{B}\,\right]\ \ =\ \ 
   \left[\ \boldsymbol{C}\boldsymbol{A}_1\,|\;
           \boldsymbol{C}\boldsymbol{A}_2\,|\;\dots\,|\,
           \boldsymbol{C}\boldsymbol{A}_n\;|\  
           \boldsymbol{C}\boldsymbol{B}_1\,|\;
           \boldsymbol{C}\boldsymbol{B}_2\,|\;\dots\,|\,
           \boldsymbol{C}\boldsymbol{B}_n\;\right]\ \ =\ \ 
   \left[\;\boldsymbol{C}\boldsymbol{A}\;|\;\boldsymbol{C}\boldsymbol{B}\;\right]\,. 

   \;

Załóżmy, że :math:`\,\boldsymbol{A}\in M_n(K)\,` jest macierzą odwracalną, 
oraz że kolejne operacje elementarne :math:`\,O_1\,,O_2,\,\dots,\,O_k\,,\ ` 
którym odpowiadają macierze elementarne
:math:`\,\boldsymbol{E}_1,\boldsymbol{E}_2,\dots,\boldsymbol{E}_k\in M_n(K),\,`
przekształcają :math:`\,\boldsymbol{A}\,` do zredukowanej postaci schodkowej
(którą jest macierz jednostkowa :math:`\,\boldsymbol{I}_n):`

.. math::
   :label: id
   
   O_k\dots O_2\,O_1\ \boldsymbol{A}\ =\ 
   \boldsymbol{E}_k\dots\boldsymbol{E}_2\,\boldsymbol{E}_1\,\boldsymbol{A}\ =\ \boldsymbol{I}_n\,.

Zauważmy od razu, że wtedy

.. math::
   :label: rec
   
   \boldsymbol{E}_k\dots\boldsymbol{E}_2\,\boldsymbol{E}_1\ =\ \boldsymbol{A}^{-1}\,.

Zastosujmy teraz operacje :math:`\,O_1\,,O_2,\,\dots,\,O_k\ `
do agregatu :math:`\,\left[\,\boldsymbol{A}\,|\,\boldsymbol{I}_n\,\right].\,`
Korzystając z Lematu, Twierdzenia 3. oraz wzorów :eq:`id` i :eq:`rec` otrzymujemy:

.. math::

   O_k\dots O_2\,O_1\ \left[\,\boldsymbol{A}\,|\,\boldsymbol{I}_n\,\right]\ \,=\ \,
   \left[\ O_k\dots O_2\,O_1\ \boldsymbol{A}\ |\ O_k\dots O_2\,O_1\ \boldsymbol{I}_n\ \right]\ \,=

   =\ \,
   \left[\ \boldsymbol{E}_k\dots
   \boldsymbol{E}_2\,
   \boldsymbol{E}_1\ \boldsymbol{A}\ |\  
   \boldsymbol{E}_k\dots
   \boldsymbol{E}_2\,
   \boldsymbol{E}_1\ \boldsymbol{I}_n\ \right]\ \,=\ \,
   \left[\ \boldsymbol{I}_n\ |\ \boldsymbol{E}_k\dots\boldsymbol{E}_2\,\boldsymbol{E}_1\ \right]\ =\ 
   \left[\,\boldsymbol{I}_n\;|\;\boldsymbol{A}^{-1}\,\right]\,.

Otrzymany wynik daje praktyczny sposób obliczania macierzy odwrotnej.

.. admonition:: Twierdzenie 6. :math:`\,` (algorytm odwracania macierzy) :math:`\,`

   Niech :math:`\,\boldsymbol{A}\in M_n(K)\,` będzie macierzą odwracalną. :math:`\\`
   Aby znaleźć jej odwrotność, tworzymy agregat 
   :math:`\,\left[\,\boldsymbol{A}\,|\,\boldsymbol{I}_n\,\right]\,` 
   i wykonujemy na nim operacje elementarne, które przekształcają pierwszą macierz
   do macierzy jednostkowej. :math:`\\`
   Wtedy drugą macierzą agregatu będzie :math:`\,\boldsymbol{A}^{-1}\,.`

**Przykład 1.** :math:`\,` Znaleźć macierz odwrotną do
:math:`\ \boldsymbol{A}\ =\ \left[\begin{array}{rrrr}
2 &  0 & -1 & 1 \\ 1 &  1 & -1 & 0 \\ -1 &  0 &  6 & 1 \\ 1 &  0 &  1 & 1 
\end{array}\right]\,.` :math:`\\`

.. .. math::
   
   \boldsymbol{A}\ =\ \left[\begin{array}{rrrr}
       2 &  0 & -1 & 1 \\
       1 &  1 & -1 & 0 \\
      -1 &  0 &  6 & 1 \\
       1 &  0 &  1 & 1 \end{array}\right]\,.

Program wykonujący algorytm odwracania macierzy przedstawia się następująco:

.. code-block:: python

   sage: A = matrix(QQ,[[ 2, 0,-1, 1],
   ...                  [ 1, 1,-1, 0],
   ...                  [-1, 0, 6, 1],
   ...                  [ 1, 0, 1, 1]])

   # Utworzenie agregatu [A|I]:
   sage: AI = A.augment(identity_matrix(QQ,4))

   # Przekształcenie [A|I] do [I|A^(-1)]:
   sage: IA_1 = AI.rref()

   # Wyodrębnienie drugiej części agregatu (kolumny od 4. do końcowej):
   sage: A_1 = IA_1[:,4:]

   # Pokazanie macierzy odwrotnej: 
   sage: html.table([['$A^{-1}$', '=', A_1]])

.. math::
   
   A^{-1}\quad =\quad
   \left(\begin{array}{rrrr}
       5 & 0 &  2 & -7 \\
      -3 & 1 & -1 &  4 \\
       2 & 0 &  1 & -3 \\
      -7 & 0 & -3 & 11
   \end{array}\right)

Sprawdzenie czy: :math:`\ \ ` 
a.) :math:`\,` :math:`\,\boldsymbol{A}\boldsymbol{A}^{-1}=\boldsymbol{I}_n\,?\quad`
b.) :math:`\,` taki sam wynik da metoda ``inverse()`` ?

.. code-block:: python

   sage: A_1*A==identity_matrix(QQ,4), A_1==A.I

   (True, True)

Sage zawiera też bardziej ogólną metodę ``extended_echelon_form()``,
która dopisuje do zadanej macierzy prostokątnej
:math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,` macierz jednostkową :math:`\,\boldsymbol{I}_m\,,\,`
po czym wykonuje na całym agregacie operacje elementarne doprowadzające
macierz :math:`\,\boldsymbol{A}\,` do zredukowanej postaci schodkowej.
Wtedy druga część agregatu jest macierzą :math:`\,\boldsymbol{D}\in M_m(K)\,`
taką, że pomnożenie :math:`\,\boldsymbol{A}\,` z lewej strony przez
:math:`\,\boldsymbol{D}\,` daje macierz :math:`\,\boldsymbol{A}\,`
w zredukowanej postaci schodkowej.

Jeżeli w szczególności :math:`\,\boldsymbol{A}\,` jest odwracalną macierzą kwadratową 
stopnia :math:`\,n,\,` to metoda ``extended_echelon_form()`` daje w wyniku agregat,
którego pierwszą częścią jest macierz jednostkowa :math:`\,\boldsymbol{I}_n,\ `
a drugą :math:`\ ` - :math:`\ ` macierz :math:`\,\boldsymbol{A}^{-1}.` :math:`\\`

**Przykład 2.** :math:`\,`
Dana macierz :math:`\ \ \boldsymbol{A}\ =\ 
\left[\begin{array}{rrrrr}
1 & 0 & 2 & -1 & 2 \\ -1 & 1 & -2 & 3 & -3 \\ 2 & 0 & 4 & -2 & 4 
\end{array}\right]\,\in\,M_{3\times 5}(Q)\,.` :math:`\\`

Wyznaczyć jej zredukowaną postać schodkową i znaleźć macierz :math:`\,\boldsymbol{D}\,`
taką, że iloczyn :math:`\,\boldsymbol{D}\boldsymbol{A}\,` równa się 
zredukowanej postaci schodkowej macierzy :math:`\,\boldsymbol{A}.` :math:`\\`

1.) :math:`\,` Sposób podstawowy.
 
Aby doprowadzić macierz :math:`\,\boldsymbol{A}\,` do zredukowanej postaci schodkowej,
trzeba wykonać kolejno dwie operacje elementarne:
 
* do drugiego wiersza dodać pierwszy wiersz;
* od trzeciego wiersza odjąć podwojony wiersz pierwszy.
 
Postać zredukowana dana jest więc przez:

.. math::
   
   O_3(2,0,-2)\,O_3(1,0,1)\,\boldsymbol{A}\ =\ 
   \boldsymbol{E}_3(2,0,-2)\,\boldsymbol{E}_3(1,0,1)\,\boldsymbol{A}\ =  
   
   \\ =\    
   \left[\begin{array}{rrr} 1 & 0 & 0 \\ 0 & 1 & 0 \\ -2 & 0 & 1 \end{array}\right]\ 
   \left[\begin{array}{rrr} 1 & 0 & 0 \\ 1 & 1 & 0 \\  0 & 0 & 1 \end{array}\right]\ 
   \left[\begin{array}{rrrrr}
   1 & 0 & 2 & -1 & 2 \\ -1 & 1 & -2 & 3 & -3 \\ 2 & 0 & 4 & -2 & 4 
   \end{array}\right]\ =
   
   \\ =\ 
   \left[\begin{array}{rrr} 1 & 0 & 0 \\ 1 & 1 & 0 \\ -2 & 0 & 1 \end{array}\right]\ 
   \left[\begin{array}{rrrrr}
   1 & 0 & 2 & -1 & 2 \\ -1 & 1 & -2 & 3 & -3 \\ 2 & 0 & 4 & -2 & 4 
   \end{array}\right]\ =\ 
   \left[\begin{array}{rrrrr}
   1 & 0 & 2 & -1 & 2 \\  0 & 1 &  0 & 2 & -1 \\ 0 & 0 & 0 & 0 & 0 
   \end{array}\right]\,.

Macierzą, która mnożąc :math:`\boldsymbol{A}` daje zredukowaną postać schodkową, jest
:math:`\ \boldsymbol{D}\ =\ 
\left[\begin{array}{rrr} 1 & 0 & 0 \\ 1 & 1 & 0 \\ -2 & 0 & 1 \end{array}\right]\,.`
   
2.) :math:`\,` Użycie metody ``extended_echelon_form()``.

.. code-block:: python

   sage: A = matrix(QQ,[[ 1, 0, 2,-1, 2],
   ...                  [-1, 1,-2, 3,-3],
   ...                  [ 2, 0, 4,-2, 4]])

   # Agregat AED złożony z macierzy AE i D
   # (AE := A w zredukowanej postaci schodkowej)
   sage: AED = A.extended_echelon_form()

   # Wyodrębnienie macierzy AE (kolumny 0.- 4.):
   sage: AE = AED.matrix_from_columns(range(5))

   # Wyodrębnienie macierzy D (kolumny 5.- 7.):
   sage: D = AED.matrix_from_columns(range(5,8))

   # Iloczyn D*A jest zredukowaną postacią schodkową A:
   sage: html.table([[D, '*', A, '=', D*A]])

.. math::
   
   \left(\begin{array}{rrr}
      0 & 0 &  \textstyle{1\over 2} \\
      0 & 1 &  \textstyle{1\over 2} \\
      1 & 0 & -\textstyle{1\over 2}
   \end{array}\right)\ \ *\ \ 
   \left(\begin{array}{rrrrr}
       1 & 0 &  2 & -1 &  2 \\
      -1 & 1 & -2 &  3 & -3 \\
       2 & 0 &  4 & -2 &  4
   \end{array}\right)\quad =\quad
   \left(\begin{array}{rrrrr}
   1 & 0 & 2 & -1 & 2 \\  0 & 1 &  0 & 2 & -1 \\ 0 & 0 & 0 & 0 & 0 
   \end{array}\right)\,.

   \;

Teraz :math:`\ \ \boldsymbol{D}\ =\ \displaystyle\frac{1}{2}\ 
\left[\begin{array}{rrr} 0 & 0 & 1 \\ 0 & 2 & 1 \\  2 & 0 & -1 \end{array}\right].\ \ `
Jak widać, macierz :math:`\,\boldsymbol{D}\,` nie jest określona jednoznacznie.
 






   

   

   

   





