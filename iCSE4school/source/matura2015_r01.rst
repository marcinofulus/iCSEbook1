.. _matura2015_r01.rst:

Nierówności - graficznie!
-------------------------

.. image:: matura2015/matura2015_r01.png
   :align: center

Poniższy kod poda nam odpowiedź:


.. sagecellserver::
    
    show( solve(abs(2*x-8)<=10,x))


Dla bliższego zrozumienia dlaczego, możemy narysować prawą i lewą
stronę nierówności. Kiedy będzie :math:`|2x-8|`  mniejsze od :math:`10`?


.. sagecellserver::

    plot([abs(2*x-8),10],(x,-2,10),figsize=4,gridlines=True)
    
    
.. only:: latex
          
    .. figure:: matura2015/r01_plt.pdf
       :width: 60%
       :name: matura2015_r01_1
    
    Z wykresu  łatwo odczytać wynik badanej nierówności.
