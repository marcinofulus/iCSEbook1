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
   ruchem materii w gazie. W atmosferze, powietrze jest nagrzewane
   przez słońce przy powierzchni ziemi i jako lżejsze unosi się do
   góry, gdzie z kolei się oziębia i znowu opada. Taki opis jest
   oczywiście dużym uproszczeniem i jedyną ścisłą metodą badania
   takich zjawisk jest rozwiązywanie odpowiednich równań transportu, w
   tym równania Naviera-Stokesa. Lorenz w swojej pracy analizował
   numerycznie radykalnie uproszczony przypadek konwekcji - tak
   uproszczony, że nie miał żadnego zastosowania w modelowaniu realnej
   atmosfery, chociaż zapoczątkował rewolucję.
   

Radykalne uproszczenie było konieczne. Nie zapominajmy, że w owych
czasach komputer miał 16kb pamięci i mógł wykonać jedynie
kilkadziesiąt operacji zmiennoprzecinkowych na sekundę. Dla porównania
dzisiejszy telefon komórkowy wykonuje nawet miliardy operacji na
sekundę!  Wysiłki zotały skierowane na stworzenie maksymalnie prostego
modelu, który by jednak oddawał istotę zjawiska. Lorenz stworzył model
składający się z dwunastu zmiennych, który ostatecznie został
uproszczony do trzech. Publikując ten wynik, Lorenz mógł nie
spodziewać się dwóch rzeczy. Po pierwsze, okazało się, że jego model
nie miał większego praktycznego wpływu na meteorologię (w kraju,
oznaczało by to, że projekt nie zostałby rozliczony ;). Dzisiejsze
podejscie do prognozowania jest oparte na modelach zawierających
miliardy zmiennych, które są rozwiązywane na największych dostępnych
komputerach i nie wydaje się by cokolwiek mogło zmienic ten trend. Po
drugie, Lorenz mógł nie przewidzieć, że jego praca doprowadzi do
powstania "teorii chaosu" i nieodwracalnie zmieni sposób patrzenia na
rzeczywistość.


Co takiego nieoczekiwanego wynikło z modelu Lorenza? Otrzymany przez
niego układ był opisywany przez trzy zmienne, które podlegały trzem
równaniom różniczkowym. Mając do dyspozycji komputer Lorenz rozpoczął
badnie wyprowadzonych równań. Okazało się, że pomimo prostoty
rozwiązania w pewnych przypadkach były wysoce nieregularne i
zachowanie układu czułe na warunki początkowe. W meteorologii, już w tych
latach panował pogląd o wrażliwości pogody na niewielkie zaburzenie
stanu początkowego, jednak przypisywano to z reguły złożoności
układu. Zaskakującym wynikiem otrzymanym przez Lorenza było to, że
własność ta tkwi już  bardzo prostym, tzw. niskowymiarowym,  modelu.


W poniższym rozdziale zachęcamy czytelnika do przeniesienia się w lata
60-te i powtórzenia obliczeń komputerowych. Fascynujące jest, że w tej
chwili mamy do dyspozycji milion razy szybszy sprzęt
komputerowy. Ponadto otwarte oprogramowanie Sage umożliwia wykonywanie
eksperymentów na zasadzie podobnej do klocków lego - można korzystać z
wielu gotowych procedur, niekoniecznie wnikając od razu w szczegóły
implementacji. Zatem, dowiedzmy się jakie równania badał Lorenz?





Układ Lorenza
=============

.. sidebar:: Układ równań rózniczkowych

   Układem równań różniczkowych to układ równań w którym występują
   pochodne. Często spotyka się następującą postać:

   .. math ::

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
   są metody numeryczne. Najprostrzym schematem jest metoda
   Eulera. Polega ona na zastąpieniu pochodnych ilorazem różnicowym:

   .. math ::

       \frac{dx}{dt} \sim \frac{x-x_0}{t-t_0} 

   Stosując takie przybliżenie można zapisać równanie różniczkowe jako
   ciąg kolejnych iteracji. Startując w chwili :math:`t_0` z punktu
   :math:`x_0,y_0` obliczamy nowy punkt :math:`x,y` w chwili
   :math:`t_0+h`, gdzie :math:`h=t-t_0` jest krokiem
   czasowym. Następnie przyjmujemy obliczony punkt jako początkowy i
   powtarzamy całą operację :math:`x,y \to x_0,y_0`.



