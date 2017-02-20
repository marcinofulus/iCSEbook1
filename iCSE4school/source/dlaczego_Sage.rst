
Dlaczego Sage?
==============

1. Popularność Pythona na świecie.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Python rozwijał się już od lat dziewięćdziesiątych ubiegłego stulecia. Jednak jego niesłychana popularność przypada na czasy obecne. W Stanach Zjednoczonych większość projektów programistycznych dotyczy właśnie tego języka programowania. Python posiada rozbudowany pakiet bibliotek standardowych, cechuje go czytelność i klarowność kodu przez co jego składnia jest przejrzysta i zwięzła. Poza tym Python wspiera różne sposoby programowania: proceduralny, obiektowy oraz funkcyjny. Dzięki tym zaletom Norwegia jako pierwszy kraj europejski systemowo wprowadziła wspomniany język programowania do szkół. Uczniowie zdobywają kolejne certyfikaty powierdzające umiejętność programowania na danym poziomie.

Pierwsza wersja SageMath został wydany w dniu 24 lutego 2005 roku jako wolne i otwarte oprogramowanie zgodnie z warunkami GNU General Public License. Można powiedzieć, że Sage jest "nakładką" na Pythona, która integruje wiele specjalistycznych matematycznych pakietów oraz setki tysięcy unikalnych linii kodu dodawania nowych funkcji. Możliwości i elastyczność SageMath są przeogromne, dlatego warto wdrożyć powyższy język programowania także w szkole. Nie bez znaczenia jest fakt, że jest to oprogramowaniem otwarte i jak dotychczas darmowe. Nauczyciel i uczniowie mogą mieć dostęp do platformy w każdym miejscu i czasie, jeśli tylko mają dostęp do internetu. Poniżej w kilku punktach pokazane są najważniejsze zalety i możliwości zastosowania Sage'a w szkole na lekcjach przedmiotów ścisłych.


2. Bogaty i szybki kalkulator naukowy.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Praktycznie, każda ważna funkcja, wzór matematyczny jest już zaimplementowany w języku Sage. Poniżej tylko niektóre instrukcje, które można wykorzystać w szkole średniej:

- wartość bezwzględna – *abs*,
- rozkład na czynniki pierwsze - *factor*,
- silnia – *factorial*,
- symbol Newtona – *binomial*,
- rozwiąż równanie – *solve*,
- narysuj wykres – *plot*,
- następna liczba pierwsza – *next_prime*,
- NWD – *gcd*, NWW – *lcm*,
- pochodna – *diff*,
- całka – *integrate*.

Pierwszy przykład pokazuje możliwości rachunkowe Sage'a. Można używać go do sprawdzania: przeprowadzonych rachunków, zadań domowych przez uczniów. Jeżeli nauczyciel pozna powyższy język programowania, to może stworzyć kod, który umożliwia rozwiązywanie zadań rachunkowych "krok po kroku".

.. sagecellserver::

    print "(4/3+5/5)-(5/2-4/6) =", (4/3+5/5)-(5/2-4/6)
    print "(3^15-3^13)/(3^13+3^14) =", (3^15-3^13)/(3^13+3^14)
    print "1001 =", factor(1001)
    print "(sqrt(8)-sqrt(2))^2 =", (sqrt(8)-sqrt(2))^2
    print "5! =", factorial(5)
    print "NWD(354,222) =", gcd(354, 222)
    
Sage charakteryzuje się niespotykaną możliwością przybliżania liczb niewymiernych oraz wykonywania działań na dowolnie dużych liczbach. Te możliwości wykorzystaliśmy w naszym projekcie, przed wszystkim w Szyfrowaniu RSA oraz w w rozdziale dotyczących przybliżeń wyrażeń niewymiernych.

.. sagecellserver::

    show(sqrt(2), "=", N(sqrt(2), digits=70))
    show(pi, "=", N(pi, digits=80))
    show(2^288+5^80)
    
3. Działania na wyrażeniach algebraicznych.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Jedną z ważniejszych możliwości, którą można zastosować na lekcjach matematyki, fizyki oraz chemii jest przeprowadzanie rachunków nie tylko na liczbach, ale także na zmiennych. Sage doskonale sobie radzi z obliczeniami symbolicznymi, czyli potrafi przeprowadzać obliczenia, przekształcenia na wyrażeniach algebraicznych. Przez co możemy modyfikować postać wzoru, obliczać jedną zmienną przy pomocy innych, wyprowadzać wzory -- ogólne rozwiązania. Poniżej pokazane są proste przykłady dotyczące wzorów skróconego mnożenia oraz wyrażeń wymiernych.

Wzory skróconego mnożenia.

.. sagecellserver::

    var('a','b')
    wzor1=(a+b)^2
    wzor2=(a-b)^2
    wzor3=(a+b)*(a-b)
    show (wzor1, "=", wzor1.canonicalize_radical())
    show (wzor2, "=", wzor2.canonicalize_radical())
    show (wzor3, "=", wzor3.canonicalize_radical())
    a=sqrt(3)
    b=2
    wzor1=(a+b)^2
    wzor2=(a-b)^2
    wzor3=(a+b)*(a-b)
    show (wzor1, "=", wzor1.canonicalize_radical())
    show (wzor2, "=", wzor2.canonicalize_radical())
    show (wzor3, "=", wzor3.canonicalize_radical())

Zamiana postaci wyrażenia algebraicznego.

.. sagecellserver:: 

    var('n')
    wyr=n^3-(n-1)^3
    show ("n=2")
    show(wyr," = ", wyr.canonicalize_radical()," = ",wyr.substitute(n = 2))

Zamiana postaci wyrażenia wymiernego.

