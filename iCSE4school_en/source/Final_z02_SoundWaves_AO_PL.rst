.. -*- coding: utf-8 -*-

Fale dźwiękowe
==============
Wstęp
-----
Niniejsza lekcja została przetestowana trzykrotnie na uczniach zgłębiających fizykę na poziomie rozszerzonym (wiek 17 lat). W roku 2015 liczebność grupy wynosiła 14 osób, w 2016: 21 osób, a w roku 2017: 16 osób. Lekcja została poprzedzona kursem podstaw programowania w języku Python i składa się z 2 części: wstępu teoretycznego i warsztatów komputerowych. Obie części zostały sfilmowane w roku 2015 i opublikowane na Youtube z angielskimi napisami.

Główne cele lekcji są następujące:

- Wyjaśnienie, czym jest dźwięk.
- Wyjaśnienie, czym jest akustyka, na jakie działy się dzieli i dlaczego?
- Zdefiniowanie wszystkich wielkości fizycznych i fizjologicznych opisujących dźwięk.
- Przedstawienie podstawowej wiedzy dotyczącej widma dźwięku.
- Ćwiczenia w rysowaniu wykresów w Pythonie.
- Pokazanie, że każda funkcja okresowa może być przedstawiona jako kombinacja liniowa funkcji sinus.
- Przećwiczenie interaktów i suwaków w Pythonie.

Przygotowując tą lekcję należy wziąć pod uwagę następujące okoliczności:

- Na poziomie szkoły średniej uczniowie nie potrafią całkować. Słyszeli już o całkowaniu i jego zastosowaniach, ale przeprowadzanie obliczeń na poziomie wymaganym przez transformatę Fouriera daleko wykracza poza ich możliwości. Dlatego rzeczywiste obliczenia należy zastąpić prostą zabawą z amplitudami poszczególnych harmonicznych.
- Jest to pierwszy kontakt uczniów z takimi pojęciami jak @interact i suwak. Problemy techniczne same w sobie są trudne do przezwyciężenia, dlatego nie ma sensu przesadnie komplikować fizycznej strony zagadnienia.
- Niniejsza lekcja (podobnie jak wszystkie inne) powinna być atrakcyjna, dlatego należy dążyć do uzyskiwania spektakularnych rezultatów możliwie prostymi środkami.
- Poziom trudności przykładów powinien stopniowo wzrastać w miarę upływu lekcji. Dobrym pomysłem jest pokazywanie alternatywnych rozwiazań tego samego problemu.

Część teoretyczna
-----------------
Ćwiczenia w programowaniu zostały poprzedzone lekcją teoretyczną o falach dźwiękowych, opublikowaną pod adresem: `https://youtu.be/dp\-ajKHs6WU <https://youtu.be/dp-ajKHs6WU>`_

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
-------------------
Część informatyczna lekcji została przeprowadzona w pracowni komputerowej, sfilmowana i umieszczona pod adresem: `https://youtu.be/0fVgRy6CpWQ <https://youtu.be/0fVgRy6CpWQ>`_

Film ten, nakręcony w roku 2015, pokazuje wcześniejszą wersję programu. Poniżej przedstawiona jest wersja udoskonalona.

.. sagecellserver::

    sage: wall = 20 # granica dziedziny = koniec obszaru dostępnego dla fali

.. end of output

Przykładowa funkcja złożona, zdefiniowana w sposób statyczny

.. sagecellserver::

    sage: amplitudes = (1, 1/2, 3/10, 1/5, 1/10)
    sage: WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
    sage: WaveComplex(t)
    1/10*sin(5*t) + 1/5*sin(4*t) + 3/10*sin(3*t) + 1/2*sin(2*t) + sin(t)

.. end of output

.. sagecellserver::

    sage: plot(WaveComplex, (t, 0, wall))

.. end of output

Funkca ta sama, jak wyżej, lecz uzyskana z użyciem innych środków.

