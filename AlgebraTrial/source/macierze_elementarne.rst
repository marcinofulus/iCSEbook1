Elementary Matrices
-------------------

Macierz :math:`\,\boldsymbol{E}\in M_m(K)\ ` nazywa się *macierzą elementarną*,
jeżeli jest ona wynikiem wykonania jednej operacji elementarnej na wierszach
macierzy jednostkowej :math:`\,\boldsymbol{I}_m\,.`

Ponieważ zdefiniowaliśmy trzy rodzaje operacji elementarnych :math:`\ (i,j=0,1,\ldots,m-1):`

#. :math:`\ O_1(i,j):\ ` przestawienie :math:`\,i`-tego oraz :math:`\,j`-tego wiersza,
#. :math:`\ O_2(i,a):\ ` pomnożenie :math:`\,i`-tego wiersza przez liczbę :math:`\,a \neq 0\,,`
#. :math:`\ O_3(i,j,a):\ ` dodanie do :math:`\,i`-tego wiersza :math:`\,j`-tego wiersza 
   pomnożonego przez liczbę :math:`\,a\,,`

to istnieją trzy rodzaje macierzy elementarnych: 

#. | :math:`\ \boldsymbol{E}_1(i,j)\,` powstaje przez zamianę miejscami
     :math:`\,i`-tego oraz :math:`\,j`-tego wiersza macierzy :math:`\,\boldsymbol{I}_m:`
   | :math:`\ \boldsymbol{E}_1(i,j)\,=\,O_1(i,j)\ \boldsymbol{I}_m\,,`

