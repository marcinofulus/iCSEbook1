Zadanie 15 - o tożsamości trygonometrycznej i założeniach
---------------------------------------------------------

.. image:: matura2015/matura2015_p15.png
   :align: center


Sprawdźmy czy Sage potrafi rozwiązać równanie :math:`\tan(x)=2\sin(x)`?

.. sagecellserver::

   var('x')
   print solve(tan(x)==2*sin(x),x)

Otrzymujemy dwa rozwiązania. Które jest poprawne? Zauważmy, że mamy
podany w zadaniu warunek dla kąta, co wyklucza jedno z nich.  W Sage
możemy spróbowac podać ten warunek używając funkcji :code:`assume`:


.. sagecellserver::

   var('x')
   assume(x>0)
   assume(x<pi)
   print cos(solve(tan(x)==2*sin(x),x)[0].rhs())

Warto też przyjrzeć się wykresom lewej i prowej strony równania. Nie
pomoże to w tym przypadku na otrzymanie rozwiązanie, ale zasugeruje,
że rozwiązanie instnieje i pokaże mniej więcej jego wartość:

.. sagecellserver::

   p = plot([tan(x),2*sin(x)],(x,0,pi),ymax=5,ymin=-5,detect_poles='show',figsize=3)
   p += plot(cos(x),(x,0,pi/2),color='red')
   p.show()


.. admonition:: Jak to działa? - :code:`rhs()`

   W Sage funkcja :code:`solve` standardowo zwraca listę wyrażeń w postaci:

   .. code-block:: python

      [ x==2, x==3 ]
 
   Czasem chcemy podstawić - bez ręcznego przepisywania wyrażenia -
   wartość rozwiązania po lewej stronie równości np. do innego
   wyrażenie. W Sage służy do tego celu metoda :code:`.rhs()`, która
   zwraca prawą strone wyrażenia zawierającego logiczne
   (matematycznie) równa się :code:`==`. Na przykład
   :code:`(a==1).rhs()`, zwróci 1.
