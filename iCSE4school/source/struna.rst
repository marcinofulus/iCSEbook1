.. -*- coding: utf-8 -*-

Badanie drgań struny
====================


O scenariuszu
^^^^^^^^^^^^^

Scenariusz ten jest materiałem do przeprowadzenie co najmniej 2h zajęć
lekcyjnych  z czego:

  -  1h w pracowni fizycznej: 

     - wykład 
     - wykonanie doświadczenia
  -  1h lub 2h w pracowni komputerowej:  

     - zademonstrowanie odpowiednich metod numerycznych 
     - omówienie wyników ćwiczeń i konsultacje



Materiał został opracowany w ramach projektu iCSE4school na podstawie lekcji
prowadzonych w latach 2015-2017 w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Adama Ogazę.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.



Wstęp
^^^^^

**Cele lekcji:**

- Doświaczalne zbadanie zależności częstotliwości drgań struny od jej długości.
- Użycie Pythona do przeprowadzenia graficznej analizy danych.

**Pomoce naukowe:**

- Struna rozpieta na linijce/ pudło rezonansowe / dowolny instrument strunowy
- Generator akustyczny
- Głośnik
- Aplikacja mobilna do pomiaru częstotliwości dźwięku
- Aplikacja \- generator dźwieku o okreslonej częstotliwości

**Użyte metody:**

- Wstępne ćwiczenia komputerowe dotyczące tworzenia wykresów w
  Pythonie oraz dopasowywania prostych i krzywych do danych
  pomiarowych.
- Wykład jako wstęp teoretyczny.
- Ćwiczenia w grupach - pomiary częstotliwosci drgań struny o różnej
  długości.

Lekcja przeznaczona jest dla uczniów w wieku 17 lat, zgłębiających
fizykę na poziomie rozszerzonym.Spełnia następujące wymagania podstawy
programowej:

- Cel ogólny V: “planowanie i przeprowadzanie prostych eksperymentów oraz analizowanie ich wyników”.
- Wymaganie szczegółowe 6.8: “uczeń stosuje w obliczeniach związek
  między parametrami fali: długością, częstotliwością, okresem,
  prędkością ”

 
- Wymaganie szczegółowe 6.12: “uczeń opisuje fale stojące i ich
  związek z falami biegnącymi przeciwbieżnie”.

 
- Wymaganie przekrojowe 12.2: “uczeń samodzielnie wykonuje poprawne
  wykresy”.

 
- Wymaganie przekrojowe 12.5: “uczeń dopasowuje prostą y = ax \+ b do
  wykresu i oblicza współczynniki a i b”.

 
- Wymaganie doświadczalne 13.6: “uczeń bada drgania striny (na
  przykład zalezność częstotliwości drgań od długosci struny),
  wykonuje pomiary, opis, analizę danych i interpretacje graficzną.

 

Opisywany temat jest przykładem doskonałej integracji nauk ścisłych z
informatyką i nauką języka angielskiego. Dlatego musi być
przeprowadzony zarówno w pracowni informatycznej, jak i pracowni
komputerowej oraz językowej.

Część informatyczna
^^^^^^^^^^^^^^^^^^^

Część doświadczalna musi zostać poprzedzona podstawowym kursem
Pythona, obejmującym rysowanie i formatowanie wykresów oraz
dopasowywanie funkcji do danych doświadczalnych. Polska podstawa
programowa wymaga jedynie dopasowywania prostych y = ax \+ b i
obliczania współczynników a i b. Python umożliwia łatwe dopasowywanie
dowolnej krzywej, co stanowi dobrą okazję do zabawy z
hiperbolą. Dodatkowe umiejętności niezbędne do wykonania zadania
domowego zadanego pod koniec lekcji eksperymentalnej są następujące:
formatowanie tekstu w Sage, wstawianie zdjęć i tabel do
notatnika. Zaleca się przeprowadzenie z uczniami nastęujących ćwiczeń:

1) Wstaw dowolne zdjęcie do notatnika:

.. image:: struna_media/DSC04811.JPG
    :align: center

2) Utwórz i sformatuj tabelę z przykładowymi danymi:

=== ==== === === === === === === === ==
LP. 1    2   3   4   5   6   7   8   9 
l   5    10  15  20  30  40  50  70  90
y   1750 879 589 444 309 243 185 122 99
=== ==== === === === === === === === ==

3) Utwórz i ładnie sformatuj na ich podstawie wykres.


.. sagecellserver::

     # Tworzenie wykresu punktowego
     l = [5, 10, 15, 20, 30, 40, 50, 70, 90]
     y = [1750, 879, 589, 444, 309, 243, 185, 122, 99]
     point(zip(l,y))

.. end of output

