.. -*- coding: utf-8 -*-


Typy złożone i pętle - zadania z toku lekcji
--------------------------------------------

<a id="x1-20002"><span id="cell_outer_14"> </span></a>


<dl><dt><a id="x1-20002"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-20002"><span style="text-decoration: underline;">czas: 5 min.</span><br />Sprawdź, czy Sage pozwala na stworzenie listy, której elementy mają różny typ. Stwórz listę <span style="white-space: nowrap;"><span><span style="font-family: monospace;">lista_2=[1,3.5,199.21,"ala",3\+2j],</span></span></span>następnie sprawdź typ każdego elementu korzystając z funkcji<span style="white-space: nowrap;"><span><span style="font-family: monospace;">type()</span></span></span></a></dd></dl>

.. code-block:: python

    sage: lista_2=[1,3.5,199.21,"ala",3+2j]
    sage: print type(lista_2[0])
    sage: print type(lista_2[1])
    sage: print type(lista_2[2])
    sage: print type(lista_2[3])
    sage: print type(lista_2[4])
    <type 'sage.rings.integer.Integer'>
    <type 'sage.rings.real_mpfr.RealLiteral'>
    <type 'sage.rings.real_mpfr.RealLiteral'>
    <type 'str'>
    <type 'sage.rings.complex_number.ComplexNumber'>

.. end of output

<a id="x1-50004"><span id="cell_outer_30"> </span></a>


<dl><dt><a id="x1-50004"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-50004"><span style="text-decoration: underline;">czas: 1 min.</span><br />Spróbuj stworzyć nowy słownik, w którym dwa klucze będą takie same. Wyjaśnij zachowanie Sage’a (zwróć uwagę na słowo ”unikatowe”w opisie słownika).</a></dd></dl>

.. code-block:: python

    sage: dict = {1:"jeden", 2:"dwa", 1:"trzy"}
    sage: print dict
    sage: print "wartość 'jeden' dpowiadająca początkowemu kluczowi '1' zostaje nadpisany przez 'trzy'"
    {1: 'trzy', 2: 'dwa'}
    wartość 'jeden' dpowiadająca początkowemu kluczowi '1' zostaje nadpisany przez 'trzy'

.. end of output

<a id="x1-50004"><span id="cell_outer_35"> </span></a>


<dl><dt><a id="x1-50004"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-50004"><span style="text-decoration: underline;">czas: 2 min.</span><br />Sprawdź, jaki komunikat wyświetli wykonanie polecenia <span style="white-space: nowrap;"><span><span style="font-family: monospace;">type(telefony.keys())</span></span></span>. Jakiego typu daną zwróci wykonanie tego polecenia (int, ﬂoat, tuple, list )?</a></dd></dl>

.. code-block:: python

    sage: telefony={'Ala':508605107, 'Ola':3452234,'Franek':505600600,'Pietrek':607233322}
    sage: type(telefony.keys())
    <type 'list'>

.. end of output

<a id="x1-70005.1"></a>


<dl><dt><a id="x1-70005.1"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-70005.1"><span style="text-decoration: underline;">czas: 10 min.</span><br />Przypomnij sobie zadanie z poprzednich zajęć, gdzie przeliczałes temperaturę ze stopni Celsjusza na Fahrenheity. Teraz wykonaj to samo zadanie, ale w zakresie temperatur \-27,27 stopni Celsjusza, co 3 stopnie.</a></dd></dl>

.. code-block:: python

    sage: for C in range(-27, 28, 3):
    ...      F = 9/5.*C + 32
    ...      print F
    -16.6000000000000
    -11.2000000000000
    -5.80000000000000
    -0.399999999999999
    5.00000000000000
    10.4000000000000
    15.8000000000000
    21.2000000000000
    26.6000000000000
    32.0000000000000
    37.4000000000000
    42.8000000000000
    48.2000000000000
    53.6000000000000
    59.0000000000000
    64.4000000000000
    69.8000000000000
    75.2000000000000
    80.6000000000000

.. end of output

<a id="x1-80005.2"></a>


<dl><dt><a id="x1-80005.2"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-80005.2"><span style="text-decoration: underline;">czas: 10 min.</span><br />Stworzyć pustą listę. Następnie w pętli <span style="white-space: nowrap;"><span><span style="font-family: monospace;">for</span></span></span> i za pomocą <span style="white-space: nowrap;"><span><span style="font-family: monospace;">append()</span></span></span> dodaj do listy liczby od 1\-10</a></dd></dl>

.. code-block:: python

    sage: L = []
    sage: for liczba in xrange(1,11):
    ...       L.append(liczba)
    sage: L
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

.. end of output

<a id="x1-80005.2"></a>


<dl><dt><a id="x1-80005.2"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-80005.2"><span style="text-decoration: underline;">czas: 15 min.</span><br />Za pomocą funkcji <span style="white-space: nowrap;"><span><span style="font-family: monospace;">range()</span></span></span> i <span style="white-space: nowrap;"><span><span style="font-family: monospace;">for</span></span></span> policzyć sumę pierwszych 100 liczb naturalnych (od 1 do 100).</a></dd></dl>

.. code-block:: python

    sage: suma = 0
    sage: for l in range(1,101):
    ...       suma += l
    sage: suma
    5050

.. end of output

<a id="x1-80005.2"></a>


<dl><dt><a id="x1-80005.2"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-80005.2"><span style="text-decoration: underline;">czas: 10 min.</span><br />Stworzyć pustą listę. Następnie za pomocą pętli <span style="white-space: nowrap;"><span><span style="font-family: monospace;">while()</span></span></span> i instrukcji <span style="white-space: nowrap;"><span><span style="font-family: monospace;">append()</span></span></span> dodać do listy pierwiastki z liczb 0\-30 co 2.5. Pierwiastek z <span style="white-space: nowrap;"><span><span style="font-family: monospace;">x</span></span></span> obliczamy za pomocą funkcji <span style="white-space: nowrap;"><span><span style="font-family: monospace;">sqrt(x).</span></span></span></a></dd></dl>

.. code-block:: python

    sage: pierwiastki = []
    sage: liczba = 0
    sage: while liczba <= 30:
    ...       pierwiastki.append(sqrt(liczba))
    ...       liczba += 2.5
    sage: pierwiastki
    [0, 1.58113883008419, 2.23606797749979, 2.73861278752583, 3.16227766016838, 3.53553390593274, 3.87298334620742, 4.18330013267038, 4.47213595499958, 4.74341649025257, 5.00000000000000, 5.24404424085076, 5.47722557505166]

.. end of output

<a id="x1-90005.3"><span id="cell_outer_57"> </span></a>


<dl><dt><a id="x1-90005.3"><span style="font-weight: bold;">Zadanie:</span></a></dt><dd><a id="x1-90005.3"><span style="text-decoration: underline;">czas: 15 min.</span><br />Dla słownika <span style="white-space: nowrap;"><span><span style="font-family: monospace;">wiek</span></span></span> policzyć (użyć instrukcji <span style="white-space: nowrap;"><span><span style="font-family: monospace;">for</span></span></span> i <span style="white-space: nowrap;"><span><span style="font-family: monospace;">len()</span></span></span>) średnią wieku wszystkich osobników z listy.</a></dd></dl>

.. code-block:: python

    sage: wiek={'Ala':14, 'Ola':34,'Franek':50,'Pietrek':15,'Monika':41,'Staszek':22}
    sage: srednia = 0
    sage: for lata in wiek.values():
    ...       srednia += lata
    sage: srednia /= len(wiek.values()); print srednia.n()
    29.3333333333333

.. end of output

