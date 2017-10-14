Dlaczego Sage?
==============


Wybór najlepszego narzędzia informatycznego na lekcję matematyki lub fizyki?
----------------------------------------------------------------------------




Od wielu lat czynione są próby stosowania narzędzi informatycznych i
nawet programowania na lekcjach przedmiotów ścisłych. Najczęściej
zostaje wybierane przez fachowców w jednej dziedzinie specjalistyczne
oprogramowanie. Bywa, że wybór jest lobbowany przez producenta danego
systemu. W efekcie prowadzi to do nieskoordynowanych działań o
ograniczonych do poszczególnych przedmiotów. Uczeń poznaje na lekcjach
informatyki narzędzia i języki nie przydatne podczas innych
przedmiotów. Lekcje fizyki i matematyki są wzbogacane dedykowanym
oprogramowaniem, które nie jest stosowane na informatyce.  Taki sposób
działania nie jest zły sam w sobie - używamy właściwych narzędzi do
poszczególnych zadań. Co jeśli istnieje wspólne narzędzie i język w
których praktycznie bezkompromisowo można zastosować do całego
spektrum zagadnień w szkolnej (i nie tylko) edukacji?

Zastanówmy się, jakie cechy powinien mieć system komputerowy, by
przełamać powyższy stereotyp? Poszukajmy rozwiązania jednocześnie
spełniającego następujące cechy:

#. WIDE: System powinien być oparty na popularnym i otwartym języku
   programowania szerokiego przeznaczenia.

   Języki programowania szerokiego przeznaczenia mogą być wykorzystane
   go tworzenia gier komputerowych, jak i aplikacji naukowych czy
   edukacji. Z drugiej strony istnieje wiele tak zwanych `języków
   dziedzinowych
   <https://pl.wikipedia.org/wiki/J%C4%99zyk_dziedzinowy>`_
   stworzonych na potrzeby pojedyńczej aplikacji. Takie języki
   znakomicie spełniają swoją rolę, jednak z reguły nie nadają się do
   innych zadań. Przykładem może być język Matlab, który pomimo swojej
   popularności nie jest rozwiązaniem przyjętym w nauczaniu
   informatyki. Języki takie jak Python umożliwiają praktycznie
   wykonanie wszystkich `zadań
   <https://docs.scipy.org/doc/numpy-dev/user/numpy-for-matlab-users.html>`_
   które są właściwe dla Matlab, jednak ich specyfika pozwala na
   zostosowanie ich m.in. do nauczania informatyki.  Ważną cechą
   systemu jest uniknięcie `uzależnienia od dostawcy
   <https://pl.wikipedia.org/wiki/Uzale%C5%BCnienie_od_dostawcy>`_, to
   ma często miejsce w przypadku stosowania języków dziedzinowych.
   
#. INTERACT: Język programowania powinien umożliwiać pracę interaktywną.

   Takie żądanie praktycznie eliminuje języki kompilowane
   (C/C++). Chcąc wykorzystać system komputerowy interaktywnie,
   najstosowniejsze wydają się języki z dynamicznym typowaniem i
   mechanizmami typu introspekcja. Wymaganie to spełnia więszkość
   języków dziedzinowych dostarczanych przez producentów systemów
   klasy CAS, ale również języki ogólnego przeznaczenia takie jak Python.
#. FREE - System powinien być powszechnie dostępny.

   Nieskrępowana dostępność do systemu jest najlepiej zagrawantowana
   przez oprogramowanie otwarte. Dodatkowo oprogramowanie takie daję
   możliwość wglądu w każdy zastosowany algorytm co ma znaczenie
   zarówno w nauce, jak i posiada walory edukacyjne. Dostępność jest
   również związana z technicznymi aspektami związanymi z instalacja
   oprogramowania. Możliwość skorzystania z pracy w "chmurze" z
   pośrednictwem jedynie przeglądarki internetowej jest bardzo
   pożądaną cechą takiego systemu.
   
