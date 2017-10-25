.. _matura2015_p07.rst:

O tym jak nakłonić funkcję :code:`plot` do współpracy
-----------------------------------------------------


.. image:: matura2015/matura2015_p07.png
   :align: center
   :width: 76%


Równanie :math:`\frac{x-1}{x+1}==x-1` aż się prosi by je  rozwiązać  za
pomocą algebry komputerowej. Rzeczywiście, wynik otrzymujemy natychmiast:

.. sagecellserver::

   var('x')
   solve( (x-1)/(x+1)==x-1,x)


.. only:: latex
    
    +-----------------+
    | [x == 0, x == 1]|
    +-----------------+


Ale przyjrzyjmy się w ilu miejscach przecinają się wykresy prawej i
lewej strony powyższej równości:

.. sagecellserver::

   plot([(x-1)/(x+1),x-1],(x,-2,2),detect_poles='show',\
    ymin=-2,ymax=2,figsize=4)


.. only:: latex
          
    .. figure:: matura2015/matura2015_p07_1.pdf
       :width: 60%
       :name: matura2015_p07_1


.. admonition:: Po co tyle dodatkowych parametrów?

   Spróbuj do poprzedniej komórki wpisać "surową" komendę: 

                :code:`plot([(x-1)/(x+1),x-1],(x,-2,2))`

   Co się stało z wykresem? Okazuje się, że mamy osobliwość, która
   nieco szkodzi automatycznemu skalowaniu osi. Dlatego najlepiej
   będzie ręcznie ustawić zakres wartości rzędnych. Dodatkowo warto
   zasugerować Sage'owi żeby wykrył osobliwości i je nam pokazał
   rysując pionowe asymptoty.
