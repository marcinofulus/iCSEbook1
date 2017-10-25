.. _matura2015_r09.rst:

Solve and substitute
--------------------

.. image:: matura2015/matura2015_r09.png
   :align: center


Zadanie to nie jest trudne, ale występuje wiele zmiennych i łatwo o
pomyłkę. Dlatego warto zastosować system algebry komputerowej do
"czarnej roboty" i zająć się jedynie wypisaniem formuł. Pozostawiamy
czytelnikowy odnalezienie w poniższym kodzie twierdzeń o sumie kątów w
trójkącie i czworoboku.
 

.. sagecellserver::


   var('a,b,c,d,p,s,r,q')
   eqs = [ a/2 + d/2 + q == 180, \
          d/2 + c/2 + r == 180, \
          b/2 + c/2 + s == 180,\
          b/2 + a/2 + p ==180 ] 
   sol = solve(eqs,[p,s,r,q],solution_dict=True)
   print (q+s).subs(sol).subs( a==(360-b-c-d) )
   print (p+r).subs(sol).subs( a==(360-b-c-d) )


.. admonition:: :code:`solution_dict=True`


   Zostosowanie parametru :code:`solution_dict=True` w funkcji
   :code:`solve` pozwala na otrzymanie rozwiązania w postaci
   Pythonowego słownika. Taka postać jest bardziej uniwersalna do
   dalszych przekształceń.
