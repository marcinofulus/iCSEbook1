.. -*- coding: utf-8 -*-



Typy złożone i pętle
--------------------


Wstęp
~~~~~~~~

Poznaliśmy już elementarne typy danych w Sage’u takie jak  int (liczby całkowite), float (liczby rzeczywiste),  complex (liczby zespolone) oraz  string  (łańcuchy tekstowe). Dziś poznamy nowe typy danych takie jak listy, słowniki i tuple. Każdy z tych typów możemy najprościej opisać jako pewien zbiór elementów, przy czym każdy z elementów zbioru jest typu prostego np.  int, float, complex, etc. (nie jest to do końca prawda, ale na tym etapie nauki możemy przyjąć takie założenie).

Na tej lekcji poznamy również pętle \- elementy języka, które pozwalają na wielokrotne wykonywanie danej czynności.


Listy
~~~~~~~~

Poniżej znajduje się przykład listy, która zawiera 6 elementów, elementy oddzielone są przecinkiem.


.. code-block:: python

    sage: moja_lista=[1,2,6,3,5,4]
    sage: print moja_lista


[1, 2, 6, 3, 5, 4]

.. end of output

Elementy listy indeksowane (numerowane) są kolejnymi liczbami całkowitymi zaczynając od 0. Jeśli lista ma 6 elementów, to indeksy elementów zmieniają się od 0 do 5 (element pierwszy \- indeks 0). Do konkretnego elementu listy odwołujemy się wpisując  moja_lista[indeks] :


.. code-block:: python

    sage: print moja_lista[0],moja_lista[1],moja_lista[2]


1 2 6

.. end of output

Wartości elementów listy mogą być zmieniane w następujący sposób


.. code-block:: python

    sage: print moja_lista[1] # stara wartosc
    sage: moja_lista[1]=100  # zmiana wartosci, modyfikujemy 2 element listy
    sage: print moja_lista[1] # nowa wartosc


| 2
| 100

.. end of output

Element listy możemy też przypisać do innej zmiennej, podobnie jak zwykłą liczbę.


.. code-block:: python

    sage: a=2 # tak to bylo ze zwykla liczba
    sage: a=moja_lista[1] # tak jest z elementem tablicy
    sage: print a


100

.. end of output

Dlaczego tak jest? Dlatego, że operacja przypisania (np a=2, znak = jest operatorem przypisania) interpretowana jest od prawej do lewej, tzn. najpierw wyliczana jest wartość wyrażenia po prawej stronie znaku =, a następnie ta wartość jest przypisana do zmiennej po lewej stronie znaku =. Możemy zatem mieć


.. code-block:: python

    sage: a=2+1 # najpierw obliczana jest suma, a nastepnie przypisana do zmiennej a
    sage: print a


3

.. end of output

Podobnie będzie z elementami list


.. code-block:: python

    sage: a=moja_lista[1]
    sage: """ najpierw bierzemy wartosc elementu o indeksie 1
    ...    potem przypisujemy ja do zm. a """
    sage: print a


100

.. end of output

W powyższym przykładzie elementami listy  moja_lista  były liczby całkowite (typu int). Możemy to sprawdzić, ponieważ znamy juz funkcję, która sprawdza typ zmiennej:


.. code-block:: python

    sage: print type(moja_lista[1])


<type 'sage.rings.integer.Integer'>

.. end of output


Zadanie:

czas: 5 min.

Sprawdź,  czy  Sage  pozwala  na  stworzenie  listy,  której  elementy  mają  różny typ. Stwórz listę lista_2=[1,3.5,199.21,"ala",3\+2j], następnie sprawdź typ każdego elementu korzystając z funkcji type()

Na elementach listy możemy wykonywać takie same operacje jak na zwykłych zmiennych


.. code-block:: python

    sage: lista_2=[1,3.5,199.21,"ala",3+2j]
    sage: print "iloczyn=",lista_2[1]*lista_2[2]
    sage: print "kwadrat=", lista_2[1]^2
    sage: print "suma=", lista_2[1]+lista_2[3]


| iloczyn= 697.235000000000
| kwadrat= 12.2500000000000
| suma=
| Traceback (most recent call last):
| ...
| TypeError: unsupported operand parent(s) for '+': 'Real field with 53 bits of precision' and '<type 'str'>'

.. end of output

