.. -*- coding: utf-8 -*-


Dynamika populacyjna: ciągłe modele jednowymiarowe
--------------------------------------------------


Model Malthusa
~~~~~~~~~~~~~~

W przyrodzie występuje wiele gatunków zwierząt i roślin. Ich
liczebność ciągle się zmienia: procesy są dynamiczne, powiązane między
sobą, oddziaływania są skomplikowane, często losowe. Można powiedzieć,
że jest to niewątpliwie przykład realnego układu złożonego z wielu
elementów połączonych z sobą w skomplikowaną sieć. Opis takich układów
jest trudny. Jak to często bywa w naukach przyrodniczych, stosuje się
opis przybliżony, "gruboziarnisty", pomija się elementy mniej istotne
i uwzględnia się najważniejsze składniki układu. Jest to metoda
*idealizacji* nagminnie stosowana przez fizyków do opisu
rzeczywistości. Historia pokazuje, że metoda ta nie jest zła. Ba,
czasami bardzo dobra i nawet znakomita. 

Podobne podejście zastosujemy do opisu dynamiki
populacyjnej. Zaczniemy od najprostszego modelu: jedna populacja. Może
to być populacja ludzi na określonym obszarze, populacja zajęcy,
bakterii czy populacja komórek nowotworowych. Może to być "populacja"
związku chemicznego (molekuł). Populację określa się liczbami
naturalnymi: jest 4 tys. ludzi, 3 mld bakterii, :math:`10^{20}`
molekuł. Posługiwanie się liczbami całkowitymi jest trudne w
modelowaniu. Postąpimy podobnie jak w opisie dynamiki płynów, np. wody
czy krwii. Woda w szklance składa się z dyskretnej liczby molekuł. Ale
nikt do charakterystyki wody nie stosuje opisu bazyjącego na liczbach
naturalnych.  Stosujemy *przybliżenie ośrodka ciągłego*
scharakteryzowanego gęstością wody: ilością molekuł w jednostkowej
objętości. Podobny opis zastosujemy w modelowaniu dynamiki
populacyjnej. Liczba N charakteryzująca liczbę osobników w populacji
będzie nieujemną liczbą rzeczywistą, interpretowaną jako względna
liczba osobników (liczba osobników w stosunku do np. średniej liczby
osobników w ostatnich 50 latach lub maksymalnej liczby osobników w
poprzednim roku, itp.). Liczba ta może zmieniać się w sposób
ciągły. Liczba N(t) będzie charakteryzować liczbę osobników populacji
w chwili czasu t.  Zmiana w czasie tej funkcji wynika z zastosowanego
modelu. 

Modele będziemy budować bazując na wiedzy z teorii funkcji i
obserwacjach otaczającego nas świata. Nie trzeba być wybitnym
matematykiem, żeby umieć zinterpretować różnicę dwóch prędkości
samochodu A i samochodu B gdy samochód A jedzie z prędkością 40 km/h,
a samochód B jedzie z prędkością 150 km/h. Wielkość, która mówi o
*tempie zmiany położenia w czasie* to pochodna położenia jako funkcji
czasu, czyli prędkość. To właśnie pochodna mówi nam, w jakim tempie
zmienia się dana wielkość. Jeżeli pochodna jest dodatnia, to funkcja
rośnie; gdy pochodna jest ujemna, to funkcja maleje. Oto niezbędna
wiedza, aby zacząć modelowanie.


Pierwszy krok modelowania: dlaczego zmienia się liczba osobników N(t)
w danej populacji?  Można wyróżnić trzy podstawowe procesy: ktoś się
rodzi, ktoś umiera, jeszcze inny "wyjeżdża", emigruje, opuszcza
populację, a jeszcze inny "przyjeżdża", imigruje. W języku matematyki
możemy to zapisać w postaci relacji:


.. MATH::

    \frac{dN(t)}{dt}= +\text{przyrost (narodziny)} - \text{ubytek (śmierć)}  \pm  \text{migracja}


(i) Lewa  strona  tej relacji opisuje tempo zmiany populacji: :math:`dN(t)/dt`


(ii) przyrost populacji wskutek urodzin nowych osobników jest rosnącą
     funkcją :math:`f(N)` liczby osobników :math:`N` w populacji: W
     populacji 1 mln rodzi się więcej osobników niż w populacji 50
     tys. (jak można zaobserwować w ostatnich latach, w populacji
     ludzi nie musi to być prawdą).  Najprostszą funkcją jest funkcja
     liniowa:


