Eliminacja Gaussa II
====================

Ogólna postać rozwiązania układu równań liniowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Rozważmy układ  :math:`Ax=0` z macierzą:


.. code-block:: python

    sage: A = matrix([ [1,3,0,2,-1],[0,0,1,4,-3],[1,3,1,6,-4]])
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrrr}
    1 & 3 & 0 & 2 & -1 \\
    0 & 0 & 1 & 4 & -3 \\
    1 & 3 & 1 & 6 & -4
    \end{array}\right)

.. end of output

doprowadzając macierz a do postaci całkowicie zredukowanej otrzymujemy:

.. code-block:: python

    sage: R=A.rref()
    sage: show(R)


.. MATH::

    \left(\begin{array}{rrrrr}
    \boxed{1} & 3 & 0 & 2 & -1 \\
    0 & 0 & \boxed{1} & 4 & -3 \\
    0 & 0 & 0 & 0 & 0
    \end{array}\right)

.. end of output

W strukturze macierzy widać, że trzeci wiersz jest zerowy, ponadto
dwie kolumny: pierwsza i trzecia, bez ostatniego wiersza tworzą
macierz jednostkową :math:`2\times2`. Zamieńmy kolumny tak by macierz
jednostkowa była w jednym bloku po lewej stronie. Zamiana ta w
zasadzie nie jest konieczna, ale zdecydowanie polepsza zrozumienie
struktury macierzy :math:`\boldsymbol{R}`. Musimy teraz jednak
pamiętać, że w nowym układzie szukane :math:`x_2` i :math:`x_3` są
zamienione. 

Tak więc możemy przedstawić macierz :math:`\boldsymbol{R}` jako
macierz blokową składającą się z czterech macierzy:

.. math::

   \left(\begin{array}{r|r}
    I & F \\
    \hline
    O & O
    \end{array}\right) = 
   \left(\begin{array}{rr|rrr}
   1 & 0 & 3 & 2 & -1 \\
   0 & 1 & 0 & 4 & -3 \\
   \hline
   0 & 0 & 0 & 0 & 0
   \end{array}\right)

Korzystając z własności macierzy blokowych łatwo można się przekonać, że:

.. math::
   :label: IFbloki

   \;\left(\begin{array}{r|r}
    I & F \\
    \hline
    O & O
    \end{array}\right)  
   \left(\begin{array}{r|r}
    -F \\
    \hline
    I
    \end{array}\right) =   
   \left(\begin{array}{r|r}
    -IF+FI \\
    \hline
    O + O
    \end{array}\right) =   
    \left(\begin{array}{r|r}
    O \\
    \hline
    O
    \end{array}\right) 

gdzie :math:`O` i :math:`I` oznaczają macierz zerową i identyczność o
odpowiednim rozmiarze. 

**Pytanie 1:** jakie rozmiary maja poszczególne macierze w tym równaniu :eq:`IFbloki`? (:ref:`Odpowiedź tutaj <odp1>`).

Przeprowadźmy tą procedurę w Sage. Mając już obliczoną postać macierzy
:math:`\boldsymbol{R}` możemy, stosując technikę wycinania, wybrać z
:math:`\boldsymbol{R}` macierz :math:`\boldsymbol{F}`:

.. code-block:: python

    sage: F = R[:2,[1,3,4]]
    sage: show(F)


.. MATH::

    \left(\begin{array}{rrr}
    3 & 2 & -1 \\
    0 & 4 & -3
    \end{array}\right)

.. end of output


Tworzymy macierze blokowe z lewej strony równania :eq:`IFbloki` za
pomocą konstrukora ``block_matrix``:

.. code-block:: python

    sage: B1 = block_matrix([ [ identity_matrix(2),F               ],\
                              [ zero_matrix(1,2),  zero_matrix(1,3)]])
    sage: B2 = block_matrix( [[-F],[identity_matrix(3)]])


.. end of output

i sprawdzamy wynik iloczynu macierzy :math:`\boldsymbol{B1\cdot B2}`: 

.. code-block:: python

    sage: html.table([[B1,B2,"=",B1*B2]])
    
.. math::

    \left(\begin{array}{rr|rrr}
    1 & 0 & 3 & 2 & -1 \\
    0 & 1 & 0 & 4 & -3 \\
    \hline
    0 & 0 & 0 & 0 & 0
    \end{array}\right)
    \left(\begin{array}{rrr}
    -3 & -2 & 1 \\
    0 & -4 & 3 \\
    \hline
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & 0 & 1
    \end{array}\right) =
    \left(\begin{array}{rrr}
    0 & 0 & 0 \\
    0 & 0 & 0 \\
    \hline
    0 & 0 & 0
    \end{array}\right)

.. end of output

Pamiętając o zamianie wierszy, możemy teraz ponownie powrócic do
starej numeracji szukanych i przedstawić macierz
:math:`\boldsymbol{B2}` jako:

.. code-block:: python

    sage: B2.swap_rows(1,2)
    sage: show(B2)

.. MATH::

    \left(\begin{array}{rrr}
    -3 & -2 & 1 \\
    1 & 0 & 0 \\
    0 & -4 & 3 \\
    0 & 1 & 0 \\
    0 & 0 & 1
    \end{array}\right)

.. end of output

.. note::
 
   Można by zadać pytanie dlatego wykonujemy operacje zamiany rzędów a
   nie kolumn? Pamiętajmy jednak, że powyższa macierz jest macierzą
   która jest z lewej strony mnożona przez macierz
   :math:`\boldsymbol{A}` - czyli ta w której dokonaliśmy zamiany
   kolumn. W mnożeniu macierzy wiersz mnoży kolumnę i zamiana kolumn w
   macierzy :math:`\boldsymbol{A}` spowoduje zamiane kolejności
   elementów poszczególnych jej wierszach. Tak więc aby te same
   elementy wiersza i kolumny zostały pomnożone, zamieniamy wiersze
   drugiej macierzy w iloczynie.

