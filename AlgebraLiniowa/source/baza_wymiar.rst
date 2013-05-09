Baza i wymiar
=============

.. admonition:: **Baza**

    Bazą nazywamy największy zbiór wektorów liniowo niezależnych w danej przestrzeni.


.. admonition:: **Wymiar**

    Wymiar przestrzeni liniowej jest równy Liczbie wektorów jej dowolnej bazy.


Współrzędne wektora przy zmianie bazy
-------------------------------------

Dany jest wektor :math:`b` w przestrzeni liniowej :math:`V` poprzez
jego współrzędne w pewnej bazie.

**Problem:** Jakie współrzędne ma wektor :math:`b` w innej bazie? 

.. math::

   v_1, v_2, ... , v_n


Rozważanie tego problemu rozpocznijmy od kolumnowej interpretacji układu równań liniowych. Jeżeli mamy układ: 

.. math::
   :label: Axb

   Ax=b


którego macierz składa się z wektorów kolumnowych :math:`K_i`:

.. math::

   A = \left[K_1|K_2|...|K_n\right]

to układ :eq:`Axb` można interpretować jako kombinację liniową
wektorów :math:`K_i` ze współczynnikami będącymi elementami wektora
:math:`x_i`:

.. math::
   :label: xK
   
   A x = K_1 x_1 + K_2 x_2 + ... K_n x_n

Rozwiązanie układu równań liniowych jest odpowiada na pytanie:

Jakie są współczynniki kombinacji liniowej :eq:`xK`, dającej wektor
:math:`b`?

Ale to właśnie pytanie takie jest tożsame z pytaniem o rozkład wektora
:math:`b` w bazie :math:`K_1,K_2,...,K_n`!

Tak więc widzimy, że rozwiązując układ równań liniowych, efektywnie
znajdujemy rozkład wektora będącego prawą stroną układu w bazie będącą
kolumnami macierzy układu.

Możemy więc dla naszej wyjściowej bazy oznaczyć przez :math:`S`
macierz, której kolumnami są wektory :math:`v_1, v_2, ... ,
v_n`. Macierz złożona z współrzędnych wektorów drugiej bazy w
pierwszej nazywana jest macierzą przejscia. Można napisać:

.. math::
   :label: Sxb

   S x = b

a mnożąc obustronnie z lewej przez :math:`S^{-1}` otrzymujemy: 

.. math::  
   :label: xSb

   x = S^{-1} b


Macierz :math:`S^{-1}` i przeprowadza współrzędne wektora z wyjściowym
układzie współrzędnych we współrzędne w układzie :math:`v_1, v_2,
... , v_n`. Zależność :eq:`xSb` jest więc przepisem na obliczenie
współrzędnych wektora :math:`b` w nowej bazie.



Transformacja operatora liniowego przy zmianie bazy
---------------------------------------------------


Rozważmy równanie:

.. math::
   :label: Abc

   A b = c


Jak będzie to równanie wyglądało w innej bazie do której macierz
przejścia jest dana przez: :math:`S`? 

Pomnóżmy równanie :eq:`Abc` przez :math:`S^{-1}` oraz wpiszmy jedynke
:math:`I = SS^{-1}` (czyli macierz identycznościowa) pomiędzy
:math:`A` i :math:`b`:


.. math::
   :label: Abc

   S^{-1}A \underbrace{S S^{-1}}_{I} \; b = S^{-1}c

Równość tą można zapisać w postaci:

.. math::
   :label: Abc_prime

    A' b' = c'

gdzie 

.. math::
   :label: def_prime

   A' =S^{-1}A S 

   b' = S^{-1} b

   c' = S^{-1}c


Wielkości primowane, są reprezetnacjami operatowa liniowego :math:`A`
oraz wektorów :math:`c` i :math:`b` w nowej bazie.

Na uwagę zasługuje operacja :math:`A' =S^{-1}A S` zwana **operacją
podobieństwa**. Mówimy, że macierze :math:`A` i :math:`A'` są
podobne. Ciekawą własnością jest niezmienniczość wyznacznika ze
względu na operację podobieństwa. Rzeczywiście, korzystając ze wzoru
na wyznacznik iloczynu macierzy mamy:


.. math::
   :label: detSAS

   \det( S^{-1}A S ) = \det( S^{-1}) \det(A) \det(S) =  

   \det( S^{-1})   \det(S) \det(A) = 

   \frac{1}{\det(S)} \det(S) \det(A) = \det(A)







