.. -*- coding: utf-8 -*-

Please write a title for this worksheet!
========================================

**Uwagi wstępne**

Ninejszy dokument przedstawia przebieg pionierskiego eksperymentu przeprowadzonego przez jednego z uczniów i próbę analizy numerycznej uzyskanych rezultatów. Usiłując poprawić tą analizę, natrafiłem na zasadnicze trudności z usunięciem "szumu" w danych. Jeśli uda mi się je przezwyciężyć, w kolejnej edycji zlecę wykonanie podobnego eksperymentu całaj klasie.

Eksperyment polega na przeanalizowaniu zderzenia centralnego 2 ciał o znanych masach na torze powietrznym. Oryginalne slizgacze na torze wyposażone były w spężyste metalowe zderzaki. Ponieważ zauważyłem, że podczas zderzeń część energii rozprasza się, powodując trwałe odkształcenia zderzaków, zastąpiłem je odpychającymi się magnesami neodymowymi. Można więc oczekiwać, że obecnie zderzenia będą doskonale sprężyste, a więc zachowany będzie zarówno pęd, jak i energia kinetyczna. Tak zaprojektowany eksperyment stwarza również możliwość dokładniejszego zbadania charakteru siły magnetycznej.

Całe zderzenie trwało nieco ponad 3 sekundy i zostało sfilmowane z częstotliwością 30 klatek/s. Następnie uczeń odczytał (klatka po klatce) położenia obydwu ślizgaczy na tle skali toru powietrznego. Zmienne x1 i x2 oznaczają współrzędne konców podstawy ślizgaczy zwróconych ku sobie. Przyklejone do ślizgaczy magnesy wystawały o d1 i d2, tak więc odległość między ich biegunami była mniejsza od \|x2\-x1\| o d1\+d2. Zbiór danych eksperymentalnych jest więc następujący:

- Masy ślizgaczy: m1 = 0,1793 kg, m2 = 0,3197 kg
- Rozmiary magnesów i ich mocowania: d1 = 0,01 m, d2 = 0,011 m
- Czas t odczytywany z filmu z krokiem 1/30 s
- Współrzędne ślizgaczy x1(t) i x2(t) odczytywane z filmu i wyrażone w metrach. Ślizgacze poruszały się zasadniczo w kierunku malejących wartości na skali, więc ich prędkości i pędy są ujemne.

Poleciłem uczniowi wykonanie i zinterpretowanie następujących wykresów:

- x1(t) i x2(t) \- położenia ślizgaczy w funkcji czasu
- v1(t) i v2(t) \- prędkości chwilowe ślizgaczy w poszczególnych klatkach. Ponieważ punkty wykresu utworzyły dość chaotyczną chmurę, poradziłem, by uśredniać prędkości z 2 sąsiednich klatek.
- p1(t), p2(t) i pc(t) \- pędy poszczególnych ślizgaczy i całego układu. Należało zbadać, czy pęd układu został zachowany.
- E1(t), E2(t) i Ec(t) \- energie kinetyczne ślizgaczy i ich suma. Należało zbadać, czy energia kinetyczna jest zachowana.
- a1(t) i a2(t) \- przyspieszenia, jakim podlegają ślizgacze.
- F1(t) i F2(t) \- siły działające na ślizgacze
- F(r) \- zależność siły magnetycznej od odległości między biegunami (z uwzględnieniem rozmiarów wystających z wózków magnesów).

**Wyniki pomiarów i wykresy x1(t) i x2(t)**


::

    sage: var('a,b')
    sage: m1=0.1793
    sage: m2=0.3197
    sage: d1=0.01
    sage: d2=0.011
    sage: delta_t=1/30
    sage: t=[(i*delta_t) for i in range(0,100)]
    sage: x1=[1.005,1.005,1.005,1.005,1.006,1.006,1.006,1.006,1.007,1.007,1.007,1.007,1.008,1.008,1.008,1.008,1.009,1.009,1.009,1.009,1.010,1.010,1.010,1.010,1.011,1.011,1.011,1.011,1.012,1.012,1.012,1.012,1.013,1.013,1.013,1.013,1.014,1.014,1.014,1.014,1.015,1.015,1.015,1.016,1.016,1.015,1.012,1.007,0.994,0.978,0.963,0.948,0.931,0.914,0.899,0.882,0.863,0.846,0.830,0.817,0.800,0.783,0.765,0.749,0.733,0.716,0.700,0.684,0.668,0.652,0.636,0.620,0.605,0.590,0.575,0.559,0.543,0.528,0.512,0.496,0.481,0.466,0.450,0.434,0.419,0.403,0.387,0.373,0.357,0.342,0.326,0.311,0.296,0.282,0.266,0.251,0.238,0.224,0.208,0.200]
    sage: x2=[1.720,1.710,1.695,1.680,1.665,1.650,1.635,1.620,1.605,1.589,1.573,1.559,1.545,1.530,1.515,1.501,1.486,1.472,1.458,1.443,1.429,1.415,1.400,1.388,1.375,1.362,1.347,1.332,1.319,1.304,1.291,1.277,1.264,1.249,1.235,1.221,1.208,1.195,1.183,1.169,1.156,1.143,1.130,1.117,1.100,1.090,1.079,1.068,1.057,1.047,1.040,1.036,1.034,1.030,1.026,1.022,1.019,1.015,1.011,1.008,1.004,1.000,0.997,0.994,0.991,0.987,0.984,0.981,0.978,0.974,0.970,0.966,0.962,0.960,0.956,0.953,0.950,0.946,0.942,0.938,0.935,0.931,0.928,0.925,0.922,0.919,0.915,0.911,0.908,0.904,0.899,0.895,0.891,0.887,0.885,0.881,0.878,0.874,0.871,0.868]
    sage: x1t=[(t[i],x1[i]) for i in range(0,100)]
    sage: x2t=[(t[i],x2[i]) for i in range(0,100)]
    sage: xt=point(x1t,color="red",legend_label='x1(t)')+point(x2t,color="blue",legend_label='x2(t)')
    sage: xt


