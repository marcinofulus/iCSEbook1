
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
:math:`z_{i-1}<z_{i}` i :math:`z_{i+1}<z_i`. Oczywiście nie będą to
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
