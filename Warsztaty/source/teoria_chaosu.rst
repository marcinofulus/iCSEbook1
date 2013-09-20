Teoria chaosu
+++++++++++++


Wstęp
=====

.. image:: http://upload.wikimedia.org/wikipedia/en/d/dc/Edward_lorenz.jpg
   :alt: Edward Norton Lorenz
   :align: right
   :height: 160

W połowie lat 50-tych XX wieku, Edward Lorenz, prowadził projekt
badawczy z zakresu statystycznego modelowania pogody. Lorenz był
matematykiem, jednak podczas wojny służąc w siłach powietrznych
zajmował się tam prognozowaniem pogody. W rezultacie w 1948 obronił
doktorat wydziale meteorologii MIT i podjął tam pracę naukową. Jako
matematyk Lorenz szybko stał się sceptyczny co do możliwości
stosowania liniowej statystyki do długoterminowych przewidywań tak
nieliniowego zjawiska jakim jest pogoda. Na marginesie, ówczesny stan
wiedzy i stosowane podejście było do złudzenia po podobne do
dzisiejszych prób modelowania dynamiki rynków finansowych. W każdym
razie Lorenz rozpoczął poszukiwania modeli opartych na leżących u
podstaw meteorologii zjawisk fizycznych. Skoncentrował się na
stworzeniu uproszczonego modelu konwekcji energii cieplnej w
atmosferze - jednego z podstawowych zjawisk fizycznych w
meteorologii. 

.. sidebar:: Konwekcja w atmosferze


   .. image:: http://upload.wikimedia.org/wikipedia/commons/6/6d/Earth_Global_Circulation.jpg
      :alt: Konwekcja w atmosferze
      :width: 300
      :height: 300
      :align: right
   
   Konwekcja to proces przekazywania ciepła związany z makroskopowym
   ruchem materii w płynie. W atmosferze, powietrze jest nagrzewane
   przez słońce przy powierzchni ziemi i jako lżejsze unosi się do
   góry, gdzie z kolei się oziębia i znowu opada. Taki opis jest
   oczywiście jedynie jakościowym wnioskiem z obserwacji. Jedyną
   ścisłą metodą badania takich zjawisk jest rozwiązywanie
   odpowiednich równań transportu, w tym równania
   Naviera-Stokesa. Lorenz w swojej pracy analizował numerycznie
   radykalnie uproszczony przypadek konwekcji, do tego stopnia
   uproszczony, że nie miał żadnego zastosowania w modelowaniu realnej
   atmosfery, ale zapoczątkował rewolucję w i nową dyscyplinę -
   teorię chaosu.
   

Radykalne uproszczenie było konieczne. Nie zapominajmy, że w owych
czasach komputer miał 16kb pamięci i mógł wykonać jedynie
kilkadziesiąt operacji zmiennoprzecinkowych na sekundę. Dla porównania
dzisiejszy telefon komórkowy wykonuje nawet miliardy operacji na
sekundę!  Wysiłki zostały skierowane na stworzenie maksymalnie prostego
modelu, który by jednak oddawał istotę zjawiska. Lorenz stworzył model
składający się z dwunastu zmiennych, który ostatecznie został
uproszczony do trzech.  

Publikując ten wynik, Lorenz mógł nie spodziewać się dwóch rzeczy. Po
pierwsze, okazało się, że jego model nie miał większego praktycznego
wpływu na meteorologię (w kraju, oznaczało by to, że projekt nie
zostałby rozliczony ;). Dzisiejsze podejście do prognozowania jest
oparte na modelach zawierających miliardy zmiennych, które są
rozwiązywane na największych dostępnych komputerach i nie wydaje się
by cokolwiek mogło zmienić ten trend. Po drugie, Lorenz mógł nie
przewidzieć, że jego praca doprowadzi do powstania "teorii chaosu" i
nieodwracalnie zmieni sposób patrzenia na rzeczywistość.


Co takiego nieoczekiwanego wynikło z modelu Lorenza? Otrzymany przez
niego układ, którego stan jest opisywany przez trzy zmienne
:math:`x(t),y(t),z(t)`. Zmienne te podlegają ewolucji w czasie zgodnie
w trzema równaniami różniczkowymi. Oznacza to, że znając stan układu w
pewnej chwili :math:`t_0`, możemy, korzystając z równań różniczkowych,
wyliczyć stan układu w dowolnej późniejszej chwili
:math:`t`. Spełnienie takiego prawa, jest ogólnie zwane determinizmem:
"teraźniejszość w pełni determinuje przyszłość". W otaczającym nas
świecie jest wiele zjawisk, które podlegają deterministycznym
prawom. Na przykład położenie samochodu jadącego po prostej z
prędkością 10 metrów na sekundę jest zdeterminowane w każdej chwili i
może być wyliczone ze znanego wzoru na drogę w ruchu jednostajnie
prostoliniowym. Gdyby jednak zapytać jaką drogę przejedzie ten sam
samochód w mieście to odpowiedź nie będzie łatwa bo zależy to od
natężenia ruchu w mieście, ilości świateł. Można jednak przewidzieć,
co bardzo dobrze robią programy do nawigacji satelitarnej, średni czas
oczekiwany na pokonanie wyznaczonej drogi przez miasto. W takich
obliczeniach wiele zależy od zmiennych, które są losowe - jak czas
oczekiwania na zielone światło. Mówimy więc, że model szacujący czas
przejazdu przez miasto jest probabilistyczny.

