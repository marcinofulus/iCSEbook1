Równanie  logistyczne II
++++++++++++++++++++++++


Tkamy pajęczynę
===============

Jednym z ciekawych sposobów poznania dynamiki układów dyskretnych są
wykresy "pajęczynowe" (z ang. cobweb plot), znane także jako wykresy
Verhulsta. Spróbujemy samodzielnie skonstruować taki wykres. Na osiach
będą umieszczone wartości populacji w kolejnych iteracjach:
:math:`x_i,x_{i+1}`, zakresy obu osi będą więc :math:`0..1`. Zaczynamy
od narysowania prostej :math:`x_{i+1}=x_i`, będącej przekątną wykresu,
a następnie wykresu zależności :math:`x_{i+1}=f(x_i)`, dla pewnego
ustalonego parametru :math:`a`. Chcemy przedstawić trajektorię
ewolucji pewnego stanu początkowego :math:`x_0`. Procedura rysowania
składa się z czterech etapów:

#) Znajdujemy punkt przecięcia pionowej prostej przechodzącej
    przez punkt :math:`(x_0,0)` z wykresem funkcji :math:`f`, czyli:
    :math:`x_0, f(x_0)`

#) Łączymy ten punkt poziomą linią z przekątną, tzn. z punktem
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
zanim znajdzie się w otoczeniu atraktora. Wygląda to tak jakby
atraktor coraz słabiej przyciągał. Jeżeli zwiększymy parametr niewiele
powyżej trójki np.: :math:`a=3.5` to otrzymujemy rozwiązanie, które
jest zamkniętą krzywą owijającą się jeden raz wokół niestabilnego
punktu stałego, co odpowiada rozwiązaniu o okresie 2. Dla
:math:`a=3.5` krzywa owija się już dwa razy. Odpowiada to rozwiązaniu
o okresie 4, co sugeruje, że układ pomiędzy wartościami parametru
:math:`a=3.2` a :math:`a=3.5` przeszedł kolejną bifurkację! Ustalmy
teraz parametr na największą wartość :math:`a=4.0`. Zachowanie
się układu jest w pełni chaotyczne i nie wskazuje na obecność
cykli. Możemy zwiększyć ilość iteracji lub zmienić punkt
początkowy. Za każdym razem otrzymamy niepowtarzającą się trajektorię. 


Czułość na warunki początkowe
=============================

Rozwiązanie jest czułe na warunki początkowe. Możemy się o tym
przekonać, obliczając ciąg :math:`x_i` dla dwóch mało róźniących się
warunków początkowych:


.. sagecellserver::

   a = 4.0
   x = 0.40000001
   y = 0.4
   for i in range(25):
       x = a*x*(1-x)
       y = a*y*(1-y)
       print x, y, abs(x-y)

Można też narysować to samo zjawisko na wykresie pajęczynowym, w tym
celu możemy skonstruować nieznacznie zmienioną wersję poprzedniego
programu:

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

Widzimy, że niezależnie od tego jak blisko siebie wystartujemy, zawsze po pewnym - i to do tego niezbyt długim czasie, rozwiązania rozbiegają się. Jest to cecha układów chaotycznych. Cytując Edwarda Lorenza:

.. admonition:: Chaos

   "... when the present determines the future, but the approximate
   present does not approximately determine the future ..."






Diagram bifurkacyjny
====================

Z poprzednich rysunków, widzieliśmy, że równanie logistyczne ma
rosnącą do nieskończoności liczbę orbit coraz wyższego rzędu. Przy
próbie ich wyznaczenia, pojawił się problem z zerami wielomianów
wysokiego rzędu i musielismy się poddać. Możemy jednak bardzo prosto
wyznaczyć diagram na którym będą przedstawione bifurkacje. Będziemy
potrzebowali do tego dość dużej mocy obliczeniowej. Postąpimy
następująco:

1) podzielimy przedział zmienności paramteru na :math:`N_a` punktów
#) dla każdej wartości :math:`N_a` przeprowadzimy jednoczesną
   symulację :math:`N_x` układów z różnymi warunkami początkowymi, wykonami np. 1000 iteracji.
#) zapamietamy tylko ostatnie wartości stanów tych 1000. 
#) naniesiemy punkty :math:`(a_i,x_{1000})` dla każdej z wybranych wartości parametru :math:`a`.

Jak można się domyslić wymaga to wykonania dużej ilości
obliczeń. Spróbujmy "ostrożnie" z nastepującymi wartościami:

.. sagecellserver::

    import numpy as np
    Nx = 100
    Na = 400

    x = np.linspace(0,1,Nx)
    x = x + np.zeros((Na,Nx))
    x = np.transpose(x) 
    a=np.linspace(1,4,Na)
    a=a+np.zeros((Nx,Na))

    for i in range(1000):
        x=a*x*(1-x)

    pt = [[a_,x_] for a_,x_ in zip(a.flatten(),x.flatten())]

    point(pt,size=1,figsize=(7,5))


Taki wykres nazywa się diagramem bifurkacyjnym. Nazwa pochodzi od
faktu, że przedstawia on bifurkacje układu przy zmianie parametru a.
Porównajmy otrzymany diagram, z wykresem punktów stałych
:math:`x=f(x)` oraz :math:`x=f(f(x))`, który otrzymaliśmy
poprzednio. Nalepiej przeprowadzić porównanie, umieszczając oba wykresy
jeden na drugim:

.. sagecellserver::

    var('x a')
    f(x)=a*x*(1-x)
    s = solve(x==f(f(x)),x)
    plot(s[3].rhs(),(a,0,1),thickness=2)+\
     plot(s[2].rhs(),(a,1,3),thickness=2)+\
     plot(s[3].rhs(),(a,1,4),thickness=2,color='red',figsize=(7,3))+\
     plot(s[0].rhs(),(a,3,4),thickness=2)+\
     plot(s[1].rhs(),(a,3,4),thickness=2)+\
     plot(s[2].rhs(),(a,3,4),thickness=2,xmin=2.5,ymin=0,ymax=1,color='red')+\
     point(pt,color='green',size=1,figsize=(7,5))


Widzimy, że taki prosty algorytm umożliwił poznanie struktury punktów
stałych mapy logistycznej. Jedynie stabilne punkty stałe są widoczne
na takim wykresie. Wykonując wiele iteracji, zbliżamy się do
tzw. atraktora układu. Czasem jest on jednym punktem, a czasem ma
bardzo skomplikaowaną budowę.


Zadania: 
~~~~~~~~

1) Zbadaj co się dzieje w przedziale (3,3,78)?
#) Eksplorując diagram bifurkacyjny, czy zaobserwujesz własności
   samopodobieństwa atraktorów równania logistycznego?


.. [may76] May, R. M. "Simple mathematical models with very complicated dynamics". Nature 261 (5560): 459–467,1976.


