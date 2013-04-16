 Algebra liniowa w Sage
======================


Operacje na macierzach
~~~~~~~~~~~~~~~~~~~~~~

System Sage potrafi w dosyć ogólny sposób wykonywać wiele operacji
spotykanych w algebrze liniowej. Najczęściej używanymi obiektami są
wektory i macierze ``vector`` i ``matrix``. Ponieważ Sage jest
systemem algebry komputerowej, użytkownikowi jest pozostawiona decyzja
wyboru ciała nad którym jest określona macierz lub wektor.

Należy podkreślić, że są dwie strategie wykonywania operacji na
macierzach i wektorach:

  * Numeryczna algebra liniowa: elementami macierzy i wektorów są
    liczby o skończonej precyzji. Błędy zaokrągleń kumulują się co
    należy brać pod uwagę przy wykonywaniu różnych operacji.

  * Dokładna algebra liniowa: elementami macierzy są QQ, ZZ, SR,
    operacje są dokładne, ale nie wszystkie mogą być wykonane i
    wydajność jest ograniczona.



Poniżej znajduje się przegląd pierścieni stosowanych w Sage:

+---------+-----------------------------+-----------------------------+
|Pierścień|       nazwa                 |właściwości                  |
+=========+=============================+=============================+
|ZZ       |liczby całkowite             |dokładne, ale ograniczona    |
|         |                             |l. działań                   |
|         |                             |                             |
+---------+-----------------------------+-----------------------------+
|QQ       |liczby wymierne              |dokładne, ZZ + ułamki       |
|         |                             |                             |
+---------+-----------------------------+-----------------------------+
|RR       |liczby rzeczywiste o dowolnej|arytmetyka interwałowa       |
|         |precyzji                     |                             |
+---------+-----------------------------+-----------------------------+
|CC       |liczby zespolone o dowolnej  |arytmetyka interwałowa       |
|         |precyzji                     |                             |
+---------+-----------------------------+-----------------------------+
|RDF      |liczby rzeczywiste o         |rachunki numeryczne          |
|         |podwójnej precyzji           |                             |
+---------+-----------------------------+-----------------------------+
|CDF      |liczby zespolone o podwójnej |rachunki numeryczne          |
|         |precyzji                     |                             |
+---------+-----------------------------+-----------------------------+
|SR       |pierścień symboliczny        |dokładne, ograniczona        |
|         |                             |l.działań                    |
|         |                             |                             |
+---------+-----------------------------+-----------------------------+



Indeksowanie elementów:
-----------------------

Macierze w zapisie matematycznym mają wskaźniki, które zaczynają się
od jedynki. Pierwszy wskaźnik numeruje wiersze a drugi kolumny.

W wielu językach komputerowych, wskaźniki macierzy :math:`n\times n`
zaczynają się od :math:`0` i kończą na :math:`n-1`

Czyli możemy zapisać następującą równość, gdzie macierz po lewej
stronie jest w konwencji matematycznej a macierz po prawej jest
sposobem odwoływania się do elementów macierzy w Sage:

.. math::


   \left(\begin{array}{rrr}
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
    a_{31} & a_{32} & a_{33}
   \end{array}\right) =   \left(\begin{array}{rrr}
     A[0,0]&A[0,1]&A[0,2]\\ A[1,0]&A[1,1]&A[1,2]\\ A[2,0]&A[2,1]&A[2,2]  
   \end{array}\right)
 
Ciekawą i użyteczną techniką indeksowania, używają z języku python (i
nie tylko) jest wycinanie. Mamy do dyspozycji następujące konstrukcje:

* ``[1:3]`` - elementy  1 i 2
* ``[1:]`` - elementy  od 1 do końca
* ``[1:10:2]`` - elementy od 1 do 10 co 2
* ``[-1]`` - ostatni element

Szczegółowy opis znajduję się w podręcznikach języka python
np. `Zanurkuj w Pythonie
<http://pl.wikibooks.org/wiki/Zanurkuj_w_Pythonie/Listy>`_. Zachęcamy
do eksperymentalnego poznania tej techniki:

.. sagecellserver::
   
   sage: A = random_matrix(ZZ,6,6)
   sage: show(A)
   sage: show(A[:,2:3])
   sage: show(A[1:3,::3])



Rożne konstruktory macierzy
--------------------------

.. sidebar:: Obiekt

   Jest typem w języku programowania będący strukturą zawierającą
   **dane** i **metody**. Metodami są funkcje służące do wykonywania
   na tych danych określonych zadań.



W systemie Sage macierz jest obiektem pythonowym. Aby utworzyć taki
obiekt należy wywołać jego konstruktor.  Najbardziej podstawowym
użyciem typu ``matrix`` jest wywołanie konstruktora  ``matrix``:

.. code-block:: python

    sage: matrix(3)

spowoduje to utworzenie macierzy :math:`3\times3` nad ciałem liczb
całkowitych i wypełnienie jej zerami. Elementy tej macierzy można
uzupełnić o dowolne wartości, jednak można zauważyć, że przypisanie do
dowolnego elementu wartości niecałkowitej np. ``A[1,1]=1/2`` spowoduje
pojawienie się błędu. Dlatego bardziej praktycznym sposobem
definiowania macierzy jest jawne wyspecyfikowanie ciała (w Sage
wystarczy by był to pierścień) nad którym określona będzie macierz, np.:

