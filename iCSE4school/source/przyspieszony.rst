.. -*- coding: utf-8 -*-

Badanie ruchu przyspieszonego
=============================

O scenariuszu
-------------

Materiał przedstawiony poniżej może być zrealizowany podczas 2 godzin
lekcyjnych: jedna w pracowni fizycznej, druga w sali zaopatrzonej w
wystarczającą ilość komputerów.

Scenariusz został opracowany w ramach projektu iCSE4school na podstawie
lekcji prowadzonych w latach 2015-2017 w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Adama Ogazę.

.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.



Wstęp
-----

Celem lekcji jest zbadanie ruchu przyspieszonego, a w szczególności
rozstrzygnięcie, czy ruch jest jednostajnie przyspieszony, tzn. czy
przyspieszenie jest w nim stałe oraz wyliczenie tego
przyspieszenia. Wymaga to przeprowadzenia szeregu pomiarów, najlepiej
całych serii, w powtarzalnych warunkach. Python posłuży nam do
algebraicznego przetworzenia wielkiej liczby danych i przeprowadzenia
analizy graficznej. Koncepcja tematu przewiduje następujące etapy
postępowania:

1. Przeprowadzenie lekcji w pracowni fizycznej, obejmującej wykład
   teoretyczny dotyczący ruchu jednostajnie przyspieszonego oraz
   demonstrację odpowiedniego doświadczenia.

2. Przeprowadzenie lekcji w pracowni komputerowej na temat graficznej
   analizy danych: dopasowywania prostych i krzywych do danych
   pomiarowych i rysowanie prostokątów błędu.

3. Zadanie uczniom pracy domowej polegającej na wykonaniu
   analogicznego doświadczenia i opracowania wyników z użyciem metod
   poznanych na lekcji informatyki.

Kolejność dwóch pierwszych punktów może być zamieniona.

Niniejszy dokument zawiera rozważania o charakterze ogólnym. Szczegóły
lekcji doświadczalnej zawarte są w załączonym filmie (wyposażonym w
napisy angielskie). Przykładowe prace uczniów znajdują się w
oddzielnych plikach.

Część doświadczalna
-------------------

**Pomoce naukowe**

1. Dowolny układ do powtarzalnego badania ruchu przyspieszonego \-
   najlepiej tor powietrzny nachylony pod niewielkim kątem. Można uzyć
   też zwykłej równi pochyłej i kulki / wózka itp.

2. Przyrząd do pomiaru drogi.

3. Komplet przyrządów do pomiaru czasu \- moga to być telefony komórkowe uczniów.


**Tok lekcji**

Cały przebieg lekcji, opis eksperymentu oraz oczekiwań dotyczących
sposobu opracowania wyników znajduje się na filmie:
 
   `https://youtu.be/deTJ4i1V0dg <https://youtu.be/deTJ4i1V0dg>`_ 

.. only:: html

        .. raw:: html

            <center><iframe width="420" height="280" src="https://www.youtube.com/embed/deTJ4i1V0dg" frameborder="0" allowfullscreen></iframe> </center>



W szczególności przedstawiony w nim został wzór karty pomiarowej,
wskazówki dotyczące sposobu przeprowadzenia doświadczenia i omówione
zostały formuły niezbędne do obliczeń. Zastosowane metody obliczeniowe
w zasadzie wykraczają poza podstawę programową, ale dzięki Pythonowi
ich użycie jest bardzo łatwe i uczeń natychmiast uzyskuje
spektakularne wyniki bez konieczności dogłębnego rozumienia wszystkich
mechanizmów.

Sugerowana metoda doświadczalna polega na zaznaczeniu na równi
pochyłej szeregu kresek w ustalonych odległościach od punktu
startowego a następnie wykonniu kilku serii pomiarów czasu ruchu od
startu do każdej z kresek. Dokładność pomiaru drogi (pomiar
jednokrotny) szacujemy metodą działki elementarnej (w warunkach lekcji
jest ona zdeterminowana grubością kredy), natomiast czasy dotarcia
ciała (w warunkach lekcji \- ślizgacza) do konkretnej kreski
uśredniamy, a jako niepewność przyjmujemy odchylenie standardowe serii
pomiarów czasu dla tej kreski. Niepewności pomiarów złożonych (kwadrat
czasu, przyspieszenie) obliczamy za pomocą Uproszczonej Metody
Logarytmicznej (UML).

