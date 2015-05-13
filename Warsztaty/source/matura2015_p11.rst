Zadanie 11
----------

Funkcja kwadratowa  określona wzorem :math:`f(x)=x^2 + x + c`. Jeżeli  :math:`f(3) = 4` to:
 
A. :math:`f(1)=-6`
#. :math:`f(1)=0`
#. :math:`f(1)=6`
#. :math:`f(1)=18`


Korzystając z algebry komputerowej mamy wynik od razu:

.. sagecellserver::

   var('x,c')
   f(x) = x^2 + x + c
   f(1).subs(solve(f(3)==4,c)[0])
   

Pozostaje jeszcze przetłumaczyć :code:`f(1).subs(solve(f(3)==4,c)[0])`
z Pythona na Polski:

"Podstaw do wyrażenia :math:`f(1)` pierwsze rozwiązanie równania  :math:`f(3)=4`, ze względu na :math:`c`."

.. hint::

   W Pythonie numerujemy listy od zera. Oznacza to, że  pierwszy element listy :code:`l` to :code:`l[0]`.
