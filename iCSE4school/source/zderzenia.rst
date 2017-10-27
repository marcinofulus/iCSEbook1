Zderzenia
=========

O scenariuszu
-------------

Materiał przedstawiony poniżej może być zrealizowany podczas 2 godzin
lekcyjnych: jedna w pracowni fizycznej, druga w sali zaopatrzonej w
wystarczającą ilość komputerów.

Przedstawiony w niniejszym dokumencie eksperyment realizowany był na
zajęciach pozalekcyjnych i miał status zadania
dodatkowego. Zainteresowani uczniowie mogli go przeprowadzić,
sfilmować i opisać w formie sprawozdania, za które mogli otrzymać
dodatkową ocenę.

Scenariusz został opracowany w ramach projektu iCSE4school na podstawie
lekcji prowadzonych w latach 2015-2017 w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Adama Ogazę.

Wartością dodatkową była owocna współpraca z anglistami, pod okiem
których autorzy najlepszych prac dokonali ich tłumaczenia. Uczniowie
klas ścisłych realizują w naszej szkole dodatkowy przedmiot o nazwie
*język angielski dla inżynierów*. Doświadczenie z fizyki stworzyło
możliwość przećwiczenia języka technicznego na żywym przykładzie i
otrzymania dodatkowej oceny z tego przedmiotu.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.



Opis problemu
-------------


Eksperyment polega na przeanalizowaniu zderzenia centralnego 2 ciał o
znanych masach na torze powietrznym. Oryginalne slizgacze na torze
wyposażone były w spężyste metalowe zderzaki. Ponieważ zauważyłem, że
podczas zderzeń część energii rozprasza się, powodując trwałe
odkształcenia zderzaków, zastąpiłem je odpychającymi się magnesami
neodymowymi. Można więc oczekiwać, że obecnie zderzenia będą doskonale
sprężyste, a więc zachowany będzie zarówno pęd, jak i energia
kinetyczna. Tak zaprojektowany eksperyment stwarza również możliwość
dokładniejszego zbadania charakteru siły magnetycznej.

Zderzenia trwały około 3 sekund i zostały sfilmowane kamerami
HD. Przykładowy film znajduje się pod adresem:
`https://youtu.be/JSpKctrX_YM`

.. only:: html

        .. raw:: html

            <center><iframe width="420" height="280" src="https://www.youtube.com/embed/JSpKctrX_YM" frameborder="0" allowfullscreen></iframe> </center>



Zadaniem uczniów było odczytywanie (klatka po klatce) położenia obydwu
ślizgaczy na tle skali toru powietrznego. Ślizgaczy było kilka do
wyboru, każdy o innej masie. Zmienne :math:`x_1` i :math:`x_2`
oznaczają współrzędne konców podstawy ślizgaczy zwróconych ku
sobie. Przyklejone do ślizgaczy magnesy wystawały o :math:`d_1` i
:math:`d_2`, tak więc odległość między ich biegunami była mniejsza od
:math:`|x_2-x_1|` o :math:`d_1+d_2`. Zbiór danych eksperymentalnych
jest więc następujący:

- Masy ślizgaczy: :math:`m_1` i :math:`m_2` od około 0,17 kg do ponad
  0,4 kg
- Rozmiary magnesów i ich mocowania: :math:`d_1` i :math:`d_2`, około
  0,01 m
- Czas był obliczany iteracyjnie i, w zależności od kamery, narastał z
  krokiem 1/25 s lub 1/30 s
- Współrzędne ślizgaczy :math:`x_1(t)` i :math:`x_2(t)` odczytywane z
  filmu i wyrażone w metrach. Jeśli ślizgacze poruszały się w kierunku
  malejących wartości na skali, ich prędkości i pędy są ujemne.

Na podstawie powyższych danych należało wykonać i zinterpretować
następujące wykresy:

- :math:`x_1(t)` i :math:`x_2(t)` - położenia ślizgaczy w funkcji czasu
- :math:`v_1(t)` i :math:`v_2(t)` - prędkości chwilowe ślizgaczy w
  poszczególnych klatkach. Jesli punkty wykresu tworzyły chaotyczną
  chmurę (zaszumienie danych), radziłem, by uśredniać prędkości z 2
  sąsiednich klatek.
- :math:`p_1(t), p_2(t)` i :math:`p_c(t)` - pędy poszczególnych
  ślizgaczy i całego układu. Należało zbadać, czy pęd układu został
  zachowany.
