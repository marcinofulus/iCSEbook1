.. -*- coding: utf-8 -*-



Badanie ruchu przyspieszonego
=============================


Wstęp
-----
Celem lekcji jest zbadanie ruchu przyspieszonego, a w szczególności rozstrzygnięcie, czy ruch jest jednostajnie przyspieszony, tzn. czy przyspieszenie jest w nim stałe oraz wyliczenie tego przyspieszenia. Wymaga to przeprowadzenia szeregu pomiarów, najlepiej całych serii, w powtarzalnych warunkach. Python posłuży nam do algebraicznego przetworzenia wielkiej liczby danych i przeprowadzenia analizy graficznej. Koncepcja tematu przewiduje następujące etapy postępowania:

1. Przeprowadzenie lekcji w pracowni fizycznej, obejmującej wykład teoretyczny dotyczący ruchu jednostajnie przyspieszonego oraz demonstrację odpowiedniego doświadczenia.

2. Przeprowadzenie lekcji w pracowni komputerowej na temat graficznej analizy danych: dopasowywania prostych i krzywych do danych pomiarowych i rysowanie prostokątów błędu.

3. Zadanie uczniom pracy domowej polegającej na wykonaniu analogicznego doświadczenia i opracowania wyników z użyciem metod poznanych na lekcji informatyki.

Kolejność dwóch pierwszych punktów może być zamieniona.

Niniejszy dokument zawiera rozważania o charakterze ogólnym. Szczegóły lekcji doświadczalnej zawarte są w załączonym filmie (wyposażonym w napisy angielskie). Przykładowe prace uczniów znajdują się w oddzielnych plikach.

Część doświadczalna
-------------------

**Pomoce naukowe**

1. Dowolny układ do powtarzalnego badania ruchu przyspieszonego \- najlepiej tor powietrzny nachylony pod niewielkim kątem. Można uzyć też zwykłej równi pochyłej i kulki / wózka itp.

2. Przyrząd do pomiaru drogi.

3. Komplet przyrządów do pomiaru czasu \- moga to być telefony komórkowe uczniów.

**Tok lekcji**

Cały przebieg lekcji, opis eksperymentu oraz oczekiwań dotyczących sposobu opracowania wyników znajduje się na filmie: `https://youtu.be/deTJ4i1V0dg <https://youtu.be/deTJ4i1V0dg>`_ W szczególności przedstawiony w nim został wzór karty pomiarowej, wskazówki dotyczące sposobu przeprowadzenia doświadczenia i omówione zostały formuły niezbędne do obliczeń. Zastosowane metody obliczeniowe w zasadzie wykraczają poza podstawę programową, ale dzięki Pythonowi ich użycie jest bardzo łatwe i uczeń natychmiast uzyskuje spektakularne wyniki bez konieczności dogłębnego rozumienia wszystkich mechanizmów.

Mówiąc w skrócie, sugerowana metoda doświadczalna polega na zaznaczeniu na równi pochyłej szeregu kresek w ustalonych odległościach od punktu startowego a następnie wykonniu kilku serii pomiarów czasu ruchu od startu do każdej z kresek. Dokładność pomiaru drogi (pomiar jednokrotny) szacujemy metodą działki elementarnej (w warunkach lekcji jest ona zdeterminowana grubością kredy), natomiast czasy dotarcia ciała (w warunkach lekcji \- ślizgacza) do konkretnej kreski uśredniamy, a jako niepewność przyjmujemy odchylenie standardowe serii pomiarów czasu dla tej kreski. Niepewności pomiarów złożonych (kwadrat czasu, przyspieszenie) obliczamy za pomocą Uproszczonej Metody Logarytmicznej (UML).

Z wykonanego doświadcznia należy sporządzić sprawozdanie według ogólnych zaleceń, opublikowanych w formie PDF na stronie internetowej szkoły.

.. _przyspieszony:

Część informatyczna
-------------------

