.. -*- coding: utf-8 -*-


Typy złożone i pętle - zadania z toku lekcji
--------------------------------------------

**Zadanie:**

czas: 5 min.

Sprawdź, czy Sage pozwala na stworzenie listy, której elementy mają różny typ. Stwórz listę ``lista_2=[1,3.5,199.21,"ala",3+2j]``, następnie sprawdź typ każdego elementu korzystając z funkcji ``type()``


.. code-block:: python

    sage: lista_2=[1,3.5,199.21,"ala",3+2j]
    sage: print type(lista_2[0])
    sage: print type(lista_2[1])
    sage: print type(lista_2[2])
    sage: print type(lista_2[3])
    sage: print type(lista_2[4])


| <type 'sage.rings.integer.Integer'>
| <type 'sage.rings.real_mpfr.RealLiteral'>
| <type 'sage.rings.real_mpfr.RealLiteral'>
| <type 'str'>
| <type 'sage.rings.complex_number.ComplexNumber'>

.. end of output



**Zadanie:**

czas: 1 min.

Spróbuj stworzyć nowy słownik, w którym dwa klucze będą takie same. Wyjaśnij zachowanie Sage’a (zwróć uwagę na słowo ”unikatowe” w opisie słownika).

.. code-block:: python

    sage: dict = {1:"jeden", 2:"dwa", 1:"trzy"}
    sage: print dict
    sage: print "wartość 'jeden' odpowiadająca początkowemu kluczowi '1' 
    ...      zostaje nadpisany przez 'trzy'"


| {1: 'trzy', 2: 'dwa'}
| wartość 'jeden' dpowiadająca początkowemu kluczowi '1' zostaje nadpisany przez 'trzy'

.. end of output


**Zadanie:**

czas: 2 min.

Sprawdź, jaki komunikat wyświetli wykonanie polecenia ``type(telefony.keys())``. Jakiego typu daną zwróci wykonanie tego polecenia (``int``, ``float``, ``tuple``, ``list`` )?

.. code-block:: python

    sage: telefony={'Ala':508605107, 'Ola':3452234,'Franek':505600600,
    ...      'Pietrek':607233322}
    sage: type(telefony.keys())


<type 'list'>

.. end of output



**Zadanie:**

czas: 10 min.

Przypomnij sobie zadanie z poprzednich zajęć, gdzie przeliczałes temperaturę ze stopni Celsjusza na Fahrenheity. Teraz wykonaj to samo zadanie, ale w zakresie temperatur -27,27 stopni Celsjusza, co 3 stopnie.

.. code-block:: python

    sage: for C in range(-27, 28, 3):
    ...      F = 9/5.*C + 32
    ...      print F


| -16.6000000000000
| -11.2000000000000
| -5.80000000000000
| -0.399999999999999
| 5.00000000000000
| 10.4000000000000
| 15.8000000000000
| 21.2000000000000
| 26.6000000000000
| 32.0000000000000
| 37.4000000000000
| 42.8000000000000
| 48.2000000000000
| 53.6000000000000
| 59.0000000000000
| 64.4000000000000
| 69.8000000000000
| 75.2000000000000
| 80.6000000000000

.. end of output



**Zadanie:**

czas: 10 min.

Stworzyć pustą listę. Następnie w pętli ``for`` i za pomocą ``append()`` dodaj do listy liczby od 1-10

.. code-block:: python

    sage: L = []
    sage: for liczba in xrange(1,11):
    ...       L.append(liczba)
    sage: L


[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

.. end of output


**Zadanie:**

czas: 15 min.

Za pomocą funkcji ``range()`` i ``for`` policzyć sumę pierwszych 100 liczb naturalnych (od 1 do 100).

.. code-block:: python

    sage: suma = 0
    sage: for l in range(1,101):
    ...       suma += l
    sage: suma


5050

.. end of output


**Zadanie:**

czas: 10 min.

Stworzyć pustą listę. Następnie za pomocą pętli ``while()`` i instrukcji ``append()`` dodać do listy pierwiastki z liczb 0-30 co 2.5. Pierwiastek z ``x`` obliczamy za pomocą funkcji ``sqrt(x)``.


.. code-block:: python

    sage: pierwiastki = []
    sage: liczba = 0
    sage: while liczba <= 30:
    ...       pierwiastki.append(sqrt(liczba))
    ...       liczba += 2.5
    sage: pierwiastki


| [0, 1.58113883008419, 2.23606797749979, 2.73861278752583,
| 3.16227766016838, 3.53553390593274, 3.87298334620742,
| 4.18330013267038, 4.47213595499958, 4.74341649025257,
| 5.00000000000000, 5.24404424085076, 5.47722557505166]

.. end of output



**Zadanie:**

czas: 15 min.

Dla słownika ``wiek`` policzyć (użyć instrukcji ``for`` i ``len()`` ) średnią wieku wszystkich osobników z listy.

.. code-block:: python

    sage: wiek={'Ala':14, 'Ola':34,'Franek':50,'Pietrek':15,'Monika':41,
    ...      'Staszek':22}
    sage: srednia = 0
    sage: for lata in wiek.values():
    ...       srednia += lata
    sage: srednia /= len(wiek.values()); print srednia.n()


29.3333333333333

.. end of output