Równania, które Edward Lorenz zastosował do badania konwekcji mają
następującą postać:

   .. math ::

       \frac{\mathrm{d}x}{\mathrm{d}t} &= \sigma (y - x), \\
       \frac{\mathrm{d}y}{\mathrm{d}t} &= x (\rho - z) - y, \\
       \frac{\mathrm{d}z}{\mathrm{d}t} &= x y - \beta z.


Układ taki można rozwiązać stosując metody numeryczne dla równań
różniczkowych (patrz box). Mając do dyspozycji pakiet Sage możemy
spróbować wykonań następujący kod:



.. sagecellserver::

   x,y,z = var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,4200,0.015)
   ics = [0,1,1]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])
   line3d( sol[:1000], viewer='tachyon',thickness=2,color='green')


Kluczowym elementem jest wykorzystanie funkcji
:code:`desolve_odeint`. Rozwiązuje ona numerycznie dowolny układ
równań różniczkowych z wykorzystaniem bardzo efektywnych metod
(znacznie bardziej zaawansowanych od metody Eulera). Minimalna liczba
parametrów to: lista lewych stroń układu równań różniczkowych, warunek
początkowy, punkty czasowe w których ma być obliczone rozwiązanie oraz
lista zmiennych symbolicznych w takiej kolejności w jakiej zostały
podane równania. Po wykonianiu obliczeń funkcja ta zwraca tablicę
zawierającą wartości wszystkich zmiennych czyli :math:`x,y,z` w
ządanych momentach czasu.

Procedura :code:`line3d` rysuje wykres krzywej w przestrzeni
:math:`x,y,z`. Jeżeli zmienimy opcje :code:`viewer='tachyon'` na
:code:`viewer='jmol'` uruchomi interaktywną przeglądarkę wykresów 3d -
wymaga to jednak wtyczki Java. 

Otrzymany wykres przedstawia kształt atraktora Lorenza - słynnego
motyla. Co ciekawego jest w tym wykresie? Po pierwsze w oczy rzuca się
nieregularność. Jeśli by narysować wykres tylko jednej współrzędnej od
czasu, .... ale  po co gdybać, narysujmy!


.. sagecellserver::

   line( zip(times,sol[-2000:,0]) )


Kolejną cechą układu jest czułość na warunki początkowe. Rozwiążmy
układ dla dwóch zestawów warunków pczątkowych, różniących się o bardzo
małą wartość.




.. sagecellserver::
   
   x,y,z = var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,31,0.01)
   ics = [0,1,0]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])# ,rtol=1e-13,atol=1e-14)

   ics2 = [0,1.00001,0]
   sol2 = desolve_odeint(lorenz,ics2,times,[x,y,z])# ,rtol=1e-13,atol=1e-14)

   print "calc ok, plotting...."

   line( zip(times,sol[:,0]) )+line( zip(times,sol2[:,0]),color='red' )


Spróbujmy z trajektorii układu wyłowić lokalne maksima. Zobaczmy jaką
wartość przyjmują kolejne wartości parametru :math:`z` w maksimach.


.. sagecellserver::

   import numpy as np
   x,y,z = var('x,y,z')
   sigma = 10
   rho = 28
   beta = 8/3
   lorenz = [sigma*(y-x),x*(rho-z)-y,x*y-beta*z]
   times = srange(0,4200,0.015)
   ics = [0,1,1]
   sol = desolve_odeint(lorenz,ics,times,[x,y,z])# ,rtol=1e-13,atol=1e-14)


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




.. math::

   x_{i+1} = a x_{i} (1 - x_{i})





..

      line3d( sol[:], viewer='tachyon',opacity=.372,thickness=3,color='green')+\
       line3d( sol2[:],color='red',thickness=1)\+
       point(sol[-1],color='blue', size=15)+point(sol2[-1],color='blue', size=15,figsize=15)