#. | :math:`\ \boldsymbol{E}_2(i,a)\,` powstaje przez pomnożenie
     :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{I}_m\,` przez :math:`\,a \neq 0:`
   | :math:`\ \boldsymbol{E}_2(i,a)\,=\,O_2(i,a)\ \boldsymbol{I}_m\,,`

#. | :math:`\ \boldsymbol{E}_3(i,j,a)\,` powstaje przez dodanie do :math:`\,i`-tego wiersza
     macierzy :math:`\,\boldsymbol{I}_m\,` wiersza :math:`\,j`-tego pomnożonego przez 
     :math:`\,a:\ \ \boldsymbol{E}_3(i,j,a)\,=\,O_3(i,j,a)\ \boldsymbol{I}_m\,.`

Przykłady macierzy elementarnych dla :math:`\,K=Q,\ m=3:`

.. math::
   
   \boldsymbol{E}_1(0,1) =
   \left[\begin{array}{ccc} 
   0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 
   \end{array}\right],\quad 
   \boldsymbol{E}_2(0,\textstyle{2\over 3}) =
   \left[\begin{array}{ccc}
   \textstyle{2\over 3} & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 
   \end{array}\right],\quad 
   \boldsymbol{E}_3(1,2,\textstyle{7\over 4}) = 
   \left[\begin{array}{ccc}
   1 & 0 & 0 \\ 0 & 1 & \textstyle{7\over 4} \\ 0 & 0 & 1
   \end{array}\right].

Łatwo zauważyć, że macierze elementarne są odwracalne, przy czym odwrotność macierzy elementarnej jest macierzą elementarną. Mianowicie :math:`\ (i,j=0,1,\ldots,m-1):`

#. :math:`\,[\boldsymbol{E}_1(i,j)]^{-1}\,=\ \boldsymbol{E}_1(i,j),`
#. :math:`\,[\boldsymbol{E}_2(i,a)]^{-1}\,=\ \boldsymbol{E}_2(i,a^{-1}),\qquad (a\ne 0)`
#. :math:`\,[\boldsymbol{E}_3(i,j,a)]^{-1}\,=\ \boldsymbol{E}_3(i,j,-a).`
  
Wykonanie operacji elementarnej na prostokątnej macierzy 
:math:`\,\boldsymbol{A}\ ` jest równoważne pomnożeniu (z lewej strony)
tej macierzy przez odpowiednią macierz elementarną. Można to zapisać jako

.. admonition:: Twierdzenie 3. :math:`\,` 

   Niech :math:`\,\boldsymbol{A}\in M_{m\times n}(K).\ ` 
   Wtedy :math:`\,` dla :math:`\ i,j=0,1,\ldots,m-1:`

   #. :math:`\,O_1(i,j)\,\boldsymbol{A}\ =\ \boldsymbol{E}_1(i,j)\,\boldsymbol{A}\,,`
   #. :math:`\,O_2(i,a)\,\boldsymbol{A}\ =\ \boldsymbol{E}_2(i,a)\,\boldsymbol{A}\,,\qquad (a\ne 0)`
   #. :math:`\,O_3(i,j,a)\,\boldsymbol{A}\ = \boldsymbol{E}_3(i,j,a)\,\boldsymbol{A}\,,`

   gdzie 
   :math:`\ \boldsymbol{E}_1(i,j),\ \boldsymbol{E}_2(i,a),\ \boldsymbol{E}_3(i,j,a)\in M_m(K).`

W Sage macierze elementarne zwraca funkcja ``elementary_matrix()``. Argumentami są:
pierścień bazowy (domyślnie ZZ), stopień macierzy oraz numery wierszy i czynnik skali. 

.. zależnie od rodzaju macierzy elementarnej.

Następujący kod podaje macierze elementarne z ostatniego przykładu:

.. code-block:: python

   sage: E1 = elementary_matrix(QQ, 3, row1=0, row2=2)
   sage: E2 = elementary_matrix(QQ, 3, row1=0, scale=2/3)
   sage: E3 = elementary_matrix(QQ, 3, row1=1, row2=2, scale=7/4)
   sage: E1,E2,E3

   (
   [0 0 1]  [2/3   0   0]  [  1   0   0]
   [0 1 0]  [  0   1   0]  [  0   1 7/4]
   [1 0 0], [  0   0   1], [  0   0   1]
   )

Sprawdzimy na przykładzie Twierdzenie 3., punkt 3.:

.. code-block:: python

   sage: A = matrix(QQ,3,4,[0,1,2,3,5,-2,3,6,4,-4,0,8])
   # Bezpośrednie wykonanie operacji elementarnej:
   sage: B1 = A.with_added_multiple_of_row(1,2,7/4)
   # Mnożenie macierzy A przez odpowiednią macierz elementarną:
   sage: B2 = elementary_matrix(QQ, 3, row1=1, row2=2, scale=7/4) * A
   sage: html.table([[A, '$\\rightarrow$', B1, ',', B2]])

.. math::
   
   \left(\begin{array}{rrrr}
   0 &  1 & 2 &  3 \\
   5 & -2 & 3 &  6 \\
   4 & 12 & 0 & -8
   \end{array}\right)\ \ \rightarrow\ \ \left(\begin{array}{rrrr}
                                         0 &  1 & 2 &  3 \\
                                        12 & 19 & 3 & -8 \\
                                         4 & 12 & 0 & -8
                                        \end{array}\right)\ \ ,\ \ \left(\begin{array}{rrrr}
                                                                    0 &  1 & 2 &  3 \\
                                                                   12 & 19 & 3 & -8 \\
                                                                    4 & 12 & 0 & -8
                                                                   \end{array}\right)

Przypuśćmy teraz, że przekształcenie macierzy :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\,`
do zredukowanej postaci schodkowej :math:`\,\boldsymbol{C}\,` polega na kolejnym wykonaniu 
operacji elementarnych :math:`\,O_1\,,O_2,\,\dots,\,O_k:`

.. math::
   
   O_k\ \dots\,O_2\ O_1\ \boldsymbol{A}\ =\ \boldsymbol{C}

którym odpowiadają macierze elementarne 
:math:`\,\boldsymbol{E}_1,\boldsymbol{E}_2,\dots,\boldsymbol{E}_k\in M_m(K)\,.` Wtedy

.. math::
   :label: AC
   
   \boldsymbol{E}_k\dots\boldsymbol{E}_2\,\boldsymbol{E}_1\,\boldsymbol{A}\ =\ \boldsymbol{C}\,,

   \boldsymbol{A}\ =\ 
   \boldsymbol{E}_1'\,\boldsymbol{E}_2'\,\dots\,\boldsymbol{E}_k'\ \boldsymbol{C}\,,

