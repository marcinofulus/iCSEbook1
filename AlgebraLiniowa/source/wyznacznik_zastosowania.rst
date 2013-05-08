Zastosowania wyznacznika
========================

Wzory Cramera
-------------

Wzory Cramera są jawną postacią rozwiązania nijednorodnego układu
równań liniowych w przypadku gdy macierz układu jest
nieosobliwa. Wzory te maja praktyczne zastosowanie w przypadku małych
układów równań. Zaletą tego podejścia jest jawna postać wzorów.

Rozwiązanie układu równań :math:`Ax=b`  jest dane przez:

.. math::

  x_i = \frac{\det(A_i)}{\det(A)}

gdzie :math:`x_i` jest :math:`i` -tym elementem wektora rozwiązania a
A :math:`A_i` jest macierzą w której :math:`i` -ta kolumna zastąpiona
jest przez prawą stronę :math:`b`.

Wzór ten można eksperymentalnie sprawdzić dla małych rozmiarów macierzy.

.. admonition:: **Poeksperymentuj z Sage**!

   W poniższym elemencie interaktywnym można zobaczyć jaką ogólną
   postać ma rozwiązanie układu równań otrzymane metodą eliminacji
   Gaussa-Jacobiego. Po uproszczeniu w liczniku i mianowniku
   rozpoznajemy odpowiednie wyznaczniki. Można zmienić N.

.. sagecellserver::

   N = 2
   A = matrix([[var("a%d%d"%(i,j)) for j in range(1,N+1) ] for i in range(1,N+1)])
   b = vector ( [var("b%d"%(j)) for j in range(1,N+1)]) 
   show(A)
   show(b) 
   for i in range(N):
       show( A.augment(b).rref()[i,N].factor() )



Wzór na macierz odwrotną
------------------------

Funkcja wyznacznika pozwala także zapisać jawny wzór na macierz
odwrotną macierzy :math:`A`:

.. math::

   (A^{-1})_{ij} = \frac{M_{ij}}{\det(A)}

gdzie M jest :math:`ij` -tym minorem macierzy :math:`A`. 

:math:`ij`-ty minor jest to wyznacznik macierzy kwadratowej powstałej
      z danej macierzy przez skreślenie :math:`i` -tego wiersza i
      :math:`j` -tej kolumny.



.. admonition:: **Poeksperymentuj z Sage**!

   W poniższym elemencie interaktywnym można zobaczyć jaka jest ogólna
   postać macierzy odwrotnej. Po uproszczeniu w liczniku i mianowniku
   rozpoznajemy odpowiednie minory  i wyznacznik macierzy. 


.. sagecellserver::

   N = 2
   A = matrix([[var("a%d%d"%(i,j)) for j in range(1,N+1) ] for i in range(1,N+1)])
   show(A)
   show( A.inverse().factor() )


Warunek osobliwości macierzy
----------------------------

Wyznacznik macierzy zeruje się wtedy i tylko wtedy kiedy macierz jest
osobliwa. Jest to wygodne kryterium pozwalające na ustalenie
osobliwości macierzy bez wykonywania algorytmu eliminacji Gaussa. 



