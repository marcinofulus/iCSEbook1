.. -*- coding: utf-8 -*-



Eliminacja Gaussa (Jordana) dla macierzy
----------------------------------------

Przykład eliminacji krok po kroku:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jak już wiemy, układ równań można rozwiązać stosując procedurę
eliminacji zmiennych zwaną eliminacją Gaussa. Procedura ta może być z
powodzeniem wykonywana jeśli układ równań zapiszemy przy pomocy
wektorów i macierzy.

1) W zapisie macierzowym, będziemy potrzebowali wykonywać operacje na
   macierzy i wektorze będącym prawą stroną układu równań liniowych
   jednocześnie. Dlatego warto rozszerzyć macierz o wektor kolumnowy z
   prawej strony.

2) Odpowiednikiem operacji dodawania równań będą operacje na wierszach
   np. do wiersza trzeciego dodajemy podwojony wiersz pierwszy,
   itp. Dopuszczalne jest też zamienianie wierszy lub przemnożenie
   wiersza przez liczbę.

Celem procedury eliminacji jest uzyskanie rozwiązania układu
równań. Osiągamy to w dwóch etapach:

  * doprowadzenie macierzy do postaci schodkowej, czyli takiej w
    której nie ma ona niezerowych elementów poniżej głównej
    przekątnej.

  * wyrugowanie elementów powyżej głownej przekątnej zaczynając od ostatnich wierszy

  * następnie musimy pomnożyć każdy wiersz tak by na głównej przekątnej była jedynka.

Uzyskany układ równań będzie trywialnym układem na :math:`x_1,x_2,...,x_n`.


Aby uniknać ręcznego wykonywania mozolnej arytmetyki, przeprowadzimy
procedurę z użyciem pakiem Sage. Mając zdefiniowaną macierz mamy do
dyspozycji następujące metody wykonujące operacje na rzędach:
``swap_rows, rescale_row,add_multiple_of_row``. 

W systemie Sage mamy także metodę ``rref()``, która bezpośrednio
prowadzi to celu i przekształca macierz do postaci schodkowej (nazwa
jest skrótem z j.ang. reduced row echelon form).

Dla przykładu przeprowadzimy eliminację Gaussa na macierzy:

.. code-block:: python

    sage: A=matrix([[   0,-2, 1],\
    ...             [-1/2, 0, 0],\
    ...             [-1  ,-1, 0] ])
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrr}
    0 & -2 & 1 \\
    -\frac{1}{2} & 0 & 0 \\
    -1 & -1 & 0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: b=matrix([[1],[2],[2]])
    sage: show(b)


.. MATH::

    \left(\begin{array}{r}
    1 \\
    2 \\
    2
    \end{array}\right)

.. end of output

Dołączenie wektora kolumnowego prawej strony układu do danej macierzy
można łatwo wykonać metodą `augument`:

.. code-block:: python

    sage: B=A.augment(b)
    sage: show(B )


.. MATH::

    \left(\begin{array}{rrrr}
    0 & -2 & 1 & 1 \\
    -\frac{1}{2} & 0 & 0 & 2 \\
    -1 & -1 & 0 & 2
    \end{array}\right)

.. end of output

W kolejnych krokach wykonujemy eliminację Gaussa


.. code-block:: python

      sage: B.swap_rows(0,2)
      sage: show(B)

.. MATH::

      \left(\begin{array}{rrrr}
      -1 & -1 & 0 & 2 \\
      -\frac{1}{2} & 0 & 0 & 2 \\
      0 & -2 & 1 & 1
      \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.rescale_row(0,-1)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    -\frac{1}{2} & 0 & 0 & 2 \\
    0 & -2 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(1,0,1/2) # -> do drugiego dodaj pierwszy razy 1/2
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & -2 & 1 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(2,1,4)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 1 & 0 & -2 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.add_multiple_of_row(0,1,-2)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & \frac{1}{2} & 0 & 1 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: B.rescale_row(1,2)
    sage: show(B)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & 1 & 0 & 2 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output



Ten sam wynik  możemy otrzymać bezpośrednio:


.. code-block:: python

    sage: show(B.rref())


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 0 & -4 \\
    0 & 1 & 0 & 2 \\
    0 & 0 & 1 & 5
    \end{array}\right)

.. end of output


Na uwagę zasługuje pierwsza z nich - zamiana wierszy pierwszego z
trzecim. Jest ona niezbędna, gdyż w pierwszym wierszu musimy mieć
niezerowy element by przeprowadzić proces eliminacji. Zamiana wierszy
jest odpowiednikiem zamiany równań miejscami, co jak wiemy nie zmienia
wyniku - rozwiązania układu równań, więc jest dopuszczalna.