Wróćmy jednak do modelu Lorenza. Mając do dyspozycji komputer Lorenz
rozpoczął badanie wyprowadzonych, jak już ustaliliśmy -
deterministycznych - równań. Okazało się, że pomimo prostoty samych
równań, rozwiązania w pewnych przypadkach były wysoce nieregularne i
zachowanie układu czułe na warunki początkowe. Co więcej czułość na
warunki początkowe była tak duża, że praktycznie przewidzenie dokładne
dalekiej przyszłości w tym modelu było tak samo niemożliwe jak w
modelach probabilistycznych. Nawet, zakładając, że obliczenia
przeprowadzamy z dowolną dokładnością, to w każdym modelu warunki
początkowe pochodzą z pewnych pomiarów fizycznych a te z kolei zawsze
obarczone są pewnym błędem. W efekcie, dysponując prostą i w pełni
deterministyczną regułą "przepowiadania" przyszłości i nie możemy z
niej w pełni skorzystać. Paradoks ten jest dzisiaj określany terminem
"Chaos Deterministyczny" - oksymoronem, który dobrze oddaje naturę
tego zjawiska.

W meteorologii, już w tych latach panował pogląd o wrażliwości pogody
na niewielkie zaburzenie stanu początkowego, jednak przypisywano tą
cechę efektowi złożoności układu. Zaskakującym wynikiem otrzymanym
przez Lorenza było to, że własność ta tkwi już bardzo prostym,
tzw. niskowymiarowym, modelu.

W poniższym rozdziale zachęcamy czytelnika do przeniesienia się w lata
60-te i powtórzenia obliczeń komputerowych. Fascynujące jest, że w tej
chwili mamy do dyspozycji milion razy szybszy sprzęt komputerowy. Do
obliczeń wykorzystamy otwarte oprogramowanie "Sage", które umożliwia
wykonywanie eksperymentów na zasadzie podobnej do klocków Lego - można
korzystać z wielu gotowych procedur, niekoniecznie wnikając od razu w
szczegóły ich implementacji. Zatem, dowiedzmy się jakie równania badał
Lorenz?


Układ Lorenza
=============

.. sidebar:: Układ równań różniczkowych

   Układem równań różniczkowych to układ równań w którym występują
   pochodne. Często spotyka się następującą postać:

   .. math ::
      :label: odesys1

       \frac{dx}{dt} = f(x,y) \\
       \frac{dy}{dt} = g(x,y) 

   gdzie :math:`x=x(t)` i :math:`y=y(t)` są szukanymi funkcjami czasu
   a np. :math:`\frac{dx}{dt}` pochodna funkcji :math:`x(t)` po
   czasie. Funkcje dwóch zmiennych :math:`f` i :math:`g` są
   dane. Układ taki, zwany też układem dynamicznym ma bardzo prostą
   interpretacje. Lewe strony opisują nam szybkość zmiany wielkości w
   czasie - jeśli :math:`x` było by położeniem to
   :math:`\frac{dx}{dt}` prędkością pewnego ciała. Prawe strony mówią
   nam jak szybkości zmian poszczególnych zmiennych zależą od stanu w
   którym znajduję się układ.  Prostym przykładem jest równanie
   wzrostu populacji :math:`N(t)` w którym prędkość urodzeń jest
   proporcjonalna do liczebności: :math:`\frac{N(t)}{dt}=aN(t)`. Łatwo
   sprawdzić, że równanie takie ma rozwiązanie :math:`N(t)=N(0)e^{at}`.

   Narzędziem stosowanym do analizy równań różniczkowych na komputerze
   są metody numeryczne. Najprostsza jest metoda Eulera. Polega ona na
   zastąpieniu pochodnych ilorazami różnicowymi. Niech
   :math:`h=t_{1}-t_0` będzie małym przyrostem czasu, wtedy mamy:

   .. math ::

       \frac{dx}{dt} \sim \frac{x(t+h)-x(t)}{h} 

   Podstawiając to przybliżenie do równań (:eq:`odesys1`) i po
   przeniesieniu wszystkich wyrazów zawierających :math:`x(t+h),y(t+h)` na
   lewą a wyrazów z :math:`x(t),y(t)` na prawą stronę otrzymujemy:


   .. math ::
       :label: euler

       x(t+h) = x(t) + h \cdot f(x(t),y(t)) \\
       y(t+h) = y(t) + h \cdot g(x(t),y(t))



   Taka postać sugeruje, że można uzyskać rozwiązanie w kolejnych
   chwilach czasu stosując kolejne iteracje (czyli powtórzenia):
   Startując w chwili :math:`t` z punktu :math:`x(t),y(t)` obliczamy
   nowy punkt :math:`x(t+h),y(t+h)` w chwili :math:`t+h`. :math:`h`
   jest zwany krokiem czasowym. Następnie przyjmujemy obliczony nowy
   punkt jako początkowy i powtarzamy całą operację.


Równania, które wyprowadził Edward Lorenz w 1963 roku, jako
uproszczony model konwekcji, mają następującą postać:

   .. math ::
       :label: lorenz
          
       \frac{\mathrm{d}x}{\mathrm{d}t} &= \sigma (y - x), \\
       \frac{\mathrm{d}y}{\mathrm{d}t} &= x (\rho - z) - y, \\
       \frac{\mathrm{d}z}{\mathrm{d}t} &= x y - \beta z.


Od tego czasu ten układ równań jest zwany modelem Lorenza i stał się
archetypem chaotycznego układu dynamicznego. Taki układ równań można
rozwiązać stosując metody numeryczne dla równań różniczkowych (patrz
box). Mając do dyspozycji pakiet Sage napisanie programu nie jest
specjalnie trudne:


.. sagecellserver::

   var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,200,0.01)
   ics = [0,1,1]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])
   line3d( sol[-3000:], viewer='tachyon',thickness=2,color='green')


Kluczowym elementem jest wykorzystanie funkcji
:code:`desolve_odeint`. Rozwiązuje ona numerycznie dowolny układ
równań różniczkowych z wykorzystaniem bardzo efektywnych schematów
numerycznych, których idea jest jednak taka sama jak w metodzie Eulera
(patrz box). Minimalna liczba parametrów to: lista lewych stroń układu
równań różniczkowych, warunek początkowy, punkty czasowe w których ma
być obliczone rozwiązanie oraz lista zmiennych symbolicznych w takiej
kolejności w jakiej zostały podane równania. Po wykonaniu obliczeń
funkcja ta zwraca tablicę zawierającą wartości wszystkich zmiennych
czyli :math:`x,y,z` w żądanych momentach czasu. Tablica ta jest
obiektem typu :code:`numpy.ndarray` więc możemy sprawdzić jaki jest
rozmiar danych wyjściowych poleceniem:

