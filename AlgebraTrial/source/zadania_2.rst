
Macierze
--------

**Zadanie 0.** :math:`\,`
Dla trzech losowo wybranych macierzy 
:math:`\ \boldsymbol{A},\boldsymbol{B},\boldsymbol{C}\in M_3(Q)\ ` 
sprawdź prawo rozdzielności mnożenia względem dodawania:

.. math::
   
   \boldsymbol{A}\,(\boldsymbol{B}+\boldsymbol{C})\ =\ 
   \boldsymbol{A}\boldsymbol{B}+\boldsymbol{A}\boldsymbol{C}\,.

**Zadanie 1.** :math:`\,` Dla macierzy
:math:`\ \,\boldsymbol{A}=
\left[\begin{array}{rrr} 5 & -1 & 0 \\ 2 &  3 & 1 \\ -1 &  2 & 2 \end{array}\right]\,,\ `
:math:`\ \boldsymbol{B}=
\left[\begin{array}{rrr} -1 & 2 & 0 \\ 1 & 3 & 2 \\ -2 & 5 & 4 \end{array}\right]\ \  
\in\ M_3(R)`
 
oblicz :math:`\ \,\boldsymbol{A}\boldsymbol{B},\ \,\boldsymbol{B}\boldsymbol{A},\ \,`
:math:`\ [\boldsymbol{A},\boldsymbol{B}]=
\boldsymbol{A}\boldsymbol{B}-\boldsymbol{B}\boldsymbol{A}\ \,`
oraz wyznaczniki i ślady tych trzech wyrażeń.

Sprawdź, że :math:`\ \,\det(\boldsymbol{A}\boldsymbol{B})=
\det\boldsymbol{A}\cdot\det\boldsymbol{B}=
\det(\boldsymbol{B}\boldsymbol{A}),\ `
:math:`\ \,\text{tr}\,(\boldsymbol{A}\boldsymbol{B})=
\text{tr}\,(\boldsymbol{B}\boldsymbol{A}).`

Czy :math:`\ \,\text{tr}\,(\boldsymbol{A}\boldsymbol{B})=
\text{tr}\boldsymbol{A}\cdot\text{tr}\boldsymbol{B}\ ` ?

**Zadanie 2.** :math:`\,` Na przykładzie macierzy

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{cc}
   1 & 2 \\ 0 & 0
   \end{array}\right]\,,\quad
   \boldsymbol{B}\ =\ 
   \left[\begin{array}{cc}
   1 & 0 \\ 3 & 0
   \end{array}\right]\quad
   \in\ M_2(Q)

przekonaj się, że tożsamość

.. math::
   :label: sum_square
   
   (\boldsymbol{A}+\boldsymbol{B})^2\ =\ 
   \boldsymbol{A}^2+2\boldsymbol{A}\boldsymbol{B}+\boldsymbol{B}^2

nie obowiązuje w algebrze macierzy.

1. Jaki jest więc poprawny wzór dla kwadratu sumy albo różnicy 
   :math:`\ (\boldsymbol{A}\pm\boldsymbol{B})^2\ \,`
   macierzy :math:`\ \boldsymbol{A},\boldsymbol{B}\in M_n(K)\,` ?

2. Jaki warunek powinny spełniać macierze :math:`\ \boldsymbol{A},\boldsymbol{B}\in M_n(K),\ `
   aby wzór :eq:`sum_square` był prawdziwy ?

**Zadanie 3.** :math:`\,` Dla macierzy 
:math:`\ \ \boldsymbol{P}\ =\ 
\left[\begin{array}{ccc} 0 & 0 & 1 \\ 0 & 1 & 0 \\ 1 & 0 & 0 \end{array}\right]\quad
\text{i}\quad\ \boldsymbol{Q}\ =\ 
\left[\begin{array}{ccc} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{array}\right]\quad
\in\ M_3(R):`

