.. -*- coding: utf-8 -*-

Zadania
-------

Przykłady mnożenia macierzy
~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Zadanie.**
Sprawdź odręcznym rachunkiem wynik :math:`\boldsymbol{A}\boldsymbol{B}` mnożenia komputerowego.
Dopisz wiersz kodu przedstawiający polecenie wyświetlenia tabelki dla iloczynu
:math:`\boldsymbol{B}\boldsymbol{A}\,` i przekonaj się na przykładach, że mnożenie macierzy jest nieprzemienne.

.. Przećwicz odręczne mnożenie macierzy drugiego i trzeciego stopnia.

Aby wygenerować macierze i wynik ich mnożenia, naciśnij "Wykonaj"; :math:`\,`
aby zmienić stopień macierzy, wpisz nową wartość n.

.. sagecellserver::

   n = 3
   A = random_matrix(ZZ, n, x=-5, y=6)
   B = random_matrix(ZZ, n, x=-5, y=6)
   html.table([["  A :","","  B :","","  A*B :"],[A,"*",B,"=",A*B]])

.. n = 3
   A = random_matrix(ZZ, n, x=-5, y=6)
   B = random_matrix(ZZ, n, x=-5, y=6)
   html.table([["  A :","","  B :","","  AB :"],[A,"$\cdot$",B,"=",A*B]])

