
Rozkład LU
----------

Naszym celem będzie teraz przedstawienie odwracalnej macierzy kwadratowej :math:`\,\boldsymbol{A}\,`
w postaci iloczynu dolnej i górnej macierzy trójkątnej:
:math:`\ \boldsymbol{A}\ =\ \boldsymbol{L}\boldsymbol{U}\,.`

Zaczniemy od konkretnego przykładu. :math:`\,` Niech
:math:`\ \boldsymbol{A}\ =\ \left[\begin{array}{rrr}
2 &  1 & 1 \\
4 & -6 & 0 \\
-2 &  7 & 2\end{array}\right]\,.`

Eliminacja Gaussa, przekształcającą :math:`\,\boldsymbol{A}\,`
do górnej macierzy trójkątnej :math:`\,\boldsymbol{U},\ `
składa się z następujących kolejnych operacji elementarnych:

.. (pamiętajmy, że w Sage numeracja wierszy zaczyna się od zera):

1. | Od drugiego wiersza macierzy :math:`\,\boldsymbol{A}\,` odejmujemy podwojony wiersz pierwszy.
   | Operacji :math:`\,O_3(1,0,-2)\,` odpowiada macierz elementarna 
     :math:`\,\boldsymbol{E}^{(1)}=\boldsymbol{E}_3(1,0,-2).\,`
   | Wynikiem jest macierz :math:`\ \boldsymbol{A}_1=\boldsymbol{E}^{(1)}\boldsymbol{A}:`
   
   .. math::

      \boldsymbol{A}_1\ =\       
      \left[\begin{array}{rrr} 1 & 0 & 0 \\
                              -2 & 1 & 0 \\
                               0 & 0 & 1\end{array}\right]\ 
      \left[\begin{array}{rrr} 2 &  1 & 1 \\
                               4 & -6 & 0 \\
                              -2 &  7 & 2\end{array}\right]\ =\ 
      \left[\begin{array}{rrr} 2 &  1 &  1 \\
                               0 & -8 & -2 \\
                              -2 &  7 &  2\end{array}\right]\,.

2. | Do trzeciego wiersza macierzy :math:`\,\boldsymbol{A}_1\,` dodajemy wiersz pierwszy.
   | Operacji :math:`\,O_3(2,0,1)\,` odpowiada macierz elementarna 
     :math:`\,\boldsymbol{E}^{(2)}=\boldsymbol{E}_3(2,0,1).\,`
   | Wynikiem jest macierz :math:`\ \boldsymbol{A}_2=\boldsymbol{E}^{(2)}\boldsymbol{A}_1:`
   
   .. math::
      
      \boldsymbol{A}_2\ =\       
      \left[\begin{array}{rrr} 1 & 0 & 0 \\
                               0 & 1 & 0 \\
                               1 & 0 & 1\end{array}\right]\ 
      \left[\begin{array}{rrr} 2 &  1 &  1 \\
                               0 & -8 & -2 \\
                              -2 &  7 &  2\end{array}\right]\ =\ 
      \left[\begin{array}{rrr} 2 &  1 &  1 \\
                               0 & -8 & -2 \\
                               0 &  8 &  3\end{array}\right]\,.

3. | Do trzeciego wiersza macierzy :math:`\,\boldsymbol{A}_2\,` dodajemy wiersz drugi.
   | Operacji :math:`\,O_3(2,1,1)\,` odpowiada macierz elementarna 
     :math:`\,\boldsymbol{E}^{(3)}=\boldsymbol{E}_3(2,1,1).\,`
   | Wynikiem jest macierz :math:`\ \boldsymbol{U}=\boldsymbol{E}^{(3)}\boldsymbol{A}_2:`

   .. math::
      
      \boldsymbol{U}\ =\       
      \left[\begin{array}{rrr} 1 & 0 & 0 \\
                               0 & 1 & 0 \\
                               0 & 1 & 1\end{array}\right]\ 
      \left[\begin{array}{rrr} 2 &  1 &  1 \\
                               0 & -8 & -2 \\
                               0 &  8 &  3\end{array}\right]\ =\ 
      \left[\begin{array}{rrr} 2 &  1 &  1 \\
                               0 & -8 & -2 \\
                               0 &  0 &  1\end{array}\right]\,.

Zbierając wyniki częściowe, można zapisać:
   
.. math::
   :label: UEEEA
   
   \boldsymbol{U}\ =\ \boldsymbol{E}^{(3)}\boldsymbol{E}^{(2)}\boldsymbol{E}^{(1)}\boldsymbol{A}\,.