1. Oblicz iloczyny 
   :math:`\ \,\boldsymbol{P}\boldsymbol{Q},\ \,\boldsymbol{Q}\boldsymbol{P},\ 
   \boldsymbol{P}^2,\ \boldsymbol{Q}^2.`

2. Jaki jest efekt pomnożenia dowolnej macierzy :math:`\ \boldsymbol{A}\in M_3(R)\ `
   z lewej bądź z prawej strony przez :math:`\ \boldsymbol{P}\ ` albo :math:`\ \boldsymbol{Q}\,` ?

3. Podaj przykłady innych macierzy stopnia trzeciego, 
   których kwadrat równa się macierzy jednostkowej.

**Wskazówka** do punktu 3.
:math:`\ \boldsymbol{P}\ ` i :math:`\ \boldsymbol{Q}\ ` są macierzami permutacji.
Kwadrat macierzy permutacji równa się macierzy jednostkowej wtedy i tylko wtedy, gdy kwadrat odpowiedniej permutacji równa się permutacji identycznościowej. Taką własność mają m.in. transpozycje.

**Zadanie 4.** :math:`\,`
Eksperymentując dla małych wykładników :math:`\ n=2,3,4,\,\ldots` :math:`\\` 
podaj wzór dla dowolnej :math:`\ n`-tej potęgi następujących macierzy
nad ciałem :math:`\ Q:`

.. math::
   
   \left[\begin{array}{cc} 1 & c \\ 0 & 1 \end{array}\right]\,,\quad
   \left[\begin{array}{cc} 2 & 2 \\ 0 & 0 \end{array}\right]\,,\quad
   \left[\begin{array}{cc} 2 & 1 \\ 0 & 1 \end{array}\right]\,,\quad
   \left[\begin{array}{cc} 1 & 1 \\ 1 & 1 \end{array}\right]\,,\quad
   \left[\begin{array}{cc} a & b \\ 0 & 0 \end{array}\right]\,,\quad
   \left[\begin{array}{cc} 1 & 1 \\ 1 & 0 \end{array}\right]\,.

**Wskazówka.** :math:`\\` 
W ostatnim przypadku warto skorzystać ze strony Wikipedii o liczbach Fibonacciego.

**Zadanie 5.** :math:`\,`
Dla podanej macierzy :math:`\ \boldsymbol{A}\ \,` i :math:`\,` wektora :math:`\ \boldsymbol{v}\ `
oblicz :math:`\ \boldsymbol{A}^n,\ n\in\boldsymbol{N},\ ` oraz iloczyn
:math:`\ \boldsymbol{A}^n\boldsymbol{v}:`

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{cccc}
   0 & 2 & 0 & 0 \\
   0 & 0 & 2 & 0 \\
   0 & 0 & 0 & 2 \\
   0 & 0 & 0 & 0
   \end{array}\right]\ \in\ M_4(Q),\qquad
   \boldsymbol{v}\ =\ 
   \left[\begin{array}{c} a \\ b \\ c \\ d \end{array}\right]\,\in\,Q^{\,4}\,.

**Zadanie 6.** :math:`\,`
Przypuśćmy, że dla danej (w ogólności prostokątnej) macierzy :math:`\ \boldsymbol{A}\ `
znamy rozwiązania :math:`\ \boldsymbol{X}_1,\boldsymbol{X}_2,\boldsymbol{X}_3\ `
problemów liniowych

.. math::
   :label: 3_set
   
   \boldsymbol{A}\boldsymbol{X}_1\ =\ 
   \left[\begin{array}{c} 1 \\ 0 \\ 0 \end{array}\right]\,,\qquad
   \boldsymbol{A}\boldsymbol{X}_2\ =\ 
   \left[\begin{array}{c} 0 \\ 1 \\ 0 \end{array}\right]\,,\qquad
   \boldsymbol{A}\boldsymbol{X}_3\ =\ 
   \left[\begin{array}{c} 0 \\ 0 \\ 1 \end{array}\right]\,.