.. end of output

**Wykresy v1(t) i v2(t)**

Widać na nich duży szum spowodowany ograniczoną rozdzielczością odczytu położenia i czasu. Został on znacznie ograniczony poprzez zastosowanie uśredniania po sąsiednich interwałach czasowych. Czy są jakieś skuteczniejsze metody?

Wykomentowane fragmenty są śladem moich prób dopasowania krzywych do punktów pomiarowych. Nie były zbyt udane. Proszę o sugestie w tej sprawie. Zastanawiam się nad zastosowaniem funkcji określonej na przedziałach: daleko od punktu zderzenia linie proste, w centralnej części bardziej zaawansowana funkcja z odpowiednimi warunkami zszyczia. Jak to można zrobić?


::

    sage: v1=[((x1[i+1]-x1[i-1])/(2*delta_t)) for i in range(1,99,2)]
    sage: v2=[((x2[i+1]-x2[i-1])/(2*delta_t)) for i in range(1,99,2)]
    sage: v1t=[(t[2*i],v1[i]) for i in range(0,49)]
    sage: v2t=[(t[2*i],v2[i]) for i in range(0,49)]
    sage: #var ('a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12')
    sage: #curve1(x)=a0+a1*sin(x)+a2*sin(2*x)+a3*sin(3*x)+a4*sin(4*x)+a5*sin(5*x)+a6*sin(6*x)+a7*sin(7*x)+a8*sin(8*x)+a9*sin(9*x)+a10*sin(10*x)+a11*sin(11*x)+a12*sin(12*x)
    sage: #curve1(x)=a0+a1*x+a2*x^2+a3*x^3+a4*x^4+a5*x^5+a6*x^6+a7*x^7+a8*x^8+a9*x^9+a10*x^10+a11*x^11+a12*x^12
    sage: #fit1 = find_fit(v1t, curve1, solution_dict=True)
    sage: #print fit1
    sage: #linia=plot(curve1.subs(fit1), x, 0, 3.3, color='green')
    sage: vt=point(v1t,color="red",legend_label='v1(t)')+point(v2t,color="blue",legend_label='v2(t)')
    sage: vt#+linia


.. end of output

**Wykresy pędów**

Występuje tu analogiczny problem jak dla prędkości.

Dopasowanie prostej do pędu całkowitego prowadzi do ciekawego wniosku, że jego wartość bezwzględna maleje liniowo w czasie, a sam moment zderzenia nie ma na to wpływu. Na cały układ działa więc stała siła hamująca.

Dopasowanie do pędu całkowitego krzywych wyższego stopnia (wystarczy przestawić we wzorze znak komentarza) znacznie komplikuje sprawę.


::

    sage: p1=[(v1[i]*m1) for i in range(0,49)]
    sage: p2=[(v2[i]*m2) for i in range(0,49)]
    sage: p1t=[(t[2*i],p1[i]) for i in range(0,49)]
    sage: p2t=[(t[2*i],p2[i]) for i in range(0,49)]
    sage: pc=[(p2[i]+p1[i]) for i in range(0,49)]
    sage: pct=[(t[2*i],pc[i]) for i in range(0,49)]
    sage: pt=point(p1t,color="red",legend_label='p1(t)')+point(p2t,color="blue",legend_label='p2(t)')+point(pct, legend_label="pc(t)",color="black",size="25")
    sage: var ('a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12')
    sage: curve1(x)=a0+a1*x#+a2*x^2+a3*x^3+a4*x^4+a5*x^5+a6*x^6+a7*x^7+a8*x^8+a9*x^9+a10*x^10+a11*x^11+a12*x^12
    sage: fit1 = find_fit(pct, curve1, solution_dict=True)
    sage: print fit1
    sage: linia=plot(curve1.subs(fit1), x, 0, 3.3, color='green')
    sage: pt+linia
    {a0: -0.14040011890220372, a1: 0.008478250334285498}