.. code-block:: python

    print sol.shape

Widzimy, że zostaną zwrócone dwie liczby, które odpowiadają zakresom
zmienności wskaźników tabeli :code:`sol`.

Procedura :code:`line3d` rysuje wykres krzywej w przestrzeni
:math:`x,y,z`. Przestrzeń ta jest tak zwaną przestrzenią fazową dla
układu równań różniczkowych. Choć brzmi to skomplikowanie, idea jest
bardzo prosta. Jest to przestrzeń wszystkich możliwych stanów układu
równań różniczkowych (:eq:`lorenz`). Ponieważ mamy trzy zmienne to
przestrzeń ta jest trójwymiarowa. Ewolucja czasowa układu jest krzywą
w takiej przestrzeni i jest zwana krzywą fazową. Ciekawą własnością
jest to, że dwie krzywe fazowe się nie przecinają - jest to skutek
twierdzenia o jednoznaczności rozwiązań układu równań
różniczkowych. Intuicyjnie oznacza to, że przyszłość jest
jednoznacznie określona przez stan w pewnej chwili czasu. Jeśli krzywe
fazowe przecinały by się to jeśli wybralibyśmy punkt przecięcia jako
stan początkowy to układ "nie wiedział" na którą gałąź ma się udać. 

Wróćmy do naszego wykresu. Jeżeli zmienimy opcje
:code:`viewer='tachyon'` na :code:`viewer='jmol'` uruchomi
interaktywną przeglądarkę wykresów 3d - wymaga to jednak wtyczki Java.

Otrzymany wykres przedstawia kształt atraktora Lorenza - słynnego
motyla. 

Zanim przejdziemy do badania jego własności, musimy dowiedzieć się co
to jest atraktor. Pewne układy dynamiczne opisywane równaniami
różniczkowymi (należy do ich model Lorenza), mają taką własność, że
wszystkie rozwiązania dążą do jednego (lub wielu) rozwiązania
granicznego. Takie rozwiązanie do którego inne dążą właśnie nazwana
atraktorem (z pewnością od od angielskiego słowa attract -
przyciągać). Aby lepiej zrozumieć tą koncepcję rozważmy następujący
przykład. Rozważmy równanie, mogące modelować rozpad radioaktywny:

.. math::
   :label: rozpad

    \frac{dN(t)}{dt}=-\alpha N(t).


Przez bezpośrednie sprawdzenie możemy się przekonać, że funkcja
:math:`N(t)=N(0)e^{-\alpha t}` jest rozwiązaniem tego równania. W
szczególności jeśli :math:`N(0)=0` rozwiązanie stałe :math:`N(t)=0`
też jest rozwiązaniem. Ma ono jednak szczególną własność: każde inne
rozwiązanie dąży do niego. Mówimy, że punkt :math:`N=0` jest
atraktorem układu (:eq:`rozpad`). 

Jakie jeszcze geometryczne formy może przyjmować atraktor? Z przykładu
widać, że może być pojedynczym punktem. Można też łatwo znaleźć
przykłady gdy jest zbiorem wielu izolowanych punktów. Dla układów
dwuwymiarowych może być też krzywą zamkniętą, zwaną cyklem
granicznym. Najbardziej fascynująca jest jednak możliwość, która
pojawia się dla układów trój- lub więcej wymiarowych. Atraktor może
przyjmować formę zbioru z wymiarem ułamkowym i mieć strukturę
fraktalną. Taki atraktor jest zwany "dziwnym atraktorem" i attraktor
Lorenzta jest właśnie jego przykładem.

Czas w którym dowolne rozwiązanie układu Lorenza zbliży się do
atraktora Lorenza na odległość, która jest poniżej grubości linii go
przedstawiającej dla wybranych przez nas parametrów -  jest
rzędu 10. Dlatego, odcinając pierwsze kilkadziesiąt jednostek czasu
wykres trajektorii fazowej praktycznie jest obrazem punktów leżących
na atrraktorze Lorenza. Ponieważ ma on naturę fraktalną nie można do
"dokładnie" narysować, ale można pokazać jego przybliżenie w pewnej
skali, w naszym przypadku tę skalę wyznacza właśnie grubość linii. 

Co ciekawego jest w tym wykresie? Po pierwsze w oczy rzuca się
nieregularność, którą jeszcze lepiej widać jeśli by narysować wykres
wybranej współrzędnej od czasu, .... ale po co gdybać, narysujmy!


.. sagecellserver::

   c=['red','blue','black']
   sum([line( zip(times,sol[-2000:,i]),color=c[i]) for i in range(3)])

Taki wykres, a właściwie trzy wykresy, to zależność każdej zmiennej
układu od czasu podczas jego ewolucji. Gdyby kontynuować ewolucje
dalej, to żaden kawałek wykresu nigdy by się nie powtórzył (warto
spróbować!). Niezwykłość układu Lorenza polega na tym, że
nieskończony i niepowtarzający się obraz, "zakodowany" jest w jedynie
trzech równaniach różniczkowych.

Układ Lorenza nie dla każdego zestawu parametrów posiada własności
chaotyczne. Weźmy na przykład dowolne :math:`\rho<24`. Łatwo się
przekonać wykonując powyższy kod, że rozwiązanie w takim przypadku
będzie regularne i będzie dążyło do skończonej wartości.


Kolejną cechą układu jest czułość na warunki początkowe. Rozwiążmy
układ dla dwóch zestawów warunków początkowych, różniących się o bardzo
małą wartość (ciekawostką jest fakt, że Lorenz to spostrzeżenie
opublikował dopiero sześć lat po pierwszym artykule).