#. POWER - Możliwości systemu powinny bezkompromisowo zawierać
   wszystkie elementy niezbędne do zastosowania go na wszystkich
   przedmiotach ścisłych.

   Takie wymaganie eliminuje języki, które nie są na tyle
   rozpowszechnione, by były w nich zaimplementowane wszystkie
   najważniejsze metody obliczeniowe lub wizualizacyjne. Python jest
   szczególnie interesującym przykładem, ponieważ istnieje w nim
   powszechnie wykorzystywana łatwość do tworzenia interfaceów
   przeróżnych bibliotek napisanych w innych językach. Z tej cechy
   korzysta system SageMath, który zawiera w sobie setki bibliotek
   naukowych połączonych wspólnym sposobem użycia z pomocą właśnie
   Python-a.

   
#. PROF - System powinien umożliwiać płynne przejście od pracy na
   lekcjach w szkole do profesjonalnych zastosowań w badaniach
   naukowych czy w przemyśle.

   Nie ma żadnego powodu, by w szkole uczyć na "małym" systemie, a na
   studiach czy w pracy poznawać dopiero ten "duży". Z powodzeniem
   można użyć nawet w szkole podstawowej tego samego języka i systemu,
   który jest używany przez naukowców oczywiście ograniczając się do
   wykorzystania jego niewielkiej części. Oszczędza to dużo czasu i
   wyrabia od razu dobre nawyki od najwcześniejszego okresu nauki.
   Należy podkreślić, że często koszty licencji oprogramowania dla
   systemów stosowanych profesjonalnie są znacznie wyższe od
   dedykowanych systemów edukacyjnych. Problem ten nie istnieje, gdy
   wybierze się oprogramowanie otwarte.
   

+--------------+--------+--------+------+----------+--------+
|System        |WIDE    |INTERACT|FREE  |POWER     |PROF    |
|              |        |        |      |          |        |
+--------------+--------+--------+------+----------+--------+
|SageMath      |  TAK   |  TAK   | TAK  |  TAK     |    TAK |
+--------------+--------+--------+------+----------+--------+
|Python/Scipy  |  TAK   |  TAK   |TAK   |  TAK     |    TAK |
+--------------+--------+--------+------+----------+--------+
|Mathematica   | TAK    |  TAK   |NIE   |   TAK    |    TAK |
+--------------+--------+--------+------+----------+--------+
|C/C++         |    TAK |  NIE   |TAK   | TAK/NIE  |    TAK |
+--------------+--------+--------+------+----------+--------+
|Geogebra      |    NIE |  TAK   |  TAK |   NIE    |    NIE |
+--------------+--------+--------+------+----------+--------+
|Java          |    TAK |  NIE   | TAK  | TAK/NIE  |    TAK |
+--------------+--------+--------+------+----------+--------+


Z powyższej analizy wynika, że rozwiązania oparte o język Python
spełniają wszystkie wymagania. Co więcej, Python jest językiem o
rosnącym znaczeniu w braży informatycznej. Zarówno stosowanie
standardowego interpretera Python, jak i systemu algebry komputerowej
SageMath może dać takie same efekty. Zdecydowanie na lekcji matematyki
czy fizyki system SageMath będzie - jako system algebry komputerowej -
oferował krótszą drogę do rozwiązania. Zanim jednak omówimy te systemy
odpowiedzmy sobie na pytanie co to jest system algebry komputerowej?

System algebry komputerowej
^^^^^^^^^^^^^^^^^^^^^^^^^^^

Pod pojęciem system algebry komputerowej (ang. Computer Algebra System
lub CAS) rozumie się program komputerowy wspomagający obliczenia
symboliczne. Rozważmy na przykład poniższy kod w języku Python:


.. sagecellserver::
   :linked: false

   a = 23.0
   b = 3.0
   print ( (a/34+1/b)**2 )

Program ten wypisze na ekranie przybliżoną wartość wyrażenia po
podstawieniu zmiennych :math:`a=23,b=3` liczbę :math:`1.0197`.
Niewykonanie dwóch pierwszych podstawień zastutkuje błędem
interpretera Python.

