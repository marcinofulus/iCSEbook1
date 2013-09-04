Teoria chaosu
+++++++++++++


Wstęp
=====

.. image:: http://upload.wikimedia.org/wikipedia/en/d/dc/Edward_lorenz.jpg
   :alt: Edward Norton Lorenz
   :align: right
   :height: 160

W roku połowie lat 50-tych XX wieku, Edward Lorenz, prowadził projekt
badawczy z zakresu statystycznego modelowania pogody. Lorenz był
matematykiem, jednak podczas wojny służąc w siłach powietrznych
zajmował się tam prognozowaniem pogody. W rezultacie w 1948 obronił
doktorat wydziale meteorolgii MIT i podjął tam pracę naukową. Jako
matematyk Lorenz szybko stał się sceptyczny co do możliwości
stosowania liniowej statystyki do długoterminowych przewidywań tak
nieliniowego zjawiska jakim jest pogoda. Na marginesie, ówczesny stan
wiedzy i stosowane podejście było do złudzenia po podobne do
dzisiejszych prób modelowania dynamiki rynków finansowych. W każdym
razie Lorenz rozpoczął poszukiwania modeli opartych na leżących u
podstaw meteorologii zjawisk fizycznych. Skoncentrował się na
stworzeniu uproszcznego modelu konwekcji energii cieplnej w
atmosferze - jednego z podstawowych zjawisk fizycznych w
metereologii. 

.. sidebar:: Konwekcja w atmosferze


   .. image:: http://upload.wikimedia.org/wikipedia/commons/6/6d/Earth_Global_Circulation.jpg
      :alt: Konwekcja w atmosferze
      :width: 300
      :height: 300
      :align: right
   
   Kowekcja to proces przekazywania ciepła związany z makroskopowym
   ruchem materii w plynie. W atmosferze, powietrze jest nagrzewane
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
sekundę!  Wysiłki zotały skierowane na stworzenie maksymalnie prostego
modelu, który by jednak oddawał istotę zjawiska. Lorenz stworzył model
składający się z dwunastu zmiennych, który ostatecznie został
uproszczony do trzech.  

Publikując ten wynik, Lorenz mógł nie spodziewać się dwóch rzeczy. Po
pierwsze, okazało się, że jego model nie miał większego praktycznego
wpływu na meteorologię (w kraju, oznaczało by to, że projekt nie
zostałby rozliczony ;). Dzisiejsze podejscie do prognozowania jest
oparte na modelach zawierających miliardy zmiennych, które są
rozwiązywane na największych dostępnych komputerach i nie wydaje się
by cokolwiek mogło zmienic ten trend. Po drugie, Lorenz mógł nie
przewidzieć, że jego praca doprowadzi do powstania "teorii chaosu" i
nieodwracalnie zmieni sposób patrzenia na rzeczywistość.


Co takiego nieoczekiwanego wynikło z modelu Lorenza? Otrzymany przez
niego układ, którego stan jest opisywany przez trzy zmienne
:math:`x(t),y(t),z(t)`. Zmienne te podlegają ewolucji w czasie zgodnie
w trzema równaniami różniczkowymi. Oznacza to, że znając stan układu w
pewnej chwili :math:`t_0`, możemy, korzystając z równań różniczkowych,
wyliczyć stan układu w dowolnej poźniejszej chwili
:math:`t`. Spełnienie takiego prawa, jest ogólnie zwane determinizmen:
"teraźniejszość w pełni determinuje przyszłość". W otaczającym nas
świecie jest wiele zjawisk, które podlegają deterministycznym
prawom. Na przykład położenie samochodu jadącego po prostej z
prędkością 10 metrów na sekunkę jest zdeterminowane w każdej chwili i
może być wyliczone ze znanego wzoru na drogę w ruchu jednostajnie
prostoliniowym. Gdyby jednak zapytać jaką drogę przejedzie ten sam
samochód w miescie to odpowiedź nie będzie łatwa bo zaleźy to od
natężenia ruchu w mieście, ilości świateł. Można jednak przewidzieć,
co bardzo dobrze robią programy do nawigacji satelitarnej, średni czas
oczekiwany na pokonanie wyznaczonej drogi przez miasto. W takich
obliczeniach wiele zależy od zmiennych, ktore są losowe - jak czas
oczekiwania na zielone światło. Mówimy więc, że model szacujący czas
przejazdu przez miasto jest probablistyczny.

