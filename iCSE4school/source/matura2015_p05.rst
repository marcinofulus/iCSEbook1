.. _matura2015_p05.rst:

Jak `implicit_plot` pomoże  graficznie zinterpretować rozwiązania  układu równań 
--------------------------------------------------------------------------------

.. image:: matura2015/matura2015_p05.png
   :align: center
   :width: 76%



Pytanie jest o liczbę rozwiązań układu równań. Ponownie możemy uzyskać
odpowiedź od systemu rozkazując komputerowi rozwiązać nasz układ:

.. sagecellserver::

   var('x,y,m')
   solve( [x-y==3,2*x+0.5*y==4],[x,y])
   
.. only:: latex

   +----------------------------+ 
   |[[x == (11/5), y == (-4/5)]]| 
   +----------------------------+
   

Jednak ponieważ nie potrzebne są nam wartości pierwiastków tego układu
równań, to możemy posłużyć się metodą graficzną! Rozwiązania układu
równań to miejsca przecięć się wykresów obu krzywych. Narysujmy
wykresy i zobaczmy czy udzielimy na podstawie ich oględzin poprawne
odpowiedzi:


.. sagecellserver::

   var('x,y')
   p = implicit_plot(x-y==3,(x,-3,3),(y,-3,3))
   p += implicit_plot(2*x+0.5*y==4,(x,-3,3),(y,-3,3),color='red')
   p.show()

.. only:: latex
          
    .. figure:: matura2015/matura2015_p05_0.pdf
       :width: 60%
       :name: matura2015_p05_0


.. admonition:: Dlaczego :code:`implicit_plot`?

   :code:`implicit_plot` jest narzędziem do rysowania tak zwanych
   funkcji uwikłanych, czyli w postaci :math:`F(x,y)==0`. "Pod maską"
   jest to o wiele bardziej złożona machineria od zwykłego `plot`, ale
   dla nas ma on pewne zalety. Po pierwsze nie musimy rozwiązywać
   równania na :math:`y`. Po drugie mamy pewność, że wykres nie
   wyjdzie z zadanego obszaru. Implicit plot potrafi narysować też
   krzywe które nie są wykresami funkcji. Sprawdź sam, na przykad
   rysując okrąg :math:`x^2+y^2==1` lub prostą :math:`x==0`.
   
   :code:`plot( f(x),(x,x1,x2))` rysujące wykres :math:`f(x)` w
         przedziale :math:`x\in(x_1,x_2)`. Zakresy osi :math:`y`
         ustalane są automatycznie.

Czy możemy użyć zwykłego :code:`plot`?

Oczywiście! Rozwiążmy oba równania ze względu na :math:`y`:
 
.. sagecellserver::

   var('x,y')
   show( solve(x-y==3,y) )
   show( solve(2*x+0.5*y==4 ,y) )

Teraz możemy narysować funkcję standardową procedurą rysującą wykresy
funkcji jednej zmiennej:

.. sagecellserver::
  
   p = plot(x-3,(x,-3,3)) 
   p += plot(-4*x+8,(x,-3,3),color='red')
   p.show()

.. only:: latex
          
    .. figure:: matura2015/matura2015_p05_1.pdf
       :width: 60%
       :name: matura2015_p05_1


Ale zaraz! Wyszły inne wykresy! A może się nam to wydaje? Zmieńmy
zakres wartości funkcji na taki jak po pierwszym przypadku i bedzie to
samo. Wystarczy zmienić przedostatnią linijke na:

.. code-block:: python

   p += plot(-4*x+8,(x,-3,3),color='red',ymax=3,ymin=-3,aspect_ratio=1)