Nieco inaczej sytuacja wygląda w przypadku systemu CAS. Tutaj jedynie
informujemy system, że zmienne :math:`a,b` będą symbolami i możemy
rozwinąć wyrażenie algebraiczne zawierające te symbole. Wykonująć:
   
.. sagecellserver::
   
   var('a,b')
   show( expand( (a/34+1/b)**2)  )



.. only:: latex

   Otrzymamy w wyniku:        
   :math:`\frac{1}{1156} \, a^{2} + \frac{a}{17 \, b} + \frac{1}{b^2}`


.. only:: html

   Otrzymamy w wyniku wzór algebraiczny.

Współczesne systemy algebry komputerowej nie ograniczają się do
manipulacji wzorami matematycznymi. Z reguły są wyposażone w system
obliczeń numerycznych i bogaty zestaw narzędzi wizualizacyjnych. Na
dzień dzisiejszy możliwości większości systemów CAS są zbliżone i
główne różnice polegają na języku programowania i licencji na k†órej
dostępne jest oprogramowanie.

W proponowanym podejściu opieramy się na systemie SageMath, który jest
wolnym i otwartym oprogramowaniem. Eliminuje to koszty
licencji. Ponadto SageMath korzysta z popularnego języka Python, który
uczniowie mogą uczyć się podczas lekcji informatyki. 
        

Czym jest SageMath? (od Python do SageMath)
-------------------------------------------

Python
^^^^^^

Python rozwijał się już od lat dziewięćdziesiątych ubiegłego
stulecia. Jednak jego niesłychana popularność przypada na czasy
obecne. W Stanach Zjednoczonych większość projektów programistycznych
dotyczy właśnie tego języka programowania. Python posiada rozbudowany
pakiet bibliotek standardowych, cechuje go czytelność i klarowność
kodu przez co jego składnia jest przejrzysta i zwięzła. Poza tym
Python wspiera różne sposoby programowania: proceduralny, obiektowy
oraz funkcyjny. Dzięki tym zaletom Norwegia jako pierwszy kraj
europejski systemowo wprowadziła wspomniany język programowania do
szkół. Uczniowie zdobywają kolejne certyfikaty powierdzające
umiejętność programowania na danym poziomie.


Ekosystem Scipy
^^^^^^^^^^^^^^^

Python jest językiem intensywnie używanym do pracy naukowej i
edukacji. Zestaw najbardziej powszechnych narzędzi zwany jest
`ekosystemem scipy <https://www.scipy.org/>`_. W zakres wchodzą m.in.:

  - NumPy, podstawowy pakiet do obliczeń numerycznych wzorowany w
    swojej koncepcji na oprogramowaniu Matlab
  - The SciPy biblioteka metod numerycznych 
  - Matplotlib, pakiet rysujący wykresy
  - SymPy, biblioteka do obliczeń symbolicznych (CAS)

    
SageMath
^^^^^^^^

SageMath jest systemem algebry komputerowej. Pierwsza wersja SageMath
została wydany w dniu 24 lutego 2005 roku jako wolne i otwarte
oprogramowanie zgodnie z warunkami GNU General Public License. Można
powiedzieć, że Sage jest "nakładką" na Pythona, która integruje wiele
specjalistycznych matematycznych pakietów oraz setki tysięcy
unikalnych linii kodu dodawania nowych funkcji. Możliwości i
elastyczność SageMath są przeogromne, dlatego warto wdrożyć powyższy
język programowania także w szkole. Nie bez znaczenia jest fakt, że
jest to oprogramowaniem otwarte i jak dotychczas darmowe. Nauczyciel i
uczniowie mogą mieć dostęp do platformy w każdym miejscu i czasie,
jeśli tylko mają dostęp do internetu. Poniżej w kilku punktach
pokazane są najważniejsze zalety i możliwości zastosowania Sage'a w
szkole na lekcjach przedmiotów ścisłych.


