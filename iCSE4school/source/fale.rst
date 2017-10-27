.. -*- coding: utf-8 -*-

.. _fale:

Fale dźwiękowe
==============


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

Niniejsza lekcja została przetestowana trzykrotnie na uczniach
zgłębiających fizykę na poziomie rozszerzonym (wiek 17 lat). W roku
2015 liczebność grupy wynosiła 14 osób, w 2016: 21 osób, a w roku
2017: 16 osób. Lekcja została poprzedzona kursem podstaw programowania
w języku Python i składa się z 2 części: wstępu teoretycznego i
warsztatów komputerowych. Obie części zostały sfilmowane w roku 2015 i
opublikowane na Youtube z angielskimi napisami.



.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.



Wstęp
^^^^^

Główne cele lekcji są następujące:

- Wyjaśnienie, czym jest dźwięk.
- Wyjaśnienie, czym jest akustyka, na jakie działy się dzieli i
  dlaczego?
- Zdefiniowanie wszystkich wielkości fizycznych i fizjologicznych
  opisujących dźwięk.
- Przedstawienie podstawowej wiedzy dotyczącej widma dźwięku.
- Ćwiczenia w rysowaniu wykresów w Pythonie.
- Pokazanie, że każda funkcja okresowa może być przedstawiona jako
  kombinacja liniowa funkcji sinus.
- Przećwiczenie interaktów i suwaków w Pythonie.

Przygotowując tą lekcję należy wziąć pod uwagę następujące okoliczności:

- Na poziomie szkoły średniej uczniowie nie potrafią
  całkować. Słyszeli już o całkowaniu i jego zastosowaniach, ale
  przeprowadzanie obliczeń na poziomie wymaganym przez transformatę
  Fouriera daleko wykracza poza ich możliwości. Dlatego rzeczywiste
  obliczenia należy zastąpić prostą zabawą z amplitudami
  poszczególnych harmonicznych.
- Jest to pierwszy kontakt uczniów z takimi pojęciami jak @interact i
  suwak. Problemy techniczne same w sobie są trudne do
  przezwyciężenia, dlatego nie ma sensu przesadnie komplikować
  fizycznej strony zagadnienia.
- Niniejsza lekcja (podobnie jak wszystkie inne) powinna być
  atrakcyjna, dlatego należy dążyć do uzyskiwania spektakularnych
  rezultatów możliwie prostymi środkami.
- Poziom trudności przykładów powinien stopniowo wzrastać w miarę
  upływu lekcji. Dobrym pomysłem jest pokazywanie alternatywnych
  rozwiazań tego samego problemu.

Część teoretyczna
^^^^^^^^^^^^^^^^^

Ćwiczenia w programowaniu zostały poprzedzone lekcją teoretyczną o
falach dźwiękowych, opublikowaną pod adresem:
`https://youtu.be/dp\-ajKHs6WU <https://youtu.be/dp-ajKHs6WU>`_


.. only:: html

        .. raw:: html

            <center><iframe width="420" height="280" src="https://www.youtube.com/embed/dp-ajKHs6WU" frameborder="0" allowfullscreen></iframe></center>


Główne problemy dyskutowane na wykładzie są następujące:

- Definicja fali dźwiękowej.
- Zapowiedź, że pewne idee przedstawione na wykładzie zostaną później rozwinięte na zajęciach komputerowych z użyciem Sage i Pythona.
- Definicja akustyki i wyjaśnienie istoty akustyki fizycznej i fizjologicznej.
- Infradźwięki i ultradźwięki.
- Częstotliwość / długość fali i ich związek z wysokością tonu.
- Widmo dźwięku i jego związek z barwą.
- Prawo Webera \- Fechnera.
- Natężenie dźwięku i jego związek z głośnością (audiogram).
- Faza dźwięku i jej związek z wrażeniami przestrzennymi.

Podczas lekcji wykorzystywano komputerowy generator akustyczny (program dołączony do jednego z podręczników) do przedstawiania związku wysokości tonu z częstotliwością. Posiadał również opcje demonstrowania, jak zmiana kształtu sygnału wpływa na widmo i barwę dźwięku. Uczniowie zostali poinformowani, że będą używać Pythona do ilustrowania kształtu sygnału złożonego, w zależności od amplitud indywidualnych harmonicznych.

Część informatyczna
^^^^^^^^^^^^^^^^^^^

Część informatyczna lekcji została przeprowadzona w pracowni
komputerowej, sfilmowana i umieszczona pod adresem:
`https://youtu.be/0fVgRy6CpWQ <https://youtu.be/0fVgRy6CpWQ>`_


.. only:: html

        .. raw:: html

            <center><iframe width="420" height="280" src="https://www.youtube.com/embed/0fVgRy6CpWQ" frameborder="0" allowfullscreen></iframe> </center>


