.. _matura2015_p20.rst:

Punkty odbicia i działania na wektorach 
---------------------------------------

.. image:: matura2015/matura2015_p20.png
   :align: center


Zadanie to można łatwo sformułować w języku operacji na wektorach
swobodnych. W systemie Sage istnieje objekt :code:`vector`, który z
listy współrzędnych tworzy wektor w przestrzeni Eulidesowej (dowolnego
wymiaru!). W naszym przypadku mamy przestrzeń dwuwymiarową i parę
współrzędnych dla każdegu punktu.

Wektory możemy dodawać i mnożyć przez liczbę. Z drugiej strony, możemy
każdy wektor narysować jako punkt używając polecenia :code:`point`.


 * Środek odcinka na płaszczyźnie to średnia arytmetyczną wektorów
   reprezentujących jego końce.
 * Odbicie względem początku układu współrzędnych to pomnożenie przez
   :math:`-1`.


Poniższy kod rozwiązuje i ilustruje nasze zadanie:


.. sagecellserver::

    p1 = vector((-2,1))
    p2 = vector((-1,3))
    show(-1/2*(p1+p2) )

    plt = point( p1,size=40)+point(p2 ,size=40)
    plt += point(1/2*(p1+p2),size=40,color='red')
    plt += point(-1/2*(p1+p2),size=40,color='green')
    plt.show()


.. only:: latex
          
    .. figure:: matura2015/matura2015_p20_1.pdf
       :width: 60%
       :name: matura2015_p20_1