Poniżej znajduje się element interaktywny, w którym można popróbować
samodzielnie procedury eliminacji. Warto też sprawdzić czy ostatnia
kolumna macierzy po eliminacji jest rzeczywiście rozwiązaniem układu
równań - w tym celu wystarczy pomnożyć ją przez macierz wyjściową i
zobaczyć czy wyjdzie lewa strona wyjsciowego układu.

.. sagecellserver::

    sage: A=matrix([[   0,-2, 1],\
    ...             [-1/2, 0, 0],\
    ...             [-1  ,-1, 0] ])
    sage: b=matrix([[1],[2],[2]])
    sage: B=A.augment(b)
    sage: print "Macierz rozszerzona, przed procedurą:"
    sage: show(B )

    sage: # TUTAJ UZUPEŁNIĆ OPERACJE....

    sage: print "Macierz rozszerzona, po operacjach:"
    sage: show(B )

.. end of output



Eliminacja Gaussa\-Jordana układu sprzecznego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zobaczmy jaki wynik da procedura eliminacji Gaussa dla układu sprzecznego:

 #. Analiza specjalnych przypadków układów równań liniowych, wykorzystujemy albo ``rref()``  albo posługujemy się operacjami na rzędach macierzy.

 #. Przedstawienie rozwiązanie równania :math:`Ax=b` jako rozwiązanie szczegolne + kombinacja bazy jądra :math:`A`.

 #. Sage: ``right_kernel().basis(), right_kernel(), rank()`` , iteratory. 


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 0, 1])
    sage: html.table([['rank(A)=',rank(A)],['rank(A|b)=',rank(A.augment(b))]])
    sage: A=A.augment(b)
    sage: show(A)


Wykonajmy teraz eliminację Gaussa krok po kroku:

.. MATH::

    \left(\begin{array}{rrrr}
    0 & 1 & 0 & 1 \\
    0 & 1 & 0 & 0 \\
    1 & 2 & 3 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.swap_rows(0,2)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 2 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 1 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(0,1,-2)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 1 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(2,1,-1)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 1 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: A.add_multiple_of_row(0,2,-1)
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output

Ten sam wynik możemy oczywiście otrzymać wykorzystując gotową procedurę:


.. code-block:: python

    sage: show(A.rref())


.. MATH::

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & 0 \\
    0 & 1 & 0 & 0 \\
    0 & 0 & 0 & 1
    \end{array}\right)

.. end of output


Przyjrzyjmy się wynikowi: 

*  Otrzymaliśmy macierz, która na głownej przekątnej ma zero -
   dokładnie mówiąc :math:`\alpha_{33}=0`.

*  Czwarta kolumna macierzy rozszerzonej, czyli kolumna odpowiadająca
   prawej stronie układu równań liniowych, ma ostatni element
   niezerowy: :math:`\alpha_{34}=0`. Skutkiem tego trzecie równanie ma postać:

   .. math::
      0 x_1 + 0 x_2 + 0 x_3  = 1
   .. end of output

   Prowadzi to do sprzeczności, czyli wyjściowy układ równań nie ma
   rozwiązań.


Zmieńmy tak wektor :math:`b` by układ miał rozwiązania:


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 1,1])

.. end of output

Wykorzystując wbudowaną metodę `rref()` otrzymujemy od razu:

.. code-block:: python

    sage: show( (A.augment(b)).rref() )

.. MATH::
   :label: rref_nieozn

    \left(\begin{array}{rrrr}
    1 & 0 & 3 & -1 \\
    0 & 1 & 0 & 1 \\
    0 & 0 & 0 & 0
    \end{array}\right)

.. end of output

Zinterpretujmy powyższy zapis:

