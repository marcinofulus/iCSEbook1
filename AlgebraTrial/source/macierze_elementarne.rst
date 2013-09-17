Macierze elementarne
--------------------

Macierz :math:`\,\boldsymbol{E}\in M_m(K)\ ` nazywa się *macierzą elementarną*,
jeżeli powstaje przez wykonanie jednej operacji elementarnej na wierszach
macierzy jednostkowej :math:`\,\boldsymbol{I}_m\,.`

.. Ponieważ zdefiniowaliśmy trzy rodzaje operacji elementarnych:

   #. przestawienie dwóch wierszy,
   #. pomnożenie dowolnego wiersza przez liczbę różną od zera,
   #. dodanie do jednego z wierszy dowolnej wielokrotności innego wiersza,

   to istnieją trzy rodzaje macierzy elementarnych :math:`\ (i,j=0,1,\ldots,m-1):`

   #. :math:`\,\boldsymbol{E}_1(i,j)\,` powstaje przez zamianę miejscami
   :math:`\,i`-tego oraz :math:`\,j`-tego wiersza macierzy 
   :math:`\,\boldsymbol{I}_m,`

   #. :math:`\,\boldsymbol{E}_2(i,a)\,` powstaje przez pomnożenie
   :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{I}_m\,` przez :math:`\,a \neq 0,`

   #. :math:`\,\boldsymbol{E}_3(i,j,a)\,` powstaje przez dodanie do :math:`\,i`-tego wiersza
   macierzy :math:`\,\boldsymbol{I}_m\,` wiersza :math:`\,j`-tego, który został pomnożony  
   przez :math:`\,a.`

Ponieważ zdefiniowaliśmy trzy rodzaje operacji elementarnych :math:`\ (i,j=0,1,\ldots,m-1):`

#. :math:`O_1(i,j):\ ` przestawienie :math:`\,i`-tego oraz :math:`\,j`-tego wiersza,
#. :math:`O_2(i,a):\ ` pomnożenie :math:`\,i`-tego wiersza przez liczbę :math:`\,a \neq 0\,,`
#. :math:`O_3(i,j,a):\ ` dodanie do :math:`\,i`-tego wiersza :math:`\,j`-tego wiersza 
   pomnożonego przez liczbę :math:`\,a\,,`

to istnieją trzy rodzaje macierzy elementarnych 

#. | :math:`\,\boldsymbol{E}_1(i,j)\,` powstaje przez zamianę miejscami
     :math:`\,i`-tego oraz :math:`\,j`-tego wiersza macierzy :math:`\,\boldsymbol{I}_m:`
   | :math:`\,\boldsymbol{E}_1(i,j)\,=\,O_1(i,j)\ \boldsymbol{I}_m\,,`

#. | :math:`\,\boldsymbol{E}_2(i,a)\,` powstaje przez pomnożenie
     :math:`\,i`-tego wiersza macierzy :math:`\,\boldsymbol{I}_m\,` przez :math:`\,a \neq 0:`
   | :math:`\,\boldsymbol{E}_2(i,a)\,=\,O_2(i,a)\ \boldsymbol{I}_m\,,`

#. | :math:`\,\boldsymbol{E}_3(i,j,a)\,` powstaje przez dodanie do :math:`\,i`-tego wiersza
     macierzy :math:`\,\boldsymbol{I}_m\,` wiersza :math:`\,j`-tego, który został pomnożony  
     przez :math:`\,a:\ \ \boldsymbol{E}_3(i,j,a)\,=\,O_3(i,j,a)\ \boldsymbol{I}_m\,.`


**Przykłady** dla :math:`\,K=Q,\ m=3:`

.. math::
   
   \boldsymbol{E}_1(0,2) =
   \left[\begin{array}{ccc} 
   0 & 0 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 
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
#. :math:`\,[\boldsymbol{E}_2(i,a)]^{-1}\,=\ \boldsymbol{E}_2(i,a^{-1}),`
#. :math:`\,[\boldsymbol{E}_3(i,j,a)]^{-1}\,=\ \boldsymbol{E}_3(i,j,-a).`

.. Okazuje się, że pomnożenie (z lewej strony) prostokątnej macierzy :math:`\,\boldsymbol{A}\ `
   przez macierz elementarną :math:`\,\boldsymbol{E}\,` jest równoważne wykonaniu na macierzy
   :math:`\,\boldsymbol{A}\,` odpowiedniej operacji elementarnej.
   Dokładnie przedstawia to

Okazuje się, że wykonanie na prostokątnej macierzy :math:`\,\boldsymbol{A}\ `
operacji elementarnej jest równoważne pomnożeniu (z lewej strony)
tej macierzy przez odpowiednią macierz elementarną. Dokładnie przedstawia to

**Twierdzenie 3.** :math:`\,` Niech :math:`\,\boldsymbol{A}\in M_{m\times n}(K).\ ` 
Wtedy :math:`\ (i,j=0,1,\ldots,m-1):`

.. #. :math:`\,\boldsymbol{E}_1(i,j)\,\boldsymbol{A}\ \ ` jest macierzą otrzymaną z
   :math:`\,\boldsymbol{A}\,` przez zamianę :math:`\,i`-tego oraz :math:`\,j`-tego wiersza,

   #. :math:`\,\boldsymbol{E}_2(i,a)\,\boldsymbol{A}\ \ ` jest macierzą otrzymaną z
   :math:`\,\boldsymbol{A}\,` przez pomnożenie :math:`\,i`-tego wiersza przez :math:`\,a,`

   #. :math:`\,\boldsymbol{E}_3(i,j,a)\,\boldsymbol{A}\ \ ` jest macierzą otrzymaną z
   :math:`\,\boldsymbol{A}\,` przez dodanie do :math:`\,i`-tego wiersza 
   :math:`\,j`-tego wiersza pomnożonego przez :math:`\,a.`

#. :math:`\,O_1(i,j)\,\boldsymbol{A}\ =\ \boldsymbol{E}_1(i,j)\,\boldsymbol{A}\,,`
#. :math:`\,O_2(i,a)\,\boldsymbol{A}\ =\ \boldsymbol{E}_2(i,a)\,\boldsymbol{A}\,,`
#. | :math:`\,O_3(i,j,a)\,\boldsymbol{A}\ = \boldsymbol{E}_3(i,j,a)\,\boldsymbol{A}\,.`
   |

W Sage macierze elementarne zwraca funkcja ``elementary_matrix()``. Argumentami są:
pierścień bazowy (domyślnie ZZ), stopień macierzy oraz numery wierszy i czynnik skali, 
zależnie od rodzaju macierzy elementarnej.

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

