Tworzymy macierz :math:`\ \boldsymbol{X}\ ` złożoną z kolumn 
:math:`\ \boldsymbol{X}_1,\boldsymbol{X}_2,\boldsymbol{X}_3:\ `
:math:`\ \boldsymbol{X}\,=\,[\,\boldsymbol{X}_1\,|\,\boldsymbol{X}_2\,|\,\boldsymbol{X}_3\,].\ `

1. Czemu równa się iloczyn macierzowy :math:`\ \boldsymbol{A}\boldsymbol{X}\,` ?

2. | Załóżmy, że :math:`\ \boldsymbol{A}\ ` jest nieosobliwą macierzą kwadratową stopnia 3.:
     :math:`\ \det\boldsymbol{A}\ne0.`
   | Jaki jest sens macierzy :math:`\ \boldsymbol{X}\ ` ?

3. | Załóżmy, że :math:`\ \boldsymbol{A}\ ` jest osobliwą macierzą kwadratową stopnia 3.:
     :math:`\ \det\boldsymbol{A} = 0.`
   | Uzasadnij, że wówczas co najmniej jeden z problemów :eq:`3_set` nie ma rozwiązań.
   | Niech :math:`\ N\ ` oznacza ilość tych problemów, które nie mają rozwiązań.
   | Określ sytuacje, w których :math:`\ N=1,\,2,\,3.\ ` 
     Podaj przykład dla każdego przypadku.

4. | Rozważmy równanie macierzowe :math:`\ \boldsymbol{A}\boldsymbol{X}=\boldsymbol{B},\ `
   | w którym :math:`\ \boldsymbol{A}\in M_{p\times q}(K),\ `
     :math:`\ \boldsymbol{B}\,=\,[\,\boldsymbol{B}_1\,|\,\boldsymbol{B}_2\,|\,\ldots\,|\,
     \boldsymbol{B}_r\,]\in M_{p\times r}(K),\ ` 
   | a niewiadomą jest macierz :math:`\ \boldsymbol{X}\,=\,[\,\boldsymbol{X}_1\,|\,\boldsymbol{X}_2\,
     |\,\ldots\,|\,\boldsymbol{X}_r\,]\in M_{q\times r}(K).\ `
   | Zauważ, że rozwiązanie tego równania jest równoważne rozwiązaniu
     :math:`\ r\ ` układów równań liniowych o :math:`\ q\ ` niewiadomych, postaci 
     :math:`\ \boldsymbol{A}\boldsymbol{X}_j=\boldsymbol{B}_j\,,\ \ j=1,2,\ldots,r.`

**Wskazówki.**

1. Zastosuj kolumnową regułę mnożenia macierzowego (sekcja 3.1.3).

3. Wykorzystaj warunek konieczny i wystarczający dla odwracalności macierzy (5.4.2).

**Dyskusja** dla punktu 3. :math:`\,`
Oznaczmy przez :math:`\ \boldsymbol{R}_1,\boldsymbol{R}_2,\boldsymbol{R}_3\ ` 
wiersze macierzy :math:`\ \boldsymbol{A}.` :math:`\\`
Skoro :math:`\ \det\boldsymbol{A}=0,\ ` to rząd macierzy :math:`\ \boldsymbol{A}\ `
może być równy 1 albo 2.

.. W zapisie wierszowym :math:`\ \boldsymbol{A}\ =\ 
   \left[\begin{array}{c}
   \boldsymbol{R}_1 \\ \boldsymbol{R}_2 \\ \boldsymbol{R}_3
   \end{array}\right].`