.. sagecellserver::

     # Metody ozdabiania wykresu
     pkt=[(l[i],y[i]) for i in range(len(l))]
     point(pkt, gridlines=True, size=25, color='red', axes_labels=['l', 'y'], legend_label='y(l)')

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`struna_plot1`.

    .. figure:: figs/struna_plot1.pdf
       :width: 70%
       :name: struna_plot1
     
       Wykres danych z legendą oraz siatką.


Tabelaryczne wypisanie danych (zamiast drukowania)


.. sagecellserver::

     data = [['l', 'y']]
     data.extend(zip(l, y))
     table(data)

.. end of output

4) Dopasuj hiperbolę do powyższych punktów


.. sagecellserver::

     # Dopasowywanie hiperboli
     var ('a, b')
     hyper(x) = a/x+b
     fit = find_fit(pkt, hyper,solution_dict=True)
     print(fit)
     rys1=plot(hyper.subs(fit), x, 5, 90, color="green", legend_label='fitted hyperbola')
     rys2=point(pkt, gridlines=True, size=25, color='red', legend_label='measuring points')
     rys1+rys2

.. end of output

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`struna_plot2`.

    .. figure:: figs/struna_plot2.pdf
       :width: 70%
       :name: struna_plot2
     
       Wykres danych doswiadczalnych wraz z dopasowaniem do modelu.



5) Przyjmij, że l oznacza długość struny, natomiast y to częstotliwość
   jej drgań. Sporządź wykres T(l), gdzie T jest okresem oraz dopasuj
   do niego prostą. Zbadaj, czy wymuszenie przejścia prostej przez
   początek układu współrzędnych wpływa na wartość współczynników w
   sposób istotny.



.. sagecellserver::

     pktinv=[(l[i],N(1/y[i], digits=4)) for i in range(len(l))]
     print(pktinv)
     var ('a, b, c')
     straight(x) = a*x+b
     straight0(x) = c*x
     fit = find_fit(pktinv, straight,solution_dict=True)
     print(fit)
     fit0 = find_fit(pktinv, straight0,solution_dict=True)
     print(fit0)
     rys1=plot(straight.subs(fit), (x, 0, 90), color="green", legend_label='fitted straight line')
     rys0=plot(straight0.subs(fit0), (x, 0, 90), color="yellow", legend_label='going through 0')
     rys2=point(pktinv, gridlines=True, size=25, color='red', legend_label='measuring points', axes_labels=['l [cm]','T [s]'])
     rys1+rys0+rys2

.. end of output

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`struna_plot3`.

    .. figure:: figs/struna_plot3.pdf
       :width: 70%
       :name: struna_plot3
     
       Wykres okresu drgań od długości struny wraz z dopasowaniem do
       modelli :math:`y=ax+b` i :math:`y=ax`.





Część doświadczalna
^^^^^^^^^^^^^^^^^^^

Na początku nauczyciel prosi uczniów o przypomnienie podstawowych
faktów dotyczących fal stojacych, częstotliwości, długosci fali i
prędkości fazowej. Następnie wyprowadza wzór*f* ( *l* ), gdzie *l* to
długość struny. Wzór ten pokazuje, że te dwie zmienne są odwrotnie
proporcjonalne. Zbadanie tej zależnosci jest głównym celem niniejszej
lekcji.

Następnie uczniowie dzielą się na grupy. Każda grupa wybiera jeden
instrument. Może nim być struna rozpięta na linijce lub pudle
rezonansowym albo dowolny strunowy instrument muzyczny. Grupy oddalają
się maksymalnie, by jak najmniej sobie przeszkadzać.

W każdej grupie ktoś odpowiada za wprawianie struny w
drgania. Jednocześnie ktoś inny generuje dźwięk za pomocą aplikacji
mobilnej lub komputerowej. Ma ona możliwość płynnej zmiany
częstotliwości. Gdy grupa uzna, że aplikacja "stroi", czyli wydaje
dźwięk taki sam jak struna, grupa odnotowuje długość struny i
wyświetlaną częstotliwość. Pomiar powtarzany jest dla różnych długości
oscylatora w najszerszym możliwym zakresie. Alternatywnie,
częstotliwość drgań struny może być mierzona bezpośrednio przez
odpowiednią aplikacje na smartfonie.

Wszystkie zebrane dane są zapisywane w tabeli w notatniku. Uczniowie
są zachęcania do robienia zdjęć układowi pomiarowemu. Nauczyciel
zapowiada, że zebrane dane oraz zdjęcia będą potrzebne do wykonania
pracy domowej.

Zadanie domowe
--------------

Napisz w Sage krótkie sprawozdanie o przeprowadzonym eksperymencie,
zawierające opis istoty problemu, układu pomiarowego (ze zdjęciem),
użytych narzędzi, wykonanych czynności, uzyskanych wyników oraz
wnioski. W szczególności sprawozdanie powinno potwierdzić lub obalic
hipotezę, że częstotliwość drgań jest odwrotnie proporcjonalna do
długości struny.