Poniższa sekcja nie stanowi kompletnego rozwiązania problemu, a jedynie zbiór wskazówek, jak sie pewne rzeczy robi. Resztę pozostawiamy inwencji uczniów. W razie problemów, jako wzór mogą posłużyć przykładowe prace uczniów, dołączone do niniejszej dokumentacji. Wszystkie poniższe dane są zmyślone i mają na celu zaprezentowanie sposobu działania poszczególnych komend.

Przykładowe obliczanie odchylenia standardowego. Obliczanie go "na piechotę" jest dosyć żmudne; w Pythonie sprowadza się do wykonania banalnej instrukcji:


.. sagecellserver::
    :linked: false  

    sage: anydata = (3.4, 3.6, 3.3, 3.3, 3.5, 3.7, 3.6, 3.6, 3.6, 3.5) # przykładowe dane
    sage: mean_data = mean(anydata) # wartość średnia
    sage: std_data = std(anydata) # odchylenie standardowe
    sage: print anydata
    sage: print "Wartość średnia = ", N(mean_data, digits=3)
    sage: print "Odchylenie std = ", N(std_data, digits=3)
 

.. end of output

Symulacja danych doświadczalnych i wykres s(t)


.. sagecellserver::

    sage: s = (0, 0.03, 0.1, 0.39, 0.88, 1.62, 2.44, 3.55)
    sage: t = (0, 0.5, 1.01, 2.1, 2.97, 3.88, 5.02, 5.95)
    sage: delta_s = (0, 0.02, 0.02, 0.02, 0.05, 0.05, 0.05, 0.1)
    sage: delta_t = (0.1, 0.1, 0.1, 0.2, 0.2, 0.2, 0.2, 0.3)
    sage: pkt = zip(t, s)
    sage: point(pkt, gridlines=True, size=25, color='red', axes_labels=['l', 'y'], legend_label='s(t)')


.. end of output

Dopasowanie paraboli do danych. Bez użycia środowiska Sage jest to dla ucznia czynność absolutnie niewykonalna. Tutaj sprowadza sie do wykonania kilku prostych instrukcji. Wzór opisujący parabolę został tak sformułowany, by w wyniku otrzymać wprost wartość przyspieszenia. Uczeń nie musi rozumieć, jak to się dzieje z matematycznego punktu widzenia. O tym, że otrzymał właściwy rezultat przekonuje go wykres, możliwie ściśle przylegający do punktów pomiarowych.


.. sagecellserver::

    sage: var ('a')
    sage: parabola(x) = a/2*x^2 # Czas oznaczono jako x, aby uniknąć dalej kolizji oznaczeń
    sage: fit = find_fit(pkt, parabola,solution_dict=True)
    sage: print fit
    sage: rys1=plot(parabola.subs(fit), x, 0, 6, color="green", legend_label='dopasowana parabola')
    sage: rys2=point(pkt, gridlines=True, size=25, color='red', legend_label='punkty pomiarowe')
    sage: rys1+rys2

.. end of output

Python nie jest wyposażony w mechanizmy automatycznego rysowania prostokątów błędów. Konieczne jest użycie dodatkowej biblioteki *matplotlib*. Punkty połączone są łamaną (fmt='o-').


.. sagecellserver::

    sage: import matplotlib.pyplot as plt
    sage: plt.clf()
    sage: plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o-')
    sage: plt.xlabel("t [s]")
    sage: plt.ylabel("s [m]")
    sage: plt.savefig('1.png')


.. end of output

Niestety, wspomniana biblioteka nie rysuje wprost wykresów funkcji. Aby umieścić na jednym wykresie prostokąty błędów i dopasowaną parabolę, należy zastosować poniższą konstrukcję. Funkcja *linspace* skaluje oś czasu (w tym przypadku od 0 do ostatniego punktu pomiarowego t[7]) i ustala gęstość próbkowania funkcji (w tym przypadku 100 punktów \- im więcej, tym krzywa jest bardziej gładka).