1. :math:`\ \text{rz}\boldsymbol{A}=1.\ \ ` 
   Z dokładnością do kolejności wierszy
   :math:`\ \,\boldsymbol{A}=
   \left[\begin{array}{c} \boldsymbol{R}_1 \\ c_2\,\boldsymbol{R}_1 \\ c_3\,\boldsymbol{R}_1
   \end{array}\right],\ \,\boldsymbol{R}_1\ne\boldsymbol{0}.`
   
   Od razu widać, że problem drugi i trzeci w :eq:`3_set` nie ma rozwiązań. Rzeczywiście, :math:`\\`
   jeżeli :math:`\ \,\boldsymbol{R}_1\boldsymbol{X}=0,\ \,` 
   to :math:`\ \,\boldsymbol{R}_2\boldsymbol{X}=c_2\,(\boldsymbol{R}_1\boldsymbol{X})=0\ \,`
   i :math:`\ \,\boldsymbol{R}_3\boldsymbol{X}=c_3\,(\boldsymbol{R}_1\boldsymbol{X})=0,` :math:`\\`
   wobec czego :math:`\ \,\boldsymbol{A}\boldsymbol{X}=\boldsymbol{0}.`

   Jeżeli zaś :math:`\ \,\boldsymbol{R}_1\boldsymbol{X}=1,\ \,`
   to :math:`\ \,\boldsymbol{R}_2\boldsymbol{X}=c_2\,(\boldsymbol{R}_1\boldsymbol{X})=c_2\ \,`
   i :math:`\ \,\boldsymbol{R}_3\boldsymbol{X}=c_3\,(\boldsymbol{R}_1\boldsymbol{X})=c_3.` :math:`\\`
   A zatem problem pierwszy ma rozwiązanie wtedy i tylko wtedy, gdy :math:`\ c_2=c_3=0.`
   
   Ostatecznie, :math:`\,` gdy :math:`\ c_2\ne 0\ ` lub :math:`\ c_3\ne 0,\ ` 
   to :math:`\ N=3,\ \,` a gdy :math:`\ c_2=c_3=0,\ ` to :math:`\ N=2.`

2. | :math:`\ \text{rz}\boldsymbol{A}=2.\ \ ` Z dokładnością do kolejności wierszy
     :math:`\ \,\boldsymbol{A}=
     \left[\begin{array}{c} \boldsymbol{R}_1 \\ \boldsymbol{R}_2 \\ 
     c_1\boldsymbol{R}_1+c_2\boldsymbol{R}_2
     \end{array}\right],`
   | gdzie :math:`\ \boldsymbol{R}_1,\,\boldsymbol{R}_2\ ` - :math:`\ ` 
     wiersze liniowo niezależne.
   | Teraz trzeci problem w :eq:`3_set` nie ma rozwiązań przy jakichkolwiek :math:`\ c_1,\,c_2.` 
   | Ponadto, rozumując jak w poprzednim punkcie, stwierdzamy że
   | gdy :math:`\ c_1\ne 0\ \ \,\text{i}\ \ \,c_2\ne 0,\ \,` to :math:`\ N=3\,;`
   | gdy :math:`\ c_1=0,\ c_2\ne 0\ \ \,\text{albo}\ \ \,c_1\ne 0,\ c_2=0,\ \,` to :math:`\ N=2\,;`
   | gdy :math:`\ c_1=c_2=0,\ \,` to :math:`\ N=1\,.`


**Zadanie 7.** :math:`\,`
Znajdź macierze odwrotne do podanych macierzy:

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrrr} 1 & -a &  0 &  0 \\
                             0 &  1 & -b &  0 \\
                             0 &  0 &  1 & -c \\
                             0 &  0 &  0 &  1  \end{array}\right]\,,\qquad
   \boldsymbol{L}_5\ =\ 
   \left[\begin{array}{rrrrr} 1 & 0 & 0 & 0 & 0 \\
                              1 & 1 & 0 & 0 & 0 \\
                              1 & 2 & 1 & 0 & 0 \\
                              1 & 3 & 3 & 1 & 0 \\
                              1 & 4 & 6 & 4 & 1 \end{array}\right]\,.