Film ten, nakręcony w roku 2015, pokazuje wcześniejszą wersję
programu. Poniżej przedstawiona jest wersja udoskonalona.

.. sagecellserver::

     wall = 20 # granica dziedziny = koniec obszaru dostępnego dla fali

.. end of output

Przykładowa funkcja złożona, zdefiniowana w sposób statyczny

.. sagecellserver::

     amplitudes = (1, 1/2, 3/10, 1/5, 1/10)
     WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
     WaveComplex(t)
   
.. end of output

.. only:: latex

    :code:`1/10*sin(5*t) + 1/5*sin(4*t) + 3/10*sin(3*t) + 1/2*sin(2*t) + sin(t)`



.. sagecellserver::

     plot(WaveComplex, (t, 0, wall))

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_plot1`.

    .. figure:: figs/fale_plot1.pdf
       :width: 70%
       :name: fale_plot1
     
       Wykres.



Funkcja ta sama, jak wyżej, lecz uzyskana z użyciem innych środków.

.. sagecellserver::

     def WaveComplexPlot(amplitudes=(1, 0.5, 0.3, 0.2, 0.1), tmin=0, tmax=20, **kwargs):
         WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
         plt = plot(WaveComplex, (t, tmin, tmax), **kwargs)
         show(plt)
     WaveComplexPlot(tmax=wall, figsize=(6, 3))

.. end of output

Inna wersja tej samej funkcji, lecz teraz poszczególne amplitudy są sterowane za pomocą suwaków.

Z uwagi na to, że uczniowie pracowali z wcześniejszą wersją Sage, nie mogliśmy użyć gotowej funkcji histogram. W zamian zaproponowałem jej własną wersję.

.. sagecellserver::

     def WaveComplexPlot(A1=1, A2=0.5, A3=0.3, A4=0.2, A5=0.1, **kwargs):
         WaveComplex(t) = A1*sin(t) + A2*sin(t*2) + A3*sin(t*3) + A4*sin(t*4) + A5*sin(t*5)
         return plot(WaveComplex, t, 0, wall,**kwargs)
     WaveComplexPlot(figsize=(6,3))

.. end of output

.. sagecellserver::

     @interact
     def _(A1_=slider(0,1,0.01), A2_=slider(0,1,0.01), A3_=slider(0,1,0.01), A4_=slider(0,1,0.01), A5_=slider(0,1,0.01)):
         plt = WaveComplexPlot(A1=A1_,A2=A2_, A3=A3_, A4=A4_, A5=A5_, figsize=(8,3))
         show(plt)
         histogram = line([(1,0), (1,A1_)], thickness=10) + line([(2,0), (2,A2_)], thickness=10) + line([(3,0), (3,A3_)], thickness=10) + line([(4,0), (4,A4_)], thickness=10) + line([(5,0), (5,A5_)], thickness=10,figsize=(8,3))
         show(histogram)

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest program interaktywny  :numref:`fale_interact1`.

    .. figure:: figs/fale_interact1.png
       :width: 97%
       :name: fale_interact1
     
       Dekompozycja sygnału  z użyciem transformaty Fouriera.



Dekompozycja przykładowej funkcji z użyciem transformaty Fouriera.

.. sagecellserver::

     f(t) = sum(sin(n*t)/n for n in range(1, 6))
     f = Piecewise([[(0, 2*pi), f]])
     show(f.plot(), figsize=(4, 2))
     sine_coeffs = [N(f.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_dekomp`.


    .. figure:: figs/fale_dekomp.pdf
       :width: 70%
       :name: fale_dekomp
     
       Dekompozycja sygnału typu "piła" z użyciem transformaty Fouriera.




.. sagecellserver::

     Piecewise?

.. end of output

Podobna analiza zastosowana dla funkcji piłokształtnej i pozostałych funkcji dostępnych w generatorze akustycznym pokazanym na filmie.