.. sagecellserver::

    var('z')
    wyr = (z^2+3*z)/z
    show (wyr)
    show (wyr.canonicalize_radical())
    show (wyr.subs(z=x+1))
    show (wyr.subs(z=2))
 
4. Rozwiązywanie równań i układów równań.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Największą ilość zadań z przedmiotów ścisłych jaką uczeń musi wykonać to rozwiązywanie równań i układów równań. Oczywiście żadne narzędzie nie zastąpi samodzielnego rozwiązywania zadań przez uczniów, ale może być bardzo przydatne do ćwiczeń, sprawdzania wyników, czy też rozwiązywania równań, które uczeń musi samodzielnie wyprowadzić na podstawie zadań tekstowych. Powyższy język umożliwia rozwiązywanie nawet trudnych równań i układów równań przy pomocy jednej instrukcji -- *solve*. Poniżej przykłady, które demonstrują użycie instrukcji na podstawie równania kwadratowego oraz prostego układu równań z dwoma niewiadomymi. Dla nauczycieli prowadzących zajęcia dodatkowe z matematyki dla uczniów zdolnych nie bez znaczenia będzie fakt, ze Sage rozwiązuje równania w zbiorze liczb zespolonych oraz macierzowe.

Równanie kwadratowe.

.. sagecellserver::

    var('a','b','c')
    r_kwadr = a*x^2 + b*x + c == 0
    show(solve(r_kwadr, x))
    a=1
    b=4
    c=-5
    r_kwadr = a*x^2 + b*x + c == 0
    show (solve(r_kwadr, x))
    
Układ równań z dwoma niewiadomymi.    
    
.. sagecellserver::

    var('x','y')
    solve([x-3*y==2, x-2*y==8],x,y)
    
5. Wizualizacja.    
^^^^^^^^^^^^^^^^    
  
Uczniowie dzięki stroną internetowym, platformą społecznościowym, MMS'ą itp. odbierają świat "obrazkowo", czyli wiążą krótkie informację z odpowiednim obrazkiem, zdjęciem, wykresem. Dlatego też wizualizacja dla obecnego pokolenia młodzieży jest bardzo ważna. Sage umożliwia rysowanie wykresów funkcji w prosty sposób. Zatem możemy szybko przedstawiać rozwiązania na wykresie lub też rysować interesujące nas funkcje podczas lekcji. Uczniowie mogą modyfikować już istniejący kod programu i analizować otrzymane funkcje. Można to zastosować nie tylko na matematyce ale także na pozostałych przedmiotach ścisłych.

Poniższy program dotyczy miejsc zerowych funkcji kwadratowej. Obliczono w nim pierwiastki funkcji kwadratowej, punkt przecięcia funkcji z osią Y następnie narysowano wykres funkcji i zaznaczono wyróżnione punkty.

.. sagecellserver::

    a = 1
    b = 3
    c = 2
    d = b*b- 4*a*c
    f(x) = a*x*x + b*x + c
    if d < 0:
        print "Brak rozwiązania dla liczb rzeczywistych!"
        min=-5
        max=5
        x1=0
        x2=0
    if d > 0:
        x1=float((-b-sqrt(d))/(2*a))
        x2=float((-b+sqrt(d))/(2*a))
        print "x1=", x1, ", ", "x2=", x2
        if x1<x2:
            min=x1-2
            max=x2+2
        else:
            min=x2-2
            max=x1+2
    p1=point((x1,0), color="red", size=15)
    p2=point((x2,0), color="red", size=15)
    p3=point((0,c), color="green", size=20)
    q=plot(f,xmin=min,xmax=max)
    show(p1+p2+p3+q,xmin=min,xmax=max, figsize=4)

Dzięki instrukcji *region_plot* możemy na wykresie przedstawiać także rozwiązanie układów nierówności.

.. sagecellserver::

    var('x','y')
    g1 = -x^2+4*x
    g2 = 0.5*x
    f1 = plot(g1, (x,-1,5), linestyle="--")
    f2 = plot(g2,(x,-1,5), linestyle="-", color="green")
    rp = region_plot([y<g1,y>=g2],(x,-1,5),(y,-2,5), incol="khaki")
    show(f1 + f2 + rp, figsize=5)

.. sagecellserver::

    var('x','y')
    g1 = -x-2
    g2 = -x+2
    g3 = x-2
    g4 = x+2
    f1 = plot(g1, (x,-3,3), linestyle="--")
    f2 = plot(g2, (x,-3,3), linestyle="--", color="royalblue")
    f3 = plot(g3,(x,-3,3), linestyle="-", color="green")
    f4 = plot(g4,(x,-3,3), linestyle="-", color="lightgreen")
    rp = region_plot([y>g1,y<g2,y>=g3,y<=g4],(x,-2,2),(y,-2,2), incol="khaki")
    show(f1 + f2 + f3 + f4 + rp, figsize=5)

6. Sage – interdyscyplinarność.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Podsumowując SageMath umożliwia: szybkie i dokładne obliczenia nawet dowolnie dużych liczb, przeprowadzanie obliczeń na wyrażeniach algebraicznych, rozwiązywanie równań i układów równań, wizualizację rozwiązań, rysowanie wykresów, rozwiązywanie równań w zbiorze liczb zespolonych, rozwiązywanie równań macierzowych, obliczanie pochodnych, całek i wielu innych działań matematycznych. 
To bardzo dobre i bogate narzędzie programistyczne, dzięki któremu możemy łączyć przedmioty ścisłe: informatykę, programowanie, matematykę, fizykę, chemię. Czy istnieją ograniczenia dla Sage"a? Tak, ale pewnie wcześniej natrafimy na ograniczenia naszej wyobraźni.