Dane są wspólne dla całej grupy, niemniej sprawozdania musza być
napisane niezależnie i indywidualnie. Autorzy najlepszych prac zyskują
prawo do ich przetłumaczenia na angielski i opublikowania za dodatkowe
punkty. Nauczyciele języka angielskiego są gotowi do pomocy i nadzoru
w procesie tłumaczenia

Uwagi o realizacji
--------------------

Pierwszy raz niniejszą lekcję przeprowadzono w maju 2015. Wszyscy
uczniowie wykonali te same pomiary. cała grupa (14 osób) widoczna jest
na zamieszczonym zdjęciu. Wprawdzie wszystkie sprawozdania oparte są
na tych samych danych, lecz poprosiłem o pracę indywidualną i
napisanie w domu unikalnych sprawozdań. Faktycznie, przedstawione do
oceny prace różniły sie poziomem i użytymi środkami. Uczniowie
zazwyczaj przyznawali, że użycie Sage bardzo im pomogło. Odkryli w tym
środowisku wygodne narzędzie do realizacji podobnych zadań.

W pierwszym roku realizacji projektu nie było mozliwości tłumaczenia
prac na język angielski. Wpadłem na ten pomysł dopiero rok później.

Druga edycja lekcji *Badanie drgań struny* została przeprowadzona 5
kwietnia 2016 (obie części \- informatyczna i fizyczna). Uczniowie
zostali podzieleni na 5 grup 4\-osobowych. Jedna z uczennic przyniosła
własne skrzypce, ktoś inny gitarę. Pozostałe grupy zostały wyposażone
w instrumenty z mojego laboratorium, tzn strunę na pudle rezonansowym
oraz dwie w struny rozpięte na linijce. Wszystkie grupy dysponowały
generatorami akustycznymi bądź mobilnymi aplikacjami do pomiaru
dominującej częstotliwości odbieranego dźwięku. Niektóre grupy
pozostały w klasie, zaś inne wyszły na korytarz, by przeprowadzić
badania daleko od zakłóceń powodowanych przez inne grupy.

Po dokonaniu wstępnych obliczeń okazało się, że 4 grupy odniosły
sukces w pomiarach, natomiast jedna napotkała zakłocenia ze strony
dźwięków wytwarzanych przez sąsiednią grupę. Poprosili mnie o
możliwość powtórzenia pomiarów na zajęciach
pozalekcyjnych. Ostatecznie wszyscy uczniowie otrzymali sensowne
wyniki i napisali całkiem dobre sprawozdania.

Po dwóch tygodniach spotkalismy sie ponownie w pracowni
komputerowej. Do tego czasu dokonałem wstępnej oceny prac. Uzasadniłem
swoje oceny oraz wskazałem, co można było poprawić. Po upływie
tygodnia dokonałem ostatecznej oceny. Pięć prac uzyskało najwyższą
notę i przeszło do następnego etapu. Ich autorzy otrzymali przywilej
przetłumaczenia ich na angielski i opublikowania za dodatkowe
punkty. Wcześnierj poprosiłem anglistów o współpracę. Nadzorowali oni
tłumaczenia, a także postawili własne oceny ze swojego
przedmiotu. Wsszystkie wyróżnione prace zostały opublikowane na
serwerze sage01.

Lekcja odniosła wielki sukces. Bardzo spodobała się uczniom. Zdołałem
zintegrować fizykę nie tylko z informatyką, ale również z językiem
angielskim. Językowcy docenili moją inicjatywę i przyznali, że było to
ciekawe doświadczenie zarówno dla nich, jak i dla uczniów. Uczą oni
przedmiotu o nazwie *język angielski techniczny dla inżynierów,* a
nasza współpraca przyniosła żywe, praktyczne zastosowanie tego
przedmiotu.

Nie będę opisywać indywidualnych wniosków uczniów, ponieważ są one
wszystkie zawarte w opublikowanych oryginalnych pracach.

Ostatnia edycja tej lekcji (kwiecień 2017) odniosła największy
sukces. Kolejny rocznik uczniów posiadł umiejętność dodawania do
wykresu prostokątów błędów przy użyciu biblioteki numpy. Niektórzy
uczniowie przyniesli na lekcję swój profesjonalny sprzęt muzyczny i
przeprowadzili naprawdę poważne badania naukowe. Podobnie jak rok
wcześniej, zakwalifikowałem najlepsze prace do tłumaczenia, z którego
uczniowie wywiązali się doskonale. Najlepsze prace domowe zawarte są w
oddzielnych plikach.

Praca 1, wersja polska: https://sage01.icse.us.edu.pl/home/pub/184/

Praca 1, wersja angielska: https://sage01.icse.us.edu.pl/home/pub/179/

Praca 2, wersja polska: https://sage01.icse.us.edu.pl/home/pub/170/

Praca 2, wersia angielska: https://sage01.icse.us.edu.pl/home/pub/172/