.. sagecellserver::

     sawtooth(t) = (pi-t)/2
     sawtooth = piecewise([[(0, 2*pi), sawtooth]])
     show(sawtooth.plot(), figsize=(4, 2))
     sine_coeffs = [N(sawtooth.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_dekomp2`.


    .. figure:: figs/fale_dekomp2.pdf
       :width: 70%
       :name: fale_dekomp2
     
       Dekompozycja sygnału trójkątnego  z użyciem transformaty Fouriera.


.. sagecellserver::

     triangle1(t) = pi/4*t
     triangle2(t) = pi/4*(pi/2-(t-pi/2))
     triangle3(t) = pi/4*((t-2*pi))
     triangle = Piecewise([[(0, pi/2), triangle1],
                           [(pi/2, 3*pi/2), triangle2],
                           [(3*pi/2, 2*pi), triangle3]])
     show(triangle.plot(), figsize=(4, 2))
     sine_coeffs = [N(triangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_dekomp3`.


    .. figure:: figs/fale_dekomp3.pdf
       :width: 70%
       :name: fale_dekomp3
     
       Dekompozycja sygnału prostokatnego z użyciem transformaty Fouriera.


.. sagecellserver::

     upper(t) = 1
     lower(t) = -1
     rectangle = Piecewise([[(0, pi), upper],
                            [(pi, 2*pi), lower]])
     show(rectangle.plot(), figsize=(4, 2))
     sine_coeffs = [N(rectangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output


Z użyciem elementu :code:`@interact`, powyższe segmenty kodu można połączyć jak
poniżej. Teraz uczniowie mogą dokonywać prób z różnymi postaciami
sygnału:

.. sagecellserver::

     def pw_sawtooth():
         sawtooth(t) = (pi-t)/2
         return Piecewise([[(0, 2*pi), sawtooth]])
     
     def pw_triangle():
         triangle1(t) = pi/4*t
         triangle2(t) = pi/4*(pi/2-(t-pi/2))
         triangle3(t) = pi/4*((t-2*pi))
         return Piecewise([[(0, pi/2), triangle1],
                           [(pi/2, 3*pi/2), triangle2],
                           [(3*pi/2, 2*pi), triangle3]])
                       
     def pw_rectangle():
         upper(t) = 1
         lower(t) = -1
         return Piecewise([[(0, pi), upper],
                           [(pi, 2*pi), lower]])
     @interact
     def fourier_sine_trafo(signalname=selector(['sawtooth', 'triangle', 'rectangle'])):
         signaldict = {'sawtooth': pw_sawtooth,
                       'triangle': pw_triangle,
                       'rectangle': pw_rectangle}
         signal = signaldict[signalname]()
         show(signal.plot(), figsize=(4, 2))
         sine_coeffs = [N(signal.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
         show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output



Sterowaniu może też podlegać ilość iteracji. W poniższym przykładzie,
pętla nakłada na siebie wykresy funkcji i wyświetla ich sumę wraz ze
składnikami:

.. sagecellserver::

     @interact
     def _(n=slider(1, 10, 1)):
         plt = sum(plot(sin(i*t)/i, (t, 0, wall), color=hue(i/10)) for i in range(1, n+1))
         plt = plt+plot(sum(sin(i*t)/i for i in range(1, n+1)), (t, 0, wall), color='black')
         show(plt)

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_suma`.


    .. figure:: figs/fale_suma.pdf
       :width: 70%
       :name: fale_suma
     
       Sumą fal wraz ze składnikami otrzymana w elemencie interaktywnym z  :math:`n=6`


Poniższa pętla tworzy falę złożoną, zbudowaną z harmonicznych o
amplitudach odwrotnie proporcjonalnych do ich częstotliwości. Liczba
iteracji jest sterowana suwakiem. Funkcje pokazane wyżej są do siebie
dodawane, a wyświetlana jest ich suma.

.. sagecellserver::

     @interact
     def _(n=slider(1, 20, 1)):
         wave(t) = sum(sin(i*t)/i for i in range(1, n+1))
         plot(wave, (t, 0, wall), figsize=(4, 2)).show()

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_suma_odwr`.


    .. figure:: figs/fale_suma_odwr.pdf
       :width: 70%
       :name: fale_suma_odwr
     
       Sumą fal o amplitudach odwrotnie proporcjonalnych do ich
       częstotliwości wraz ze składnikami otrzymana w elemencie
       interaktywnym dla :math:`n=17`



Ten sam efekt uzyskany bez iteracji.

.. sagecellserver::

     def WaveCmplx(t):
             w=0
             for i in range(1,10):
                 w=w+1/i*sin(i*t)
             return w
     plot(WaveCmplx,  (t, 0, wall), figsize=(4,2))

.. end of output

Wnioski
^^^^^^^

Użycie Pythona doprowadziło uczniów do lepszego zrozumienia istoty
widma dźwięku. W szkole średniej uczniowie nie znaja transformaty
Fouriera \- temat ten wykracza daleko poza podstawę programową. Dzięki
powyższym programom, w zasadzie bawiąc się, dokonują wielkiego
odkrycia, że każda funkcja okresowa o poprawnej symetrii (co ma
miejsce w kontekście fal akustycznych), może zostać przedstawiona jako
kombinacja liniowa funkcji sinus.

Z drugiej strony, uczestnicy lekcji mieli możliwość nauczenia się
podstawowych metod tworzenia wykresów w sposób interaktywny, co było
dla nich nowością. Temat "widmo dźwięku" stał sie mniej abstrakcyjny,
ponieważ uczniowie bawili sie nim własnymi rękami.

Z moich obserwacji wynika, że uczniowie z radością używają gotowych
narzędzi zawartych w tym dokumencie, natomiast nie są zdolni do ich
twórczego rozwinięcia. Moje próby zachęcenia uczniów do udoskonalenia
powyższego kodu nie powiodły się.


