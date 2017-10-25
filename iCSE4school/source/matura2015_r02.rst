.. _matura2015_r02.rst:

Pomocna ręka wykresu
--------------------

.. image:: matura2015/matura2015_r02.png
   :align: center


Zadanie to można rozwiązać rysując wykres powyższych
funkcji. Narysowanie wykresu może też być pomocne w sprawdzeniu
rozwiązania. SageMath mamy do dyspozycji funkcję pozwalającą zapisać
i operawać na funkcjach określonych na przedziałach:
:code:`piecewise`.



.. sagecellserver::

    f = piecewise([ [RealSet.open_closed(-10,0),x-2],[(0,10),abs(abs(x+3)-4)]])
    plot([f(x),1],(x,-6,6)) + point((0,f(0)),size=40)

.. admonition:: Przedziały domknięte i otwarte a funkcja  :code:`piecewise`

   Zwróćmy uwagę, że korzystając z funkcji code:`piecewise` możemy
   podać przedział otwarty :code:`(1,2)` lub domknięty
   :code:`[1,2]`. Jednak przedział jednostronnie domknięty,
   np. :code:`(1,2]` stanowił by zapis niepoprawny z punktu widzenia
   języka Python. Dlatego w takim przypadku należy zastosować
   konstuktor :code:`RealSet.open_closed(1,2)`.  


.. only:: latex
          
    .. figure:: matura2015/r02_plt.pdf
       :width: 60%
       :name: matura2015_r02_1
    
    Z wykresu  łatwo odczytać liczbę rozwiązań równania.