- :math:`E_1(t), E_2(t)` i :math:`E_c(t)` - energie kinetyczne
  ślizgaczy i ich suma. Należało zbadać, czy energia kinetyczna jest
  zachowana.
- :math:`a_1(t)` i :math:`a_2(t)` - przyspieszenia, jakim podlegają
  ślizgacze.
- :math:`F_1(t)` i :math:`F_2(t)` - siły działające na ślizgacze
- :math:`F(r)` - zależność siły magnetycznej od odległości między
  biegunami (z uwzględnieniem rozmiarów wystających z wózków
  magnesów).


Uwagi o realizacji
------------------

**Dane pierwszego ucznia** 

Było to pionierskie wykonanie tego doświadczenia w kwietniu 2016 przez
pojedynczego ochotnika z pierwszego rocznika uczniów realizujących
projekt.

Wyniki pomiarów i wykresy :math:`x_1(t)` i :math:`x_2(t)`


.. only:: latex

    .. sagecellserver::

         m1 = 0.1793
         m2 = 0.3197
         d1 = 0.01
         d2 = 0.011
         delta_t = 1/30
         t = [(i*delta_t) for i in range(0,100)]
         x1 = [1.005,1.005,1.005,...
         x2 = [1.720,1.710,1.695,...
         x1t = [(t[i],x1[i]) for i in range(0,100)]
         x2t = [(t[i],x2[i]) for i in range(0,100)]
         xt = point(x1t,color = "red",legend_label='x1(t)')+\
              point(x2t,color="blue",legend_label='x2(t)')
         xt



.. only:: html

    .. sagecellserver::

         m1 = 0.1793
         m2 = 0.3197
         d1 = 0.01
         d2 = 0.011
         delta_t = 1/30
         t = [(i*delta_t) for i in range(0,100)]
         x1 = [1.005,1.005,1.005,1.005,1.006,1.006,1.006,1.006,1.007,1.007,1.007,1.007,1.008,1.008,1.008,1.008,1.009,1.009,1.009,1.009,1.010,1.010,1.010,1.010,1.011,1.011,1.011,1.011,1.012,1.012,1.012,1.012,1.013,1.013,1.013,1.013,1.014,1.014,1.014,1.014,1.015,1.015,1.015,1.016,1.016,1.015,1.012,1.007,0.994,0.978,0.963,0.948,0.931,0.914,0.899,0.882,0.863,0.846,0.830,0.817,0.800,0.783,0.765,0.749,0.733,0.716,0.700,0.684,0.668,0.652,0.636,0.620,0.605,0.590,0.575,0.559,0.543,0.528,0.512,0.496,0.481,0.466,0.450,0.434,0.419,0.403,0.387,0.373,0.357,0.342,0.326,0.311,0.296,0.282,0.266,0.251,0.238,0.224,0.208,0.200]
         x2 = [1.720,1.710,1.695,1.680,1.665,1.650,1.635,1.620,1.605,1.589,1.573,1.559,1.545,1.530,1.515,1.501,1.486,1.472,1.458,1.443,1.429,1.415,1.400,1.388,1.375,1.362,1.347,1.332,1.319,1.304,1.291,1.277,1.264,1.249,1.235,1.221,1.208,1.195,1.183,1.169,1.156,1.143,1.130,1.117,1.100,1.090,1.079,1.068,1.057,1.047,1.040,1.036,1.034,1.030,1.026,1.022,1.019,1.015,1.011,1.008,1.004,1.000,0.997,0.994,0.991,0.987,0.984,0.981,0.978,0.974,0.970,0.966,0.962,0.960,0.956,0.953,0.950,0.946,0.942,0.938,0.935,0.931,0.928,0.925,0.922,0.919,0.915,0.911,0.908,0.904,0.899,0.895,0.891,0.887,0.885,0.881,0.878,0.874,0.871,0.868]
         x1t = [(t[i],x1[i]) for i in range(0,100)]
         x2t = [(t[i],x2[i]) for i in range(0,100)]
         xt = point(x1t,color = "red",legend_label='x1(t)')+\
              point(x2t,color="blue",legend_label='x2(t)')
         xt


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`zderzenia_plot1`.

    .. figure:: figs/zderzenia_plot1.pdf
       :width: 70%
       :name: zderzenia_plot1
     
       Wykres drogi od czasu wykonany z danych doświadczalnych.


Wykresy :math:`v_1(t)` i :math:`v_2(t)` 

.. sagecellserver::

     v1 = [((x1[i+1]-x1[i])/(delta_t)) for i in range(0,99)]
     v2 = [((x2[i+1]-x2[i])/(delta_t)) for i in range(0,99)]
     v1t = [(t[i],v1[i]) for i in range(0,99)]
     v2t = [(t[i],v2[i]) for i in range(0,99)]
     vt = point(v1t,color="red",legend_label='v1(t)')+\
          point(v2t,color="blue",legend_label='v2(t)')
     vt


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`zderzenia_plot2`.

    .. figure:: figs/zderzenia_plot2.pdf
       :width: 70%
       :name: zderzenia_plot2
     
       Wykres prędkości  od czasu wykonany na podstawie pomiaru drogi.




Widać na nich duży szum spowodowany ograniczoną rozdzielczością
odczytu położenia i czasu. Wystarczą niewielkie fluktuacje przyrostów
położenia w poszczególnych klatkach filmu, niewidoczne na wykresach z
położeniem, a wykresy prędkości rozsypują się. Szum danych przenosi
się (i potęguje) na wykresach pędów, enegii kinetycznych (tu mamy
kwadrat prędkości!), przyspieszeń i sił. Poradziłem więc uśredniać
prędkości na dwóch sąsiednich przedziałach (klatkach filmu):

.. sagecellserver::

     v1 = [((x1[i+1]-x1[i-1])/(2*delta_t)) for i in range(1,99,2)]
     v2 = [((x2[i+1]-x2[i-1])/(2*delta_t)) for i in range(1,99,2)]
     v1t = [(t[2*i],v1[i]) for i in range(0,49)]
     v2t = [(t[2*i],v2[i]) for i in range(0,49)]
     vt = point(v1t,color="red",legend_label='v1(t)')+\
        point(v2t,color="blue",legend_label='v2(t)')
     vt

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`zderzenia_plot3`.

    .. figure:: figs/zderzenia_plot3.pdf
       :width: 70%
       :name: zderzenia_plot3
     
       Wykres prędkości  od czasu wykonany na podstawie pomiaru drogi z uśrednianiem.



Szum się zmmiejszył, ale zmalała też ilość punktów wykresu i w ogóle
rozdzielczość czasowa, z jaką badamy zjawisko. A najbardziej
interesujące procesy zachodzą w krótkiej chwili największego zbliżenia
ślizgaczy.

Uczeń sporządził pozostałe wykresy, napisał sprawozdanie i wyciągnął
wnioski, ale w chmurze punktów pomiarowych trudno było dopatrzyć się
ciekawych szczegółów. Dane można odszumić, stosując bardziej
zaawansowane metody matematyczne, daleko wykraczające poza możliwości
ucznia szkoły średniej.

**Dane drugiego ucznia** 

W październiku 2016 roku cała grupa kolejnego rocznika uczniów sfilmowała swoje zderzenia. Starano się zbadać odmienne przypadki, zmieniając masy wózków, wartości i zwroty predkości lub ustawiając jeden ze ślizgaczy nieruchomo (jako tarczę). Przytaczam dane autora najlepszego opracowania (dotyczą filmu cytowanego wyżej).

Wyniki pomiarów i wykresy :math:`x_1(t)` i :math:`x_2(t)`


.. only:: html

     .. sagecellserver::

       m1 = 0.4093
       m2 = 0.17195
       d1 = 0.011
       d2 = 0.01
       delta_t = 1/25
       t = [(i*delta_t) for i in range(0, 61)]
       x1 = [0.187, 0.197, 0.207, 0.217, 0.227, 0.237, 0.247, 0.257, 0.266, 0.276, 
       0.286, 0.296, 0.306, 0.316, 0.325, 0.335, 0.345, 0.354, 0.364, 0.374, 
       0.383, 0.393, 0.403, 0.413, 0.422, 0.432, 0.442, 0.451, 0.461, 0.471, 
       0.480, 0.490, 0.500, 0.509, 0.519, 0.529, 0.538, 0.546, 0.554, 0.558, 
       0.560, 0.561, 0.562, 0.563, 0.5635, 0.5638, 0.564, 0.5645, 0.565, 0.5655, 
       0.566, 0.5665, 0.567, 0.5675, 0.568, 0.568, 0.5685, 0.569, 0.569333,
       0.569666,   0.567]
       x2 = [0.845, 0.837, 0.83, 0.823, 0.816, 0.809, 0.801, 0.793, 0.786, 0.78, 
       0.774, 0.767, 0.76, 0.754, 0.746, 0.739, 0.733, 0.726, 0.72, 0.713, 0.705, 
       0.699, 0.692, 0.686, 0.68, 0.673, 0.666, 0.66, 0.653, 0.647, 0.64, 0.633, 
       0.628, 0.621, 0.616, 0.61, 0.604, 0.602, 0.605, 0.615, 0.629, 0.644, 0.66, 
       0.677, 0.691, 0.706, 0.723, 0.738, 0.754, 0.77, 0.786, 0.802, 0.818, 0.833, 
       0.848, 0.863, 0.878, 0.892, 0.906, 0.92, 0.936]
       x1t = [(t[i], x1[i]) for i in range(0, 61)]
       x2t = [(t[i],x2[i]) for i in range(0, 61)]
       xt = point(x1t, color = "red", legend_label = 'x1(t)')+\
            point(x2t, color = "blue",    legend_label = 'x2(t)')
       xt

.. only:: latex

     .. sagecellserver::

       m1 = 0.4093
       m2 = 0.17195
       d1 = 0.011
       d2 = 0.01
       delta_t = 1/25
       t = [(i*delta_t) for i in range(0, 61)]
       x1 = [0.187, 0.197, ...       0.569666,   0.567]
       x2 = [0.845, 0.837, ....     0.906, 0.92, 0.936]
       x1t = [(t[i], x1[i]) for i in range(0, 61)]
       x2t = [(t[i],x2[i]) for i in range(0, 61)]
       xt = point(x1t, color = "red", legend_label = 'x1(t)')+\
            point(x2t, color = "blue",    legend_label = 'x2(t)')
       xt



.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`zderzenia_plot4`.

    .. figure:: figs/zderzenia_plot4.pdf
       :width: 70%
       :name: zderzenia_plot4
     
       Wykres położenia od czasu wykonany na podstawie doświadczenia.



Wykresy :math:`v_1(t)` i :math:`v_2(t)`

Od razu zastosowano uśrednianie po sąsiednich klatkach, by zmniejszyć szum.

.. sagecellserver::

  v1 = [((x1[i+1]-x1[i-1])/(2*delta_t)) for i in range(0,60,1)]
  v2 = [((x2[i+1]-x2[i-1])/(2*delta_t)) for i in range(0,60,1)]
  v1t = [(t[i], v1[i]) for i in range(1, 60)]
  v2t = [(t[i], v2[i]) for i in range(1, 60)]
  vt = point(v1t, color = "red", legend_label='v1(t)') + \
       point(v2t, color = "blue", legend_label = 'v2(t)')
  vt
.. end of output

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`zderzenia_plot5`.

    .. figure:: figs/zderzenia_plot5.pdf
       :width: 70%
       :name: zderzenia_plot5
     
       Wykres prędkości od czasu wykonany na podstawie pomiaru drogi z
       uśrednianiem.



Szczególy analizy zawarte są w orginalnej pracy ucznia:

wersja polska: https://sage01.icse.us.edu.pl/home/pub/146/

wersja angielska: https://sage01.icse.us.edu.pl/home/pub/147/ 


Wnioski
-------

Przedstawione doświadczenie było jednym z ciekawszych w mojej karierze
zawodowej. Ze względu na mnogość różnych sytuacji (dowolne prędkości,
kilka mas ślizgaczy do wyboru), można było uzyskać zupełnie różne
rezultaty. Uczniowie mieli też swobodę w wyciąganiu wniosków, była to
ich samodzielna praca badawcza. Na przykład w cytowanej pracy, na
wykresie energii kinetycznej widać wyraźne minimum w chwili
największego zbliżenia wózków. Uczeń zinterpretował to jako błąd
pomiarowy spowodowany zbyt szybko zmieniającymi się prędkościami. Moim
zdaniem jest to moment, w którym energia kinetyczna częściowo
zamieniła sie w energię oddziaływań magnetycznych. Ale dlaczego, w
takim razie, widać też załamanie na wykresie pędu całkowitego?

Doświadczenie dotyczyło w zasadzie czystej mechaniki, ale przy okazji
dało sposobność zbadania charakteru siły magnetycznej. Uczniowie mogli
dopasowywać do wykresu :math:`F(r)` dowolne krzywe - nie narzucałem
tutaj rozwiązań. Należało spojrzeć na dane i domyślić się, jakiego
typu krzywa będzie najbardziej odpowiednia.

Jak widać z powyższej analizy, kluczowe znaczenie ma precyzyjny odczyt
położeń ślizgaczy na poszczególnych klatkach filmu. Nie jest to łatwe
i wymaga zastosowania kamery o dobrych parametrach. Szum danych można
częściowo usunąć, ale odbywa sie to kosztem obniżenia rozdzielczości,
z jaką widzimy całe zjawisko.