.. sagecellserver::

    sage: import matplotlib.pyplot as plt
    sage: import numpy as np 
    sage: plt.clf()
    sage: plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o')
    sage: plt.xlabel("Czas [s]")
    sage: plt.ylabel("Droga [m]")
    sage: t_ = np.linspace(0,t[7],100)
    sage: plt.plot(t_,a.subs(fit)/2*t_**2)
    sage: plt.grid()
    sage: plt.xlim(0, 6.2)
    sage: plt.ylim(0, 4)
    sage: plt.savefig('1.png')
    sage: plt.savefig('1.pdf')


.. end of output

Zadanie domowe
--------------

Skonstruować dowolny układ do obserwacji ruchu przyspieszonego. Wykonać serie pomiarów czasu przebycia różnych dróg w tym ruchu. Napisać sprawozdanie w notatniku Sage zawierające:

1. Wstęp teoretyczny

2. Opis układu doświadczalnego (ze zdjęciem) i wykonanych czynności

3. Wyniki pomiarów i obliczeń

4. Graficzną analizę danych \- wykresy s(t), s(t^2) i a(t) wraz z prostokątami błędów i dopasowanymi prostymi / krzywymi

5. Dyskusję uzyskanych wyników \- należy rozstrzygnąć różnymi metodami, czy przyspieszenie w obserwowanym ruchu było stałe.

Szczegółowe zalecenia dotyczące pisania sprawozdań są uczniom znane, gdyż zostały opublikowane w formie pliku PDF na stronie internetowej szkoły.

Uwagi o realizacji
------------------

Niniejszy scenariusz został przetestowany w latach 2015-2017 na trzech rocznikach uczniów klas drugich LO (fizyka, poziom rozszerzony). Wcześniej, przed rozpoczęciem projektu, podobne doświadczenie było już realizowane od wielu lat, ale sprawozdania były oddawane w wersji papierowej. Python ułatwił przeliczanie danych i rysowanie wykresów oraz umożliwił obliczanie parametrów prostych / krzywych dopasowanych do punktów pomiarowych. Wcześniej było to niemożliwe. W odniesieniu do wielkości wprost proporcjonalnych uczeń mógł jedynie przyłożyć linijkę do narysowanych punktów i sprawdzić, czy da się tak poprowadzić odcinek, by przechodził przez wszystkie prostokąty błędów. 

Nastawienie uczniów do wymagań projektu było różne. Najgorzej wypadł rocznik środkowy. Była to jedyna klasa o profilu ścisłym, która na skutek zmian w siatce godzin, nie realizowała pełnego rozszerzenia z informatyki. Niektórzy deklarowali jawną niechęć do programowania. Nie przekonywały ich oczywiste korzyści ze stosowania technologii informatycznych. Dlatego też przystałem na rozwiązanie hybrydowe - dokonanie obliczeń w Pythonie i oddanie sprawozdania papierowego (z wykresami Pythona jako załącznikami).

Uczniowie rocznika pierwszego i trzeciego nie mieli żadnych oporów w stosowaniu technologii komputerowych w pełnym wymiarze. Nie widzieli również przeszkody w tym, że do pisania wzorów w notatniku Sage (niezbędnych np. we wstępie teoretycznych) konieczne jest opanowanie Latexa. Nawiązałem współpracę z anglistami i skłoniłem autorów najlepszych sprawozdań do przetłumaczenia ich na język angielski. Za ten wysiłek uczniowie otrzymali dodatkowe punkty zarówno z fizyki, jak i z języka angielskiego.

Hipełącza do przykładowych prac:

Wersja polska: https://sage01.icse.us.edu.pl/home/pub/148/

Wersja angielska: https://sage01.icse.us.edu.pl/home/pub/177/

Cechy dobrego sprawozdania z fizyki: http://3lo.edu.pl/?p=306

                                                            Adam Ogaza
