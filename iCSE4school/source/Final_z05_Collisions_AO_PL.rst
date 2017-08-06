Zderzenia
=========

Uwagi wstępne
-------------
Ninejszy dokument przedstawia przebieg pionierskiego eksperymentu przeprowadzonego przez jednego z uczniów i próbę analizy numerycznej uzyskanych rezultatów. Usiłując poprawić tą analizę, natrafiłem na zasadnicze trudności z usunięciem “szumu” w danych. Jeśli uda mi się je przezwyciężyć, w kolejnej edycji zlecę wykonanie podobnego eksperymentu całaj klasie.

Eksperyment polega na przeanalizowaniu zderzenia centralnego 2 ciał o znanych masach na torze powietrznym. Oryginalne slizgacze na torze wyposażone były w spężyste metalowe zderzaki. Ponieważ zauważyłem, że podczas zderzeń część energii rozprasza się, powodując trwałe odkształcenia zderzaków, zastąpiłem je odpychającymi się magnesami neodymowymi. Można więc oczekiwać, że obecnie zderzenia będą doskonale sprężyste, a więc zachowany będzie zarówno pęd, jak i energia kinetyczna. Tak zaprojektowany eksperyment stwarza również możliwość dokładniejszego zbadania charakteru siły magnetycznej.

Całe zderzenie trwało nieco ponad 3 sekundy i zostało sfilmowane z częstotliwością 30 klatek/s. Następnie uczeń odczytał (klatka po klatce) położenia obydwu ślizgaczy na tle skali toru powietrznego. Zmienne x1 i x2 oznaczają współrzędne konców podstawy ślizgaczy zwróconych ku sobie. Przyklejone do ślizgaczy magnesy wystawały o d1 i d2, tak więc odległość między ich biegunami była mniejsza od |x2-x1| o d1+d2. Zbiór danych eksperymentalnych jest więc następujący:
•Masy ślizgaczy: m1 = 0,1793 kg, m2 = 0,3197 kg
•Rozmiary magnesów i ich mocowania: d1 = 0,01 m, d2 = 0,011 m
•Czas t odczytywany z filmu z krokiem 1/30 s
•Współrzędne ślizgaczy x1(t) i x2(t) odczytywane z filmu i wyrażone w metrach. Ślizgacze poruszały się zasadniczo w kierunku malejących wartości na skali, więc ich prędkości i pędy są ujemne.

Poleciłem uczniowi wykonanie i zinterpretowanie następujących wykresów:
•x1(t) i x2(t) - położenia ślizgaczy w funkcji czasu
•v1(t) i v2(t) - prędkości chwilowe ślizgaczy w poszczególnych klatkach. Ponieważ punkty wykresu utworzyły dość chaotyczną chmurę, poradziłem, by uśredniać prędkości z 2 sąsiednich klatek.
•p1(t), p2(t) i pc(t) - pędy poszczególnych ślizgaczy i całego układu. Należało zbadać, czy pęd układu został zachowany.
•E1(t), E2(t) i Ec(t) - energie kinetyczne ślizgaczy i ich suma. Należało zbadać, czy energia kinetyczna jest zachowana.
•a1(t) i a2(t) - przyspieszenia, jakim podlegają ślizgacze.
•F1(t) i F2(t) - siły działające na ślizgacze
•F(r) - zależność siły magnetycznej od odległości między biegunami (z uwzględnieniem rozmiarów wystających z wózków magnesów).

Wyniki pomiarów i wykresy x1(t) i x2(t)

.. sagecellserver::

  var('a,b')
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
  0.566, 0.5665, 0.567, 0.5675, 0.568, 0.568, 0.5685, 0.569, 0.569333, 0.569666,   0.567]
  x2 = [0.845, 0.837, 0.83, 0.823, 0.816, 0.809, 0.801, 0.793, 0.786, 0.78, 
  0.774, 0.767, 0.76, 0.754, 0.746, 0.739, 0.733, 0.726, 0.72, 0.713, 0.705, 
  0.699, 0.692, 0.686, 0.68, 0.673, 0.666, 0.66, 0.653, 0.647, 0.64, 0.633, 
  0.628, 0.621, 0.616, 0.61, 0.604, 0.602, 0.605, 0.615, 0.629, 0.644, 0.66, 
  0.677, 0.691, 0.706, 0.723, 0.738, 0.754, 0.77, 0.786, 0.802, 0.818, 0.833, 
  0.848, 0.863, 0.878, 0.892, 0.906, 0.92, 0.936]
  x1t = [(t[i], x1[i]) for i in range(0, 61)]
  x2t = [(t[i],x2[i]) for i in range(0, 61)]
  xt = point(x1t, color = "red", legend_label = 'x1(t)')+point(x2t, color = "blue",    legend_label = 'x2(t)')
  xt
.. end of output
