Zadanie 10
----------

Funkcja funkcja liniowa określona wzorem :math:`f(x)=2 x +b` ma takie
samo miejsce zerowe, jakie ma funkcja liniowa :math:`g(x) = -3x +
4`. Stąd wynika, że
 
A. :math:`b=4`
#. :math:`b=-\frac{3}{2}`
#. :math:`b=-\frac{3}{8}`
#. :math:`b=\frac{3}{4}`


Korzystając z algebry komputerowej możemy praktycznie w jednej linijce
otrzymać wynik:

.. sagecellserver::

   var('x,b')
   f =  2*x + b
   g = -3*x + 4
   f.subs(solve(g,x)[0]).solve(b)[0].show()


Co oznacza wyrażenie  :code:`f.subs(solve(g,x)[0]).solve(b)[0].show()`? W bezpośrednim przekładzie z Pythona na Polski:

*Podstaw do wyrażenia :code:`f` pierwsze rozwiązanie równania :math:`g(x)=0`, rozwiąż ze względu na :math:`b` i pokaż ładnie  na ekranie pierwsze rozwiązanie.*

.. note::

   Warto zauważyć, że dla Sage :code:`solve(g,x)` to jest to samo co
   :code:`solve(g==0,x)` oznacza: rozwiąż :math:`g(x)=0`. Wynikiem
   rozwiązywania jest zawsze lista, może być pusta jeśli nie ma
   rozwiązań lub jednoelementowa.




.. admonition:: Jak to działa?  -  metody i funkcje. 

   Językiem systemu algebry komputerowej Sage jest Python. W Python-ie
   wszystkie zmienne są objektami i posiadają, prócz danych takich jak
   np. wartość zmiennej, tak zwane metody. Metodami są funkcje, które
   wywołujemy taką składnią:   :code:`nazwa_objektu.funkcja()`. 



Wypróbuj sam działanie metod. Weż na przykład wyrażenie algebraiczne
Sage, które jest bardzo złożonym objektem i posiada np. rozmaite
metody do manipulacji na wyrażeniach. Dla przykładu wypróbuj w kodzie:

.. sagecellserver::

   var('x,a')
   wyrazenie = (x+a)^2
      

a. :code:`wyrazenie.show()` - pokaże nam ładną postać matematyczną wzoru.
#. :code:`wyrazenie.expand()` - rozwinie wzór, spróboj połączyć z
   poprzednim: :code:`wyrażenie.expand().show()`
#. :code:`wyrazenie.subs(a==2)`
#. :code:`wyrazenie.expand?`