:math:`L_5\ ` jest dolną macierzą Pascala: 
jej :math:`\ k`-ty wiersz zawiera współczynniki we wzorze dwumiennym Newtona 
dla rozwinięcia wyrażenia :math:`\ (a+b)^k\,,\ ` :math:`\ k=0,1,2,3,4\ ` 
oraz uzupełniające zera.

Zapisz kod generujący macierz :math:`\ L_n\ ` i jej odwrotność :math:`\ L_n^{-1}\ `
dla dowolnego stopnia :math:`\ n=2,3,\,\ldots`

**Zadanie 8.** :math:`\,`
Wyznacz macierz odwrotną do macierzy

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrrrr} 1 & -1 &  1 & -1 &  1 \\
                              0 &  1 & -1 &  1 & -1 \\
                              0 &  0 &  1 & -1 &  1 \\
                              0 &  0 &  0 &  1 & -1 \\
                              0 &  0 &  0 &  0 &  1 \end{array}\right]\,.

Eksperymentując, uogólnij wynik na przypadek takiej macierzy dowolnego stopnia.

W Sage tego rodzaju "górną trójkątną macierz naprzemienną" stopnia  :math:`\ n\ ` 
można skonstruować następująco:

.. code-block:: python

   n = 5
   A = matrix([[(-1)^(i+j) if j>=i else 0 for j in range(n)] 
                                          for i in range(n)])

**Zadanie 9.** :math:`\,` Wyznacz macierz :math:`\ \boldsymbol{X}\ ` z równania:

a.) :math:`\ \ \boldsymbol{X}\,
\left[\begin{array}{ccc} 1 & 2 & 3 \\ 2 & 3 & 4 \\ 3 & 4 & 1 \end{array}\right]\,=\,
\left[\begin{array}{ccc} 6 & 9 & 8 \\ 0 & 1 & 6 \end{array}\right]\,;\quad\ `
b.) :math:`\ \ \left[\begin{array}{rr} 3 & -1 \\ 5 & -2 \end{array}\right]\,
\boldsymbol{X}\,
\left[\begin{array}{rr} 5 & 6 \\ 7 & 8 \end{array}\right]\,=\,
\left[\begin{array}{rr} 14 & 16 \\ 9 & 10 \end{array}\right]\,.`

**Zadanie 10.** :math:`\,` Rozwiąż równanie macierzowe:

a.) :math:`\ \ \left[\begin{array}{rr} 2 & -3 \\ 4 & -6 \end{array}\right]\,
\boldsymbol{X}\,=\,
\left[\begin{array}{rr} 1 & 4 \\ 2 & 8 \end{array}\right]\,;\qquad\ `
b.) :math:`\ \ \left[\begin{array}{cc} 2 & 1 \\ 2 & 1 \end{array}\right]\,
\boldsymbol{X}\,=\,
\left[\begin{array}{rr} 1 & 1 \\ 1 & 1 \end{array}\right]\,.`

**Zadanie 11.** :math:`\\`
Czy macierz kwadratowa 4. stopnia, której wiersze składają się z liczb 0, 1, 2, 3
w pewnej kolejności, może być odwracalna ? 
Jaka byłaby odpowiedź, gdyby wziąć liczby 0, 1, 2, -3 ?

**Zadanie 12.** :math:`\,`
Znajdź wszystkie macierze przemienne z macierzą 
:math:`\ \,\boldsymbol{A}\,=\,
\left[\begin{array}{rr} 1 & 2 \\ 1 & 1 \end{array}\right]\,\in M_2(R),\ `
tzn. wszystkie macierze :math:`\ \boldsymbol{X}\in M_2(R),\ `
dla których :math:`\ \,\boldsymbol{A}\boldsymbol{X}=\boldsymbol{X}\boldsymbol{A}.` :math:`\\`
Zauważ, że rozwiązania tworzą podalgebrę algebry :math:`\ M_2(R).` :math:`\\`
Określ wymiar tej podalgebry i podaj przykładową bazę.


















 
