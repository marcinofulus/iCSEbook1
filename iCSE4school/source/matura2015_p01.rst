
O graficznym i algebraicznym rozwiązywaniu nierówności
------------------------------------------------------


.. image:: matura2015/matura2015_p01.png
   :align: center


Mamy rozwiązań nierówność: :math:`-4\le x-1\le4`. Jest to dość proste
zadanie, ale możemy zobaczyć czy system algebry komputerowej też sobie
z nim poradzi. Wpisujemy i od razu mamy wynik:


.. sagecellserver::
   :linked: false

   solve([-4<=x-1,x-1<=4],x)


... ale czy nie jest on bardziej skomplikowany od zadania? 


Możemy przekonać Sage to narysowania obszaru w którym :math:`x`
spełniają warunek z zadania. Zastosujemy, znacznie ogólniejszą,
procedurę :code:`region_plot`:


.. sagecellserver::
   :linked: false

   var('x,y')
   region_plot([-4<=x-1,x-1<=4],(x,-10,10),(y,-1,1) )




.. admonition:: :code:`==` czy :code:`=`?

   We wszystkich językach programowania mamy dwa różne znaki
   równości. W Pythonie (który jest językiem Sage), mamy

    - :code:`=` znak przypisania do zmiennej.
    - :code:`==` znak porówniania logicznego - czy to jest "matematyczne równa się"


   Znaki `<`, `>=` itp. mają znaczenie takie jak w matematyce.