Interpretacja tej macierzy jest następująca: każda z kolumn
:math:`\boldsymbol{B2}` rozwiązuje równanie
:math:`\boldsymbol{Ax}=0`. Ogólne rozwiązanie problemu jednorodnego
jest w postaci:

.. math::
   :label: Ax0

   t\left(\begin{array}{r}
   -3 \\
   1 \\
   0 \\
   0 \\
   0
   \end{array}\right)+
   s\left(\begin{array}{r}
   -2 \\
   0 \\
   -4 \\
   1 \\
   0
   \end{array}\right)+
   u\left(\begin{array}{r}
   1 \\
   0 \\
   3 \\
   0 \\
   1
   \end{array}\right),

dla dowolnych wartości :math:`t,s,u`.

Jeśli mamy do czynienia z układem niejednorodnym, wtedy wykonujemy
sprowadzenie do postaci całkowicie zredukowanej dla macierzy
rozszerzonej. Weżmy na przykład 

.. code-block:: python

   b = vector(QQ,(2,  2, 4))
   show(A.augment(b).rref())

.. MATH::
    :label: aug_rref

    \left(\begin{array}{cccccc}
    \boxed{1} & 3 & 0 & 2 & -1&2 \\
    0 & 0 & \boxed{1} & 4 & -3&2 \\
    0 & 0 & 0 & 0 & 0&0
    \end{array}\right)

.. end of output


Ostatnia kolumna macierzy :eq:`aug_rref` ma interpretaję wartości
zmiennych o tym indeksie dla którego kolumna tej macierzy ma element
wiodący (qng. pivot column, variable). Pozostałe możemy przyjąć
np. równe zeru, pamiętając o dodaniu ogólnej postaci rozwiązania
równania jednorodnego. Mamy więć w tym przypadku:


.. MATH::
    :label: Axb

    x=\underbrace{\left(\begin{array}{rrrrr}
    2\\0\\2\\0\\0
    \end{array}\right)}_{x_{szczeg}} + 
    \underbrace{
    t\left(\begin{array}{r}
    -3 \\
    1 \\
    0 \\
    0 \\
    0
    \end{array}\right)+
    s\left(\begin{array}{r}
    -2 \\
    0 \\
    -4 \\
    1 \\
    0
    \end{array}\right)+
    u\left(\begin{array}{r}
    1 \\
    0 \\
    3 \\
    0 \\
    1
    \end{array}\right)}_{x_{jednorodne}}

Jak praktycznie obliczyć w Sage postać ogólną układu nieoznaczonego?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozwiązanie można też otrzymać automatycznie, biorąc jedno rozwiązanie
szczególne i kombinację liniową wszystkich wektorów bazy jądra
operatora :math:`A`:

Wbudowana metoda ``solve_right`` daje od razu rozwiązanie szczególne. 


.. code-block:: python

    sage: show(A\b)

.. MATH::

   \left(2,\,0,\,2,\,0,\,0\right)


.. code-block:: python

    sage: show(A.right_kernel().basis())

.. math::
    :label: ker1

    \left[\left(1,\,0,\,1,\,-1,\,-1\right),
    \left(0,\,1,\,1,\,-4,\,-5\right), \left(0,\,0,\,2,\,1,\,2\right)\right]

.. end of output

Mając trzy wektory bazy jądra w przestrzeni 5-wymiarowej i rozwiązanie
szczególne problemu niejednorodnego możemy napisać rozwiązanie.

Można zauważyć, że wektory dane wzorem :eq:`ker1` nie pokrywają się z
wektorami wyliczonymi w procedurze eliminacji. Czy oznacza to, że my
lub Sage popełniliśmy błąd? Niekoniecznie. Zadajmy sobie pytanie czy
podprzestrzeń rozpięta przez wektory :eq:`Ax0` jest tą samą
podprzestrzenią co jądro obliczone przez Sage :eq:`ker1`. Zdefiniujmy
w Sage te dwie przestrzenie liniowe, i porównajmy zredukowane postacie
macierzy składającej się z wektorów bazy:


.. code-block:: python

    sage: V1  = span(A.right_kernel().basis())
    sage: V1
    Free module of degree 5 and rank 3 over Integer Ring
    Echelon basis matrix:
    [ 1  0  1 -1 -1]
    [ 0  1  1 -4 -5]
    [ 0  0  2  1  2]

.. end of output

.. code-block:: python

    sage: V2  = span(B2.columns())


.. end of output

.. code-block:: python

    sage: V1.basis_matrix().rref()
    [   1    0    0 -3/2   -2]
    [   0    1    0 -9/2   -6]
    [   0    0    1  1/2    1]

.. end of output

.. code-block:: python

    sage: V2.basis_matrix().rref()
    [   1    0    0 -3/2   -2]
    [   0    1    0 -9/2   -6]
    [   0    0    1  1/2    1]

.. end of output








Odpowiedzi
~~~~~~~~~~

.. _odp1: 

**Odpowiedź 1**

Rozmiary poszczególnych macierzy w równaniu :eq:`IFbloki` w podanym
przykładzie wynoszą:

.. math::

   \left(\begin{array}{r|r}
    2\times 2 & 2\times 3 \\
    \hline
    1\times 2 & 1\times 3
    \end{array}\right)  
   \left(\begin{array}{r|r}
    2\times 3 \\
    \hline
    3\times 3
    \end{array}\right)  = 
   \left(\begin{array}{r|r}
    2\times 3 \\
    \hline
    1\times 3
    \end{array}\right)  



