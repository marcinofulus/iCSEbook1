Motyl Lorenza
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
zajmował się prognozowaniem pogody. W rezultacie w 1948 obronił
doktorat wydziale meteorologii MIT i podjął tam pracę naukową. Jako
matematyk Lorenz szybko stał się sceptyczny co do możliwości
stosowania liniowej statystyki do długoterminowych przewidywań tak
nieliniowego zjawiska jakim jest pogoda. Na marginesie, ówczesny stan
wiedzy i stosowane podejście było do złudzenia po podobne do
dzisiejszych prób modelowania dynamiki rynków finansowych. W każdym
razie Lorenz rozpoczął poszukiwania modeli opartych na leżących u
podstaw meteorologii zjawiskach fizycznych. Skoncentrował się na
stworzeniu uproszczonego modelu konwekcji energii cieplnej w
atmosferze - jednego z podstawowych zjawisk fizycznych w meteorologii.

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
   

Radykalne uproszczenie było konieczne. W owych czasach komputer miał
16kb pamięci i mógł wykonać jedynie kilkadziesiąt operacji
zmiennoprzecinkowych na sekundę. Dla porównania dzisiejszy telefon
komórkowy wykonuje nawet miliardy operacji na sekundę!  Wysiłki
zostały skierowane na stworzenie maksymalnie prostego modelu, który by
jednak oddawał istotę zjawiska. Lorenz stworzył model składający się z
dwunastu zmiennych, który ostatecznie został uproszczony do trzech.

Publikując ten wynik, Lorenz mógł nie spodziewać się dwóch rzeczy. Po
pierwsze, okazało się, że jego model nie miał większego praktycznego
wpływu na meteorologię (w kraju, oznaczałoby to, że projekt nie
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
   czasie - jeśli :math:`x` byłoby położeniem to
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
   line( sol[-3000:,[0,2]],thickness=1,color='green',figsize=4)

Otrzymany wykres przedstawia kształt atraktora Lorenza,
przypominającego motyla.

Po krótce omówmy elementy powyższego programu. Kluczowym elementem
jest wykorzystanie funkcji :code:`desolve_odeint`. Rozwiązuje ona
numerycznie dowolny układ równań różniczkowych z wykorzystaniem bardzo
efektywnych schematów numerycznych, których idea jest jednak taka sama
jak w metodzie Eulera (patrz box). Minimalna liczba parametrów to:
lista lewych stroń układu równań różniczkowych, warunek początkowy,
punkty czasowe w których ma być obliczone rozwiązanie oraz lista
zmiennych symbolicznych w takiej kolejności w jakiej zostały podane
równania. Po wykonaniu obliczeń funkcja ta zwraca tablicę zawierającą
wartości wszystkich zmiennych czyli :math:`x,y,z` w żądanych momentach
czasu. Tablica ta jest obiektem typu :code:`numpy.ndarray` więc możemy
sprawdzić jaki jest rozmiar danych wyjściowych poleceniem:

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
fazowe przecinałyby się to jeśli wybralibyśmy punkt przecięcia jako
stan początkowy to układ "nie wiedział" na którą gałąź ma się udać. 

Wróćmy jeszcze do naszego wykresu. Jeżeli nasz komputer jest
wyposażony we wtyczkę Java to możemy dokonać inspekcji trójwymiarowej
geometrii, zastępując ostatnią linijke w programie przez:

.. code-block:: python

   line3d( sol[-3000:],thickness=2,color='green')


Zanim przejdziemy do badania jego własności, musimy dowiedzieć się co
to jest atraktor. Pewne układy dynamiczne opisywane równaniami
różniczkowymi (należy do ich model Lorenza), mają taką własność, że
wszystkie rozwiązania dążą do jednego (lub wielu) rozwiązania
granicznego. Takie rozwiązanie do którego inne dążą właśnie nazwano
atraktorem (z pewnością od angielskiego słowa attract -
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
fraktalną. Taki atraktor jest zwany "dziwnym atraktorem" i atraktor
Lorenza jest właśnie jego przykładem.

Czas w którym dowolne rozwiązanie układu Lorenza zbliży się do
atraktora Lorenza na odległość, która jest poniżej grubości linii go
przedstawiającej dla wybranych przez nas parametrów -  jest
rzędu 10. Dlatego, odcinając pierwsze kilkadziesiąt jednostek czasu
wykres trajektorii fazowej praktycznie jest obrazem punktów leżących
na atraktorze Lorenza. Ponieważ ma on naturę fraktalną nie można do
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
zbadać jak wyglądają trajektorie układu dla parametrów, przy których
nie jest on chaotyczny.


*Dalsze eksperymenty komputerowe z układem Lorenza: zadania ze Strogaz-a!*


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
funkcji iterowanych" (z ang. iterated function system, IFS). Układy
te są dziś znane z zaskakująco skomplikowanego
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
:math:`z_{i-1}<z_{i}` i :math:`z_{i+1}<z_i`. Oczywiście nie będą to
"prawdziwe" maksima funkcji :math:`z(t)` a jedynie ich przybliżenie.
Jedną z możliwości jest napisanie pętli (zachęcamy do zrobienia tego
własnoręcznie), która dla każdego punktu z tabeli sprawdziłaby czy
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
   times = srange(0,500,0.015)
   ics = [0,1,1]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])

   Z = sol[:,2]
   times = np.array(times)

   Zp = np.diff(Z)
   idx = np.nonzero(Zp[1:]*Zp[:-1]<0)[0]
   Zm = Z[idx+1]

   point(zip(Zm[1::2][::2],Zm[1::2][1::2]),figsize=6) 
   # point(zip(np.zeros_like(Zm[1::2][::2]),Zm[1::2][1::2])) 


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

