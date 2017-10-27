.. -*- coding: utf-8 -*-

Zjawiska akustyczne
===================


O scenariuszu
^^^^^^^^^^^^^

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
^^^^^

Główne cele lekcji są następujące:

- Wyjaśnienie, czym jest echo i pogłos.
- Zademonstrowanie rezonansu akustycznego.
- Wyjaśnienie zasady działania instrumentów muzycznych.
- Wyjaśnienie, czym są dudnienia,
- Ćwiczenia w tworzeniu wykresów w Pythonie.
- Ćwiczenia w uzyciu interaktów i suwaków w Pythonie.
- Ćwiczenia w tworzeniu animacji w Sage

Uwarunkowania, które trzeba uwzględnić:

- Uczniowie posiadają już podstawową wiedzę o falach w ogólności. W
  szczególnosci znają równanie fali, koncepcję fali stojącej i
  rezonansu.
- Jest to drugi kontakt uczniów z animacjami w Pythonie. Uczestniczyli
  już w lekcji informatyki specjalnie poświęconej temu zagadnieniu.
- Należy pamiętać, że uczniowie nie znają matematyki
  wyższej. Prezentowane rozwiązania programistyczne nie mogą być zbyt
  wysublimowane.
- Zalecana jest gradacja trudności. Należy rozpocząć od prostych
  przykładów i stopniowo je komplikować (na przykład przez dodawanie
  nowych parametrów lub uzmiennianie stałych).


Część teoretyczna
^^^^^^^^^^^^^^^^^

Ćwiczenia w programowaniu zostały poprzedzone lekcją teoretyczną o zjawiskach akustycznych. Wykład został sfilmowany i opublikowany po polsku, ale z napisami w języku angielskim.

`https://youtu.be/jWGTTD5\-mFA <https://youtu.be/jWGTTD5-mFA>`_

.. only:: html

        .. raw:: html

            <center><iframe width="420" height="280" src="https://www.youtube.com/embed/jWGTTD5-mFA" frameborder="0" allowfullscreen></iframe> </center>



Główne zagadnienia dyskutowane na wykładzie:

- Echo
- Pogłos
- Rezonns akustyczny
- Fale stojące (w szczególności w instrumentach)
- Dudnienia



Część informatyczna
^^^^^^^^^^^^^^^^^^^

Zasadnicze umiejętnosci ćwiczone na lekcji:

- Sterowanie zjawiskami za pomocą suwaków.
- Wprawianie wykresów w ruch.
- Badanie ruchu impulsu falowego.
- Składanie drgań.
- Badanie fal stojących i dudnień.

Problemy fizyczne dyskutowane w poniższym kodzie i wykresach są następujące:

- Dudnienia - jak kształt fali złożonej zależy od częstotliwości fal składowych
- Jak dokonać animacji impulsu falowego i jego odbicia.
- Pokazanie, że fala stojąca jest naprawdę rezultatem nałożenia się na siebie dwóch fal biegnących w przeciwne strony.

**Dudnienia**

Prosty przykład wykresu z ustalonymi częstotliwościami i fazami
początkowymi, które mogą być zmieniane wewnątrz kodu. Rezultaty tych
zmian obserwujemy na wykresie.

.. sagecellserver::

     # **kwarg pozwala na dodanie kolejnych "nazwanych" parametrów
     # dudnienia to funkcja zwracająca wykres nałożonych na siebie funkcji y1 i y2
     def dudnienia(omega1=10,omega2=11,A1=1,A2=1,fi=2,t0=0,**kwarg):
         y1(t)=A1*sin(omega1*(t-t0))
         y2(t)=A2*sin(omega2*(t-t0)+fi)
         y(t)=y1(t)+y2(t)
         return   plot(y, (t, 0, 10),ymax=A1+A2,ymin=-(A1+A2),**kwarg )
     dudnienia(figsize=(4,2))

.. end of output



.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`akustyka_dudnienia`.

    .. figure:: figs/akustyka_dudnienia.pdf
       :width: 70%
       :name: akustyka_dudnienia
     
       Wykres nałożonych na siebie funkcji :math:`y_1(t)` i :math:`y_2(t)`.



Bardziej złożony wykres zawierający parametry funkcji i obwiedni. Dla
prostoty wszystkie amplitudy sa równe.

.. sagecellserver::

     def envelope(omega1, omega2, a, phase, t0):
         f(t) = 2*a*cos((omega1-omega2)*(t-t0)/2-phase/2)
         return f
     def beat(omega1=10, omega2=11, a=1, phase=2, t0=0, plot_envelope=True, **kwargs):
         y1(t) = a*sin(omega1*(t-t0))
         y2(t) = a*sin(omega2*(t-t0)+phase)
         y(t) = y1(t)+y2(t)
         title = '$t_0 = %4.2f,\ \omega_1 = %5.2f,\ \omega_2 = %5.2f$'%\
             (t0, omega1, omega2)
         range = (t, 0, 10)
         plt = plot(y, range, ymin=-2*a, ymax=2*a, title=title, **kwargs)
         if plot_envelope:
             envelope_func = envelope(omega1, omega2, a, phase, t0)
             plt = plt+plot(envelope_func, range, color='red', **kwargs)
             plt = plt+plot(-envelope_func, range, color='red', **kwargs)
         return plt
     beat(t0=2.5, figsize=(4, 2))

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`akustyka_envelope`.

    .. figure:: figs/akustyka_envelope.pdf
       :width: 70%
       :name: fale_envelope
     
       Wykres nałożonych na siebie funkcji :math:`y_1(t)` i
       :math:`y_2(t)` wraz z ich obwiednią.



