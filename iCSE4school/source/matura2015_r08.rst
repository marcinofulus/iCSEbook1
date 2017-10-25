.. _matura2015_r08.rst:

Ławiej powiedzieć niż zrobić!
-----------------------------

.. image:: matura2015/matura2015_r08.png
   :align: center

Wystarczy rozwiązać rówanie. Nierówność będzie spełniona dla każdego
:math:`x`, jeżeli równanie nie ma pierwiastków rzeczywistych i jest
spełnione da jakiegokolwiek :math:`x`. To ostatnie widać np. dla
:math:`x=0`

Nie potrafimy w pamięci rozwiązywać równań czwartego stopnia, więc stosujemy Sage:



.. sagecellserver::

   f(x) = x^4 -x^2 -2*x +3
   for s in f(x).solve(x):
       print s.rhs().n()


.. only:: latex

          Otrzymujemy:

          .. code::

             -1.07095068169267 + 1.05537210011239*I
             -1.07095068169267 - 1.05537210011239*I
             1.07095068169267 - 0.424335310268147*I
             1.07095068169267 + 0.424335310268147*I


I koniec, wszystkie pierwiastki są zespolone!

Można by się jeszcze zastanowić, dlaczego przybliżyliśmy rozwiązanie?
Skasujmy :code:`.n()` na końcu i zobaczmy co wyjdzie.

Niestety okazuje się, że część urojona jest przedstawiona wyrażeniami
zawierającymi :math:`i` co nie daje gwarancji jest urojona. Spróbujmy
dopisać więc :code:`.full_simplify()`. Wzory mają ok 0.5m długości,
ale przynajmniej mamy matematycznie dokładną odpowiedź.

Hmm - a czy nie dało by się inaczej? Oczywiście. Ponieważ wielomian
jest stopnia parzystego, to wystarczy sprawdzić, że we wszystkich
minimach funkcja ma wartość dodatnią. Z Sage zajmuje to sprawdzenie
tylko chwilkę:


.. sagecellserver::

    f(x).diff().solve(x)


Otrzymujemy jeden pierwiastek rzeczywisty :math:`x=1`. Funkcja jest
więc większa zera w zerze i posiada jedno miejsce w którym znika
pochodna. Druga pochodna w tym punktcie jest dodatnia więc mamy
minimum. Funkcja w minimum ma wartość :math:`f(1)=1` więc

.. sagecellserver::

   f(x).diff(2)(1),f(1)

Na zakończenie narysujmy wykres by przekonać się, że nase rozważania
sa poprawne:

.. sagecellserver::

   plot(f(x),(x,-2,2))