Wróćmy jednak do modelu Lorenza. Mając do dyspozycji komputer Lorenz
rozpoczął badnie wyprowadzonych, jak już ustaliliśmy -
deterministycznych - równań. Okazało się, że pomimo prostoty samych
równań, rozwiązania w pewnych przypadkach były wysoce nieregularne i
zachowanie układu czułe na warunki początkowe. Co więcej czułość na
warunki początkowe była tak duża, że praktycznie przewidzenie dokładne
dalekiej przyszłości w tym modelu było tak samo niemożliwe jak w
modelach probablistycznych. Nawet, zakładając, że obliczenia
przeprowadzamy z dowolną dokładnością, to w każdym modelu warunki
początkowe pochodzą z pewnych pomiarów fizycznych a te z kolei zawsze
obarczone są pewnym błędem. W efekcie, dysponując prostą i w pełni
deterministyczną regułą "przepowiadania" przyszłości i nie możemy z
niej w pełnii skorzystać. Paradoks ten jest dzisiaj określany terminem
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

.. sidebar:: Układ równań rózniczkowych

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
   są metody numeryczne. Najprostrza jest metoda Eulera. Polega ona na
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
   chwilach czasu stosując kolejne iteracje: Startując w chwili
   :math:`t` z punktu :math:`x(t),y(t)` obliczamy nowy punkt
   :math:`x(t+h),y(t+h)` w chwili :math:`t+h`. :math:`h` jest zwany
   krokiem czasowym. Następnie przyjmujemy obliczony nowy punkt jako
   początkowy i powtarzamy całą operację.



Równania, które wyprowadził Edward Lorenz w 1963 roku, jako
uproszczone konwekcji mają następującą postać:

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
kolejności w jakiej zostały podane równania. Po wykonianiu obliczeń
funkcja ta zwraca tablicę zawierającą wartości wszystkich zmiennych
czyli :math:`x,y,z` w żądanych momentach czasu. Tablica ta jest
obiektem typu :code:`numpy.ndarray` więc możemy sprawdzić jaki jest
rozmiar danych wyjściowych poleceniem:

.. code-block:: python

    print sol.shape

Widzimy, że zostaną zwrócone dwie liczby, które odpowiadają zakresom
zmienności wskaźników tabeli :code:`sol`.

Procedura :code:`line3d` rysuje wykres krzywej w przestrzeni
:math:`x,y,z`. Przestrzeń ta jest tak zwaną przestenią fazową dla
układu równań różniczkowych. Choć brzmi to skompikowanie, idea jest
bardzo prosta. Jest to przestrzeń wszystkich możliwych stanów układu
równań różniczkowych (:eq:'lorenz'). Ponieważ mamy trzy zmienne to
przestrzeń ta jest trójwymiarowa. Ewolucja czasowa układu jest krzywą
w takiej przestrzeni i jest zwana krzywą fazową. Ciekawą własnością
jest to, że dwie krzywe fazowe się nie przecinają. 

Wróćmy do naszego wykresu. Jeżeli zmienimy opcje
:code:`viewer='tachyon'` na :code:`viewer='jmol'` uruchomi
interaktywną przeglądarkę wykresów 3d - wymaga to jednak wtyczki Java.

Otrzymany wykres przedstawia kształt atraktora Lorenza - słynnego
motyla. Co ciekawego jest w tym wykresie? Po pierwsze w oczy rzuca się
nieregularność, którą jeszcze lepiej widać jeśli by narysować wykres
wybranej współrzędnej od czasu, .... ale po co gdybać, narysujmy!


.. sagecellserver::

   c=['red','blue','black']
   sum([line( zip(times,sol[-2000:,i]),color=c[i]) for i in range(3)])

Taki wykres, a właściwie trzy wykresy, to zależność każdej zmiennej
układu od czasu podczas jego ewolucji. Gdyby kontynuować ewoluje
dalej, to żaden kawałek wykresu nigdy by się nie powtórzył (warto
sprobować!). Niezwykłość układu Lorenza polega na tym, że
nieskończony i niepowtarzający się obraz, "zakodowany" jest w jedynie
trzech równaniach różniczkowych.

Układ Lorenza nie dla każdego zestawu parametrów posiada własności
chaotyczne. Weźmy na przykład dowolne :math:`\rho<24`. Łatwo się
przekonać wyonując powyższy kod, że rozwiązanie w takim przypadku
będzie regularne i będzie dążyło do skończonej wartości.


Kolejną cechą układu jest czułość na warunki początkowe. Rozwiążmy
układ dla dwóch zestawów warunków pczątkowych, różniących się o bardzo
małą wartość (ciekawostką jest fakt, że Lorenz to sprostrzeżenie
opubikował dopiero sześć lat po pierwszym artykule).


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