.. code-block:: python

    sage: matrix(QQ,3)

Liczba ``3`` jest rozmiarem macierzy kwadratowej, jeśli chcemy
utworzyć macierz prostokątną to możemy podać liczbę wierszy i kolumn:

.. code-block:: python

    sage: matrix(QQ,3,2)

Jeśli znamy wartości wszystkich elementów macierzy, możemy z listy
wierszy bezpośrednio utworzyć macierz. Jeśli nie podamy pierścienia
(lub ciała) nad którym jest określona tworzona macierz to Sage
zastosuje taki pierścień aby wszystkie element mogły się w nim
znaleźć. 

Elementy macierzy mogą być pewną funkcją ich wskaźników, w takim
przypadku możemy utworzyć macierz generując automatycznie listę
wierszy i przekazując ją do konstruktora macierzy. W poniższym kodzie
jest zastosowane zagnieżdżone produktowanie listy:


.. code-block:: python

    sage: matrix( [ [ i+I*j for j in range(1,n+1)] for i in range(1,n+1)] )


.. end of output


Ćwiczenie: konstrukcje macierzy
+++++++++++++++++++++++++++++++

* Sprawdź nad jakim pierścieniem będzie  określona macierz ``A`` (zastosuj ``A.parent()``).
* Zmień macierz tak by nie zawierała symbolu ``a``
* Wypróbuj inne metody inicjacji macierzy opisane powyżej i  sprawdź pierścień.

.. sagecellserver::
   
   var('a')
   A = matrix( [[a,2,3.],[4/3,5,6]] ) 



Oprócz konstruktora macierzy ``matrix`` w Sage znajduje się szereg
użytecznych funkcji, które potrafią skonstruować rozmaite macierze:


.. code-block:: python

    sage: random_matrix(QQ,3,3,algorithm='diagonalizable')
    sage: identity_matrix(3)
    sage: diagonal_matrix([1,2,3])
    sage: elementary_matrix(QQ, 3, row1=1, row2=2,scale=2)
    sage: ones_matrix(3)
 
.. end of output


Pułapki
-------


.. admonition:: Uwaga 1

   Aby wybrać z macierzy wektor będący pierwszą kolumnę należy użyć
   A.column(1). Zastosowanie A[:,1] da w wyniku macierz [n,1] zamiast
   wektora. 

   .. code-block:: python

    sage: A = random_matrix(QQ,3)
    sage: show(A)
    sage: show(A.column(1))
    sage: show(A[:,1])
    sage: print type(A[:,1])
    sage: print type(A.column(1) )

   .. end of output



.. admonition:: Uwaga 2

   Rozważmy macierz nad pierścieniem symbolicznym zależną od pewnego
   parametru.  Aby wykonać obliczenia arytmetyczne na macierzy po
   postawieniu wartości liczbowej pewnego parametru należy jawnie
   wykonać zmianę pierścienia.

   Zobaczmy:

   .. code-block:: python

    sage: var('phi')
    sage: A=matrix([[cos(phi),-sin(phi)],[sin(phi),cos(phi)]])
    sage: show(A)
    sage: print "A jest określone nad pierścieniem:\n"
    sage: show(A.parent())
    A jest określone nad pierścieniem:
    
   .. end of output

    .. MATH::

      \left(\begin{array}{rr}
      \cos\left(\phi\right) & -\sin\left(\phi\right) \\
      \sin\left(\phi\right) & \cos\left(\phi\right)
      \end{array}\right)



    .. MATH::

       \mathrm{Mat}_{2\times 2}(\text{SR})



    Podstawmy za ``phi`` konkretną wartość. Macierz ``A2`` nie będzie
    zawierała żadnych symboli, czyli będzie macierzą liczbową. Sprawdźmy:

    .. code-block:: python

        sage: A2 = A.subs({phi:pi/4})
        sage: show(A2)
        sage: print "Pomimo podstawienia liczbowego, A2 jest NADAL określone nad pierścieniem:\n"
        sage: show(A2.parent())

   Pomimo podstawienia liczbowego, A2 jest NADAL określone nad pierścieniem:
    
   .. MATH::

      \mathrm{Mat}_{2\times 2}(\text{SR})

   Macierz ``A2`` zawiera też dokładną postać niewymiernych elementów:

   .. MATH::

      \left(\begin{array}{rr}
      \frac{1}{2} \, \sqrt{2} & -\frac{1}{2} \, \sqrt{2} \\
      \frac{1}{2} \, \sqrt{2} & \frac{1}{2} \, \sqrt{2}
      \end{array}\right)


   Dlatego aby skorzystać z metod dostępnych tylko dla macierzy liczbowych
   należy jawnie zmienić pierścień:


   .. code-block:: python

        sage: A3 = A2.change_ring(RDF)
        sage: print "Po zmianie pierścienia mamy A3 określoną nad:\n"
        sage: show(A3.parent())
        sage: show(A2)

   .. end of output

   Po zmianie pierścienia mamy A3 określoną nad:
    
   .. MATH::
   
       \mathrm{Mat}_{2\times 2}(\mathbb R)

   i zauważamy zastosowanie przybliżeń zmiennoprzecinkowych, zgodnych z naszym życzeniem:
 
   .. MATH::

      \left(\begin{array}{rr}
      0.707106781187 & -0.707106781187 \\
      0.707106781187 & 0.707106781187
      \end{array}\right)
 