gdzie :math:`\ \boldsymbol{E}_i' = \boldsymbol{E}_i^{-1}\,,\quad i=1,2,\dots,k\,.` :math:`\\`

.. admonition:: Twierdzenie 4. :math:`\,` 

   Macierz :math:`\,\boldsymbol{C}\in M_n(K)\,`
   o zredukowanej postaci schodkowej jest odwracalna :math:`\\`
   wtedy i tylko wtedy, gdy jest macierzą jednostkową:
   :math:`\ \boldsymbol{C}=\boldsymbol{I}_n\,.`

**Dowód.**

:math:`\ \Rightarrow\,:\ ` Zakładamy, że kwadratowa macierz :math:`\,\boldsymbol{C}\in M_n(K)\,`
o zredukowanej postaci schodkowej jest odwracalna. Zgodnie z twierdzeniem 1. 
wszystkie jej wiersze są niezerowe. W każdym wierszu występuje więc jedynka wiodąca, 
przesunięta w prawo względem takiej jedynki w wierszu poprzednim. 
W każdej kolumnie wszystkie elementy poza jedynką wiodącą są równe zeru. 
Oznacza to, że :math:`\ \boldsymbol{C}=\boldsymbol{I}_n\,.`

:math:`\ \Leftarrow\,:\ ` Zakładamy, że :math:`\ \boldsymbol{C}=\boldsymbol{I}_n\,.\ `
Wtedy :math:`\ \boldsymbol{C}\,` jest odwracalna, bo
:math:`\ \boldsymbol{I}_n^{-1}=\,\boldsymbol{I}_n\,.` :math:`\\`

.. **Twierdzenie 5.** :math:`\,`

.. admonition:: Twierdzenie 5. :math:`\,`

   Niech :math:`\ \boldsymbol{A}\in M_n(K)\,.\ ` Następujące warunki są równoważne:

   (1) :math:`\,\boldsymbol{A}\,` jest macierzą odwracalną;
   (2) :math:`\,` zredukowaną postacią schodkową macierzy :math:`\boldsymbol{A}\,` 
       jest macierz jednostkowa;
   (3) :math:`\,\boldsymbol{A}\,` jest iloczynem macierzy elementarnych.

**Dowód.**

Wzory :eq:`AC` stwierdzają, że macierz :math:`\,\boldsymbol{A}\,` jest odwracalna wtedy i tylko wtedy, gdy jej zredukowana postać schodkowa :math:`\ \boldsymbol{C}\,` jest odwracalna.
Z kolei według twierdzenia 4. macierz :math:`\ \boldsymbol{C}\,` jest odwracalna wtedy i tylko wtedy,
gdy :math:`\ \boldsymbol{C}=\boldsymbol{I}_n\,.\ ` Wynika stąd równoważność warunków 1. i 2.

Dalej, jeżeli :math:`\,\boldsymbol{A}\,` jest macierzą odwracalną, to drugi wzór
w równaniu :eq:`AC` przyjmuje postać

.. math::
   :label: AE
   
   \boldsymbol{A}\ =\ 
   \boldsymbol{E}_1'\,\boldsymbol{E}_2'\,\dots\,\boldsymbol{E}_k'\,,

co oznacza, że :math:`\,\boldsymbol{A}\,` jest iloczynem macierzy elementarnych.

Odwrotnie, jeżeli :math:`\,\boldsymbol{A}\,` jest iloczynem macierzy elementarnych,
czyli zachodzi warunek :eq:`AE`, to macierz :math:`\,\boldsymbol{A}\,` jest odwracalna
jako iloczyn macierzy odwracalnych. :math:`\\`

Przeprowadzona dyskusja wyjaśnia w pewnym stopniu kwestię istnienia macierzy odwrotnej do danej macierzy kwadratowej. Twierdzenie 1. podaje warunek konieczny, a każdy z punktów 2. oraz 3. 
Twierdzenia 5. :math:`\ ` - :math:`\ ` warunek konieczny i wystarczający dla odwracalności macierzy.

 
























