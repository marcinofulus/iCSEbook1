Zadanie 5
---------

Pytanie jest o liczbę rozwiązań układu równań. Ponownie możemy uzyskać
odpowiedź od systemu rozkazując komputerowi rozwiązać nasz układ:

.. sagecellserver::

   var('x,y,m')
   solve( [x-y==3,2*x+0.5*y==4],[x,y])


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



.. admonition:: Dlaczego `implicit_plot`?

   `implicit_plot` jest narzędziem do rysowania tak zwanych funkcji
   uwikłanych, czyli w postaci :math:`F(x,y)==0`. "Pod maską" jest to
   o wiele bardziej złożona machineria od zwykłego `plot`, ale dla nas
   ma on pewne zalety. Po pierwsze nie musimy rozwiązywać równania na
   :math:`y`. Po drugie mamy pewność, że wykres nie wyjdzie z zadanego
   obszaru. Implicit plot potrafi narysować też krzywe które nie są
   wykresami funkcji. Sprawdź sam, na przykad rysując okrąg lub prostą
   :math:`x==0`.

