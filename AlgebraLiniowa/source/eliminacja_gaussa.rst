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

  * doprowadzenie macierzy do postaci schodkowej (zwanej także
    zredukowaną), czyli takiej w której nie ma ona niezerowych
    elementów poniżej głównej przekątnej.

  * wyrugowanie elementów powyżej głównej przekątnej zaczynając od
    ostatnich wierszy

  * następnie musimy pomnożyć każdy wiersz tak by na głównej
    przekątnej była jedynka, macierz będzie wtedy w tzw. postaci
    całkowicie zredukowanej

Uzyskany układ równań będzie trywialnym układem na :math:`x_1,x_2,...,x_n`.


Aby uniknąć ręcznego wykonywania mozolnej arytmetyki, przeprowadzimy
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
można łatwo wykonać metodą `augment`:

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

.. sidebar:: Uwaga: indeksowanie w Sage 

   W Sage, pythonie i wielu innych językach komputerowych, indeksy
   wektorów i macierzy przebiegają od 0 do n-1, natomiast w matematyce
   najczęściej zaczynają się od 1. Tak więc mamy równoważność zapisów:
   :math:`\alpha_{12}` oraz ``A[0,1]``.


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

``add_multiple_of_row(1,0,1/2)`` oznacza literalnie: do drugiego
wiersza dodaj pierwszy razy 1/2.

.. code-block:: python

    sage: B.add_multiple_of_row(1,0,1/2) 
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
zobaczyć czy wyjdzie lewa strona wyjściowego układu.

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

Zobaczmy jaki wynik da procedura eliminacji Gaussa dla następującego
układu sprzecznego.


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 0, 1])
    sage: html.table([['rank(A)=',rank(A)],['rank(A|b)=',rank(A.augment(b))]])
    sage: A=A.augment(b)
    sage: show(A)

Oczywiście przed wykonaniem operacji eliminacji nie widać tego, że
układ jest sprzeczny!

Wykonajmy więc eliminację Gaussa krok po kroku:

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

   Prowadzi to do sprzeczności :math:`0=1`, czyli wyjściowy układ równań nie ma
   rozwiązań.


Eliminacja Gaussa\-Jordana układu nieoznaczonego
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zmieńmy tak wektor :math:`b`, by układ miał rozwiązania:


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0],[0,1,0],[1,2,3]])
    sage: b= vector(QQ, [1, 1,1])

.. end of output

Mając juz dostateczną wprawę w procedurze eliminacji możemy
wykorzystać wbudowaną metodę ``rref()`` i  otrzymując natychmiast:

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

* w tym przypadku nie mamy sprzeczności, gdyż ostatnie równanie jest
  zawsze spełnione :math:`0=0`.

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

Zastąpmy jeszcze ostatnie równanie przez tożsamość :math:`x_3 = x_3`

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
    \end{array}\right) + t
    \left(\begin{array}{rrrr}
    -3\\
    0\\
    1
    \end{array}\right)

Mówimy, że jest to rozwiązanie ogólne układu nieoznaczonego. Nie ma
wektora, który spełniał by równanie dane przez macierz rozszerzoną
:eq:`rref_nieozn` a nie był w postaci :eq:`rref_nieozn2`. Warto też
zauważyć, że rozwiązanie jest w postaci sumy rozwiązania szczególnego
oraz dowolnego rozwiązania układu jednorodnego (z zerową prawą
stroną). Rozwiązania układu z zerową prawą stroną noszą nazwę prawego
jądra operatora :math:`\boldsymbol{A}`.



Macierz :math:`n\neq m`
~~~~~~~~~~~~~~~~~~~~~~~

Weźmy układ dwóch równań z czterema niewiadomymi:


.. code-block:: python

    sage: A=matrix(QQ,[[0,1,0,1],[0,1,1,0]])
    sage: b= vector(QQ, [1, 1])
    sage: show(A)


.. MATH::
   :label: nm1

    \left(\begin{array}{rrrr}
    0 & 1 & 0 & 1 \\
    0 & 1 & 1 & 0
    \end{array}\right)

.. end of output

Postać schodkowa macierzy rozszerzonej:

.. code-block:: python

    sage: show( (A.augment(b)).rref() )


.. MATH::
   :label: rref01

    \left(\begin{array}{rrrrr}
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0
    \end{array}\right)

.. end of output

