
Zadanie 1
---------

Mamy rozwiązań nierówność: :math:`-4\le x-1\le4`. Jest to dość proste
zadanie, ale możemy zobaczyć czy system algebry komputerowej też sobie
z nim poradzi. Wpisujemy i od razu mamy wynik:


.. sagecellserver::

   solve([-4<=x-1,x-1<=4],x)


.. admonition:: :code:`==` czy :code:`=`?

   We wszystkich językach programowania mamy dwa różne znaki
   równości. W Pythonie (który jest językiem Sage), mamy

    - :code:`=` znak przypisania do zmiennej.
    - :code:`==` znak porówniania logicznego - czy to jest "matematyczne równa się"


   Znaki `<`, `>=` itp. mają znaczenie takie jak w matematyce.