.. sagecellserver::
   
   x,y,z = var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,31,0.01)
   ics = [0,1,0]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])
   ics2 = [0,1.01,0]
   sol2 = desolve_odeint(lorenz,ics2,times,[x,y,z])
   line( zip(times,sol[:,0]) )+line( zip(times,sol2[:,0]),color='red' )


W powyższym kodzie można próbować zmniejszać różnicę między warunkami
początkowymi np. dla drugiego układu kładąc :math:`y(0)=1.001` lub
:math:`y(0)=1.0001` a następnie obserwować w jakim momencie
rozwiązania zaczynają się różnić od siebie. Warto też spróbować
zbadań jak wyglądają trajektorie układu dla parametrów przy których
nie jest on chaotyczny.


*Dalsze eksperymenty komputerowe z układem Lorentza: zadania ze Strogaz-a!*


Od układu Lorenza do równania logistycznego
===========================================


Edward Lorenz analizując zachowanie tego układu w 1963 roku, dokonał
jeszcze jednego ważnego kroku - powiązał on dynamikę ciągłego
trójwymiarowego układu dynamicznego z zachowaniem tzw. dyskretnego
układu dynamicznego. Przeanalizujmy po kolei kroki, które wykonał
Lorenz.  Mając trajektorię układu, dla zmiennej :math:`z(t)` obliczył
on wartości :math:`z_i` wszystkich lokalnych maksimów. Następnie na
wykresie naniósł ich kolejne wartości tzn. narysował pary
:math:`(z_i,z_{i+1})`. Okazało się, że dla parametrów w których układ
jest chaotyczny pary te układają się na pewnej krzywej :math:`F`
takiej, że :math:`z_{i+1}=F(z_i)`. Można by teraz zapomnieć skąd
wzięły się wartości :math:`z_i` bo dysponując jedynie krzywą
:math:`F`, z jednego stanu możemy otrzymać kolejny. Układ po takiej
operacji jest jednowymiarowy, gdyż stan określony jest przez jedną
liczbę :math:`z_i`, ale ewolucja w czasie jest dokonywana w sposób
skokowy, za pomocą przekształcenia :math:`z_{i+1}=F(z_i)`. Taki układ
dynamiczny ze skokową ewolucją w czasie nazywa się właśnie dyskretnym
układem dynamicznym. Można się też spotkać z określeniem "system
funkcji iterowanych" ( z ang. iterated function system, IFS). Układy
te stanowią są znaną już dziś z zaskakująco skomplikowanego
zachowania, pomimo swojej prostoty. W dalszej części przejdziemy do
analizy fascynujących własności tych układów. Zanim jednak to zrobimy,
spróbujmy samodzielnie odtworzyć wynik Edwarda Lorenza.

Mając trajektorię układu Lorenza musimy się zastanowić jak z niej
wyłowić lokalne maksima? Oczywiście ponieważ rozwiązanie układu
Lorenza jest ciągłą funkcją czasu, powinniśmy zastosowywać metody
badania przebiegu zmienności funkcji, czyli policzyć pierwszą
pochodną, znaleźć jej wszystkie zera na zadanym odcinku i sprawdzić czy
tak uzyskane ekstrema są maksimami. Niestety rozwiązanie układu
Lorenza nie jest dane wzorem analitycznym. I tu jest pies pogrzebany,
bo metodologia postępowania znana ze szkoły średniej wymaga
algebraicznego obliczenia pochodnej. Dlatego zrobimy
inaczej. Procedura :code:`desolve_odeint` daje nam tabelę z
wynikami. Zakładając ze odstępy pomiędzy kolejnymi punktami czasu w
tej tabeli są odpowiednio małe, możemy policzyć lokalne maksima dla
ciągu, zauważając, że punkt :math:`z_i` jest lokalnym maksimum jeżeli
jego otoczenie jest od niego mniejsze czyli zachodzi
:math:`z_{i-1}<z_{i}` i :math:`z_{i-1}<z_i`. Oczywiście nie będą to
"prawdziwe" maksima funkcji :math:`z(t)` a jedynie ich przybliżenie.
Jedną z możliwości jest napisanie pętli (zachęcamy do zrobienia tego
własnoręcznie), która dla każdego punktu z tabeli sprawdziła by czy
zachodzą powyższe warunki i jeśli tak, to zapisałaby punkt na listę
maksimów. Mając jednak do dyspozycji "oręż" w postaci biblioteki
**numpy** możemy zrobić to w praktycznie jednej linii kodu. Oznaczając
przez :code:`Z` tablicę z wartościami trzeciej zmiennej układu Lorenza
obliczamy najpierw tablicę różnic kolejnych elementów:


.. code-block:: python

   Zp = np.diff(Z)

następnie znajdujemy miejsca (:code:`np.nonzero`) w których kolejne
różnice mają przeciwny znak:

.. code-block:: python

   idx = np.nonzero(Zp[1:]*Zp[:-1]<0)[0]


i ostatecznie wyciągamy z tablicy :code:`Z` te elementy:

.. code-block:: python

   Zm = Z[idx+1]

(pytanie do czytelnika - skąd to +1?)

Wypróbujmy czy taka procedura zadziała np. na funkcji :math:`\sin(x)`:

.. sagecellserver::

   import numpy as np 
   t = np.linspace(0,50,550)
   Z = np.sin(t)
   Zp = np.diff(Z)
   idx = np.nonzero(Zp[1:]*Zp[:-1]<0)[0]
   Zm = Z[idx+1]
   point(zip(t[idx+1][::2],Zm[::2]),color='red',figsize=(8,2),size=40) + line(zip(t,Z))