* jak w poprzednim przypadku ostatni element przekątnej macierzy
  układu jest zero (co nie jest dziwne bo jest taka sama jak w
  poprzednim przypadku

* w tym przypadku nie mamy sprzeczności gdyż ostatnie równanie jest
  identycznością :math:`0=0`.

Wynika z tego, że układ ma rozwiązania. Jak je odczytać z postaci :eq:`rref_nieozn`?
Najlepiej powrócić do klasycznego zapisu układu równań:

.. MATH::
   :label: rref_nieozn

    \begin{cases}
    1 x_1 + 0 x_2 +3 x_3 &=& -1 \\
    0 x_1 + 1 x_2 +0 x_3&=& 1 \\
    0 x_1 + 0 x_2 +0 x_3&=& 0
    \end{cases}

Widzimy, że :math:`x_3` może przyjmować dowolne wartości. Traktując
:math:`x_3` jako parametr możemy przenieść w każdym równaniu wyrażenie
z :math:`x_3` na prawą stronę:

.. MATH::
   :label: rref_nieozn

    \begin{cases}
    1 x_1 + 0 x_2   &=& -1 -3 x_3\\
    0 x_1 + 1 x_2   &=&  1 - 0 x_3\\
    0   &=&  0 
    \end{cases}

Zastąpmy jeszcze ostatnie równanie przez tożsamośc :math:`x_3 = x_3`

.. MATH::
   :label: rref_nieozn2

    \begin{cases}
    1 x_1 + 0 x_2   &=& -1 -3 x_3\\
    0 x_1 + 1 x_2   &=&  1 - 0 x_3\\
    x_3   &=&  x_3
    \end{cases}

Czyli możemy zapisać:

.. MATH::
   :label: rref_nieozn2

    \left(\begin{array}{rrrr}
    x_1\\
    x_2\\
    x_3
    \end{array}\right) = 
    \left(\begin{array}{rrrr}
    -1\\
    1\\
    0
    \end{array}\right) + x_3
    \left(\begin{array}{rrrr}
    -3\\
    0\\
    1
    \end{array}\right)

Rozwiązanie jest w postaci sumy rozwiązania szczególnego oraz
dowolnego rozwiązania układu jednorodnego (z zerową prawą stroną). 



Macierz :math:`n\neq m`
~~~~~~~~~~~~~~~~~~~~~~~

Weźmy układ dwóch równań z czterema niewiadomymi:


.. code-block:: python

    sage: #Jeszcze jeden przykład
    sage: A=matrix(QQ,[[0,1,0,1],[0,1,1,0]])
    sage: b= vector(QQ, [1, 1])
    sage: A\b
    (0, 1, 0, 0)

.. end of output

.. code-block:: python

    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrr}
    0 & 1 & 0 & 1 \\
    0 & 1 & 1 & 0
    \end{array}\right)

.. end of output

Postać schodkowa macierzy rozszerzonej:

.. code-block:: python

    sage: show( (A.augment(b)).rref() )


.. MATH::

    \left(\begin{array}{rrrrr}
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: for v in A.right_kernel().basis():
    ...       show(v.column())
    ...       html.table([['$Av=$',A,"x",v.column(),"=", (A*v).column()]] )
    ...

    ...



.. MATH::

    \left(\begin{array}{r}
    1 \\
    0 \\
    0 \\
    0
    \end{array}\right)


.. MATH::

    \left(\begin{array}{r}
    0 \\
    1 \\
    -1 \\
    -1
    \end{array}\right)

.. end of output


Zadania: automatycznie generowane.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zadanie 1. Za pomocą operacji elementarnych, doprowadzić macierz do postaci schodkowej. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Wolno używać tylko wbudowanych funkcji do operacji na rzędach.


.. code-block:: python

    sage: rank=0
    sage: n=randint(2,7)
    sage: while rank!=n:
    ...       A=random_matrix(QQ,n,n)
    ...       rank=A.rank()
    sage: show(A)


.. MATH::

    \left(\begin{array}{rrrrrrr}
    0 & -1 & 0 & 0 & -2 & 0 & 0 \\
    -2 & 0 & -1 & -1 & 2 & \frac{1}{2} & \frac{1}{2} \\
    -1 & 1 & -2 & 0 & -2 & 2 & -\frac{1}{2} \\
    -2 & -1 & -\frac{1}{2} & 0 & -2 & -1 & -2 \\
    1 & -2 & 0 & -\frac{1}{2} & 2 & 0 & 0 \\
    -1 & 2 & 2 & -2 & 0 & 1 & 1 \\
    \frac{1}{2} & -2 & 0 & 1 & 0 & 0 & 0
    \end{array}\right)

.. end of output

Zadanie 2. Rozwiązać układ równań metodą eliminacji Gaussa. 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


 #. Czy układ jest sprzeczny?

 #. Czy układ jest nieoznaczony?

 #. Ile jest rozwiązań, od ilu parametrów zależą rozwiązania?


.. code-block:: python

    sage: n=randint(2,5)
    sage: m=randint(2,5)
    sage: A=random_matrix(QQ,m,n)
    sage: b=random_vector(QQ,m)
    sage: x=vector([var('x%d' % (i+1)) for i in range(n)])
    sage: html.table( [[(A*x)[i],"=",b[i]] for i in range(m)])
    ...


.. end of output