Ekosystem Scipy vs SageMath
^^^^^^^^^^^^^^^^^^^^^^^^^^^

System algebry komputerowej SageMath jest olbrzymim zbiorem narzędzi i
zawiera w sobie między innymi narzędzią z ekosystemu Scipy. Zasadniczą
różnicą jest jednak wspólny interface do wszystkich narzędzi. Sposób
użycia SageMath jest zoptymalizowany na pracę interaktywną i wygodę
widzianą w punktu widzenia matematyka (czy fizyka). Uchuchamiając
system SageMath mamy do dyspozycji interpreter Pythona 2.7 z dwoma
kluczowymi różnicami:

#. Każde polecenie jest przerabiane przez tzw. preparser zanim
   zostanie wysłane do interpretera Pythona. Preparser zmienia m.in.:

    - zapis potęgi :code:`2^3` na zgodny ze składnią Pythona :code:`2**3`
    - napis :code:`1` na :code:`Integer(1)`
    - napis :code:`1.0` na :code:`RealNumber(1.0)`

#. Automatycznie wczytywane jest ok. 2000 pożytecznych funkcji takich
   jak :code:`plot`, :code:`simplify`, itp. oraz definiowana jest zmienna
   symboliczna :code:`x`.

Dlatego by np. rozwiązać równanie kwadratowe w SageMath, wystarczy
napisać :code:`solve(x^2+2*x+1==0,x)` i otrzymamy
odpowiedź. Korzytając z podejścia prezentowanego przez ekosystem scipy
należałoby wybrać i załadować odpowiedni moduł, zdefiniować zmienną i
dopiero wtedy przystąpić do właściwego rozwiązywania.

Powyższe zalety SageMath skłoniły nas do zastosowania właśnie tego
systemu na lekcjach fizyki, matematyki i chemii. Należy jednak
podkreślić, że posługiwanie się SageMath jest **faktycznie
programowaniem w języku Python** i jeśli uczniowie posiądą tą
umiejętność na lekcjach informatyki to jedyną dodatkową niezbędną
wiedzą są dwa powyższe punkty. W efekcie rozwiązanie oparte na
systemie SageMath dostarczą o wiele bardziej efektywnego narzędzia a z
drugiej strony nie nakłada praktycznie żadnych dodatkowych wymagań na
ucznia, który uczył się Pythona na informatyce.



SageMath w pigułce
------------------


Bogaty i szybki kalkulator naukowy.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Praktycznie, każda ważna funkcja, wzór matematyczny są już
zaimplementowane w języku SageMath. Poniżej tylko niektóre instrukcje,
które można wykorzystać w szkole średniej:

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

Pierwszy przykład pokazuje możliwości rachunkowe Sage'a. Można używać
go do sprawdzania: przeprowadzonych rachunków, zadań domowych przez
uczniów. Jeżeli nauczyciel pozna powyższy język programowania, to może
stworzyć kod, który umożliwia rozwiązywanie zadań rachunkowych "krok
po kroku". 

.. sagecellserver::
    :linked: false

    print "(4/3+5/5)-(5/2-4/6) =", (4/3+5/5)-(5/2-4/6)
    print "(3^15-3^13)/(3^13+3^14) =", (3^15-3^13)/(3^13+3^14)
    print "1001 =", factor(1001)
    print "(sqrt(8)-sqrt(2))^2 =", (sqrt(8)-sqrt(2))^2
    print "5! =", factorial(5)
    print "NWD(354,222) =", gcd(354, 222)


.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. code:: python

      (4/3+5/5)-(5/2-4/6) = 1/2
      (3^15-3^13)/(3^13+3^14) = 2
      1001 = 7 * 11 * 13
      (sqrt(8)-sqrt(2))^2 = 2
      5! = 120
      NWD(354,222) = 6

          
