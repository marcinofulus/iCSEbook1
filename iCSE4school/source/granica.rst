.. _granica:

Granica i ciągłość funkcji w punkcie
====================================


O scenariuszu
-------------

Scenariusz ten jest materiałem do przeprowadzenie 2h zajęć
lekcyjnych. 

Został on opracowany w ramach projektu iCSE4school na podstawie lekcji
prowadzonych w latach 2015-2017 w XXXIII LO M. Kopernika w Warszawie.

Opracowanie scenariusza i prowadzenie lekcji:  Mirosław Malinowski.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.






Ciągi liczbowe - powtórzenie
----------------------------

a) Co to jest ciąg liczbowy?

b) Podaj definicję Cauchy'ego granicy ciągu liczbowego.

c) Korzystając z własności granic ciągów liczbowych oblicz następujące granice:

:math:`\displaystyle \lim_{n\to\infty} \left(1+\frac{1}{n} \right )`,  :math:`\displaystyle \lim_{n\to\infty} \left(1-\frac{1}{n} \right)`,  :math:`\displaystyle \lim_{n\to\infty} \frac{2n^2+n+1}{n^2- \frac{1}{2}n}`,  :math:`\displaystyle  \lim_{n\to\infty} \frac{4n^2-n-1}{2n^2+3n}`

d)  Przy pomocy pakietu SAGE oblicz granice ciągów podanych wyżej oraz narysuj ich wykresy.


Przykład:
~~~~~~~~~

Sprawdzimy zbieżność dwóch ciągów:  :math:`\large a_n= 1 + \Large \frac{1}{n}` oraz  :math:`\large b_n= 1 - \Large \frac{1}{n}`

.. only:: html

   .. admonition:: Eksperymentuj z Sage!

       Uruchom poniższą procedurę i zobacz efekty.


.. sagecellserver::

     var('a_n')
     a(n) = 1 + 1/n
     b(n) = 1 - 1/n
     c = limit(a(n), n=oo);
     d = limit(b(n), n=oo)
     plt = points([(m, a(m)) for m in srange (1, 50)], axes_labels=['$n$', '$a_n \, b_n$'], legend_label="$a_n = $ $%s$" %latex(a(n)), color = 'green', figsize = (6, 4), gridlines = [None, [c]], fontsize=9)
     plt += points([(m, b(m)) for m in srange (1, 50)], legend_label="$b_n = $ $%s$" %latex(b(n)),color = 'red', gridlines = [None, [d]])
     plt



.. only:: latex
          
    Wynik działania powyższej procedury:

    .. figure:: granica_media/limit1.pdf
       :width: 70%
       :name: lim1
               
       Dwa ciągi mające tę samą granicę.
     
.. end of output


Wprowadzenie definicji Heinego granicy funkcji w punkcie.
---------------------------------------------------------