.. sagecellserver::

   import numpy as np
   x,y,z = var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,4200,0.015)
   ics = [0,1,1]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])

   Z = sol[:,2]
   times = np.array(times)

   Zp = np.diff(Z)
   idx = np.nonzero(Zp[1:]*Zp[:-1]<0)[0]
   Zm = Z[idx+1]

   point(zip(Zm[1::2][::2],Zm[1::2][1::2])) + point(zip(np.zeros_like(Zm[1::2][::2]),Zm[1::2][1::2])) 


Zaskakujące jest to, że wszystkie punkty znajdują się na jednej
linii. Oznacza to bowiem, że otrzymany obrazek jest wykresem funkcji
przeprowadzającej jedno maximum w kolejne.  Możemy więc zapomnieć o
układzie równań różniczkowych a jedynie badać jak jedno maksimum
przechodzi w drugie. Skoro wyjściowy układ Lorenza ma własności
chaotyczne: nieregularność i czułość na warunki początkowe, to
powinniśmy zaobserwować to również w zachowaniu się ciągu :math:`z_i`
generowanym przez iteracje funkcji, której wykres wcześniej
narysowaliśmy:

.. math::
   :label: ifs

   z_{i+1} = F(z_{i})

Można również odwrócić problem i zastanowić się dla jakich funkcji
:math:`F`, układ dynamiczny ze skokowym, lub jak częściej się mówi,
dyskretnym czasem, będzie posiadał własności chaotyczne. Przekonamy
się, że takie rozważania doprowadzą nas do kolejnej rodziny zagadnień
matematycznych. Zanim jednak do tego przejdziemy, musimy się
zastanowić nad populacją karaluchów.



Równanie  logistyczne
=====================

W latach siedemdziesiątych XX wieku, na Uniwersytecie w Oxford,
australijski uczony Robert May zajmował się teoretycznymi aspektami
dynamiki populacyjnej. Swoje prace podsumował w artykule, który ukazał
się w *Nature* pod prowokującym tytułem "Proste modele matematyczne z
bardzo skomplikowaną dynamiką" [may76]_. Artykuł ten po latach stał
się jedną z najczęściej cytowanych prac z teoretycznej ekologii.  Co
wzbudziło tak wielkie zainteresowanie w tej pracy?

May zajmował się zastosowaniem matematyki w ilościowym opisie zjawisk
ekologicznych. Klasycznym zadaniem w tej dziedzinie jest obliczenie
populacji pewnego gatunku w czasie znając jego stan liczebny w chwili
początkowej. Najprostszym, z punktu widzenia modelowania
matematycznego, rodzajem ekosystemów wydawały się takie w których
życie jednego pokolenia populacji trwa jeden sezon. Dobrym przykładem
jest populacja owadów, które w ciągu jednego sezonu przechodzą pełną
metamorfozę np. motyle. Czas jest w naturalny sposób podzielony na
dyskretne okresy, odpowiadające cyklom życia populacji. Równania
opisujące taki ekosystem mają więc formę dyskretnych układów
iterowanych w których bieżąca liczebność osobników danego gatunku w
ekosystemie jest funkcją liczebności w poprzednim okresie.

Robert May zajmował się między innymi właśnie taką dynamiką. Badając
układy iteracyjne, uprościł ekosystem do jednego gatunku w którym
populacja była funkcją kwadratową populacji w roku poprzednim. Skąd
taki model?  Najprostszym równaniem dyskretnym opisującym ewolucję
populacji jest model liniowy:

.. math::
   :label: Ni

   N_{i+1} = \alpha \; N_{i},

gdzie :math:`N_i` to liczebność w i-tym sezonie. Łatwo się przekonać,
że takie równanie może prowadzić to trzech scenariuszy. Jeżeli
:math:`\alpha>1` to populacja będzie nieograniczenie rosnąć, jeżeli
:math:`\alpha<1` to zaniknie oraz dla :math:`\alpha=1` ewolucja nie
będzie zmieniać stanu liczebnego populacji. Najprostszym rozwinięciem
tego modelu jest wprowadzenie zależności stałej :math:`\alpha` od
wielkości populacji. Wyobraźmy sobie populacje szkodników zamkniętym
ekosystemie. Szkodniki zjadają zboże, którego jest dokładnie ta sama
ilość do roku. Jeżeli owadów jest mało w porównaniu do ilości
pożywienia to mogą rozmnażać się z pełną siła rozrodczą - na przykład
w następnym sezonie będzie ich cztery razy więcej niż w
poprzednim. Jednak w miarę wzrostu liczebności szkodników, pożywienia
nie będzie wystarczać i siła rozrodcza będzie maleć. W krytycznym
przypadku można sobie wyobrazić ze owady zjadają latem całe zboże po
czym wszystkie osobniki umierają z głodu przed osiągnięciem zdolności
rozrodczej. Załóżmy więc, że nasza stała rozrodu będzie liniową
funkcją populacji:

.. math::
   :label: alpha

   \alpha = \alpha( N_{i} ) = A - B N_{i},

gdzie :math:`A` to stała wzrostu populacji w warunkach dostatku
pożywienia a :math:`B` jest stałą, która określa jak szybko brak
pożywienia będzie zmniejszał siłę rozrodczą. W szczególności jeśli
:math:`N_i=A/B` to pożywienia jest na tyle mało, że żaden osobnik nie
przeżywa sezonu żerowania.


Równanie :eq:`Ni` ze stałą :eq:`alpha`, można przeskalować do postaci
matematycznie równoważnej, zależnej tylko od jednego
parametru. Równanie takie obecnie jest znane pod nazwą odwzorowania
logistycznego:

.. math::
   :label: logistic

   x_{i+1} = a x_{i} (1 - x_{i}),

gdzie :math:`a<=4` jest pewną dodatnią stałą a :math:`x_i\in(0,1)`
jest proporcjonalne do liczebności populacji w i-tym sezonie. 