SageMath ma wbudowane różne systemy arytmetyczne i może np.
przybliżać liczby niewymierne z dowolną precyzją. Te możliwości
wykorzystaliśmy w naszym projekcie, przed wszystkim w szyfrowaniu RSA
oraz w rozdziale dotyczących przybliżeń wyrażeń niewymiernych.

.. sagecellserver::
    :linked: false

    show(sqrt(2), "=", N(sqrt(2), digits=60))
    show(pi, "=", N(pi, digits=60))
    show(2^168+5^80)

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \sqrt{2} = 1.41421356237309504880168872420969807856967187537694807317668 \\
      \pi=3.14159265358979323846264338327950288419716939937510582097494 \\
      82718435399721924198287929350313460725034243008818892481

    
Działania na wyrażeniach algebraicznych.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Jedną z ważniejszych możliwości, którą można zastosować na lekcjach
matematyki, fizyki oraz chemii jest przeprowadzanie rachunków nie
tylko na liczbach, ale także na zmiennych. SageMath doskonale sobie radzi
z obliczeniami symbolicznymi, czyli potrafi przeprowadzać obliczenia,
przekształcenia na wyrażeniach algebraicznych. Przez co możemy
modyfikować postać wzoru, obliczać jedną zmienną przy pomocy innych,
wyprowadzać wzory -- ogólne rozwiązania. Poniżej pokazane są proste
przykłady dotyczące wzorów skróconego mnożenia oraz wyrażeń
wymiernych.

**Wzory skróconego mnożenia.**

.. sagecellserver::
    :linked: false

    var('a','b')
    wzor1 = (a+b)^2
    wzor2 = (a-b)^2
    wzor3 = (a+b)*(a-b)
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

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::


      {\left(a + b\right)}^{2} \text{\texttt{=}} a^{2} + 2 \, a b + b^{2} \\
      {\left(a - b\right)}^{2} \text{\texttt{=}} a^{2} - 2 \, a b + b^{2} \\
      {\left(a + b\right)} {\left(a - b\right)} \text{\texttt{=}} a^{2} - b^{2} \\
      {\left(\sqrt{3} + 2\right)}^{2} \text{\texttt{=}} 4 \, \sqrt{3} + 7 \\
      {\left(\sqrt{3} - 2\right)}^{2} \text{\texttt{=}} -4 \, \sqrt{3} + 7 \\
      {\left(\sqrt{3} + 2\right)} {\left(\sqrt{3} - 2\right)} \text{\texttt{=}} -1

      
    
**Zamiana postaci wyrażenia algebraicznego.**

.. sagecellserver:: 

    var('n')
    wyr = n^3-(n-1)^3
    show ("n=2")
    show(wyr," = ", wyr.canonicalize_radical()," = ",wyr.substitute(n = 2))

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \text{\texttt{n=2}} \\
      -{\left(n - 1\right)}^{3} + n^{3} \text{\texttt{{ }={ }}} 3 \, n^{2} - 3 \, n + 1 \text{\texttt{{ }={ }}} 7 


**Zamiana postaci wyrażenia wymiernego.**

.. sagecellserver::    :linked: false

    var('z')
    wyr = (z^2+3*z)/z
    show (wyr)
    show (wyr.canonicalize_radical())
    show (wyr.subs(z=x+1))
    show (wyr.subs(z=2))


.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \frac{z^{2} + 3 \, z}{z} \\
      z + 3 \\
      \frac{{\left(x + 1\right)}^{2} + 3 \, x + 3}{x + 1} \\
      5
 

    
Rozwiązywanie równań i układów równań.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Największą ilość zadań z przedmiotów ścisłych jaką uczeń musi wykonać to rozwiązywanie równań i układów równań. Oczywiście żadne narzędzie nie zastąpi samodzielnego rozwiązywania zadań przez uczniów, ale może być bardzo przydatne do ćwiczeń, sprawdzania wyników, czy też rozwiązywania równań, które uczeń musi samodzielnie wyprowadzić na podstawie zadań tekstowych. Powyższy język umożliwia rozwiązywanie nawet trudnych równań i układów równań przy pomocy jednej instrukcji -- *solve*. Poniżej przykłady, które demonstrują użycie instrukcji na podstawie równania kwadratowego oraz prostego układu równań z dwoma niewiadomymi. Dla nauczycieli prowadzących zajęcia dodatkowe z matematyki dla uczniów zdolnych nie bez znaczenia będzie fakt, ze Sage rozwiązuje równania w zbiorze liczb zespolonych oraz macierzowe.