Upss jest błąd!!! I dobrze. Spróbuj sam wyjaśnić skąd się wziął (sprawdź jakiego typu zmienne próbujemy do siebie dodać). Jeśli zapomnimy o tym, że na liście umieściliśmy zmienne różnego typu (liczbowego i tekstowego) i spróbujemy je dodać, otrzymamy właśnie taki błąd.

Jeśli nie chcemy tworzyć listy z wartościami początkowymi, możemy stworzyćpustą listę, której elementy będziemy dodawać później. Pustą listę tworzymy poleceniem  moja_lista=[].


Funkcje potrzebne do pracy na listach
"""""""""""""""""""""""""""""""""""""

Poniżej znajdziesz kilka funkcji, które są przydatne (a nie które niezbędne) w pracy z listami.


- ``len(lista)`` \- zwraca liczbę elementów listy
- ``append(x)``  \- dodaje element x na koniec listy
- ``insert(i,x)``  \- dodaje do listy element  x  w miejsce o indeksie  i
- ``remove(x)`` \- usuwa z listy pierwszy napotkany element x. Jeśli na liście nie ma elementu o wartosści x, Sage wyświetli błąd.
- ``pop(i)`` \- usuwa z listy element o indeksie i, jednocześnie zmniejszając rozmiar tablicy o 1. Jeśli wywołamy  pop() bez podawania wartości  i, usuniemy ostatni element listy.
- ``count(x)`` \- zwraca liczbę wystąpień x na liście
- ``sort()`` \- sortuje elementy listy rosnąco


.. code-block:: python

    sage: moja_lista=[1,2,6,3,5,4,34,33,76]
    ...        print "lista moja_lista ma", len(moja_lista), "elementow"


.. end of output

.. code-block:: python

    sage: print "lista moja_lista ma", len(moja_lista), "elementow"
    sage: moja_lista.append(13) # dodajemy liczbe 13
    sage: moja_lista.append(17.6) # dodajemy liczbe 17.6
    sage: print "Teraz lista moja_lista ma", len(moja_lista), "elementow"


| lista moja_lista ma 9 elementow
| Teraz lista moja_lista ma 11 elementow

.. end of output

.. code-block:: python

    sage: moja_lista.insert(0,3.14) #wstawia na pocztek listy (index 0) liczbe 3.14
    sage: moja_lista.insert(1,e) #wstawia jako drugi element listy stala e


.. end of output

.. code-block:: python

    sage: moja_lista.remove(3.14)


.. end of output

.. code-block:: python

    sage: moja_lista=[1,2,6,3,5,4,34,33,76]
    sage: print "lista moja_lista ma", len(moja_lista), "elementow"
    sage: print moja_lista
    sage: moja_lista.pop(2) # usuwamy element o indeksie 2 (liczbe 6)
    sage: print moja_lista
    sage: moja_lista.pop() # usuwamy ostani element z listy
    sage: print "Teraz lista moja_lista ma", len(moja_lista), "elementow"
    sage: print moja_lista


| lista moja_lista ma 9 elementow
| [1, 2, 6, 3, 5, 4, 34, 33, 76]
| [1, 2, 3, 5, 4, 34, 33, 76]
| Teraz lista moja_lista ma 7 elementow
| [1, 2, 3, 5, 4, 34, 33]

.. end of output

Sage podpowiada nam dostępne dla danego obiektu (listy, krotki itp)  funkcje. Jesli pisząc np.
 moja_lista. i wciśniemy klawisz Tab   pojawi się  okienko z podpowiedzią.



Krotki (Tuple)
~~~~~~~~~~~~~~~~~

Krotki  są  bardzo  podobne  do  list,


.. code-block:: python

    sage: moja_krotka=1,32,4,2,5.6  # tworzymy 5-elementowa krotke
    sage: # lub
    sage: moja_krotka=(1,32,4,2,5.6)
    sage: print moja_krotka[0],moja_krotka[1]


1 32

.. end of output

z tą różnicą, że nie możemy zmieniać wartości elementów krotki,


.. code-block:: python

    sage: moja_krotka[1]=2 # Sage powinien zwrocic blad !


| Traceback (most recent call last):
| ...
| TypeError: 'tuple' object does not support item assignment

.. end of output

ani dodawac i usuwać jej elementów.


.. code-block:: python

    sage: moja_krotka.append(12.23) # podobnie w tym przypadku


| Traceback (most recent call last):
| ...
| AttributeError: 'tuple' object has no attribute 'append'

.. end of output



Słowniki
~~~~~~~~~~~