Łatwo skonstruowac narzędzie z suwak zmieniającym argument czasowy. Pozwala na ręczne przesuwanie fali.

.. sagecellserver::

     @interact
     def _(t0=slider(0, 2*pi, 0.01, label="$t_0$")):
         plt = beat(t0=t0, figsize=(4,2))
         show(plt)

.. end of output



Możliwa jest też regulacja częstotliwości drugiej fali. Można prześledzić, że im częstotliwości obu fal mniej się różnią, tym większy okres pulsacji.

.. sagecellserver::

     @interact
     def _(t0=slider(0, 10, 0.01, label="$t_0$"),
           omega2=slider(10, 12, 0.01, label="$\omega_2$")):
         plt = beat(t0=t0 , omega2=omega2, figsize=(4,2))
         show(plt)

.. end of output

.. only:: latex
          
    .. note:: 
        
            Wynikiem działania powyższych kodów są elementy
            interaktywne, które najlepiej jest samodzielnie wypróbować
            w wersji online tego podręcznika.



Kolejne obliczenia zbliżają nas krok po kroku do stworzenia animacji.

.. sagecellserver::

     # plts - zbiór wykresów dla argumentu czasowego t0 iterowanego w petli.
     plts = [dudnienia(t0=t0_,figsize=(4,2)) for t0_ in srange(0,6.3,0.2)]
     # przykładowe dwa wykresy
     show(plts[0])
     show(plts[10])
     # Przygotowanie dla kolejnych obliczeń.
     anim = animate(plts)

.. end of output

Tablica wykresów fali dla kolejno zmienianego argumentu t0

.. sagecellserver::

     plots = [beat(t0=t0, figsize=(4, 2)) for t0 in sxrange(0, 2*pi, pi/10)]
     graphics_array(plots, ncols=4).show()

.. end of output

Gotowa animacja. Widzimy sekwencję wykresów dla różnych wartości argumentu czasowego.

.. sagecellserver::

     %time
     anim.show()

.. end of output


Animacja wskazująca wpływ drugiej częstotliwości na częstość pulsacji.

.. sagecellserver::

     plots = [beat(omega2=omega2, plot_envelope=False, figsize=(4, 2)) \
      for omega2 in sxrange(5, 15, 0.2)]
     animate(plots).show()

.. end of output

**Odbicie i fala stojąca**

Fala stojąca jako złożenie dwóch fal biegnących w przeciwne strony. Uczniowie mogą manipulować wartościami wszystkich parametrów (co było przedmiotem ćwiczeń).

.. sagecellserver::

     # Półautomatyczne sterowanie kolorami w pętli
     A=1
     omega=6
     v=13
     delay=30
     t_max= 7
     sum( [plot(A*sin(omega*(t/delay-x/v))+\
      A*sin(omega*(t/delay+x/v)),(x,0,20),figsize=6,color=hue(t/t_max))\
       for t in srange(0,t_max,1.0)] )

.. end of output

Dla lepszego umaocznienia ewolucji czasowej fali stojącej, warto
zastosować animację. Dodatkowy walor dydaktyczny stanowi wyświetlenie
fal biegnących. Zastosowano argument w postaci *x\-vt* zamiast
*t\-x/v* by uniknąć problemów matematycznych dla prędkości
zmierzającej do zera.

.. sagecellserver::

     def running_wave(a=1, omega=1, v=10, t=0):
         wave(x) = a*sin(omega*(x-v*t))
         return wave
     range = (x, 0, 20)
     figsize = (4, 2)
     v = 2
     plts = [plot(running_wave(v=v, t=t), range, figsize=figsize)
             + plot(running_wave(v=-v, t=t), range, color='green', figsize=figsize)
             + plot(running_wave(v=v, t=t)+running_wave(v=-v, t=t),\
               range, color='red', ymin=-2, ymax=2, figsize=figsize)
             for t in sxrange(0, 2*pi/v, pi/(10*v))]
     animate(plts).show()

.. end of output

Tablica grafik pomocna do bardziej szczegółowej analizy ewolucji czasowej.

.. sagecellserver::

     graphics_array(plts[0:6], ncols=3).show()

.. end of output

**Impuls falowy i jego odbicie**

Ruch impulsu falowego. Zdaję sobie sprawę, że tak zdefiniowany impuls
jest niefizyczny z powodu nieciagłości w pochodnej, lecz jest to
pierwsze podejście do tego typu animacji. Uczniowie zostali
poinformowani o watpliwościach natury fizycznej; przykład ma raczej
ilustrować jak radzić sobie z takimi animacjami z punktu widzenia
samego programowania.

