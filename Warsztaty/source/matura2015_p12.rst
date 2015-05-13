Zadanie 12
----------

Ile liczb całkowitych spełnia nierówność :math:`\frac{2}{7}<\frac{x}{14}<\frac{4}{3}`?

Zadanie może się wydawać zbyt łatwym by traktować je komputerem, ale możemy je wykorzystać by poćwiczyć sobie pętlę :code:`for`.


I tak możemy sprawdzić (dla pewności) wszystkie liczby z przedziłu :math:`x\in(-1000,1000)` wykorzystując system Sage, a właściwie sam  język Python: 

.. sagecellserver::

   liczby = [x for x in range(-1000,1000) if 2/7<x/14<4/3]
   print len(liczby),":",liczby

 

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