.. sagecellserver::

    sage: def WaveComplexPlot(amplitudes=(1, 0.5, 0.3, 0.2, 0.1), tmin=0, tmax=20, **kwargs):
    ....:     WaveComplex(t) = sum(a*sin((n+1)*t) for n, a in enumerate(amplitudes))
    ....:     plt = plot(WaveComplex, (t, tmin, tmax), **kwargs)
    ....:     show(plt)
    sage: WaveComplexPlot(tmax=wall, figsize=(6, 3))

.. end of output

Inna wersja tej samej funkcji, lecz teraz poszczególne amplitudy są sterowane za pomocą suwaków.

Z uwagi na to, że uczniowie pracowali z wcześniejszą wersją Sage, nie mogliśmy użyć gotowej funkcji histogram. W zamian zaproponowałem jej własną wersję.

.. sagecellserver::

    sage: def WaveComplexPlot(A1=1, A2=0.5, A3=0.3, A4=0.2, A5=0.1, **kwarg):
    ....:     WaveComplex(t) = A1*sin(t) + A2*sin(t*2) + A3*sin(t*3) + A4*sin(t*4) + A5*sin(t*5)
    ....:     return plot(WaveComplex, t, 0, wall)
    sage: WaveComplexPlot(figsize=(2,1))

.. end of output

.. sagecellserver::

    sage: @interact
    sage: def _(A1_=slider(0,1,0.01), A2_=slider(0,1,0.01), A3_=slider(0,1,0.01), A4_=slider(0,1,0.01), A5_=slider(0,1,0.01)):
    ....:     plt = WaveComplexPlot(A1=A1_,A2=A2_, A3=A3_, A4=A4_, A5=A5_, figsize=(1,1))
    ....:     show(plt)
    ....:     histogram = line([(1,0), (1,A1_)], thickness=10) + line([(2,0), (2,A2_)], thickness=10) + line([(3,0), (3,A3_)], thickness=10) + line([(4,0), (4,A4_)], thickness=10) + line([(5,0), (5,A5_)], thickness=10)
    ....:     show(histogram)

.. end of output

Dekompozycja przykładowej funkcji z użyciem transformaty Fouriera.