.. note:: 

   Jeśli populacja ma liczebność równą jeden, to nie dożywa do
   następnego pokoleniu. Tak samo było by w przypadku gdy jest większa
   od jednego, dlatego wystarczy się ograniczyć do
   :math:`x_i\in(0,1)`. Z tego samego powodu nie rozważamy parametru
   :math:`a>4` - bowiem :math:`a<=4` odwzorowanie logistyczne
   przeprowadza zawsze odcinek (0,1) w odcinek (0,1).


Mogło by się wydawać, że tak prosty model będzie dawał proste
wyniki. Spróbujmy sami!

Rozważmy model :eq:`logistic` dla parametru :math:`a=0.5`, startując z
liczebności :math:`x=0.45`. Kolejne wartości populacji można otrzymać
stosując przekształcenie kwadratowe :eq:`logistic` do wartości z
poprzedniego sezonu, na przykład za pomocą poniższego programu:

.. sagecellserver::

   a = 0.5 
   x = 0.45
   for i in range(10):
       x = a*x*(1-x)
       print x

Wykonując ten przykład otrzymujemy kolejne wartości populacji, które wraz z
upływem czasu dążą do zera. Eksperymentując z powyższym kodem łatwo
też jest się przekonać, że niezależnie od wartości z której
startujemy, zawsze populacja ginie. 

Możemy sobie też ułatwić zadanie, wykorzystując w Sage narzędzie do
szybkiego prototypowania elementów interaktywnych - dekorator
:code:`@interact`. Ponadto, zamiast wypisywać wartości liczbowe
przedstawmy je graficzne rysując wykres liczebności populacji od
czasu.

.. sagecellserver::

   @interact
   def myf(x = slider(0.0,1.0,0.01,default=0.4),a=slider(0,4,0.01,default=0.5)):
       pkts = []
       for i in range(25):
           pkts.append( (i,x) )
           x = a*x*(1-x)
       point(pkts,figsize=(7,3),ymin=0,ymax=1).show()

W powyższym kodzie, elementy :code:`slider` pozwalają nam na wykonanie
funkcji :code:`myf` dla wybranych interaktywnie wartości :math:`x` i
:math:`a`. 

Zwiększmy teraz parametr :math:`a` do dowolnej wartości z przedziału
:math:`a\in(1,3)`.  Okazuje się, że wtedy ciąg :math:`x_i` dąży do
pewnej wielkości - tym razem jednak nie jest to zero. Interpretując w
kategoriach ekologii, możemy powiedzieć, że wielkość populacji ustala
się na pewnym poziomie, który nie zmienia się z sezonu na
sezon. Podobnie jak poprzednim razem, ta wartość graniczna nie zależy
od punktu startowego. Czyli niezależnie od tego czy populacja
wystartuje bardzo małą liczebnością czy dużą, po kilku pokoleniach i
tak będzie taka sama. W takim przypadku mamy efekt dążenia ekosystemu
do stabilizacji - populacja dostosowuje swoją liczebność do możliwości
wyżywienia się.

Taki efekt był oczekiwany przez badaczy i równanie logistyczne
:eq:`logistic` nie przyciągnęło by szczególnej uwagi gdyby nie
pewna niespodzianka. Okazało się bowiem, że dla pewnych wartości
parametru :math:`a` model nie zachowuje się w przewidywalny
sposób. Pojawiają się nie tylko stany okresowe, ale i stany w których
populacja z roku na rok zmienia się w chaotyczny sposób i występuje
czułość na warunki początkowe - wszystkie cechy, które są
charakterystyczne dla chaosu deterministycznego.

Zbadajmy to! Na początek ustalmy wartość parametru na :math:`a = 3.2`
i przyjrzyjmy się ewolucji. Zaskoczeniem może być fakt, że tym razem
populacja nie osiąga jednej wartości, ale dwie, które występują
kolejno po sobie do drugi sezon.  Przyjrzyjmy się bliżej temu
zjawisku. Po pierwsze jeżeli ciąg kolejnych wartości :math:`x_i` dąży
do pewnej granicy, to możemy napisać dokładny warunek na jej wartość
:math:`x_g`. Musi bowiem zachodzić :math:`x_g=f(x_g)`. Jeżeli taki
punkt istnieje dla pewnej funkcji :math:`f`, to mówimy, że jest to
punkt stały odwzorowania. Możemy więc dokładnie wyznaczyć wartość
punktów stałych odwzorowania logistycznego w zależności od parametru
:math:`a`. Prosty rachunek pokazuje, że mamy dwa rozwiązania:
:math:`x_g = 0` oraz :math:`x_g=1-\frac{1}{a}`. O ile :math:`x_g = 0`
jest punktem stałym dla dowolnej wartości parametru, to pamiętając, że
sens mają tylko wartości :math:`x_i\in(0,1)`, drugi punkt stały
istnieje dla wartości :math:`a\in(1,4)`. Możemy narysować więc wykres
punktów stałych od parametru:

.. sagecellserver::

   var('a')
   plot(0,(a,0,1),thickness=2)+\
    plot(1-1/a,(a,1,4),thickness=2)+\
    plot(0,(a,1,4),thickness=2,color='red',figsize=(7,3))


Jeżeli mamy równanie zależne od parametru i ilość rozwiązań zmienia się
wraz z tymże parametrem to mówimy, że następuje bifurkacja. W punkcie
:math:`a=1` następuje właśnie bifurkacja i układ zamiast jednego
rozwiązania ma dwa. Jednak zauważmy jeszcze jedno ciekawe zjawisko. Z
dowolnego warunku początkowego dla :math:`a<1` zawsze otrzymywaliśmy
malejący ciąg populacji, który wydawał się być przyciągany do jedynego
w tym obszarze punktu stałego - do zera. Taki punkt do którego układ
jest przyciągany zwany jest też attraktorem układu. Dla :math:`a>1`
mamy dwa punkty stałe. Okazuje się, że w tym obszarze startując z
dowolnego punktu z wyjątkiem :math:`x=0` zawsze będziemy dążyć do
drugiego rozwiązania, który jest attraktorem!  Oznacza to, że jeżeli
rozwiązanie :math:`x=0` zaburzymy dowolnie małą liczbą
np. :math:`x=0.0001` to i tak po kilkunastu iteracjach populacja
będzie dążyła do :math:`x_g=1-\frac{1}{a}` (Poeksperymentujmy!).
Stabilny dla :math:`a<1` punkt stały :math:`x=0` staje się niestabilny
dla :math:`a>1`.