Z wykonanego doświadcznia należy sporządzić sprawozdanie według
ogólnych zaleceń, opublikowanych w formie PDF na stronie internetowej
szkoły.

.. _przyspieszony:

Część informatyczna
-------------------

Poniższa sekcja nie stanowi kompletnego rozwiązania problemu, a
jedynie zbiór wskazówek, jak sie pewne rzeczy robi. Resztę
pozostawiamy inwencji uczniów. W razie problemów, jako wzór mogą
posłużyć przykładowe prace uczniów, dołączone do niniejszej
dokumentacji. Wszystkie poniższe dane są zmyślone i mają na celu
zaprezentowanie sposobu działania poszczególnych komend.

Przykładowe obliczanie odchylenia standardowego. Obliczanie go "na
piechotę" jest dosyć żmudne; w Pythonie sprowadza się do wykonania
banalnej instrukcji:


.. sagecellserver::
    :linked: false  

     # przykładowe dane
    anydata = (3.4, 3.6, 3.3, 3.3, 3.5, 3.7, 3.6, 3.6, 3.6, 3.5)
    mean_data = mean(anydata) # wartość średnia
    std_data = std(anydata) # odchylenie standardowe
    print "Wartość średnia = ", N(mean_data, digits=3)
    print "Odchylenie std = ", N(std_data, digits=3)
 


.. only:: latex
          
   W wyniku działania powyższego kodu otrzymamy:

   |   Wartość średnia =  3.51
   |   Odchylenie std =  0.137



Dane doświadczalne możemy łatwo narysować za pomocą
np. :code:`point`. Jeśli danych jest mało to można wpisać je
bezpośrednio do tablicy w Python-ie, tak jak poniżej:


.. sagecellserver::

     s = (0, 0.03, 0.1, 0.39, 0.88, 1.62, 2.44, 3.55)
     t = (0, 0.5, 1.01, 2.1, 2.97, 3.88, 5.02, 5.95)
     delta_s = (0, 0.02, 0.02, 0.02, 0.05, 0.05, 0.05, 0.1)
     delta_t = (0.1, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.3)
     pkt = zip(t, s)
     point(pkt, gridlines=True, size=25, color='red', axes_labels=['l', 'y'], legend_label='s(t)')

.. end of output

Należy jednak wykonać dopasowanie paraboli do powyższych danych. Bez
użycia środowiska Sage jest to dla ucznia czynność absolutnie
"praktycznie" niewykonalna. Tutaj sprowadza sie do wykonania kilku
prostych instrukcji. Wzór opisujący parabolę został tak sformułowany,
by w wyniku otrzymać wprost wartość przyspieszenia. Uczeń nie musi
rozumieć, jak to się dzieje z matematycznego punktu widzenia. O tym,
że otrzymał właściwy rezultat przekonuje go wykres, możliwie ściśle
przylegający do punktów pomiarowych.


.. sagecellserver::

     var ('a')
     parabola(x) = a/2*x^2 # Czas oznaczono jako x, aby uniknąć dalej kolizji oznaczeń
     fit = find_fit(pkt, parabola,solution_dict=True)
     print fit
     rys1=plot(parabola.subs(fit), x, 0, 6, color="green", \
       legend_label='dopasowana parabola')
     rys2=point(pkt, gridlines=True, size=25, color='red', \
       legend_label='punkty pomiarowe')
     rys1+rys2



.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`acc_plotfit`.

    .. figure:: figs/acc_plotfit.pdf
       :width: 70%
       :name: acc_plotfit
     
       Wykres nałożonych na siebie danych i dopasowanej funkcji :math:`y = \displaystyle\frac{at^2}{2}`




Środowisko SageMath nie jest wyposażone w dogodną funkcję nanoszącą
prostokąty błędów na wykres. Możemy jednak bezpośrednio skorzystać z
zawartej w SageMath biblioteki :code:`matplotlib`, która jest z resztą
wewnętrznie używana przez Sage do generowania wszystkich
wykresów. Punkty połączone są łamaną (fmt='o-').


.. sagecellserver::

     import matplotlib.pyplot as plt
     plt.clf()
     plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o-')
     plt.xlabel("t [s]")
     plt.ylabel("s [m]")
     plt.savefig('1.png')


.. end of output