Słowniki (ang. dictionaries) to kolejne typy danych, który można najprościej opisać jako zbiory par  klucz:wartość, przy czym w ramach jednego słownika klucz nie może się powtarzać \- musi być unikatowy. W odróżnieniu od list i krotek, które są indeksowane liczbami, słowniki są indeksowane kluczami. Poniżej stworzono prostą zmienną typu słownikowego o nazwie telefony


.. code-block:: python

    sage: telefony={'Ala':508605107, 'Ola':3452234,'Franek':505600600,'Pietrek':607233322}


.. end of output


Zadanie:

czas: 1 min.

Spróbuj stworzyć nowy słownik, w którym dwa klucze będą takie same. Wyjaśnij zachowanie Sage’a (zwróć uwagę na słowo ”unikatowe” w opisie słownika).

Listę wszystkich kluczy i wartości w słowniku otrzymamy, wykonując odpowiednio polecenia


.. code-block:: python

    sage: telefony.keys()   # klucze
 

['Ola', 'Franek', 'Pietrek', 'Ala']

.. end of output

.. code-block:: python

    sage: telefony.values() # wartosci


[3452234, 505600600, 607233322, 508605107]

.. end of output

Zmiany wartości dla konkretnego klucza możemy dokonać w następujący sposób


.. code-block:: python

    sage: print telefony['Ola']
    sage: telefony['Ola']=55566677
    sage: telefony['Ola']


| 3452234
| 55566677

.. end of output



Zadanie:

czas: 2 min.

Sprawdź, jaki komunikat wyświetli wykonanie polecenia type(telefony.keys()). Jakiego typu daną zwróci wykonanie  tego polecenia (int, float, tuple, list )?

Jeśli chcemy usunąc element słownika, używamy polecenia  del  lub  pop()


.. code-block:: python

    sage: print telefony
    sage: del telefony["Ala"]
    sage: print telefony
    sage: #lub podobnie jak dla listy
    sage: telefony.pop("Franek")
    sage: print telefony


| {'Ola': 55566677, 'Franek': 505600600, 'Pietrek': 607233322, 'Ala': 508605107}
| {'Ola': 55566677, 'Franek': 505600600, 'Pietrek': 607233322}
| {'Ola': 55566677, 'Pietrek': 607233322}

.. end of output

Do słownika możemy również dodawać nowe elementy w następujący sposób


.. code-block:: python

    sage: telefony={'Ala':508605107, 'Ola':3452234,'Franek':505600600,'Pietrek':607233322}
    sage: telefony["Kasia"]=555444333
    sage: telefony["Mirek"]=123456654
    sage: print telefony


{'Ola': 3452234, 'Mirek': 123456654, 'Franek': 505600600, 'Ala': 508605107, 'Kasia': 555444333, 'Pietrek': 607233322}

.. end of output



Pętle
~~~~~~~~

**UWAGA:** Proszę nie kopiować poniższych przykładów do Sage’a, lecz wpisywać je ręcznie! Kopiowanie może powodować nie zachowanie wcięć i ewentualne błędy.

Wyobraźmy sobie, że mamy 1000 elementową listę i musimy wypisać na ekran jej poszczególne elementy. Wypisywanie krok po kroku każdego elementu będzie bardzo czasochłonne. Lepiej użyć do tego pętli. Idea pętli polega na tym, że wykonuje ona te same czynności określoną ilość razy.



Pętla ``for``
"""""""""""""

Instrukcja  for  powoduje iterację po elementach sekwencji (np. listy, tupli itd.) w takim porządku, w jakim są one umieszczone w danej sekwencji. Na przykład:


.. code-block:: python

    sage: moja_lista=[1,3,5,9,11,13,15,17,19,21]
    sage: for i in moja_lista:
    ...      print i


| 1
| 3
| 5
| 9
| 11
| 13
| 15
| 17
| 19
| 21

.. end of output

Powyższy kod możemy przetłumaczyć następująco: dla każdego elementu  i  z listy moja_lista : wypisz  i  (czyli ten element).

Bardzo ważne jest aby pamiętać, że instrukcje które mają być wykonanew pętli muszą zaczynać się wcięciem (spacje,tabulator) (na szczęście Sage automatycznie dokonuje wcięć). W poniższym przykładzie, pierwsza i druga instrukcja  print  wykonują się w pętli, natomiast trzecia już poza pętlą.


.. code-block:: python

    sage: for i in moja_lista:
    ...      print "jestem w petli"
    ...      print i^2
    sage: print "wyszedlem z petli"