.. end of output

**Energia kinetyczna**

Energia całkowita, podobnie jak pęd, maleje w czasie, a sam moment zderzenia nie jest niczym wyróniony.


::

    sage: E1=[((m1*v1[i]**2)/2) for i in range(0,49)]
    sage: E2=[((m2*v2[i]**2)/2) for i in range(0,49)]
    sage: E1t=[(t[2*i],E1[i]) for i in range(0,49)]
    sage: E2t=[(t[2*i],E2[i]) for i in range(0,49)]
    sage: Ec=[(E2[i]+E1[i]) for i in range(0,49)]
    sage: Ect=[(t[2*i],Ec[i]) for i in range(0,49)]
    sage: Et=point(E1t,color="red",legend_label='E1(t)')+point(E2t,color="blue",legend_label='E2(t)')+point(Ect,legend_label='Ec(t)',color="black",size="25")
    sage: var ('a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12')
    sage: curve2(x)=a0+a1*x+a2*x^2#+a3*x^3+a4*x^4+a5*x^5+a6*x^6+a7*x^7+a8*x^8+a9*x^9+a10*x^10+a11*x^11+a12*x^12
    sage: fit2 = find_fit(Ect, curve2, solution_dict=True)
    sage: print fit2
    sage: linia2=plot(curve2.subs(fit2), x, 0, 3.3, color='green')
    sage: Et+linia2
    {a0: 0.03146651311453046, a2: 0.0002584900146269025, a1: -0.004598486622952001}

.. end of output

**Przyspieszenia.**

Proszę o sugestie, jak z przedstawionych na początku danych pomiarowych odczytać to, co istotne. Oba przyspieszenia powinny wynosić zero poza krótkim momentem w okolicy 1,5 s, gdy dzieje się to, co nas najbardziej interesuje.


::

    sage: a1=[((v1[i]-v1[i-1])/delta_t) for i in range(1,49)]
    sage: a2=[((v2[i]-v2[i-1])/delta_t) for i in range(1,49)]
    sage: a1t=[(t[2*i],a1[i]) for i in range(0,48)]
    sage: a2t=[(t[2*i],a2[i]) for i in range(0,48)]
    sage: at=point(a1t,color="red",legend_label='a1(t)')+point(a2t,color="blue",legend_label='a2(t)')
    sage: at


.. end of output

**Siły**

Problem podobny jak dla przyspieszeń. Tutaj dodatkowo chcielibyśmy potwierdzić słuszność III zasady dynamiki.


::

    sage: F1=[(a1[i]*m1) for i in range(0,48)]
    sage: F2=[(a2[i]*m2) for i in range(0,48)]
    sage: F1t=[(t[2*i],F1[i]) for i in range(0,48)]
    sage: F2t=[(t[2*i],F2[i]) for i in range(0,48)]
    sage: Ft=point(F1t,color="red",legend_label='F1(t)')+point(F2t,color="blue",legend_label='F2(t)')
    sage: Ft


.. end of output

**Zależność F(r)**


::

    sage: r=[(x2[i]-x1[i]-(d1+d2)) for i in range(0,100,2)]
    sage: #F=[(F1[i]+F2[i]) for i in range(0,48)]
    sage: Frt=[(r[i],F1[i]) for i in range(0,48)] # Tutaj poprawiłem rozumowanie ucznia. W oryginale jest inaczej.


.. end of output

Tutaj całkowicie zmieniłem pomysł ucznia. Dopasował on do wykresu prostą, co byłoby absurdem.


::

    sage: curve3(r)=a/r^2+b
    sage: fit = find_fit(Frt, curve3,solution_dict=True)
    sage: print fit
    sage: rys1=plot(curve3.subs(fit), r, 0.03, 1, thickness=5, color="green", legend_label='dopasowana krzywa')
    sage: rys2=point(Frt, gridlines=True, size=25, color='black', legend_label='F(r)')
    sage: rys1+rys2
    {b: 0.011963118102740089, a: -0.0011941353941766764}

.. end of output

::

    sage: delta_p=pc[48]-pc[0]
    sage: delta_E=Ec[48]-Ec[0]
    sage: print "delta_p=", delta_p, "delta_E=", delta_E
    delta_p= 0.00563399999999954 delta_E= -0.00256243499999984

.. end of output

**Wnioski**

Oryginalne wnioski i komentarze ucznia zawarte sa w oddzielnym pliku. Są one dosyć celne. Tutaj powtórzę, że podstawowym problemem w interpretacji wyników jest ich zaszumienie. Być może jest ono spowodowane niedokładnym odczytem współrzędnych na filmie. Niemniej chętnie poznam metody radzenia sobie w takich sytuacjach.