Występujące tutaj operacje elementarne 3. rodzaju polegają na tym, że do wiersza o numerze większym
dodaje się pewną wielokrotność wiersza o numerze mniejszym. Odpowiadające im macierze elementarne
(otrzymane przez wykonanie takiej operacji na macierzy jednostkowej) są więc dolnymi macierzami
trójkątnymi. To samo dotyczy ich iloczynu oraz odwrotności. 

Wobec tego równanie :eq:`UEEEA` można przekształcić do postaci 
:math:`\,\boldsymbol{A}=\boldsymbol{L}\boldsymbol{U},\ ` gdzie

.. math::
   
   \boldsymbol{L}\ \ =\ \ \left[\,
   \boldsymbol{E}^{(3)}\boldsymbol{E}^{(2)}\boldsymbol{E}^{(1)}
   \right]^{-1}\ =\ \ \ 
   \left[\boldsymbol{E}^{(1)}\right]^{-1}
   \left[\boldsymbol{E}^{(2)}\right]^{-1}
   \left[\boldsymbol{E}^{(3)}\right]^{-1}


jest dolną, :math:`\,` a :math:`\ \ \boldsymbol{U}`
:math:`\,` - :math:`\,` górną macierzą trójkątną.


.. W tym przykładzie

.. .. math::
   
   \boldsymbol{L}\ =\ 
   \left(\ 
   \left[\begin{array}{rrr} 1 & 0 & 0 \\
                            0 & 1 & 0 \\
                            0 & 1 & 1\end{array}\right]\
   \left[\begin{array}{rrr} 1 & 0 & 0 \\
                            0 & 1 & 0 \\
                            1 & 0 & 1\end{array}\right]\ 
   \left[\begin{array}{rrr} 1 & 0 & 0 \\
                           -2 & 1 & 0 \\
                            0 & 0 & 1\end{array}\right]\ 
   \right)^{-1}\ =\quad 
   \left[\begin{array}{rrr} 1 &  0 & 0 \\ 
                             2 &  1 & 0 \\ 
                            -1 & -1 & 1\end{array}\right]\,.

Macierz :math:`\,\boldsymbol{L}\,` wyliczymy korzystając z narzędzi systemu Sage:

.. code-block:: python
   
   sage: E1 = elementary_matrix(QQ, 3, row1=1, row2=0, scale=-2)
   sage: E2 = elementary_matrix(QQ, 3, row1=2, row2=0, scale= 1)
   sage: E3 = elementary_matrix(QQ, 3, row1=2, row2=1, scale= 1)
   sage: E1.I*E2.I*E3.I

   [ 1  0  0]
   [ 2  1  0]
   [-1 -1  1]


.. .. math::
   
   \left(\begin{array}{rrr}  1 &  0 & 0 \\ 
                             2 &  1 & 0 \\ 
                            -1 & -1 & 1\end{array}\right)

   \;

Ostatecznie, rozkład :math:`\,\boldsymbol{A}=\boldsymbol{L}\boldsymbol{U}\ `
macierzy :math:`\,\boldsymbol{A}\ ` przedstawia się następująco:

.. math::
   :label: A_LU_ex
   
   \left[\begin{array}{rrr} 2 &  1 & 1 \\
                            4 & -6 & 0 \\
                           -2 &  7 & 2\end{array}\right]\ =\ 
   \left[\begin{array}{rrr}  1 &  0 & 0 \\ 
                             2 &  1 & 0 \\ 
                            -1 & -1 & 1\end{array}\right]
   \left[\begin{array}{rrr} 2 &  1 &  1 \\
                            0 & -8 & -2 \\
                            0 &  0 &  1\end{array}\right]\,.

Opisana procedura nie byłaby wykonalna, gdyby element :math:`\,a_{11}\,`
(tutaj równy 2) był równy zeru. Należałoby wtedy przestawić wiersze tak,
aby na tej pozycji  pojawił się element niezerowy. 
Wystąpiłyby operacje elementarne 1. rodzaju (przestawienia wierszy),
którym odpowiadają macierze nietrójkątne. W takiej sytuacji rozkład
:math:`\,\boldsymbol{L}\boldsymbol{U}\,` byłby możliwy dopiero dla macierzy przekształconej
:math:`\,\boldsymbol{P}\boldsymbol{A},\,` gdzie :math:`\,\boldsymbol{P}\,`
jest macierzą odpowiedniej permutacji:

.. math::
   :label: PA_LU
   
   \boldsymbol{P}\boldsymbol{A}=\boldsymbol{L}\boldsymbol{U}.

Metoda ``LU()`` pakietu Sage odwołuje się raczej do równoważnego zapisu

.. math::
   :label: A_PLU
   
   \boldsymbol{A}\ =\ \boldsymbol{P}\boldsymbol{L}\boldsymbol{U}\,.

(macierz :math:`\,\boldsymbol{P}\,` w równaniu :eq:`A_PLU` jest odwrotnością
macierzy :math:`\,\boldsymbol{P}\,` w równaniu :eq:`PA_LU` i vice versa).

Zastosowanie metody ``LU()`` do macierzy prostokątnej :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\ `
daje w wyniku trójkę macierzy :math:`\,(\boldsymbol{P},\boldsymbol{L},\boldsymbol{U}):\ `
:math:`\,\boldsymbol{P}\,` i :math:`\,\boldsymbol{L}\ ` są macierzami kwadratowymi 
stopnia :math:`\,m,\ ` przy czym elementy diagonalne macierzy :math:`\,\boldsymbol{L}\,`
są równe 1, :math:`\,` natomiast :math:`\,\boldsymbol{U}\,` ma te same rozmiary 
co :math:`\,\boldsymbol{A}.`

Zastosujmy metodę ``LU()`` do macierzy :math:`\,\boldsymbol{A}\,` z przykładu:

.. code-block:: python
   
   sage: A = matrix(QQ, [[2,1,1], [4,-6,0],[-2,7,2]])
   sage: (P,L,U) = A.LU()
   sage: print A==P*L*U
   sage: html.table([[A, '=', P, '*', L, '*', U]])
   
   True

.. math::
   :label: A_PLU_ex
   
   \left(\begin{array}{rrr}
       2 &  1 & 1 \\
       4 & -6 & 0 \\
      -2 &  7 & 2
   \end{array}\right)\ \ =\ \ 
   \left(\begin{array}{rrr}
       0 & 1 & 0 \\
       1 & 0 & 0 \\
       0 & 0 & 1
   \end{array}\right)\ *\ 
   \left(\begin{array}{rrr}
       1 & 0 & 0 \\
       \textstyle{1\over 2} & 1 & 0 \\
      -\textstyle{1\over 2} & 1 & 1
   \end{array}\right)\ *\  
   \left(\begin{array}{rrr}
      4 & -6 & 0 \\
      0 &  4 & 1 \\
      0 &  0 & 1
   \end{array}\right)

Otrzymany rozkład :eq:`A_PLU_ex` jest różny od :eq:`A_LU_ex`, chociaż obydwa są prawdziwe.
Jak widać, rozkład :math:`\,\boldsymbol{L}\boldsymbol{U}\,` w ogólności nie jest jednoznaczny.
:math:`\\`

.. admonition:: Poeksperymentuj z Sage: :math:`\\`

   Poniższy kod generuje przypadkową macierz :math:`\,\boldsymbol{A}\,`
   i zapisuje jej rozkład :math:`\,\boldsymbol{A}=\boldsymbol{P}\boldsymbol{L}\boldsymbol{U}.`

   * Dopisz wiersz sprawdzający poprawność wyniku.
   * | Zmieniając rozmiary :math:`\,m\ \ \text{i}\ \ n\,` macierzy :math:`\,\boldsymbol{A}\,`
       otrzymaj 
     | różne konkretne przykłady omawianej procedury.

.. sagecellserver::

   m = 3
   n = 4
   A = random_matrix(QQ, 3, 4, rank=3, upper_bound=10,
                     algorithm='echelonizable')
   (P,L,U) = A.LU()
   html.table([[A, '=', P, L, U]])

:math:`\;`

.. admonition:: Uwaga:

   Metoda ``LU()`` działa poprawnie  na pierścieniach dokładnych, np. na ciele liczb wymiernych QQ. 
   Przy obliczeniach numerycznych należy użyć ciała RDF albo CDF 
   liczb rzeczywistych albo zespolonych o podwójnej precyzji.

Zastosowania rozkładu LU
~~~~~~~~~~~~~~~~~~~~~~~~

Rozwiązywanie układów równań
............................

Rozważmy układ :math:`\,m\,` równań liniowych o :math:`\,n\,` niewiadomych nad ciałem :math:`\,K,\,`
z macierzą współczynników :math:`\,\boldsymbol{A}\in M_{m\times n}(K)\ `
i kolumną wolnych wyrazów :math:`\,\boldsymbol{b}\in K^m.`

Jeżeli rozkład :math:`\,\boldsymbol{L}\boldsymbol{U}\,` dla macierzy :math:`\,\boldsymbol{A}\ `
przyjmiemy w postaci :eq:`PA_LU`, to opisany układ równań można przekształcić jak następuje:

.. .. math::
   
   (\boldsymbol{P}\boldsymbol{A})\,\boldsymbol{x}\ =\ \boldsymbol{P}\,\boldsymbol{b}
   \qquad\text{czyli}\qquad
   (\boldsymbol{L}\boldsymbol{U})\,\boldsymbol{x}\ =\ \boldsymbol{P}\,\boldsymbol{b}
   \qquad\text{czyli}\qquad
   \boldsymbol{L}(\boldsymbol{U}\boldsymbol{x})\ =\ \boldsymbol{P}\,\boldsymbol{b}\,.

.. math::
   
   \begin{array}{c}
   \boldsymbol{A}\,\boldsymbol{x}\ =\ \boldsymbol{b}\,, \\
                                                    \\ 
   (\boldsymbol{P}\boldsymbol{A})\,\boldsymbol{x}\ =\ \boldsymbol{P}\,\boldsymbol{b}\,, \\
                                                                                        \\
   (\boldsymbol{L}\boldsymbol{U})\,\boldsymbol{x}\ =\ \boldsymbol{P}\,\boldsymbol{b}\,, \\
                                                                                        \\   
   \boldsymbol{L}(\boldsymbol{U}\boldsymbol{x})\ =\ \boldsymbol{P}\,\boldsymbol{b}\,.
   \end{array}


Przy oznaczeniu :math:`\,\boldsymbol{y}\ =\ \boldsymbol{U}\boldsymbol{x}\,`
otrzymujemy układ :math:`\,2m\,` równań o :math:`\,m+n\,` niewiadomych:

.. math::
   :label: set_xy
   
   \left\{\ \ \begin{array}{ll}
   \boldsymbol{L}\,\boldsymbol{y}\ =\ \boldsymbol{P}\,\boldsymbol{b}\,, \qquad\qquad & 
   \boldsymbol{L}\in M_m(K),\ \ \boldsymbol{y}\in K^m \\
   \boldsymbol{U}\,\boldsymbol{x}\ =\ \boldsymbol{y}\,, \qquad\qquad & 
   \boldsymbol{U}\in M_{m\times n}(K),\ \ \boldsymbol{x}\in K^n\,.
   \end{array}\right.

W trakcie rozwiązywania każdego z dwóch podukładów można korzystać z ułatwień wynikających z trójkątnej postaci macierzy :math:`\,\boldsymbol{L}\ \ \text{i}\ \ \boldsymbol{U}.\ `

Przedstawiona metoda jest szczególnie efektywna, gdy trzeba rozwiązać wiele układów równań z tą samą macierzą :math:`\,\boldsymbol{A}\,,\ ` ale różnymi kolumnami :math:`\,\boldsymbol{b}:\ `
rozkład :math:`\,\boldsymbol{L}\boldsymbol{U}\,` dla macierzy :math:`\,\boldsymbol{A}\ `
wystarczy wtedy przeprowadzić tylko raz.

Rozwiążemy w ten sposób układ równań nad ciałem liczb wymiernych :math:`\,Q:`

.. math::
   :nowrap:

   \begin{alignat*}{4}
    2\,x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} &    x_3 & {\;} = {} &  6 \\
    4\,x_1 & {\,} - {\,} & 6\,x_2 &             &        & {\;} = {} & 14 \\
   -2\,x_1 & {\,} + {\,} & 7\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {} & -5 
   \end{alignat*}

Rozkład :math:`\,\boldsymbol{L}\boldsymbol{U}\,` dla macierzy :math:`\,\boldsymbol{A}\ `
współczynników tego układu już znamy :eq:`A_LU_ex`:

.. math::
   
   \left[\begin{array}{rrr} 2 &  1 & 1 \\
                            4 & -6 & 0 \\
                           -2 &  7 & 2\end{array}\right]\ =\ 
   \left[\begin{array}{rrr}  1 &  0 & 0 \\ 
                             2 &  1 & 0 \\ 
                            -1 & -1 & 1\end{array}\right]
   \left[\begin{array}{rrr} 2 &  1 &  1 \\
                            0 & -8 & -2 \\
                            0 &  0 &  1\end{array}\right]\,.

Wzory :eq:`set_xy` dają dwa powiązane ze sobą układy równań o trójkątnych macierzach współczynników:

.. math::
   :nowrap:

   \begin{alignat*}{4}
       y_1 & {\,}   {\,} &        & {\,}   {\,} &        & {\;} = {} &  6 \\
    2\,y_1 & {\,} + {\,} &    y_2 &             &        & {\;} = {} & 14 \\
      -y_1 & {\,} - {\,} &    y_2 & {\,} + {\,} &    y_3 & {\;} = {} & -5 
   \end{alignat*}

.. math::
   :nowrap:

   \begin{alignat*}{4}
    2\,x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} &    x_3 & {\;} = {\ } & y_1 \\
           & {\,} - {\,} & 8\,x_2 & {\,} - {\,} & 2\,x_3 & {\;} = {\ } & y_2 \\
           & {\,}   {\,} &        & {\,}   {\,} &    x_3 & {\;} = {\ } & y_3
   \end{alignat*}

Pierwszy układ rozwiązujemy podstawianiem "w przód", :math:`\ `
a drugi :math:`\ ` - :math:`\ ` podstawianiem "wstecz":

.. math::
   
   \textstyle
   \begin{array}{l}
   y_1\ =\ 6 \\ y_2\ =\ 14\ -\ 2\,y_1\ =\ 2 \\ y_3\ =\ -5\ +\ y_1\ +\ y_2\ =\ 3\,,
   \end{array}
   \qquad
   \begin{array}{l}
   x_3\ =\ y_3\ =\ 3 \\ 
   x_2\ =\ -{1\over 8}\ (y_2+2\,x_3)\ =\ -1 \\
   x_1\ =\ {1\over 2}\ (y_1-x_2-x_3)\ =\ 2\,.
   \end{array}

Ostatecznie, :math:`\,` rozwiązaniem układu jest: :math:`\ x_1=2,\ x_2=-1,\ x_3=3\,.` 

Wyliczanie macierzy odwrotnej
.............................

Niech :math:`\,\boldsymbol{A}\in M_n(K)\,` będzie macierzą odwracalną.
Zadanie wyznaczenia jej odwrotności sprowadza się do rozwiązania równania macierzowego

.. math::
   
   \boldsymbol{A}\,\boldsymbol{X}\ =\ \boldsymbol{I}_n\,.

Zapisując macierze :math:`\,\boldsymbol{X}\ \ \text{i}\ \ \boldsymbol{I}_n\,`
w postaci kolumnowej:

.. math::
   
   \boldsymbol{X}\ =\ \left(\boldsymbol{X}_1,\ \boldsymbol{X}_2,\ \dots,\ \boldsymbol{X}_n\right)\,,
   \qquad
   \boldsymbol{I}_n\ =\ \left(\boldsymbol{e}_1,\ \boldsymbol{e}_2,\ \dots,\ \boldsymbol{e}_n\right)

i odwołując się do definicji (a dokładnie: do kolumnowej reguły) mnożenia macierzowego, otrzymujemy :math:`\,n\,` układów równań, każdy o :math:`\,n\,` niewiadomych:

.. math::
   
   \boldsymbol{A}\,\boldsymbol{X}_i\ =\ \boldsymbol{e}_i\,,\qquad i=1,2,\dots,n.

Wszystkie układy mają tę samą macierz współczynników :math:`\,\boldsymbol{A},\,`
różnią się tylko wolnymi wyrazami. Jak zauważyliśmy już wcześniej, 
jest to sytuacja dogodna dla użycia metody rozwiązania opartej na rozkładzie 
:math:`\,\boldsymbol{L}\boldsymbol{U}.`

Obliczanie wyznaczników
.......................

Zauważmy na wstępie, że wyznacznik macierzy permutacji równa się znakowi tej permutacji.
Dokładnie ujmuje to

.. admonition:: Lemat. :math:`\,`

   Jeżeli :math:`\ \boldsymbol{P}_\sigma\in M_n(K)\ ` jest macierzą permutacji 
   :math:`\,\sigma\in S_n,\ ` to :math:`\ \det\boldsymbol{P}_\sigma = \text{sgn}\,\sigma\,.`

Rzeczywiście, permutację :math:`\,\sigma\,` można zapisać jako złożenie transpozycji:

.. math::
   
   \sigma\ =\ \tau_k\,\dots\,\tau_2\ \tau_1\,.

Operacja :math:`\,O_\sigma\,,\ ` określona na macierzach algebry :math:`\,M_n(K),\ `
jest złożeniem odpowiednich operacji elementarnych 1. rodzaju (przestawień wierszy):

.. math::
   
   O_\sigma\ =\ \,O_1^{(k)}\dots\,O_1^{(2)}\ O_1^{(1)}

a jej macierz :math:`\,` - :math:`\,` iloczynem odpowiadających im macierzy elementarnych 1. rodzaju:

.. math::
   
   \boldsymbol{P}_\sigma\ =\ 
   \boldsymbol{E}_1^{(k)}\dots\,\boldsymbol{E}_1^{(2)}\,\boldsymbol{E}_1^{(1)}\,.

Wyznacznik iloczynu macierzy równa się iloczynowi wyznaczników, więc

.. math::
   
   \det\boldsymbol{P}_\sigma\ =\ 
   \det\left(\boldsymbol{E}_1^{(k)}\dots\,\boldsymbol{E}_1^{(2)}\,\boldsymbol{E}_1^{(1)}\right)
   \ \ =\ \ 
   \det\boldsymbol{E}_1^{(k)}\,\cdot\ \dots\ \cdot\   
   \det\boldsymbol{E}_1^{(2)}\,\cdot\ \det\boldsymbol{E}_1^{(1)}\,.

Wyznacznik każdej macierzy :math:`\,\boldsymbol{E}_1^{(i)}\,,\ i=1,2,\dots,k\,,\ `
(otrzymanej poprzez przestawienie dwóch wierszy macierzy jednostkowej :math:`\,\boldsymbol{I}_n`)
wynosi :math:`\,-1.\ ` Stąd dochodzimy do tezy lematu:

.. math::
   
   \det\boldsymbol{P}_\sigma\ =\ (-1)^k\ =\ \,\text{sgn}\,\sigma\,.

Niech teraz będzie dana macierz :math:`\,\boldsymbol{A}\in M_n(K)\,` w rozkładzie :eq:`A_PLU`:

.. math::
   
   \boldsymbol{A}\ =\ \boldsymbol{P}\,\boldsymbol{L}\,\boldsymbol{U}\,,

gdzie :math:`\ \boldsymbol{P}=\boldsymbol{P}_\sigma\,,\ \ 
\boldsymbol{L}=[l_{ij}]_{n\times n}\,,\ \ \boldsymbol{U}=[u_{ij}]_{n\times n}\,.`

Zgodnie z twierdzeniem Cauchy'ego o wyznaczniku iloczynu macierzy mamy

.. math::
   
   \det\boldsymbol{A}\ \,=\ \,
   \det\boldsymbol{P}_\sigma\,\cdot\,\det\boldsymbol{L}\,\cdot\,\det\boldsymbol{U}\,.

Z lematu wiadomo, że :math:`\ \det\boldsymbol{P}_\sigma\,=\,\text{sgn}\,\sigma\,.` :math:`\\`
Wyznaczniki macierzy trójkątnych :math:`\ \boldsymbol{L}\ \ \text{i}\ \ \boldsymbol{U}\ `
są równe iloczynom elementów diagonalnych:

.. math::
   
   \det\boldsymbol{L}\ =\ l_{11}\,l_{22}\,\dots\,l_{nn}\,,\qquad
   \det\boldsymbol{U}\ =\ u_{11}\,u_{22}\,\dots\,u_{nn}\,.

Ostatecznie otrzymujemy prosty wzór dla wyznacznika macierzy :math:`\,\boldsymbol{A}:`

.. math::
   
   \det\boldsymbol{A}\ =\ 
   \text{sgn}\,\sigma\,\cdot\,l_{11}\,l_{22}\,\dots\,l_{nn}\,\cdot\,u_{11}\,u_{22}\,\dots\,u_{nn}\,.

Dla przykładu weźmy macierz
:math:`\ \ \boldsymbol{A}\ =\ \left[\begin{array}{rrr}
2 &  1 & 1 \\
4 & -6 & 0 \\
-2 &  7 & 2\end{array}\right]\,.`

Otrzymaliśmy dla niej dwa różne rozkłady :math:`\,\boldsymbol{L}\boldsymbol{U}:\ `
odręczny :eq:`A_LU_ex` i komputerowy :eq:`A_PLU_ex`. Łatwo sprawdzić, że wyznacznik tej macierzy
wyliczony jakąkolwiek metodą wynosi :math:`\,-16.`







   










   

 
 





  

                                      


   





