Funkcja  :math:`f(x)` ma  **granicę lewostronną**    *g*   w punkcie  :math:`x_0` (używamy zapisu  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`), jeżeli dla każdego ciągu argumentów  :math:`(x_n)` o wyrazach należących do przedziału  :math:`x_n < x_0)`,  zbieżnego do   :math:`x_0`, ciąg wartości   :math:`(f(x_n))` jest zbieżny do   *g*  .

.. math::

   \displaystyle  \lim_{x\to x_0^-} f(x) = g \iff \forall (x_n) \in (a; x_0): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g

Funkcja  :math:`f(x)` ma  **granicę prawostronną**    *g*   w punkcie  :math:`x_0` (używamy zapisu  :math:`\displaystyle  \lim_{x\to x_0^-} f(x) = g`),  jeżeli dla każdego ciągu argumentów  :math:`(x_n)` o wyrazach należących do przedziału  :math:`x_n > x_0)`,  zbieżnego do  :math:`x_0`, ciąg wartości   :math:`(f(x_n))` jest zbieżny do   *g*  .

.. math::

   \displaystyle  \lim_{x\to x_0^+} f(x) = g \iff \forall (x_n) \in (x_0; a): \lim_{n\to\infty} a_n = x_0 \implies \lim_{n\to\infty} f(a_n) = g

.. note::

   Funkcja  :math:`f(x)` ma granicę   :math:`g`   w punkcie  :math:`x_0`,  jeśli istnieją granice lewostronna i prawostronna tej funkcji w punkcie  :math:`x_0` i  :math:`\displaystyle \lim_{x\to x_0^-}f(x)=\lim_{x\to x_0^+}f(x)=g`.


Przykład
~~~~~~~~

Korzystając z definicji Heinego obliczymy granicę funkcji  :math:`f(x) = \Large \frac{x}{x+1}` w punkcie  :math:`x_0 = 1`.


.. sagecellserver::

    var('x0 x_0')
    x0 = 1
    f(x) = x/(x+1) # Badana funkcja
    a(n) = x0 - 1.5/n # Ciąg lewostronnie zbieżny do x0
    b(n) = x0 + 1.5/n # Ciąg prawostronnie zbieżny do x0
    gl = limit(f(a(n)), n=oo) # Granica lewostronna ciągu wartości funkcji f(x)
    gr = limit(f(b(n)), n=oo) # Granica prawostronna ciągu wartości funkcji f(x)
    la = [a(k) for k in srange(1, 100)] # Wartości wyrazów ciągu zbieżnego lewostronnie do x0
    lb = [b(k) for k in srange(1, 100)] # Wartości wyrazów ciągu zbieżnego prawostronnie do x0
    plt = plot (f(x), (x, x0-1, x0+1), axes_labels=['$x$','$f(x)$'], legend_label="$y = $ $%s$"%latex(f(x)))
    plt += points([(m, f(m)) for m in la], legend_label="$a_n = $ $%s$" %latex(a(n)), color='red', size=40, ymin = 0, ymax = 1, figsize=(6,4))
    plt += point([(x, f(x)) for x in lb], color='green', size=40, legend_label="$b_n = $ $%s$" %latex(b(n)))
    plt    


.. only:: latex
          
    Wynik działania powyższej procedury:

    .. figure:: granica_media/limit2.pdf
       :width: 70%
       :name: lim2
               
       Dwa ciągi mające tę samą granicę.

    

Zadanie 1
~~~~~~~~~


Wykorzystując podaną wyżej procedurę oblicz granice następujących funkcji:

1.  :math:`f(x) = \large \frac{x+2}{x-1}` w punkcie  :math:`x_0 = 2`

2.  :math:`f(x) = \large \frac{x^2-3}{2x^2-1}` w punkcie  :math:`x_0 = 1`

3.  :math:`f(x) = \large \frac{sinx}{x+1}` w punkcie  :math:`x_0 = \large \frac{\pi}{2}`

4.  :math:`f(x) = \large \frac{x}{|x|}` w punkcie  :math:`x_0 = 0`

5.  :math:`f(x) = \begin{cases} x^2 & \text{for } x \le {0}\\ 2^x & \text{for } x>0 \end{cases}` w punkcie  :math:`x_0 = 0`



Definicja ciągłości funkcji w punkcie.
--------------------------------------

Funkcja :math:`f` jest ciągła w punkcie :math:`x_0` wtedy, gdy dla każdego ciągu :math:`(x_n)` o wyrazach należących do pewnego otoczenia liczby :math:`x_0`, zbieżnego do :math:`x_0`:

1.  Istnieje granica :math:`\displaystyle \lim_{x \to x_0} f(x)`.

2.  :math:`\displaystyle \lim_{x \to x_0} f(x)=f(x_0)`

Przykład
~~~~~~~~

Zbadaj, czy funkcja  :math:`f(x) = \begin{cases}x^2 -4 & \text{dla } x< x_0 \\ \sqrt{x}-4 & \text{dla } x \ge {x_0} \end{cases}`  jest ciągła w punkcie  :math:`x_0=0`. Sprawdź, czy dana funkcja jest ciągła w innych punktach  :math:`x_0`?


.. sagecellserver::

     var('x0')
     x0 = 0
     fl(x) = x^2 - 4
     fr(x) = sqrt(x) - 4
     def f(x):
         if x < x0: return fl(x)
         if x == x0: return fr(x)
         if x > x0: return fr(x)
     a = limit(fl(x), x = x0, dir = 'left')
     b = limit(fr(x), x = x0, dir = 'right')
     if a == b == f(x0):
         print("Funkcja jest ciagla w punkcie ",x0)
     else:
         print("Funkcja NIE JEST ciagla w punkcie ",x0)
     plt = plot (fl, (x, x0-5, x0), axes_labels=['$x$','$f(x)$'], ymin = -5, ymax = 15, figsize = (6, 4), color = 'green', legend_label="$y =$ $%s$"%latex(fl(x)))
     plt += plot (fr, (x, x0, x0+5), color = 'red', legend_label="$y=$ $%s$"%latex(fr(x))) + point((x0, f(x0)), color = 'red', size = 48)
     plt


.. only:: latex
          
    Wynik działania powyższej procedury:

    .. figure:: granica_media/function.pdf
       :width: 70%
       :name: fun1
               
       Dwie funkcje.
     
.. end of output





Zadanie 2
~~~~~~~~~

Zbadaj czy następujące funkcje są ciągłe w podanych punktach.

1.   :math:`f(x) = |x+1|-x`  w punkcie  :math:`x_0=-1`

2.   :math:`f(x) = \begin{cases}|x+3|-1 & \text{for } x<x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  w punkcie  :math:`x_0=0`.

3.   :math:`f(x) = \begin{cases} \Large \frac{x^2+x-6}{x-2} & \text{for } x<x_0 \\ 3x-1 & \text{for } x \ge {x_0} \end{cases}`  w punkcie  :math:`x_0=2`

4.  :math:`f(x) = \begin{cases} -2 \sin{x} & \text{for } x< x_0 \\ \cos{x} & \text{for } x \ge {x_0} \end{cases}`  w punkcie  :math:`x_0=\pi`

5.  :math:`f(x) = \begin{cases} x \sin{\frac{1}{x}} & \text{for } x \ne x_0\\ 0 & \text{for } x =x_0 \end{cases}`  w punkcie  :math:`x_0=1`
