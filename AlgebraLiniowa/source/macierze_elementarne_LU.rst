.. -*- coding: utf-8 -*-

Macierze Elementarne i rozkład LU
=================================

Macierzowy zapis eliminacji Gaussa
----------------------------------


Rozważmy procedurę eliminacji Gaussa dla przykładowej macierzy
:math:`\boldsymbol{A}`:


.. code-block:: python

    sage: A=matrix(QQ,[[2,1,1],[4,-6,0],[-2,7,2]])


.. end of output

Zastanówmy się czy można zapisać operacje na wierszach macierzy w
postaci działania pewnych macierzy na macierz
:math:`\boldsymbol{A}`?

.. admonition:: **Poeksperymentuj!**

   Sprawdźmy eksperymantalnie jak działa macierz zawierająca tylko
   jeden element z wartością ``a`` i zera we wszystkich innych
   miejscach np.:

   .. math::

      \left(\begin{array}{rrr} 0 & 0 & 0 \\ 0 & 0 & 0 \\ 0 & a & 0 \end{array}\right)

   na pewną macierz :math:`\boldsymbol{A}`. W poniższym kodzie można
   pozmieniać w lini 4 wartości indeksów tak by zbadać inne
   możliwości:


.. sagecellserver::

    sage: var('a')
    sage: A=matrix(QQ,[[2,1,1],[4,-6,0],[-2,7,2]])
    sage: E=zero_matrix(SR,3)
    sage: E[2,1]=a # eksperymetować!
    sage: html.table([[E,'x',A,'=',E*A]])

.. end of output

.. sidebar:: Uwaga!

   Pamiętajmy o różnicy w numerowaniu: Sage: ``0,1,2`` i zapisie matematyczny :math:`1,2,3`.


Możemy się przekonać, że macierz z jedynym niezerowym elementem
``E[2,1]=a`` w działaniu na dowolną macierz wpisuje po w 2-gim wierszu
wiersz 1-szy pomnożony przez ``a``. Macierze takie zwane sa
**macierzami elementarnymi**. W procedurze eliminacji Gaussa
potrzebujemy do takie macierzy dodać macierz wyjściową, co nie jest
problemem, gdyż możemy, korzystając z rozdzielności mnożenia macierzy
względem dodawania, dodać do powyższej macierzy identyczność. W
efekcie mamy macierz, której działanie na naszą macierz
:math:`\boldsymbol{A}` polega na dodaniu drugiego wiersza do
trzeciego:


.. math::

   \left(\begin{array}{rrr}
   1 & 0 & 0 \\
   0 & 1 & 0 \\
   0 & a & 1
   \end{array}\right)


Zapiszmy więc etapy eliminacji Gaussa w postaci macierzy ``E1,E2,E3`` 


.. sagecellserver::

    sage: A=matrix(QQ,[[2,1,1],[4,-6,0],[-2,7,2]])
    sage: E1=identity_matrix(3)
    sage: E1[1,0]=-2
    sage: E2=identity_matrix(3)
    sage: E2[2,0]=1
    sage: E3=identity_matrix(3)
    sage: E3[2,1]=1
    sage: print "Macierze elementarne:" 
    sage: html.table([[E1,E2,E3]])

    sage: print "Kroki eliminacji z użyciem macierzy elementarnych:" 
    sage: html.table([[E1,'x',A,'=',E1*A]])
    sage: html.table([[E2,'x',A,'=',E2*E1*A]])
    sage: html.table([[E3,'x',A,'=',E3*E2*E1*A]])

.. end of output

W dalszych rozważaniach będzie jeszcze nam potrzebna postać macierzy
odwrotnej do macierzy elementarnej. Operacją odwrotną do dodania
np. wiersza 2-go  do 3-go pomnożonego przez pewną liczbę jest odjęcie wiersza 2-go  do 3-go pomnożonego przez tą samą liczbę liczbę.  Biorąc pod uwagę interpretacje macierzy elementarnych możemy przypuszczać, że macierzą odwrotną np. do macierzy: 

.. MATH::
   :label: el1

    \left(\begin{array}{rrr}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & a & 1
    \end{array}\right)

będzie:

.. MATH::
   :label: el_1

    \left(\begin{array}{rrr}
    1 & 0 & 0 \\
    0 & 1 & 0 \\
    0 & -a & 1
    \end{array}\right)

.. admonition:: **Poeksperymentuj!** 

   Przekonaj się bezpośrednim rachunkiem na przykładowych macierzach
   że macierz eq:`el1` jest macierzą odwrotną do :eq:`el_1`:


