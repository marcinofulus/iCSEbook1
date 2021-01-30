Wartość bezwzględna
~~~~~~~~~~~~~~~~~~~~~

O scenariuszu
^^^^^^^^^^^^^

Scenariusz ten jest materiałem do przeprowadzenia 1 godziny zajęć lekcyjnych. 

Został on opracowany w ramach projektu iCSE4school na podstawie lekcji
prowadzonych w latach 2015-2017 w III Liceum Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Mariolę Strojny.

.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.

Wstęp
^^^^^


Jednym z ważnych pojęć dnoszących się do liczb rzeczywistych jest wartość bezwzględna. Jej definicja mówi, wartość bezwzględna liczby rzeczywistej :math:`a` jest równa:

• liczbie :math:`a`, jeśli :math:`a` jest nieujemna,

• liczbie przeciwnej do :math:`a`, jeśli :math:`a` jest ujemna;

co symbolicznie wyrażamy w następujący sposób

.. math:: 

    |a|= \left\{
    \begin{array}{cl}
    a & \textrm{ dla } a >= 0,\\
    -a & \textrm{ dla } a<0
    \end{array}
    \right..



Zobaczmy to!
^^^^^^^^^^^^


Przyjrzyjmy się przykładom, które pokazują nam, jak tworzone są wykresy funkcji zawierających wartość bezwzględną.

Funkcja liniowa jest dobrym obiektem do zobrazowania przekształcenia, niech :math:`f(x)=x`.


.. sagecellserver::

    var('x')
    f(x)=x
    plot(f,x,-10,10,color='green',thickness=2, figsize=4)


.. end of output

Sporządźmy wykres funkcji :math:`f(x)=|x|`. Zgodnie z definicją wartości bezwzględnej, odpowiedniemu odbiciu podlega część wykresu funkcji liniowej (położona poniżej osi :math:`OX`).


.. sagecellserver::

    var ('x')
    f(x)=abs(x)
    plot(f,x,-10,10, color='green',thickness=2, figsize=4)


.. end of output

Następnie: wykres funkcji :math:`f(x)=|x|` przesuńmy o wektor :math:`[0, -2]`- otrzymamy wykres funkcji :math:`f(x)=|x|-2`.


.. sagecellserver::

    var ('x')
    f(x)=abs(x)-2
    plot(f,x,-10,10, color='green',thickness=2, figsize=4)


.. end of output


Ponownie zastosujmy wartość bezwzględną - otrzymamy wykres funkcji :math:`f(x)=||x|-2|`.


.. sagecellserver::

    var ('x')
    f(x)=abs(abs(x)-2)
    plot(f,x,-10,10, color='green',thickness=2, figsize=4)


.. end of output


Warto przyjrzeć się wykresowi funkcji kwadratowej :math:`f(x)=x^2`, przesuniętemu o wektor :math:`[0, -2]` po zastosowaniu wartości bezwzględnej - otrzymujemy :math:`f(x)=|x^2– 2|`. Możemy również zmieniać wartość parametru :math:`m`.


.. sagecellserver::

    var('x')
    m=10
    f(x)=abs(abs(x^2)-2)
    g(x)=m 
    wykres_f=plot(f,x,-10,10,color='green',thickness=2)
    wykres_g=plot(g,x,-10,10,color='red',thickness=2,linestyle="--")
    show(wykres_f+wykres_g, figsize=4)


.. end of output

Rozważmy w tym samym ukladzie współrzędnych wykresy podstawowych funkcji trygonometrycznych: :math:`f(x)=\sin x` oraz :math:`g(x)=\cos x`.


.. sagecellserver::

    var ('x')
    f(x)=sin(x)
    g(x)=cos(x)
    wykres_f=plot(f,x,-5,5, color='green',thickness=2, linestyle=":")
    wykres_g=plot(g,x,-5,5, color='red', thickness=2, linestyle="--")
    h(x)=abs(sin(x))
    t(x)=abs(cos(x))
    wykres_h=plot(h,x,-5,5, color='yellowgreen', thickness=2)
    wykres_t=plot(t,x,-5,5, color='pink', thickness=2)
    show(wykres_f+wykres_g+wykres_h+wykres_t, figsize=4)


.. end of output


Kolejną z funkcji, które poznają uczniowie w szkole średniej, jest funkcja logarytmiczna  :math:`f(x)=\log x`. Po zastosowaniu wartości bezwzględnej - otrzymujemy wykres funkcji :math:`g(x)=|\log x|`.


.. sagecellserver::

    var ('x')
    f(x)=abs(log(x))
    wykres_f=plot(f,x,0,8,color='green',thickness=3)
    g(x)=log(x)
    wykres_g=plot(g,x,0,8,color='yellowgreen', thickness=3, linestyle='--')
    show(wykres_f+wykres_g, figsize=4)


.. end of output

Narysujmy wykresy innych funkcji "szkolnych": :math:`g(x)=|x^2|` oraz :math:`g(x)=|x^3|`.


.. sagecellserver::

    var ('x')
    f(x)=abs(x^2)
    wykres_f=plot(f, x, -5,5, color='orange', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    g(x)=abs(x^3)
    wykres_g=plot(g, x, -5,5, color='green', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    h(x)=x^3
    wykres_h=plot(h, x, -5,5, color='yellowgreen', linestyle=':', xmin=-5, xmax=5, ymin=-10, ymax=10, thickness=2)
    show(wykres_f+wykres_g+wykres_h, figsize=4)


.. end of output


Przejdźmy do następnej części naszej lekcji: wykorzystamy element interaktywny.

Oto wykres z tabelą, w której możemy wybrać jedną z dwóch funkcji: :math:`\sin x` or :math:`\cos x`. Możemy również stworzyć zakres naszej funkcji i obserwować jak zmienia się wykres. To świetny eksperyment, aby dowiedzieć się, jak działają funkcje trygonometryczne.


.. sagecellserver::

    @interact
    def para(n1= selector (values =(sin(x),cos(x))),n2 = slider(1,5,1,default = 1)):
        p = plot((n1)^n2,-6,6,color='green',thickness=2)
        show(p, figsize=4)

.. end of output

Następny wykres jest trochę bardziej skomplikowany, ale ma więcej funkcji i opcji, które pozwalają uczniom zobaczyć różne modyfikacje funkcji: trygonometrycznych, logarytmicznych lub pierwiastka kwadratowego.


.. sagecellserver::

      @interact
    def para_(n2=selector(values =(sin(x),cos(x),ln(x),sqrt(x),(x),), label="wybierz funkcję"),
    n3=selector(values =((x),abs(x)), label="zastosuj wartość bezwzględną"), n1=slider(-1,5,1,default = 1, label="wybierz wykładnik potęgi ")):
        var('x')
        p = n3(n2)^n1
        p1 = plot(p,-10,10, color='orange', thickness=3)
        show(p1, figsize=4)
        print(p)


.. end of output


Podsumowanie
^^^^^^^^^^^^^

???



