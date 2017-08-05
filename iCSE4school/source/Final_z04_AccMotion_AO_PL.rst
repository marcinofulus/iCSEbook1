.. -*- coding: utf-8 -*-


Badanie ruchu przyspieszonego
=============================

Celem lekcji jest zbadanie ruchu przyspieszonego, a w szczególności rozstrzygnięcie, czy ruch jest jednostajnie przyspieszony, tzn. czy przyspieszenie jest w nim stałe oraz wyliczenie tego przyspieszenia. Wymaga to przeprowadzenia szeregu pomiarów, najlepiej całych serii, w powtarzalnych warunkach. Python posłuży nam do algebraicznego przetworzenia wielkiej liczby danych i przeprowadzenia analizy graficznej. Koncepcja tematu przewiduje następujące etapy postępowania:

1. Przeprowadzenie lekcji w pracowni fizycznej, obejmującej wykład teoretyczny dotyczący ruchu jednostajnie przyspieszonego oraz demonstrację odpowiedniego doświadczenia.

2. Przeprowadzenie lekcji w pracowni komputerowej na temat graficznej analizy danych: dopasowywania prostych i krzywych do danych pomiarowych i rysowanie prostokątów błędu.

3. Zadanie uczniom pracy domowej polegającej na wykonaniu analogicznego doświadczenia i opracowania wyników z użyciem metod poznanych na lekcji informatyki.

Kolejność dwóch pierwszych punktów może być zamieniona.

Niniejszy dokument zawiera rozważania o charakterze ogólnym. Szczegóły lekcji doświadczalnej zawarte są w załączonym filmie. Przykładowe prace uczniów znajdują się w oddzielnych plikach.

Część doświadczalna
-------------------

**Pomoce naukowe**


1. Dowolny układ do powtarzalnego badania ruchu przyspieszonego \- najlepiej tor powietrzny nachylony pod niewielkim kątem. Można uzyć też zwykłej równi pochyłej i kulki / wózka itp.

2. Przyrząd do pomiaru drogi.

3. Komplet przyrządów do pomiaru czasu \- moga to być telefony komórkowe uczniów.

Cały przebieg lekcji, opis eksperymentu oraz oczekiwań dotyczących sposobu opracowania wyników znajduje się na filmie: `https://youtu.be/deTJ4i1V0dg <https://youtu.be/deTJ4i1V0dg>`_

Film wyposażony jest w napisy w języku angielskim.

Część informatyczna
-------------------

Przykładowe obliczanie odchylenia standardowego:


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

Dopasowanie paraboli do danych


.. sagecellserver::

    sage: var ('a')
    sage: parabola(x) = a/2*x^2 # Czas oznaczono jako x, aby uniknąć dalej kolizji oznaczeń
    sage: fit = find_fit(pkt, parabola,solution_dict=True)
    sage: print fit
    sage: rys1=plot(parabola.subs(fit), x, 0, 6, color="green", legend_label='dopasowana parabola')
    sage: rys2=point(pkt, gridlines=True, size=25, color='red', legend_label='punkty pomiarowe')
    sage: rys1+rys2

.. end of output

Prostokąty błędów. Konieczne jest użycie dodatkowej biblioteki. Punkty połączone są łamaną


.. sagecellserver::

    sage: import matplotlib.pyplot as plt
    sage: plt.clf()
    sage: plt.errorbar(t, s, xerr=delta_t, yerr=delta_s, fmt='o-')
    sage: plt.xlabel("t [s]")
    sage: plt.ylabel("s [m]")
    sage: plt.savefig('')


.. end of output

Połączenie 2 światów: paraboli dopasowanej do punktów (Python) i prostokątów błędów (matplot):


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

Uwagi o realizacji
------------------