Wróćmy więc do naszej sytuacji, w której mamy :math:`a = 3.2`. Według
poprzednich wyliczeń dalej powinniśmy mieć punkt stały
:math:`x_g=1-\frac{1}{a}`! I mamy, sprawdźmy:

.. sagecellserver::

   a=3.2
   x=1-1/a
   print "Wartosc poczatkowa x=",x
   pkts = []
   for i in range(125):
       pkts.append( (i,x) )
       x = a*x*(1-x)
   point(pkts,figsize=(7,3),ymin=0,ymax=1).show()

Dodajmy jednak do wartości początkowej pewną małą liczbę np. niech
:code:`x=x+1e-6`. Zobaczmy co się stanie? Okazuje się, że we
wcześniejszym punkcie (jak się okaże :math:`a=3`) nastąpiła kolejna
bifurkacja w wyniku której rozwiązanie :math:`x_g=1-\frac{1}{a}`
utraciło stabilność na rzecz oscylacji. Ponieważ oscylacje te są w
pomiędzy dwoma wartościami, to mówimy, że dla :math:`a=3.2` układ ma
punkt okresowy z okresem 2. Właściwie to możemy tylko przypuszczać, że
tak jest bo wynika to tylko z zabaw podczas których liczba iteracji
była skończona. Możemy jednak w tym przypadku pokazać to
dokładnie. Jeżeli populacja do drugi sezon przechodzi w tą samą to
możemy rozważyć odwzorowanie :math:`g(x)=f(f(x))`, które przeprowadza
układ o dwa sezony do przodu. W taki przypadku powinniśmy punkt stały
dla :math:`g` odpowiada punktowi okresowemu o okresie 2 dla
:math:`f`. Zastosujmy tą chytrą sztuczkę, tym razem z pomocą Sage:

.. sagecellserver::

   var('a x')
   f(x) = a*x*(1-x)
   show( expand( f(f(x))==x) ) 
   s = solve(f(f(x))==x,x)
   show(s)

Dobrze, że możemy wyręczyć się systemem algebry komputerowej, bo
niestety równanie :math:`f(f(x))=x` jest równaniem czwartego stopnia!
Sage na szczęście "potrafi" rozwiązywać analitycznie równania czwartego
stopnia i otrzymujemy rozwiązania. Od razu widzimy wśród pierwiastków
punkty stałe odwzorowania :math:`f`, co jest zrozumiałe, bo jeśli
zachodzi :math:`f(x)=x` to tym bardziej :math:`f(f(x))=x`. Narysujmy
zatem nasz wynik.
 

.. sagecellserver::

   var('x a')
   f(x)=a*x*(1-x)
   s = solve(x==f(f(x)),x)
   show(s)

   plot(s[3].rhs(),(a,0,1),thickness=2)+\
    plot(s[2].rhs(),(a,1,3),thickness=2)+\
    plot(s[3].rhs(),(a,1,4),thickness=2,color='red',figsize=(7,3))+\
    plot(s[0].rhs(),(a,3,4),thickness=2)+\
    plot(s[1].rhs(),(a,3,4),thickness=2)+\
    plot(s[2].rhs(),(a,3,4),thickness=2,ymin=0,ymax=1,color='red')


Wykres ten, zwany diagramem bifurkacyjnym, nie jest do końca
kompletny - skoro pojawiły się dwie bifurkacje to nie ma powodu, żeby
zakładać, że więcej się nie pojawi! W dalszej analizie pojawia się
jednak zasadniczy problem. Otóż nie możemy badać analitycznie punktów
stałych dalszych złożeń odwzorowania :math:`f(f(f(x)))=x`, bo w
poprzednim przypadku wyczerpaliśmy możliwość dokładnego znajdywania
miejsc zerowych wielomianów. Zgodnie z `Teoria Galois
<http://pl.wikipedia.org/wiki/Teoria_Galois>`_ wzory analityczne na
pierwiastki wielomianu kończą się w przypadku ogólnym na stopniu
cztery. Oczywiście można zastosować metody przybliżone, lub metodę
graficzną. Jednak okazuje się, że całkiem niezłym sposobem na poznanie
struktury cykli układu jest po prostu jego symulacja na tyle długa by
układ zdążył dojść wystarczająco blisko do attraktora. Zanim użyjemy
tego sposobu, zapoznajmy się z metodą graficzną - jak mawiano,
ilustracja jest warta tysiąca słów.

Jednym z ciekawych sposobów poznania dynamiki układów dyskretnych są
wykresy "pajęczynowe" (z ang. cobweb plot), znane także jako wykresy
Verhulsta. Spróbujemy samodzielnie skonstruować taki wykres. Na osiach
będą umieszczone wartości populacji w kolejnych iteracjach:
:math:`x_i,x_{i+1}`, zakresy obu osi będą więc :math:`0..1`. Zaczynamy
od narysowania prostej :math:`x_{i+1}=x_i`, będącą przekątną wykresu,
a następnie wykresu zależności :math:`x_{i+1}=f(x_i)`, dla pewnego
ustalonego parametru :math:`a`. Chcemy przedstawić trajektorię
ewolucji pewnego stanu początkowego :math:`x_0`. Procedura rysowania
składa się z czterech etapów:

#) Znajdujemy punkt przecięcia się pionowej prostej przechodzącej
    przez punkt :math:`(x_0,0)` z wykresem funkcji :math:`f`, czyli:
    :math:`x_0, f(x_0)`

#) Łączymy ten punkt poziomą linią z przekątną, tzn z punktem
   :math:`f(x_0), f(x_0)`.