.. MATH::

    f(N) = a N


gdzie współczynnik :math:`a \gt 0` nazywa się tempem rozmnażania
(wzrostu) populacji.


(iii) ubytek populacji wskutek śmierci osobników jest rosnącą funkcją
       :math:`g(N)` liczby osobników w populacji: W populacji 1 mln
       umiera więcej osobników niż w populacji 50 tys.  Najprostszą
       funkcją jest funkcja liniowa:


.. MATH::

    g(N) = b N


gdzie współczynnik  :math:`b \gt 0` jest tempem śmiertelności (zaniku) populacji .


Pominiemy na obecnym etapie procesy migracji (zaczynamy od najprostszego modelu!).  Z powyższych rozważań wynika taki oto model:


.. MATH::

    \frac{dN(t)}{dt}= a N(t) - b N(t)  = (a-b) N(t) = k N(t), \quad \quad  k=a-b


Otrzymaliśmy liniowe równanie różniczkowe zwyczajne pierwszego rzędu. Aby otrzymać  jego jednoznaczne rozwiązanie, musimy jeszcze zadać warunek początkowy:  

.. MATH::

    N(0) = N_0


Jest to proste równanie różniczkowe, które można rozwiązać metodą rozdzielenia zmiennych:


.. MATH::

    N(t)= N_0  e^{kt}


Z rozwiązania tego wynika, że:


1. jeżeli  tempo rozmnażania  jest takie samo jak tempo śmiertelności, :math:`k=0` czyli :math:`a=b`,  to populacja utrzymuje sie na tym samym poziomie liczebności:  :math:`N(t) = N(0)`.


2. jeżeli  tempo rozmnażania  jest większe niż  tempo śmiertelności, :math:`k\gt 0` czyli :math:`a \gt b`, to populacja rozrasta się: :math:`N(t)  \gt  N(0)`.


3. jeżeli  tempo rozmnażania  jest  mniejsze niż  tempo śmiertelności, :math:`k\lt 0` czyli :math:`a \lt b`,   to liczba osobników w populacji maleje:  :math:`N(t)  \lt  N(0)`.


Powyższy model został zaproponowany przez Malthusa w 1798 roku. Wynika z niego eksponencjalnie szybkie  tempo wzrostu (gdy a>b) lub eksponencjalnie szybki zanik populacji (gdy a<b). Są takie przykłady,  dla których model Malthusa realizuje się w pewnych przedziałach czasu, w szczególności  w początkowych fazach wzrostu (np. wzrost kolonii bakterii w odpowiednich warunkach).


**Wykorzystanie Sage do analizy  modelu Malthusa**
""""""""""""""""""""""""""""""""""""""""""""""""""

**Rozwiązanie analityczne**


W SAGE można bardzo łatwo otrzymać postać analityczną rozwiązania równania Malthusa, patrz poniżej:


****


.. code-block:: python

    sage: var('t k')
    sage: #k=1
    sage: assume(t>0)
    sage: N = function('N',t)
    sage: row = N.diff()== k*N
    sage: rozw = desolve(row,N,ivar = t)
    sage: rozw


.. MATH::

    c e^{(kt)}


.. end of output


**Wykres pokazujący wzrost, brak zmian i zanik populacji w zależności od wartości parametru k=a-b**


.. code-block:: python

    sage: var('N1,N2,N3')
    sage: T = srange(0,3,0.01)
    sage: sol=desolve_odeint( vector([-N1, 0, 0.5*N3]), [5,5,5],T,[N1,N2,N3])## rozwiązania dla różnych wartości k=-1, 0, 0.5

    sage: line( zip ( T,sol[:,0]) ,figsize=(5, 3),legend_label="k=-1") +\
    ...    line( zip ( T,sol[:,1]) ,color='red',legend_label="k=0")+\
    ...    line( zip ( T,sol[:,2]) ,color='green',legend_label="k=0.5") ## pokazujemy rozwiązania dla różnych wartości k=-1, 0, 0.5


.. image:: figs/cell_6_sage0.png
    :align: center


.. end of output


**Wykres pokazujący różne tempo wzrostu w zależności od wartości parametru k=a−b > 0**


