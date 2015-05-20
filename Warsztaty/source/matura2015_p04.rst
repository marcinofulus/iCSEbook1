Zadanie 4
---------

Równość 

.. math::

   -\frac{m}{\sqrt{5} - 5} = \frac{\sqrt{5} + 1}{5}  

zachodzi dla:  m=5, m=4, m=1, m = −5.


System algebry komputerowej z chęcią rozwiąże również i taką równość:

.. sagecellserver::

   var('m')
   solve( m/(5-sqrt(5))==(5+sqrt(5))/5,m)


Zadanie daje nam jednak zbiór czterech wartości m do sprawdzenia, więc
możemy też pokusić się o sprawdzenie każdej z opowiedzi:

.. sagecellserver::

   for m in [5, 4, 1, -5]:
       print  bool(m/(5-sqrt(5))==(5+sqrt(5))/5)


.. admonition:: Jak to działa?

   Funkcja `bool` próbuje, używając systemu algebry komputerowej
   sprawdzić algebraiczną poprawność równania. Pętla `for` zapewnia
   sprawdzenie dla każdej odpowiedzi z testu.

Możemy się posłużyć też przybliżeniem arytmetycznym wyrażeń po lewej i
prawej stronie równości. Nie jest to dokładny wynik w sensie
matematycznym, ale poniższy kod nie pozostawia złudzeń która odpowiedź
jest poprawna:

.. sagecellserver::

   for m in [5, 4, 1, -5]:
       print  (m/(5-sqrt(5))).n(),"=",((5+sqrt(5))/5).n()