.. sagecellserver::

    sage: f(t) = sum(sin(n*t)/n for n in range(1, 6))
    sage: f = Piecewise([[(0, 2*pi), f]])
    sage: show(f.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(f.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: Piecewise?

.. end of output

Podobna analiza zastosowana dla funkcji piłokształtnej i pozostałych funkcji dostępnych w generatorze akustycznym pokazanym na filmie.

.. sagecellserver::

    sage: sawtooth(t) = (pi-t)/2
    sage: sawtooth = Piecewise([[(0, 2*pi), sawtooth]])
    sage: show(sawtooth.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(sawtooth.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: triangle1(t) = pi/4*t
    sage: triangle2(t) = pi/4*(pi/2-(t-pi/2))
    sage: triangle3(t) = pi/4*((t-2*pi))
    sage: triangle = Piecewise([[(0, pi/2), triangle1],
    ....:                       [(pi/2, 3*pi/2), triangle2],
    ....:                       [(3*pi/2, 2*pi), triangle3]])
    sage: show(triangle.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(triangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

.. sagecellserver::

    sage: upper(t) = 1
    sage: lower(t) = -1
    sage: rectangle = Piecewise([[(0, pi), upper],
    ....:                        [(pi, 2*pi), lower]])
    sage: show(rectangle.plot(), figsize=(4, 2))
    sage: sine_coeffs = [N(rectangle.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    sage: show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

Z użyciem interaktów, powyższe segmenty kodu można połączyć jak poniżej. Teraz uczniowsie mogą dokonywać prób z różnymi postaciami sygnału:

.. sagecellserver::

    sage: def pw_sawtooth():
    ....:     sawtooth(t) = (pi-t)/2
    ....:     return Piecewise([[(0, 2*pi), sawtooth]])
     
    sage: def pw_triangle():
    ....:     triangle1(t) = pi/4*t
    ....:     triangle2(t) = pi/4*(pi/2-(t-pi/2))
    ....:     triangle3(t) = pi/4*((t-2*pi))
    ....:     return Piecewise([[(0, pi/2), triangle1],
    ....:                       [(pi/2, 3*pi/2), triangle2],
    ....:                       [(3*pi/2, 2*pi), triangle3]])
                       
    sage: def pw_rectangle():
    ....:     upper(t) = 1
    ....:     lower(t) = -1
    ....:     return Piecewise([[(0, pi), upper],
    ....:                       [(pi, 2*pi), lower]])
    sage: @interact
    sage: def fourier_sine_trafo(signalname=selector(['sawtooth', 'triangle', 'rectangle'])):
    ....:     signaldict = {'sawtooth': pw_sawtooth,
    ....:                   'triangle': pw_triangle,
    ....:                   'rectangle': pw_rectangle}
    ....:     signal = signaldict[signalname]()
    ....:     show(signal.plot(), figsize=(4, 2))
    ....:     sine_coeffs = [N(signal.fourier_series_sine_coefficient(i, pi), digits=8) for i in range(20)]
    ....:     show(bar_chart(sine_coeffs), figsize=(4, 2))

.. end of output

Sterowaniu może też podlegać ilość iteracji. W poniższym przykładzie, pętla nakłada na siebie wykresy funkcji i wyświetla ich sumę wraz ze składnikami:

.. sagecellserver::

    sage: @interact
    sage: def _(n=slider(1, 10, 1)):
    ....:     plt = sum(plot(sin(i*t)/i, (t, 0, wall), color=hue(i/10)) for i in range(1, n+1))
    ....:     plt = plt+plot(sum(sin(i*t)/i for i in range(1, n+1)), (t, 0, wall), color='black')
    ....:     show(plt)

.. end of output

Poniższa pętla tworzy falę złożoną, zbudowaną z harmonicznych o amplitudach odwrotnie proporcjonalnych do ich częstotliwości. Liczba iteracji jest sterowana suwakiem. Funkcje pokazane wyżej są do siebie dodawane, a wyświetlana jest ich suma.

.. sagecellserver::

    sage: @interact
    sage: def _(n=slider(1, 20, 1)):
    ....:     wave(t) = sum(sin(i*t)/i for i in range(1, n+1))
    ....:     plot(wave, (t, 0, wall), figsize=(4, 2)).show()

.. end of output

Ten sam efekt uzyskany bez iteracji.

.. sagecellserver::

    sage: def WaveCmplx(t):
    ....:         w=0
    ....:         for i in range(1,10):
    ....:             w=w+1/i*sin(i*t)
    ....:         return w
    sage: plot(WaveCmplx,  (t, 0, wall), figsize=(4,2))

.. end of output

Wnioski
-------
Użycie Pythona doprowadziło uczniów do lepszego zrozumienia istoty widma dźwięku. W szkole średniej uczniowie nie znaja transformaty Fouriera \- temat ten wykracza daleko poza podstawę programową. Dzięki powyższym programom, w zasadzie bawiąc się, dokonują wielkiego odkrycia, że każda funkcja okresowa o poprawnej symetrii (co ma miejsce w kontekście fal akustycznych), może zostać przedstawiona jako kombinacja liniowa funkcji sinus.

Z drugiej strony, uczestnicy lekcji mieli możliwość nauczenia się podstawowych metod tworzenia wykresów w sposób interaktywny, co było dla nich nowością. Temat "widmo dźwięku" stał sie mniej abstrakcyjny, ponieważ uczniowie bawili sie nim własnymi rękami.

Z moich obserwacji wynika, że uczniowie z radością używają gotowych narzędzi zawartych w tym dokumencie, natomiast nie są zdolni do ich twórczego rozwinięcia. Moje próby zachęcenia uczniów do udoskonalenia powyższego kodu nie powiodły się.

    Adam Ogaza, 2015\-17