.. sagecellserver::



   sage: var('a')
   sage: E=identity_matrix(SR,3)
   sage: E[2,1]=a
          
   sage: Einv=identity_matrix(SR,3)
   sage: Einv[2,1]=-a
             
   sage: html.table([[E,'$\cdot$',Einv,'$=$',E*Einv]])

.. end of output


Rozważaną eliminację Gaussa można więc zapisać jako:

.. code-block:: python

    sage: U=E3*E2*E1*A
    sage: show(U)


.. MATH::

    \left(\begin{array}{rrr}
    2 & 1 & 1 \\
    0 & -8 & -2 \\
    0 & 0 & 1
    \end{array}\right)

.. end of output

gdzie :math:`\boldsymbol{U}` jest macierzą o elementach niezerowych
powyżej górnej diagonali.


Rozkład LU
----------

Wzór :math:`\boldsymbol{U}=\boldsymbol{E_3 E_2 E_1 A}` możemy
przekształcić mnożąc obustronnie przez odwrotność iloczynu
:math:`\boldsymbol{E_3 E_2 E_1}`. Wykorzystując twierdzenie o odwrotności
iloczynu mamy:

.. math::

   \boldsymbol{(E_3 E_2 E_1)^{-1} U}=\boldsymbol{A} \\
   \boldsymbol{ E_1^{-1} E_2^{-1} E_3^{-1} U}=\boldsymbol{A}


Zobaczmy jeszcze jaką postać ma macierz :math:`\boldsymbol{L} = \boldsymbol{ E_1^{-1}
E_2^{-1} E_3^{-1}}`:

.. code-block:: python

    sage: L=E1.inverse()*E2.inverse()*E3.inverse()
    sage: show(L)

.. end of output

.. math::
       	
   \left(\begin{array}{rrr}
   1 & 0 & 0 \\
   2 & 1 & 0 \\
   -1 & -1 & 1
   \end{array}\right)


Widać, że macierz :math:`\boldsymbol{L}` ma niezerowe elementy
jednynie poniżej głównej diagonali. Innymi słowy rozłożyliśmy macierz
:math:`\boldsymbol{A}` na iloczyn macierzy, których elementy leżą
odpowiednio, poniżej i powyżej głównej przekątnej:

.. math::

   \boldsymbol{A} =\boldsymbol{ L U}


Rozkład LU jest na tyle standardową procedurą, że jest
zaimplementowany w Sage jako metoda dla macierzy.

.. admonition:: Uwaga 
   
Wbudowane w Sage metody dekompozycji działają
   na niektórych ciałach, np LU tylko na RDF.


.. code-block:: python

    sage: A=matrix(RDF,[[2,1,1],[4,-6,0],[-2,7,2]])


.. end of output

.. code-block:: python

    sage: show(A.LU())


.. MATH::

    \left(\left(\begin{array}{rrr}
    0.0 & 1.0 & 0.0 \\
    1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0
    \end{array}\right), \left(\begin{array}{rrr}
    1.0 & 0.0 & 0.0 \\
    0.5 & 1.0 & 0.0 \\
    -0.5 & 1.0 & 1.0
    \end{array}\right), \left(\begin{array}{rrr}
    4.0 & -6.0 & 0.0 \\
    0.0 & 4.0 & 1.0 \\
    0.0 & 0.0 & 1.0
    \end{array}\right)\right)

.. end of output

Aby przypisać krotce wartości do poszczególnych macierzy warto
zastosować następujące przypisanie:


.. code-block:: python

    sage: P,L,U=A.LU()

Macierz :math:`\boldsymbol{P}` jest macierzą permutacji, która jest
identycznością jeśli nie potrzebne są permutacje w procesie
eliminacji.


Zastosowania rozkładu LU
------------------------

#)  Rozwiązywanie równań liniowych

    Mając rozkład LU macierzy :math:`\boldsymbol{A}=\boldsymbol{LU}`
    możemy zastąpić rozwiązywanie układu równań za pomocą dwóch
    rozwiązań układów trójkątnych:

    .. math::

         \boldsymbol{Lc}=\boldsymbol{b}\\
         \boldsymbol{Ux}=\boldsymbol{c}



 


#)  Szukanie macierzy odwrotnej, które jest związane z jednoczesnym rozwiązaniem n równań liniowych. 

#)  Obliczanie wyznacznika

    Mając rozkład macierzy kwadratowej :math:`A = P^{-1} L U`, wyznacznik można obliczyć  korzystając ze wzoru:
    
    .. math::
       
       \det(A) = \det(P^{-1}) \det(L) \det(U) = (-1)^S \left( \prod_{i=1}^n l_{ii} \right)  \left( \prod_{i=1}^n u_{ii} \right),

    gdzie :math:`S` jest liczbą zamian rzędów wykonanych w procesie rozkładu.

    