.. sagecellserver::

    T1 = srange(0,1.5,0.01)
    sol1=desolve_odeint( vector([N1, 2*N2, 2.5*N3]), [5,5,5],T1,[N1,N2,N3])
    line( zip ( T1,sol1[:,0]) ,figsize=(5, 3),legend_label="k=1") +\
     line( zip ( T1,sol1[:,1]) ,color='red',legend_label="k=2")+\
     line( zip ( T1,sol1[:,2]) ,color='green',legend_label="k=2.5") ## pokazujemy rozwiązania dla dodatnich wartości k=1, 2, 2.5



**Wykres pokazujący różne tempo  zaniku populacji w zależności od wartości parametru k=a−b < 0**


.. sagecellserver::

    T2 = srange(0,2,0.01)
    sol2=desolve_odeint( vector([-N1, -2*N2, -3*N3]), [5,5,5],T2,[N1,N2,N3])
    line( zip ( T2,sol2[:,0]) ,figsize=(5,3),legend_label="k=-1") +\
     line( zip ( T2,sol2[:,1]) ,color='red',legend_label="k=-2")+\
     line( zip ( T2,sol2[:,2]) ,color='green',legend_label="k=-3") ## pokazujemy rozwiązania dla ujemnych wartości k=-1, -2, -3



Załóżmy, że mamy eksperymentalne dane liczebności pewnej populacji w czasie:


.. sagecellserver::

    t = [0 , 16 ,  32 , 48 , 64 ]
    X = [0.022, 0.036,  0.060, 0.101,  0.169 ]


W modelu Malthusa, wzrost jest eksponencjalny. Więc w skali
logarytmicznej powinniśmy otrzymujać prostą:

.. math::

   y(t) = \ln N(t) = \ln N_0 + k t = c + k t


Przedstawiamy  dane wzrostu bakterii na  skali logarytmicznej:


.. sagecellserver::

    point(zip(t,map(log,X)),color='red',figsize=4)


Z grubsza wygląda to na linię prostą. Aby to sprawdzić,  wykonamy procedurę dopasowania danych eksperymentalnych do krzywej: :math:`n(t) = a \; e^{ b t}`:


.. sagecellserver::

    var('x a b')
    model(x) = a * exp(b * x )
    fit = find_fit (zip(t,X), model, solution_dict=True,initial_guess=(.1,.1)) 
    print fit
    fit2 = find_fit (zip(t[:2],X[:2]), model, solution_dict=True)
    print fit2
    plot( model(x).subs(fit), (x,-20,70))  + plot( model(x).subs(fit2), (x,-20,70),color='green')  + point(zip(t,X),color='red',figsize=4)

Parametr :code:`initial_guess` ustala punkt startowy dla rozpoczęcia
iteracji procedury nieliniowej optymalizacji.



Ostatnia liczba to wartość $k$ obliczona z danych dla wzrostu
bakterii. Jest on bardzo bliska wartości b obliczonej z dopasowania
danych do krzywej eksponencjalnej: :math:`n(t) = a \exp(a t)`. Stała
:math:`a` też jest bliska wartości 0.22 z danych.




**ZADANIE:** W modelu Malthusa występują 2 parametry: a i b. W
 rozwiązaniu pojawia się tylko różnica a\-b. Przeprowadzić dyskusję
 dotyczącą bezwymiarowej postaci równania Malthusa. Ile istotnych
 parametrów zawiera model Malthusa?


**ZADANIE:** W roku 1960 liczba ludności wynosiła 3 mld. W roku 1970
 \- 3.7 mld ludzi.  Zakładając, że zmiana populacji następuje zgodnie
 z powyższym modelem Malthusa, oblicz liczbę ludności w roku 1980.
 Porównaj wynik modelu ze stanem faktycznym (skorzystaj z danych
 demograficznych zamieszczonych na stronie internetowej).





**ZADANIE:** Dane eksperymentalne dotyczące wzrostu bakterii *Vibrio
 natrigens* są nastepujace (patrz
 http://mathinsight.org/bacteria_growth_initial_model)


    ===========  ================
     t  (min)       N (gęstość)
    ===========  ================
       0                0.022
      16                0.036
      32                0.060
      48                0.101
      64                0.169
    ===========  ================


Vibrio natrigens

Sprawdź, czy model Malthusa opisuje powyższy wzrost kolonii bakterii.
Oceń rzetelność tego modelu.