| jestem w petli
| 1
| jestem w petli
| 9
| jestem w petli
| 25
| jestem w petli
| 81
| jestem w petli
| 121
| jestem w petli
| 169
| jestem w petli
| 225
| jestem w petli
| 289
| jestem w petli
| 361
| jestem w petli
| 441
| wyszedlem z petli

.. end of output

W pracy z pętę  for  przydaje się funkcja  range(start,stop,krok). Tworzy ona listę liczb całkowitych począwszy od wartości  start  do wartości najbliższej, ale mniejszej od  stop, zwiększając wartości o krok:


.. code-block:: python

    sage: range(1,20,2)

[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]

.. end of output

Parametry  krok  i  start  są opcjonalne. Jeśli ich nie podamy, Sage przyjmie domyślne wartości  krok =1 i start =0.


.. code-block:: python

    sage: range(20)

[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]

.. end of output

Kilka przykładów użycia z pętlą  for


.. code-block:: python

    sage: b=0
    sage: for i in range(10):
    ...      b=2*i-1
    ...      print b


| -1
| 1
| 3
| 5
| 7
| 9
| 11
| 13
| 15
| 17

.. end of output



Zadanie:

czas: 10 min.

Przypomnij   sobie   zadanie   z   poprzednich   zajęć,   gdzie   przeliczałeś temperaturę ze stopni Celsjusza na Fahrenheity. Teraz wykonaj to samo  zadanie, ale w zakresie temperatur \-27,27 stopni Celsjusza, co 3 stopnie.


Pętla ``while()``
"""""""""""""""""

Innym rodzajem pętli jest pętla  while, która wykonuje instrukcje w niej zawarte tak długo, dopóki spełniony jest warunek logiczny  warunek. Składnia instruckji  while() jest następująca


.. code-block:: python

    sage: # while (warunek):
    sage: #   instrukcje


.. end of output


Przykład:


.. code-block:: python

    sage: licznik=0
    sage: while (licznik < 10):
    ...      print licznik
    ...      licznik=licznik+1


| 0
| 1
| 2
| 3
| 4
| 5
| 6
| 7
| 8
| 9

.. end of output


Powyższy kod możemy przeczytać następująco: dopóki zmienna  licznik jest mniejsza od  10  (czyli dopóki ten warunek jest spełniony) wypisz bieżącą wartość zmiennej, a następnie zwiększ ją o 1. Inny przykład:


.. code-block:: python

    sage: licznik=10
    sage: while (licznik>0):
    ...      print licznik
    ...      licznik=licznik-1


| 10
| 9
| 8
| 7
| 6
| 5
| 4
| 3
| 2
| 1

.. end of output


Prosze zwrócić uwagę, że stosując pętlę  while()  musimy sami zmieniać wartość zmiennej ’kontrolnej’  licznik. Gdybyśmy tego nie zrobili, zmienna licznik cały czas miałaby wartość 0 (w pierwszym przykładzie) i pętla wykonywała by się w nieskończoność!!!

Aby dobrze konstruować warunki logiczne, musimy zapoznać się z operatorami w Sage’u \- na razie tylko porównania



   =============== ===================
     operator           znaczenie
       ==                równy
       !=                różny
       <                mniejszy
       <=          mniejszy lub równy
       >                większy
       >=          większy lub równy
   =============== ===================


Zadanie:

czas: 10 min.

Stworzyć pustą listę. Następnie w pętli for i za pomocą append() dodaj do listy liczby od 1\-10


Zadanie:

czas: 15 min.

Za  pomocą  funkcji  range() i  for policzyć  sumę  pierwszych  100  liczb naturalnych (od 1 do 100).


Zadanie:

czas: 10 min.

Stworzyć  pustą  listę.  Następnie  za  pomocą  pętli  while()  i  instrukcji  append()  dodać do listy pierwiastki z liczb 0\-30 co 2.5. Pierwiastek z  x obliczamy za pomocą funkcji sqrt(x).


Pętle i słowniki
""""""""""""""""

Podobnie jak dla list, możemy stosować pętle do słowników.


.. code-block:: python

    sage: wiek={'Ala':14, 'Ola':34,'Franek':50,'Pietrek':15,'Monika':41,'Staszek':22}
    sage: for i in wiek.values():
    ...      print i


| 34
| 22
| 50
| 14
| 41
| 15

.. end of output


Zadanie:

czas: 15 min.

Dla słownika wiek policzyć (użyć instrukcji for i len()) średnią wieku wszystkich osobników z listy.


