Zadanie 20 - punkty odbicia i działania na wektorach 
----------------------------------------------------

.. image:: matura2015/matura2015_p20.png
   :align: center



Zadanie to można łatwo sformułować w języku operacji na wektorach
swobodnych. W systemie Sage instnieje objekt :code:`vector`, który z
listy współrzędnych tworzy wektor w przestrzeni Eulidesowej (dowolnego
wymiaru!). W naszym przypadku mamy przestrzeń dwuwymiarową i parę
współrzędnych dla każdegu punktu.

Wektory możemy dodawać i mnożyć przez liczbę. Z drugiej strony, możemy
każdy wektor narysowań jako punkt używając polecenia :code:`point`.

Środek odcinka na płaszczyźnie to średnia arytmetyczną wektorów
reprezentujących jego końce. Odbicie względem początku układu
współrzędnych to pomnożenie przez :math:`-1`.

Poniższy kod rozwiązuje i rysuje nasze zadanie:


.. sagecellserver::

    p1 = vector((-2,1))
    p2 = vector((-1,3))

    plt = point( p1,size=40)+point(p2 ,size=40)
    plt += point(1/2*(p1+p2),size=40,color='red')
    plt += point(-1/2*(p1+p2),size=40,color='green')
    plt.show()
    show(-1/2*(p1+p2) )