**Równanie kwadratowe.**

.. sagecellserver::
    :linked: false

    var('a','b','c')
    r_kwadr = a*x^2 + b*x + c == 0
    show(solve(r_kwadr, x))
    a = 1
    b = 4
    c = -5
    r_kwadr = a*x^2 + b*x + c == 0
    show (solve(r_kwadr, x))

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \left[x = -\frac{b + \sqrt{b^{2} - 4 \, a c}}{2 \, a}, x = -\frac{b - \sqrt{b^{2} - 4 \, a c}}{2 \, a}\right] \\
      \left[x = \left(-5\right), x = 1\right]

    
**Układ równań z dwoma niewiadomymi.**


.. sagecellserver::
    :linked: false

    var('x','y')
    solve([x-3*y==2, x-2*y==8],x,y)

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      [[x == 20, y == 6]]


             
Wizualizacja.
^^^^^^^^^^^^^    
  
Uczniowie dzięki stronom internetowym czy platformom społecznościowym
odbierają świat "obrazkowo", czyli wiążą krótkie informacje z
odpowiednim obrazkiem, zdjęciem, wykresem. Dlatego też wizualizacja
dla obecnego pokolenia młodzieży jest bardzo ważna. Sage umożliwia
rysowanie wykresów funkcji w prosty sposób. Zatem możemy szybko
przedstawiać rozwiązania na wykresie lub też rysować interesujące nas
funkcje podczas lekcji. Uczniowie mogą modyfikować już istniejący kod
programu i analizować otrzymane funkcje. Można to zastosować nie tylko
na matematyce ale także na pozostałych przedmiotach ścisłych.

Poniższy program dotyczy miejsc zerowych funkcji
kwadratowej. Obliczono w nim pierwiastki funkcji kwadratowej, punkt
przecięcia funkcji z osią Y następnie narysowano wykres funkcji i
zaznaczono wyróżnione punkty.

.. sagecellserver::
    :linked: false

    a = 1
    b = 3
    c = 2
    d = b*b - 4*a*c
    f(x) = a*x*x + b*x + c
    if d < 0:
        print "Brak rozwiązania dla liczb rzeczywistych!"
        xmin,xmax =-5, 5
        x1,x2 = 0,0
        
    if d > 0:
        x1 = float((-b-sqrt(d))/(2*a))
        x2 = float((-b+sqrt(d))/(2*a))
        
        print "x1=", x1, ", ", "x2=", x2

        if x1<x2:
            xmin,xmax = x1-2,x2+2
        else:
            xmin,xmax = x2-2,x1+2
            
    p1 = point((x1,0), color="red", size=35)
    p2 = point((x2,0), color="red", size=35)
    p3 = point((0, c), color="green", size=35)
    q = plot(f(x),(x,xmin,xmax))
    show(p1+p2+p3+q, figsize=4)

    
.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`parabola`.

    .. figure:: dlaczego_Sage/kw.pdf
       :width: 50%
       :name: parabola     
     
       Parabola z miejscami zerowymi. 


Dzięki instrukcji :code:`region_plot` możemy na wykresie przedstawiać
także rozwiązanie układów nierówności.

.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x^2/4+1*x
    g2 = 0.25*x
    f1 = plot(g1, (x,-0.4,4.5), linestyle="--")
    f2 = plot(g2,(x,-0.4,4.5), linestyle="-", color="green")
    rp = region_plot([y<g1,y>=g2],(x,-0.3,4.5),(y,-1,1.2), incol="khaki")
    show(f1 + f2 + rp, figsize=5)         

    