#) Linią pionową łączymy powyższy punkt z wykresem funkcji :math:`f`,
   czyli z punktem :math:`f(x_0), f(f(x_0))`.

#) Potwarzamy dowolną ilość razy kroki 2 i 3.


Powyższy algorytm łatwo jest wykonać nawet na kartce papieru, bez
użycia komputera. Wystarczy na wykresie zawierającym przekątną oraz
krzywą :math:`f(x)`, łączyć naprzemienne funkcję z przekątną i
przekątną i z funkcją, odcinkami, odpowiednio: poziomymi i pionowymi.

Poniższa implementacja, oprócz rysowania wykresu, koloruje pierwszych
pięć iteracji na niebiesko a ostatnie pięć na czerwono, co pozwala na
lepsze dostrzeżenie pojawiających się cykli. Zachęcamy do
eksperymentowania z poniższym kodem i manipulacji sposobem
wizualizacji.

.. sagecellserver::

    var('r,x0,n')
    @interact
    def cobweb(r=slider(0,4.001,0.001,default=2),x0=slider(0,1,0.1,default=0.4)):
        f(x)=r*x*(1-x)
        p = plot(f(x)==0,(x,0,1),ymin=-0.1,ymax=1.5,xmin=0,xmax=1.5,color='black')
        p += plot(x,(x,0,1),color='green',figsize=7)
        for n in range(50):
            th = 1
            if n>45:
                th = 1.5
                color='red'
            elif n < 5:
                color='blue'
                th=1.5    
            else:
                color='grey'
                th =0.5        
            l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
            l2 = line([(x0,f(x0)),(f(x0),f(x0))],\
             color=color,thickness=th,xmin=0,xmax=1,ymin=0,ymax=1)
            p = p+l1+l2
            x0 = f(x0)
        p.axes_labels(["$x_n$","$x_{n+1}$"])     
        p.show(aspect_ratio=1)
    

Badanie układu można rozpocząć od przyglądania się jak układ dąży do
zerowego punktu stałego dla :math:`a<1`. W tym przypadku widać brak
punktu przecięcia się paraboli z przekątną, z wyjątkiem zera. W
obszarze parametru :math:`1<a<3` parabola ma niezerowy punkt
przecięcia się z przekątną. Zwiększanie parametru powyżej :math:`a=2`
powoduje, że ewolucja coraz wolniej dąży do punktu stałego, a gdy się
zbliżymy do trzech np. :math:`a=2.9` układ wykonuje wiele oscylacji
zanim znajdzie się w otoczeniu attraktora. Wygląda to tak jakby
attraktor coraz słabiej przyciągał. Jeżeli zwiększymy parametr niewiele
powyżej trójki np.: :math:`a=3.5` to otrzymujemy rozwiązanie. które
jest zamkniętą krzywą owijającą się jeden raz wokół niestabilnego
punktu stałego, co odpowiada rozwiązaniu o okresie 2. Dla
:math:`a=3.5` krzywa owija się już dwa razy. Odpowiada to rozwiązaniu
o okresie 4, co sugeruje, że układ pomiędzy wartościami parametru
:math:`a=3.2` a :math:`a=3.5` przeszedł kolejną bifurkację! Ustalmy
teraz parametr na jest największą wartość :math:`a=4.0`. Zachowanie
się układu jest w pełni chaotyczne i nie wskazuje na obecność
cykli. Możemy zwiększyć ilość iteracji lub zmienić punkt
początkowy. Za każdym razem otrzymamy niepowtarzającą się trajektorię. 


.. sagecellserver::

    def cobweb(r=2,x0=0.4,color='red'):
        f(x)=r*x*(1-x)


        p = plot(f(x),(x,0,1),ymin=-0.1,ymax=1.5,xmin=0,xmax=1.5,color='black')
        p += plot(x,(x,0,1),color='green',figsize=7)
        th=1
        for i in range(10):

            l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
            l2 = line([(x0,f(x0)),(f(x0),f(x0))],\
             color=color,thickness=th,xmin=0,xmax=1,ymin=0,ymax=1)
            p = p+l1+l2
            x0 = f(x0)
        p.axes_labels(["$x_n$","$x_{n+1}$"])
        return p

    p1 = cobweb(r=4,x0=0.40001,color='red')
    p2 = cobweb(r=4,x0=0.4,color='blue')
    (p1+p2).show(aspect_ratio=1)



.. sagecellserver::

    def cobweb(r=2,x0=0.4,color='red',nit=14):
        f(x)=r*x*(1-x)
        p = plot(f(x)==0,(x,0,1),ymin=-0.1,ymax=1.5,xmin=0,xmax=1.5,color='black')
        p += plot(x,(x,0,1),color='green',figsize=7)
        th=1.5
        for n in range(nit):
            th = th*0.9
            l1 = line([(x0,x0),(x0,f(x0))],color=color,thickness=th)
            l2 = line([(x0,f(x0)),(f(x0),f(x0))],\
             color=color,thickness=th,xmin=0,xmax=1,ymin=0,ymax=1)
            p = p+l1+l2
            x0 = f(x0)
        p.axes_labels(["$x_n$","$x_{n+1}$"])
        return p
    p1 = cobweb(r=4,x0=0.1000001,color='red')
    p2 = cobweb(r=4,x0=0.1,color='blue')
    (p1+p2).show(aspect_ratio=1)
    
        
            
.. sagecellserver::

    x = a*x*(1-x)
    point(pkts,figsize=5,xmin=0,xmax=1).show()


.. [may76] May, R. M. "Simple mathematical models with very complicated dynamics". Nature 261 (5560): 459–467,1976.


..

      line3d( sol[:], viewer='tachyon',opacity=.372,thickness=3,color='green')+\
       line3d( sol2[:],color='red',thickness=1)\+
       point(sol[-1],color='blue', size=15)+point(sol2[-1],color='blue', size=15,figsize=15)


