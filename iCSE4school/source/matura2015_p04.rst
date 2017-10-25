.. _matura2015_p04.rst:

O tym jak :code:`solve` wykona pracę za nas i kiedy nas zawiedzie
-----------------------------------------------------------------

.. image:: matura2015/matura2015_p04.png
   :align: center
   :width: 76%


Czy równość: 

.. math::

   -\frac{m}{\sqrt{5} - 5} = \frac{\sqrt{5} + 1}{5}  

zachodzi dla:  :math:`m=5`, :math:`m=4`, :math:`m=1`, czy może :math:`m = -5`?


System algebry komputerowej z chęcią rozwiąże również i taką równość:

.. sagecellserver::

   var('m')
   solve( m/(5-sqrt(5))==(5+sqrt(5))/5,m)


.. admonition:: Jak to działa: :code:`solve`?

   Funkcja `solve` jest bardzo potężnym narzędziem! Umożliwia ono nam
   algebraiczne rozwiązywanie równiań i układów równań. W powyższym
   przypadku zadziałało ono "magicznie" i otrzymaliśmy wynik. Nie
   zawsze jednak wynik jest możliwy do otrzymania, a czasem jest
   bardzo skomplikowany. Spróbuj sam, rozwiąż na przykład: :math:`a
   x^2+b x + c ==0`. 
    
   .. code-block:: python
                   
       var('a,b,c,x')
       show( solve(a*x^2+b*x+c==0,x) )


                   
   Zastąp wyraz z najwyższą potęgą :math:`x` przez :math:`a
   x^3`, :math:`a x^4`,... Czy komputer znajdzie odpowiedź dla dowolnie
   dużej potęgi? Ograniczenia narzucone są przez `Teorię Galois
   <http://pl.wikipedia.org/wiki/Teoria_Galois>`_ .
 
Zadanie daje nam jednak zbiór czterech wartości m do sprawdzenia, więc
możemy też pokusić się o sprawdzenie każdej z opowiedzi:

.. sagecellserver::

   for m in [5, 4, 1, -5]:
       print  bool(m/(5-sqrt(5))==(5+sqrt(5))/5)


.. admonition:: Jak to działa: :code:`bool`?

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