.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres :numref:`region1`.

    .. figure:: dlaczego_Sage/reg1.pdf
       :width: 40%
       :name: region1   
  
       Przykład wizualizacji nierówności z pomocą `region_plot`

       
.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x-2
    g2 = -x+2
    g3 = x-2
    g4 = x+2
    f1 = plot(g1, (x,-2.5,2.5), linestyle="--")
    f2 = plot(g2, (x,-2.5,2.5), linestyle="--", color="royalblue")
    f3 = plot(g3, (x,-2.5,2.5), linestyle="-", color="green")
    f4 = plot(g4, (x,-2.5,2.5), linestyle="-", color="lightgreen")
    rp = region_plot([y>g1,y<g2,y>=g3,y<=g4],\
         (x,-2,2),(y,-2,2), incol="khaki")
    show(f1 + f2 + f3 + f4 + rp, figsize=5,ymax=3,ymin=-3)

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres   :numref:`region2`.

    .. figure:: dlaczego_Sage/reg2.pdf
       :width: 40%
       :name: region2

       Wizualizacja rozwiązania nierówności za pomocą `region_plot`. 


Interakcja
^^^^^^^^^^    

Duże walory edukacyjne mają programy komputerowe pozwalające wykonać
animację lub dynamicznie zmieniać parametr i obserwować jak wpływa on
na rozwiązanie. Tego typu elementy, najczęściej wykonane są w
technologii Flash lub javascript i są atrakcyjną cyfrową pomocą
naukową. System SageMath pozwala pojść jeden krok dalej - pozwala na
bardzo łatwe tworzenie tych elementów. Przeanalizujmy następujący przykład.
Chcemy zwizualizować rozwiązanie zadania:

Ile ma rozwiązań równanie :math:`x^2=x-a` dla :math:`a\in(0,\frac{1}{2})`?

W SageMath możemy narysować wykresy zarówno prostej :math:`y=x-a` jak
i paraboli :math:`y=x^2` i zaznaczyć na nich pierwiastki równania
:math:`x^2=x-a`.  Wystarczy taki stworzony kod programu opakować w
funkcję i dodać tzw. dekorator :code:`@interact`. SageMath wygeneruje
nam interaktywną aplikację, w której będzie można zmieniać myszką
wartość parametru i obserwować jak zmienia się wykres.



.. sagecellserver::
    :linked: false

    @interact
    def fun(a=slider(0,1/2,0.01)):
        p = plot([x^2,x-a],(x,-1,1),figsize=5,ymax=1,ymin=-1)
        assume(x,'real')
        pkt = [(x.subs(s),x.subs(s)-a) for s in solve(x^2==x-a,x)]
        if pkt:
             p += point(pkt,size=40,color='red')
        else:
             print "Nie ma pierwiastkow"
        show(p)


.. only:: latex
          
    Wynikiem działania powyższego kodu jest  :numref:`interact`.

    .. figure:: dlaczego_Sage/interact.png
       :width: 60%
       :name: interact

       Interaktywna ilustracja równania :math:`x^2=x-a`.




Sage – interdyscyplinarność.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Podsumowując SageMath umożliwia: szybkie i dokładne obliczenia nawet
dowolnie dużych liczb, przeprowadzanie obliczeń na wyrażeniach
algebraicznych, rozwiązywanie równań i układów równań, wizualizację
rozwiązań, rysowanie wykresów, rozwiązywanie równań w zbiorze liczb
zespolonych, rozwiązywanie równań macierzowych, obliczanie pochodnych,
całek i wielu innych działań matematycznych.

To bardzo dobre i bogate narzędzie programistyczne, dzięki któremu
możemy łączyć przedmioty ścisłe: informatykę, programowanie,
matematykę, fizykę, chemię. Czy istnieją ograniczenia dla Sage'a? Tak,
ale pewnie wcześniej natrafimy na ograniczenia naszej wyobraźni.