Niestety, wspomniana biblioteka nie rysuje wprost wykresów funkcji
danych wzorem algebraicznym. Aby umieścić na jednym wykresie
prostokąty błędów i dopasowaną parabolę, należy samodzielnie
wypróbkować formułe analityczną. Funkcja :code:`np.linspace`
wygeneruje nam 100 (w kodzie poniżej) równomiernie oddalonych punktów
z przedziału od 0 do ostatniego punktu pomiarowego :code:`t[7]`.


.. sagecellserver::

     import matplotlib.pyplot as plt
     import numpy as np 
     plt.clf()
     plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o')
     plt.xlabel("Czas [s]")
     plt.ylabel("Droga [m]")
     t_ = np.linspace(0,t[7],100)
     plt.plot(t_,a.subs(fit)/2*t_**2)
     plt.grid()
     plt.xlim(0, 6.2)
     plt.ylim(0, 4)
     plt.savefig('1.png')


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`acc_mpl`.

    .. figure:: figs/acc_mpl.pdf
       :width: 70%
       :name: acc_mpl
     
       Wykres nałożonych na siebie danych i dopasowanej funkcji
       :math:`s = \frac{a}{2} t^2` wraz z błędami. Wykres wykonany za
       pomocą biblioteki matplotlib.





Zadanie domowe
--------------

Skonstruować dowolny układ do obserwacji ruchu
przyspieszonego. Wykonać serie pomiarów czasu przebycia różnych dróg w
tym ruchu. Napisać sprawozdanie w notatniku Sage zawierające:

1. Wstęp teoretyczny

2. Opis układu doświadczalnego (ze zdjęciem) i wykonanych czynności

3. Wyniki pomiarów i obliczeń

4. Graficzną analizę danych - wykresy :math:`s(t)`, :math:`s(t^2)` i
   :math:`a(t)` wraz z prostokątami błędów i dopasowanymi prostymi /
   krzywymi

5. Dyskusję uzyskanych wyników - należy rozstrzygnąć różnymi
   metodami, czy przyspieszenie w obserwowanym ruchu było stałe.

Szczegółowe zalecenia dotyczące pisania sprawozdań są uczniom znane,
gdyż zostały opublikowane w formie pliku PDF na stronie internetowej
szkoły.

Uwagi o realizacji
------------------

Niniejszy scenariusz został przetestowany w latach 2015-2017 na trzech
rocznikach uczniów klas drugich LO (fizyka, poziom
rozszerzony). Wcześniej, przed rozpoczęciem projektu, podobne
doświadczenie było już realizowane od wielu lat, ale sprawozdania były
oddawane w wersji papierowej. Python ułatwił przeliczanie danych i
rysowanie wykresów oraz umożliwił obliczanie parametrów prostych /
krzywych dopasowanych do punktów pomiarowych. Wcześniej było to
niemożliwe. W odniesieniu do wielkości wprost proporcjonalnych uczeń
mógł jedynie przyłożyć linijkę do narysowanych punktów i sprawdzić,
czy da się tak poprowadzić odcinek, by przechodził przez wszystkie
prostokąty błędów.

Nastawienie uczniów do wymagań projektu było różne. Najgorzej wypadł
rocznik środkowy. Była to jedyna klasa o profilu ścisłym, która na
skutek zmian w siatce godzin, nie realizowała pełnego rozszerzenia z
informatyki. Niektórzy deklarowali jawną niechęć do programowania. Nie
przekonywały ich oczywiste korzyści ze stosowania technologii
informatycznych. Dlatego też przystałem na rozwiązanie hybrydowe -
dokonanie obliczeń w Pythonie i oddanie sprawozdania papierowego (z
wykresami Pythona jako załącznikami).

Uczniowie rocznika pierwszego i trzeciego nie mieli żadnych oporów w
stosowaniu technologii komputerowych w pełnym wymiarze. Nie widzieli
również przeszkody w tym, że do pisania wzorów w notatniku Sage
(niezbędnych np. we wstępie teoretycznych) konieczne jest opanowanie
Latexa. Nawiązałem współpracę z anglistami i skłoniłem autorów
najlepszych sprawozdań do przetłumaczenia ich na język angielski. Za
ten wysiłek uczniowie otrzymali dodatkowe punkty zarówno z fizyki, jak
i z języka angielskiego.

Linki do przykładowych prac:

Wersja polska: https://sage01.icse.us.edu.pl/home/pub/148/

Wersja angielska: https://sage01.icse.us.edu.pl/home/pub/177/

Cechy dobrego sprawozdania z fizyki: http://3lo.edu.pl/?p=306

                           
