Zadanie 7
---------

Równanie :math:`\frac{x-1}{x+1}==x-1` aż się prosi by je  rozwiązać  za
pomocą algebry komputerowej. Rzeczywiście, wynik otrzymujemy natychmiast:

.. sagecellserver::

   var('x')
   solve( (x-1)/(x+1)==x-1,x)


Ale przyjrzyjmy się w ilu miejscach przecinają się wykresy prawej i
lewej strony powyższej równości:

.. sagecellserver::

   plot([(x-1)/(x+1),x-1],(x,-2,2),detect_poles='show',ymin=-2,ymax=2,figsize=4)


.. admonition:: Po co tyle dodatkowych parametrów?

   Spróbuj do poprzedniej komórki wpisać "surową" komendę: 

                :code:`plot([(x-1)/(x+1),x-1],(x,-2,2))`

   Co się stało z wykresem? Okazuje się, że mamy osobliwość, która
   nieco szkodzi automatycznemu skalowaniu osi. Dlatego najlepiej
   będzie ręcznie ustawić zakres wartości rzędnych. Dodatkowo warto
   zasugerować Sage'owi żeby wykrył osobliwości i je nam pokazał
   rysując pionowe asymptoty.
