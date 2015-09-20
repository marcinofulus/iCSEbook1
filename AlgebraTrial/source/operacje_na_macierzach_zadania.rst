
Problems
--------

Elementary Operations and Elementary Matrices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Zadanie 1.** :math:`\\` 
Udowodnij, że aby wykonać operację elementarną :math:`\,O\,` na iloczynie dwóch macierzy
:math:`\,\boldsymbol{A}\ \ \text{i}\ \ \boldsymbol{B},\ `  
należy zastosować ją tylko do pierwszego czynnika iloczynu:
:math:`\ O\,(\boldsymbol{A}\boldsymbol{B}) = (O\boldsymbol{A})\,\boldsymbol{B}.\ `

Mianowicie, jeżeli 
:math:`\,\boldsymbol{A}\in M_{m\times p}(K),\ \boldsymbol{B}\in M_{p\times n}(K),\ ` 
to :math:`\,` dla :math:`\ i,j=0,1,\ldots,m-1:`
   
#. :math:`\ O_1(i,j)\,(\boldsymbol{A}\boldsymbol{B})\ \ =\ \ 
   [\,O_1(i,j)\,\boldsymbol{A}\,]\ \boldsymbol{B}\,,`

#. :math:`\ O_2(i,a)\,(\boldsymbol{A}\boldsymbol{B})\ \ =\ \ 
   [\,O_2(i,a)\,\boldsymbol{A}\,]\ \boldsymbol{B}\,,\qquad (a\ne 0)`

#. :math:`\ O_3(i,j,a)\,(\boldsymbol{A}\boldsymbol{B})\ \ =\ \ 
   [\,O_3(i,j,a)\,\boldsymbol{A}\,]\ \boldsymbol{B}\,.`

**Wskazówka.** :math:`\,`
Wykorzystaj wierszową regułę mnożenia macierzowego. :math:`\\`

**Zadanie 2.** :math:`\\`
Udowodnij, że wykonanie operacji elementarnej na prostokątnej macierzy :math:`\,\boldsymbol{A}\ ` jest równoważne pomnożeniu (z lewej strony) tej macierzy przez odpowiednią macierz elementarną. 

Dokładnie, jeżeli :math:`\,\boldsymbol{A}\in M_{m\times n}(K),\ \ ` 
to :math:`\,` dla :math:`\ i,j=0,1,\ldots,m-1:`

#. :math:`\,O_1(i,j)\,\boldsymbol{A}\ =\ \boldsymbol{E}_1(i,j)\,\boldsymbol{A}\,,`
#. :math:`\,O_2(i,a)\,\boldsymbol{A}\ =\ \boldsymbol{E}_2(i,a)\,\boldsymbol{A}\,,\qquad (a\ne 0)`
#. :math:`\,O_3(i,j,a)\,\boldsymbol{A}\ = \boldsymbol{E}_3(i,j,a)\,\boldsymbol{A}\,,`

gdzie 
:math:`\ \boldsymbol{E}_1(i,j),\ \boldsymbol{E}_2(i,a),\ \boldsymbol{E}_3(i,j,a)\in M_m(K).`

**Wskazówka.** :math:`\,`
Zapisz :math:`\,\boldsymbol{A} = \boldsymbol{I}_m\boldsymbol{A}\ \ ` 
i :math:`\,` zastosuj twierdzenie z poprzedniego zadania.

Permutation Matrices
~~~~~~~~~~~~~~~~~~~~

**Zadanie 1.** :math:`\,`
Pokaż, że:

1. aby wykonać operację permutacji wierszy :math:`\,O_{\sigma}\,` na iloczynie dwóch macierzy
   :math:`\,\boldsymbol{A}\ \ \text{i}\ \ \boldsymbol{B},\ ` :math:`\\` 
   należy zastosować ją tylko do pierwszego czynnika iloczynu;

2. wykonanie operacji permutacji wierszy :math:`\,O_{\sigma}\,` na prostokątnej macierzy 
   :math:`\,\boldsymbol{A}\ ` jest :math:`\\`
   równoważne pomnożeniu (z lewej strony) tej macierzy przez macierz permutacji 
   :math:`\ \boldsymbol{P}_{\sigma}.`

Trzeba więc udowodnić, że jeżeli 
:math:`\,\boldsymbol{A}\in M_{m\times p}(K),\ \boldsymbol{B}\in M_{p\times n}(K),\ \ 
\sigma\in S_m,\ \ ` to: 

1. :math:`\ \,O_\sigma\,(\boldsymbol{A}\boldsymbol{B})\ =\ 
   (O_\sigma\boldsymbol{A})\,\boldsymbol{B}\,;`
2. :math:`\ \,O_\sigma\,\boldsymbol{A}\ =\ \boldsymbol{P}_\sigma\,\boldsymbol{A}\,,\qquad
   \text{gdzie}\quad\boldsymbol{P}_\sigma = O_\sigma\,\boldsymbol{I}_m\in M_m(K)\,.`

**Wskazówka.** :math:`\\`
Zastosuj wierszową regułę mnożenia macierzowego. :math:`\\`
Dla udowodnienia 2. części tezy zapisz :math:`\,\boldsymbol{A} = \boldsymbol{I}_m\boldsymbol{A}.` 
:math:`\\`

**Zadanie 2.** :math:`\\` 
Udowodnij, że iloczyn dwóch macierzy permutacji jest macierzą permutacji, przy czym

.. math::
   :label: PP_verse
      
   \boldsymbol{P}_\rho\,\boldsymbol{P}_\sigma\ =\ \boldsymbol{P}_{\sigma\,\circ\,\rho}\,,
   \qquad\rho,\sigma\in S_m\,.

Column Version of Permutation Matrices
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

W tym ujęciu operacja :math:`\,O_\sigma\,` permutuje kolumny (a nie - jak poprzednio - wiersze)
zadanej macierzy prostokątnej.

Mianowicie, jeżeli macierz :math:`\ \boldsymbol{A}\,=\,[a_{ij}]_{m\times n}\in M_{m\times n}(K)\ ` 
ma postać kolumnową

.. math::
   
   \boldsymbol{A}\ =\ [\,\boldsymbol{A}_1\,|\,\boldsymbol{A}_2\,|\,\dots\,|\,\boldsymbol{A}_n\,]\,,
   \quad\text{gdzie}\quad
   \boldsymbol{A}_j\ =\ 
   \left[\begin{array}{c}
         a_{1j} \\ a_{2j} \\ \dots \\ a_{mj}
         \end{array}
   \right]\,,\quad j=1,2,\ldots,n,

a :math:`\,` permutacja :math:`\ \sigma\in S_n,\ \ ` to działanie operacji :math:`\ O_\sigma\ ` 
na macierz :math:`\ \boldsymbol{A}\ ` określone jest przez

.. math::
   
   O_\sigma\,\boldsymbol{A}\ \ :\,=\ \ 
   [\;\boldsymbol{A}_{\sigma(1)}\,|\;\boldsymbol{A}_{\sigma(2)}\,|\;\dots\,|\,
   \boldsymbol{A}_{\sigma(n)}\,]\,.

Macierz :math:`\ \boldsymbol{P}_\sigma\ ` permutacji :math:`\ \sigma\in S_n\ `
jest z definicji wynikiem działania operacji :math:`\ O_\sigma\ ` na macierz jednostkową 
:math:`\ \boldsymbol{I}_n =
[\;\boldsymbol{e}_1\,|\;\boldsymbol{e}_2\,|\;\dots\,|\,\boldsymbol{e}_n\,]\ `
(:math:`\boldsymbol{e}_j\ ` jest kolumną zawierającą jedynkę na :math:`\,j`-tej pozycji,
poza tym zera):

.. math::
   
   \boldsymbol{P}_\sigma\ :\,=\ O_\sigma\,\boldsymbol{I}_n\ =\ 
   [\;\boldsymbol{e}_{\sigma(1)}\,|\;\boldsymbol{e}_{\sigma(2)}\,|\;\dots\,|\,
   \boldsymbol{e}_{\sigma(n)}]\,.

**Zadanie 1.** :math:`\,`
Pokaż, że:

1. aby wykonać operację permutacji kolumn :math:`\,O_{\sigma}\,` na iloczynie dwóch macierzy
   :math:`\,\boldsymbol{A}\ \ \text{i}\ \ \boldsymbol{B},\ ` :math:`\\` 
   należy zastosować ją tylko do drugiego czynnika iloczynu;

2. wykonanie operacji permutacji kolumn :math:`\,O_{\sigma}\,` na prostokątnej macierzy 
   :math:`\,\boldsymbol{A}\ ` jest :math:`\\`
   równoważne pomnożeniu (z prawej strony) tej macierzy przez macierz permutacji 
   :math:`\ \boldsymbol{P}_{\sigma}.`

Trzeba więc udowodnić, że jeżeli 
:math:`\,\boldsymbol{A}\in M_{m\times p}(K),\ \boldsymbol{B}\in M_{p\times n}(K),\ \ 
\sigma\in S_n,\ \ ` to: 

1. :math:`\ \,O_\sigma\,(\boldsymbol{A}\boldsymbol{B})\ =\ 
   \boldsymbol{A}\,(O_\sigma\boldsymbol{B})\,;`
2. :math:`\ \,O_\sigma\,\boldsymbol{A}\ =\ \boldsymbol{A}\,\boldsymbol{P}_\sigma\,,\qquad
   \text{gdzie}\quad\boldsymbol{P}_\sigma = O_\sigma\,\boldsymbol{I}_n\in M_n(K)\,.`

**Wskazówka.** :math:`\\`
Zastosuj kolumnową regułę mnożenia macierzowego. :math:`\\`
Dla udowodnienia 2. części tezy zapisz :math:`\,\boldsymbol{A} = \boldsymbol{A}\boldsymbol{I}_n.` 
:math:`\\`

**Zadanie 2.** :math:`\\` 
Udowodnij, że iloczyn dwóch macierzy permutacji jest macierzą permutacji, przy czym

.. math::
   :label: PP_col
      
   \boldsymbol{P}_\rho\,\boldsymbol{P}_\sigma\ =\ \boldsymbol{P}_{\rho\,\circ\,\sigma}\,,
   \qquad\rho,\sigma\in S_n\,.

Zwróć uwagę, 
że :math:`\,` - :math:`\,` inaczej niż w równaniu :eq:`PP_verse` :math:`\,` - :math:`\,`
kolejność permutacji :math:`\ \rho\ \ \text{i}\ \ \sigma\ ` w :eq:`PP_col` jest zachowana. :math:`\,`
Oznacza to, że macierze :math:`\ \boldsymbol{P}_\sigma\ ` tworzą 
:math:`\,` *reprezentację* :math:`\,` grupy permutacji :math:`\ S_n.`
 
Inversion of a Matrix by Elimination Method
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

W sekcji 4.5 wynik zestawienia dwóch macierzy kwadratowych stopnia :math:`\,n\,`
(nazywany tam agregatem) jest jednorodną macierzą prostokątną o :math:`\,n\,` wierszach
i :math:`\,2n\,` kolumnach. Do utworzenia takiego agregatu używa się metody ``augment()``,
a szukaną macierz odwrotną wyodrębnia się stosując operację wycinania albo metodę
``matrix_from_columns()``.

Tutaj zapiszemy równoważną implementację procedury wyznaczania macierzy odwrotnej metodą przekształceń elementarnych.

Zestawienie dwóch macierzy kwadratowych stopnia :math:`\,n\,` będzie teraz macierzą blokową
(nazywaną dalej 2-blokiem). Taki 2-blok będzie utworzony przy użyciu metody ``block_matrix()``,
a do wyodrębnienia macierzy odwrotnej posłuży metoda ``subdivision()``.

Metoda ``rref()``, przeprowadzająca macierz prostokątną do zredukowanej postaci schodkowej,
działa poprawnie w obydwu wersjach.

Poniższy program generuje odwracalne macierze :math:`\,\boldsymbol{A}\,` 
zadanego stopnia :math:`\,n\,` nad ciałem liczb wymiernych :math:`\,Q.\ `

Dla :math:`\,n = 2,\ 3\,` wykonaj odręcznie wszystkie przekształcenia elementarne,
które dla zadanej macierzy :math:`\,\boldsymbol{A}\ `
przeprowadzają macierz :math:`\ [\,\boldsymbol{A}\,|\,\boldsymbol{I}\,]\ `
do postaci :math:`\ [\,\boldsymbol{I}\,|\,\boldsymbol{A}^{-1}\,].\ `
Porównaj swój wynik z wynikiem komputerowym.

.. .. sagecellserver::
   
   n=3
   A = random_matrix(QQ,n,algorithm='echelonizable',rank=n,upper_bound=10)
   html.table([["Znajdź macierz odwrotną do macierzy:", 'A', '=', A]])

   print "Rozwiązanie:"

   B = A.augment(identity_matrix(n)) # rozszerzenie macierzy A
   R = B.rref()      # zredukowana postać schodkowa macierzy B
   A_1 = R[:,n:]     # macierz A^(-1) wyodrębniona z R
  
   @interact
   
   def _(h=('Krok:', ["Agregat [A| I ]", "Agregat [ I |A_1]", "Sprawdzenie"])):

       if h=="Agregat [A| I ]": 
           html.table([["", "", "B = [A| I ]$\;$ jest rozszerzeniem A :"], 
                       ["B", '=', B]])

       elif h=="Agregat [ I |A_1]": 
           html.table([["", "", "Zredukowana postać schodkowa B:"], 
                       ["B.rref()", '=', R]])

       elif h=="Sprawdzenie":
           html.table([["$A\ :$", "", "$A^{-1}\ :$", "", "$A\ *\ A^{-1}\ :$"],
                       [A, '*', A_1, '=', A*A_1]])

.. sagecellserver::

   n=4
   A = random_matrix(QQ,n,algorithm='echelonizable',rank=n,upper_bound=10)
   html.table([["Znajdź macierz odwrotną do macierzy", 'A', '=', A]])
   
   print "Rozwiązanie:"
   
   B = block_matrix([[A,identity_matrix(n)]])  # rozszerzenie macierzy A
   R = B.rref()                # zredukowana postać schodkowa macierzy B
   A_1 = R.subdivision(0,1)    # macierz A^(-1) wyodrębniona z R
   
   @interact
   
   def _(h=('Krok:',["2-blok (A,I)","2-blok (I,A^(-1))","Sprawdzenie"])):
    
       if h=="2-blok (A,I)": 
           html.table([["", "", "$\qquad\ $ B = (A,I)$\:$ jest rozszerzeniem A:"],
                       ["B", '=', B]])
                    
       elif h=="2-blok (I,A^(-1))": 
           html.table([["", "", "$\quad\ \ \ $ Zredukowana postać schodkowa B:"],
                       ["B.rref()", '=', R]])
                    
       elif h=="Sprawdzenie":
           html.table([["$A\ :$", "", "$A^{-1}\ :$", "", "$A\ *\ A^{-1}\ :$"],
                       [A, '*', A_1, '=', A*A_1]])

Dla większych wartości :math:`\,n\,` warto porównać wyniki komputerowe
otrzymane metodą eliminacji oraz przez bezpośrednie użycie metody ``inverse()``
(w skrócie ``I``).