W powyższym kodzie mozna próbowac zmiejszać różnicę między warunkami
poczatkowymi np. dla drugiego układu kładąc :math:`y(0)=1.001` lub
:math:`y(0)=1.0001` a następnie obserwować w jakim momencie
rozwiązania zaczynają się różnić od siebie. Warto też spróbować
zbadań jak wyglądają trajektorie układu dla parametrów przy których
nie jest on chaotyczny.


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
:math:`F`, z jednego stanu możemy otrzymać kolejny. Układ po takieg
operacji jest jednowymiarowy, gdyż stan określony jest przez jedną
liczbę :math:`z_i`, ale ewolucja w czasie jest dokonywana w sposób
skokowy, zapomocą przekształcenia :math:`z_{i+1}=F(z_i)`. Taki układ
dynamiczny ze skokową ewolucją w czasie nazywa się właśnie dyskretnym
układem dynamicznym. Układy te stanowią są znaną już dziś z
zaskakująco skomplikowanego zachowiania, pomimo swojej prostoty. W
dalszej części przejdziemy do analizy fascynujących własności tych
układów. Zanim jednak to zrobimy, spróbujmy samodzielnie odtworzyć
 wynik Edwarda Lorenza.

Mając trajektorię układu Lorenza musimy się zastanowić jak z niej
wyłowić lokalne maksima? Oczywiście ponieważ rozwiązanie układu
Lorenza jest ciągłą funkcją czasu, powinniśmy zastosowować metody
badania przebiegu zmienności funkcji, czyli policzyć pierwszą
pochodną, znaleźć jej wszstkie zera na zadanym odcinku i sprawdzić czy
tak uzyskane ekstrema są maksimami. Niestety rozwiązanie układu
Lorenza nie jest dane wzorem analitycznym. I tu jest pies pogrzebany,
bo metodologia postępowania znana ze szkoły średniej wymaga
algebraicznego obliczenia pochodnej. Dlatego zrobimy
inaczej. Prodedura :code:`desolve_odeint` daje nam tabelę z
wynikami. Zakładająć ze odstępy pomiędzy kolejnymi punktami czasu w
tej tabeli są odpowiednio małe, możemy policzyć lokakne maksima dla
ciągu, zauważając, że punkt :math:`z_i` jest lokalnym maksimum jeżeli
jego otoczenie jest od niego mniejsze czyli zachodzi
:math:`z_{i-1}<z_{i}` i :math:`z_{i-1}<z_i`. Oczywiście nie będą to
"prawdziwe" maksima funkcji :math:`z(t)` a jedynie ich przybliżenie.
Jedną z możliwości jest napisanie pętli (zachęcamy do zrobienia tego
własnoręcznie), która dla każdego punktu z tabeli sprawdziła by czy
zachodzą powyższe warunki i jeśli tak, to zapisałaby punkt na listę
maksimów. Mając jednak do dyspozycji "oręż" w postaci biblioteki numpy
możemy zrobić to w praktycznie jednej lini kodu. Oznaczając przez
:code:`Z` tablicę z wartościami trzeciej zmiennej układu Lorenza 
obliczamy najpierw tablicę różnic kolejnych elementów:


.. code-block:: python

   Zp = np.diff(Z)

nastepnie znajdujemy miejsca (:code:`np.nonzero`) w których kolejne
różnice mają przeciwny znak:

.. code-block:: python

   idx = np.nonzero(Zp[1:]*Zp[:-1]<0)[0]


i ostatecznie wyciągamy z tablicy :code:`Z` te elementy:

.. code-block:: python

   Zm = Z[idx+1]

(pytanie do czytelinka - skąd to +1?)

Wypróbujmy czy taka procedura zadziała np. na funkcji :math:`sin(x)`:

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

   point(zip(Zm[1::2][::2],Zm[1::2][1::2]))


Otrzymujemy odwzorowanie, które przeprowadza jedno maximum w
kolejne. Ułożenie punktów na lini sugeruje, że pewne własności układu
Lorenza mogą być ukryte w jeszcze prostszym type układów
dynamicznych - mapie dyskretnej.

.. math::

   z_{i+1} = F(z_{i})


Równanie  logistyczne
=====================



.. math::

   x_{i+1} = a x_{i} (1 - x_{i})





..

      line3d( sol[:], viewer='tachyon',opacity=.372,thickness=3,color='green')+\
       line3d( sol2[:],color='red',thickness=1)\+
       point(sol[-1],color='blue', size=15)+point(sol2[-1],color='blue', size=15,figsize=15)