.. sagecellserver::

     def pulse1(x):
         if x>=0 and x<=4*pi:
             return A1*sin(x)
         else:
             return 0.0

.. end of output

Dwa impulsy biegnące w przeciwnych kierunkach.

.. sagecellserver::

     var('x')
     A1 = 1
     c = 1.4
     nl = 2
     nL = 4
     k = 4*pi # 2pi/wavelenght
     @interact 
     def _(t=slider(0,10,0.0001,default=1/c*(nL-nl)*2*pi)):
         x0 = -nL*2*pi/k
         x1 = (nL-nl)*2*pi/k  
         plt = Graphics()
         plt += plot( lambda x:pulse1(k*(x-x0)-c*t),(x,x0,1),figsize=(12,4),thickness=1)
         plt += plot( lambda x:pulse1(k*(x-x1)+c*t),(x,x0,2),color='red',thickness=1)
         plt.show()

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`akustyka_impuls_interact`. 

    .. figure:: figs/akustyka_impuls_interact.png
       :width: 70%
       :name: akustyka_impuls_interact
     
       Wykres nałożonych na siebie funkcji :math:`y_1(t)` i
       :math:`y_2(t)` wraz z ich obwiednią.


Złożenie impulsu biegnącego i odbitego.

.. sagecellserver::

     var('x')
     A1 = 1
     c = 3.4
     nl = 2
     nL = 4
     k = 4*pi # 2pi/wavelenght
     @interact 
     def _(t=slider(0,10,2*pi/k/64)):
         x0 = -nL*2*pi/k
         x1 = (nL-nl)*2*pi/k  
         plt = Graphics()
         plt += plot( lambda x:pulse1(k*(x-x0)-c*t)+\
          pulse1(k*(x-x1)+c*t),(x,x0,0),figsize=(12,4),\
          thickness=1,ymin=-2,ymax=2)
         plt.show()

.. end of output

Aby precyzyjnie obliczyć przebieg procesu odbicia fali można
numerycznie rozwiązać równanie falowe. Poniższy kod demostruje
przykład takiego algorytmu opartego o bibliotekę :code:`numpy`.

.. sagecellserver::

     %time
     import numpy as np 
     N = 4048
     l = 50.
     dx = float(l)/(N-1)
     c2 = np.ones(N)
     dt = 0.005
     print np.sqrt(np.max(c2))*dt/dx
     x = np.linspace(0,l,N)
     u = np.zeros(N)
     u0 = np.zeros(N)
     unew = np.zeros(N)
     ulst=[u.copy()]
     n=4.
     T = 1.*l/n
     for i in range(25000):
         unew[1:-1] = 2.*u[1:-1] - u0[1:-1] + dt**2 *(c2[1:-1]/dx**2*np.diff(u,2))
         u0=u.copy()
         u=unew.copy()
         u[-1] = u[-2]
         u[0] = u[1]
         u[-1] = 0
         u[0] = 0
         if dt*i/T*2.0*np.pi< 4*np.pi:
             u[0] = 0.5*np.sin(dt*i/T*2.0*np.pi)
         if i%50==0:
             ulst.append(u.copy())

.. end of output


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fale_num`. 

    .. figure:: figs/fale_num.png
       :width: 70%
       :name: fale_num
     
       Odbicie fali biegnącej otrzymane poprzez numeryczne rozwiązanie
       równania falowego. W wersji interaktywnej dostępne są również
       animacje tego procesu.



.. sagecellserver::

     @interact
     def _(ith=slider(range(len(ulst)))):
         u = ulst[ith]
         plt =  line(zip(x,u),figsize=(12,5),ymin=-1,ymax=1) 
         plt.show()

.. end of output


.. sagecellserver::

     plts = [line(zip(x,u),figsize=(6,2),ymin=-1,ymax=1) for u in ulst[::8]]
     animate(plts).show()

.. end of output

Wnioski
-------

Programowanie w Pythonie okazało się interesującym uzupełnieniem
lekcji fizyki. Korzyści polegają na możliwości mniej lub bardziej
łatwej wizualizacji zjawisk przy zmianie parametrów. Dzięki temu,
wzory przedstawione na wykładach stają się mniej abstrakcyjne i każdy
mógł się własnoręcznie przekonać, jak wynik np. interferencji fal
zależy od ich częstotliwości, kierunku, prędkości itd.

Animacje same w sobie okazały się nowym wyzwaniem dla uczniów. W
pierwszych edycjach lekcji prosiłem uczniów o dokonanie prób
jakiegokolwiek rozwinięcia przedstawionych idei poprzez ulepszenie
kodu. Okazało się to niewykonalne, ponieważ kod jest dla nich zbyt
trudny. Jedyne, do czego byli zdolni, to manipulacja wartościami
parametrów \- a to i tak dużo.

Niemniej przebieg lekcji oceniam wysoko. Uczniowie byli zainteresowani
i zaangażowani. Ich kompetencje, zarówno w zakresie fizyki, jak i
informatyki, wzrosły.


