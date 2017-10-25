.. _matura2015_p12.rst:

O brutalnej metodzie i pętli :code:`for` przyrządzonej na dwa sposoby
---------------------------------------------------------------------


.. image:: matura2015/matura2015_p12.png
   :align: center
   :width: 76%


Ile liczb całkowitych spełnia nierówność :math:`\frac{2}{7}<\frac{x}{14}<\frac{4}{3}`?

Zadanie może się wydawać zbyt łatwym by traktować je komputerem, ale
możemy je wykorzystać by poćwiczyć sobie pętlę :code:`for`.


I tak możemy sprawdzić ("dla pewności") wszystkie liczby z przedziału
:math:`x\in(-1000,1000)` wykorzystując system Sage, a właściwie sam
język Python. Takie podejście czasem jest zwane metodą *brute force* -
czyli brutalną `zob. link
<http://en.wikipedia.org/wiki/Proof_by_exhaustion>`_ . Zmuszamy bowiem
komputer do brutalnie dużego wysiłku - przynajmniej w stosunku to
złożoności postawionego problemu. 

Uczyńmy to więc:

.. sagecellserver::

   liczby = [x for x in range(-1000,1000) if 2/7<x/14<4/3]
   print len(liczby),":",liczby

.. only:: latex

    +--------------------------------------------------------+
    |14 : [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]|
    +--------------------------------------------------------+
 
 
Oczywiście każdy matematyk zaprotestuje, nie mamy pewności czy nie ma
liczb całkowytych poza przedziałem, które spełniają te nierówności. W
tym przypadku mie ma problemu by rozwiązać w dziedzinie liczb
rzeczywistych:


.. sagecellserver::

   var('x')
   solve([2/7<x/14,x/14<4/3],x)


.. only:: latex

    +---------------------+
    |[[4 < x, x < (56/3)]]|
    +---------------------+


Ponieważ wykonaliśmy sprawdzenie każdej liczby z osobna, można również
oszacować zakres.  Skoro :math:`\frac{x}{14}` jest większe od
:math:`\frac{2}{7}` to na pewno będzie większe od :math:`0`. Z drugiej
strony jest mniejsze od :math:`\frac{4}{3}` to będzie mniejsze też od
np. :math:`2`. Czyli wychodzi ze :math:`x` będzie większe od :math:`0`
i mniejsze od :math:`2 \times 14 = 28`. Okazało się, że poprzedni
przedział nie zawęził poszukiwania!


.. admonition:: Ja to działa? - "list comprehension" - produktowanie list 

   Wyrażenie :code:`[x for x in range(-1000,1000) if 2/7<x/14<4/3]`
   zawiera konstrukcję która wykona następującę polecenie: *podaj mi
   wszystkie x od -1000 do 999, które spełniają dany warunek*. Jest to
   de facto pętla for, tylko tak sprytnie zapisana, że od razu
   generuje listę. Przypomina to nieco zapis matematyczny:

   .. math::
      
      S=\{x\mid x \in \mathbb{N},\ \frac{2}{7}<\frac{x}{14}<\frac{4}{3}\,\}


Możemy również wykonać to samo zadanie bardziej klasycznie wyglądającą
pętlą :code:`for`:

.. sagecellserver::

   i = 0
   for x in range(-1000,1000):
       if 2/7<x/14<4/3:
           i+=1
   print i
   
   
.. only:: latex

    Otrzymujemy 14.