Czy z powyższego zapisu możemy "odczytać" postać rozwiązania układu :eq:`nm1`?

Po pierwsze zauważmy, że mamy więcej zmiennych niż równań. Poza tym z
postaci macierzy zredukowanej wynika wartość niewiadomych :math:`x_2 =
1` i :math:`x_3 = 0`. Pozostałe niewiadome mogą przyjmować dowolne
wartości, ale nie wiemy jak będzie to wpływać na postać rozwiązania. 


Równanie w postaci macierzowej :eq:`rref01` odpowiada następujacemu
układowi równań:


.. code-block:: python

    sage: for wiersz in A.augment(b).rref():
    ...       sum([var("x%d"%(i+1))*el for i,el in enumerate(wiersz[:-1])])==wiersz[-1]
    ...    
    x2 + x4 == 1
    x3 - x4 == 0

.. end of output

Uzupełnijmy układ :eq:`rref01` o "brakujące" równania:


.. code-block:: python

    sage: Ann=matrix(SR,4,5)
    sage: Ann[1:3,:]  = A.augment(b).rref()
    sage: show(Ann)


.. MATH::

    \left(\begin{array}{rrrrr}
    0 & 0 & 0 & 0 & 0 \\
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0 \\
    0 & 0 & 0 & 0 & 0
    \end{array}\right)

.. end of output

wpiszmy zamiast :math:`0=0` równoważne tożsamości :math:`x_1=x_1` i
:math:`x_4=x_4`:


.. code-block:: python

    sage: Ann[0,0] = 1
    sage: Ann[0,4] = x1
    sage: Ann[3,3] = 1
    sage: Ann[3,4] = x4
    sage: show(Ann)


.. MATH::

    \left(\begin{array}{rrrrr}
    1 & 0 & 0 & 0 & x_{1} \\
    0 & 1 & 0 & 1 & 1 \\
    0 & 0 & 1 & -1 & 0 \\
    0 & 0 & 0 & 1 & x_{4}
    \end{array}\right)

.. end of output

Wykonajmy jeszcze raz eliminacje Gaussa na takim układzie:


.. code-block:: python

    sage: show( Ann.rref() ) 


.. MATH::

    \left(\begin{array}{rrrrr}
    1 & 0 & 0 & 0 & x_{1} \\
    0 & 1 & 0 & 0 & -x_{4} + 1 \\
    0 & 0 & 1 & 0 & x_{4} \\
    0 & 0 & 0 & 1 & x_{4}
    \end{array}\right)

.. end of output

Tym razem mamy rozwiązanie w formie jak dla układu nieosobliwego,
jednak prawa strona zawiera dwa dowolne parametry :math:`x_1` i
:math:`x_2`.


Czyli możemy zapisać:

.. MATH::
   :label: rref_nieozn2

    \left(\begin{array}{rrrr}
    x_1\\
    x_2\\
    x_3\\
    x_4
    \end{array}\right) = 
    \left(\begin{array}{rrrr}
    0\\1\\0\\0
    \end{array}\right) 
    + t \left(\begin{array}{rrrr}
    1\\0\\0\\0
    \end{array}\right)
    + s \left(\begin{array}{rrrr}
    0\\-1\\1\\1
    \end{array}\right)

gdzie :math:`t` i :math:`s` są dowolnymi parametrami.


**Ćwiczenie:**

Sprawdź bezpośrednim rachunkiem, że dwa ostatnie wektory w równaniu
:eq:`rref_nieozn2` rzeczywiście spełniają :math:`Ax=0`:

.. sagecellserver::

   A=matrix(QQ,[[0,1,0,1],[0,1,1,0]])
   show(A)

   A = matrix([ [1,3,0,2,-1],[0,0,1,4,-3],[1,3,1,6,-4]])
   R=A.rref()
   F = R[:2,[1,3,4]]
   B1 = block_matrix([ [ identity_matrix(2),F  ],  [ zero_matrix(1,2),  zero_matrix(1,3)]])
   B2 = block_matrix( [[-F],[identity_matrix(3)]])
   html.table([[B1,B2,B1*B2]])
   print latex(B1)
   print latex(B2)
   print latex(B1*B2)

Rozwiązanie układu równań - ogólna postać
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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

    \left(\begin{array}{rrrrr}
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
    2\\0\\2\\0\0\
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
