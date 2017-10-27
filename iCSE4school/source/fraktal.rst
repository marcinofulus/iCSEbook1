.. _wymiar:

Wymiar fraktalny
================


O scenariuszu
^^^^^^^^^^^^^

Scenariusz ten jest materiałem do przeprowadzenia jednej godziny zajęć
lekcyjnych i jest uzupełnieniem do scenariusza :ref:`od_punktu`.

Został on opracowany w ramach projektu iCSE4school na podstawie lekcji
prowadzonych w latach 2015-2017 w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Krzysztofa
Olesia.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  W tym przypadku komórki korzystają w poprzednich
      definicji, więc należy ćwiczenia (algorytmy) wykonywać według
      kolejności występowania.


Wstęp - generacja samopodobnych objektów
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


W dalszej analizie potrzebujemy algorytmów do generacji samopodobnych
obiektów geometrycznych. Rozważymy trzy obiekty, chociaż przedstawione rozwiązania mogą służyć badaniu dowolnych danych, zarówno pomiarowych jak i sztucznie wygenerowanych. Ponieważ analiza poniższych algorytmów nie jest dla nas celem, to poprzestaniemy na wypróbowaniu ich działania.

.. sagecellserver::

    import numpy as np

    def kochenize(a,b):
        HFACTOR = (3**0.5)/6
        dx = b[0] - a[0]
        dy = b[1] - a[1]
        mid = ( (a[0]+b[0])/2, (a[1]+b[1])/2 )
        p1 = ( a[0]+dx/3, a[1]+dy/3 )
        p3 = ( b[0]-dx/3, b[1]-dy/3 )
        p2 = ( mid[0]-dy*HFACTOR, mid[1]+dx*HFACTOR )
        return p1, p2, p3
    
    def koch(steps, width=1):
        arraysize = 4**steps + 1
        points = [(0.0,0.0)]*arraysize
        points[0] = (-width/2., 0.0)
        points[-1] = (width/2., 0.0)
        stepwidth = arraysize - 1
        for n in xrange(steps):
            segment = (arraysize-1)/stepwidth
            for s in xrange(segment):
                st = s*stepwidth
                a = (points[st][0], points[st][1])
                b = (points[st+stepwidth][0], points[st+stepwidth][1])
                index1 = st + (stepwidth)/4
                index2 = st + (stepwidth)/2
                index3 = st + ((stepwidth)/4)*3
                result = kochenize(a,b)
                points[index1], points[index2], points[index3] = result            
            stepwidth /= 4
        return np.array(points)
    def hilbert(n=6):
        L=[]
        M = matrix([[2,3],[1,4]])
        for i in range(1,n):
            M1=M.antitranspose()
            M2=M+4^i*ones_matrix(2^i)
            M3=M+2*4^i*ones_matrix(2^i)
            M4=M.transpose()+3*4^i*ones_matrix(2^i)
            P=block_matrix([[M2,M3],[M1,M4]])
            M=P
            L.append(P)
            
        A = M.numpy()
        nx,ny = A.shape
        Z = np.argsort(A.flatten())
        X,Y = Z%nx,Z/ny
        X,Y = X/(2^n-1.),Y/(2^n-1.)
        xy = np.vstack([X,Y]).T
        return xy

Wypróbujmy działanie tych funkcji. Na początek możemy narysować krzywą
Kocha. Algorytm jej tworzenia jest dwuetapowy. Najpierw należy odcinek
podzielić na trzy równe części. Następnie środkową zastąpić dwoma
bokami trójkąta równobocznego. Powtarzając wiele razy wspomnianą operację, otrzymujemy
nieskończenie długą linię mieszczącą się w obszarze o skończonym polu. Narysujmy pierwszą, drugą i szóstą iterację.

.. sagecellserver:: 

   line(koch(1),aspect_ratio=1) + line(koch(2),color='red') + \
     line(koch(3),color='green')


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`koch`.

    .. figure:: figs/koch126.pdf
       :width: 90%
       :name: koch
     
       Przybliżenie krzywej Kocha. 


Widzimy, że każde kolejne zwiększenie liczby iteracji (argumentu)
powoduje skomplikowanie wykresu.

Należy pamiętać, że ilość danych rośnie potęgowo z liczbą pokoleń, więc
badzo łatwo przekroczyć zasoby komputera, na którym wykonujemy powyższy
algorytm. Warto sprawdzić ile czasu zajmuje wyenerowanie danej
krzywej.

.. sagecellserver:: python

    %%time
    data_koch = koch(9)

Podobnie z krzywą Hilberta - narysujmy pierwszą, drugą i
szóstą iterację.

.. sagecellserver:: 

   line(hilbert(1),aspect_ratio=1) + line(hilbert(2),color='red') + \
     line(hilbert(6),color='green')


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`hilbert`.

    .. figure:: figs/hilbert126.pdf
       :width: 50%
       :name: hilbert
     
       Przybliżenie krzywej Hilberta. 



.. sagecellserver:: python

    %%time
    data_hilbert = hilbert(9)


   

Na samym końcu wygenerujemy dane będące punktami na okręgu - czyli
obiekcie wymiarze równym jeden.


.. sagecellserver:: python

    phi = np.linspace(0,2*3.14,1000000)
    data_circle =  np.vstack([0.3*np.cos(phi),0.3*np.sin(phi)]).T 



Wymiar pudełkowy (Mińkowskiego)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Wymiar Minkowskiego można określić rozważając to, jak długość zależy od
skali, tzn. "linijki", którą przeprowadzamy pomiar:

.. math::  l(\epsilon) \sim e^{ (1-d)},

gdzie :math:`d` jest wymiarem obiektu.

Ponieważ znamy procedurę tworzenia niektórych obiektów, to możemy dla nich otrzymać dokładne wyniki. I tak dla:

 - Krzywej Kocha:

   .. math::  d = \frac{\log(4)}{\log(3)}\simeq 1.2618

 - okręgu:

   .. math:: d=1

 - Krzywej Hilberta:

   .. math:: d=2.


Spróbujmy obliczyć wymiar obiektu, zapominając skąd mamy dane: weźmy
je (np. 1 milion punktów leżących na krzywej Kocha) i zmierzmy długość
łamanej. Następnie wyrzućmy co drugi punkt i powtórzmy pomiar.  Taką
procedurę możemy zastosować dla dowolnego obiektu będącego łamaną.


.. admonition:: Operacje na tablicach:

    Pozornie skomplikowana linijka w Python/Sage
    :code:`np.mean(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))` jest
    równoznaczna z matematycznym zapisem:

    .. math:: \frac{1}{N} \sum_{i=0}^{N-1} \sqrt{ \sum_{j=1}^{2} (l_{i,j}- l_{i-1,j})^2},

    a :code:`np.sum(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))` 

    oznacza:

    .. math:: \sum_{i=0}^{N-1} \sqrt{ \sum_{j=1}^{2} (l_{i,j}- l_{i-1,j})^2}.


.. note:: 
  
   W poniższej komórce można "odkomentować" inne przypadki, powtórzyć
   obliczenia i przeanalizować wyniki.

.. sagecellserver:: python

    # l = data_hilbert
    # l = data_circle
    l = data_koch

.. sagecellserver:: python

    scal=[]
    for i in range(100):
        epsilon = np.mean(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))
        length = np.sum(np.sqrt(np.sum(np.diff(l,axis=0)**2,axis=1)))
        scal.append( (epsilon,length) )
        
        l = l[0::2,:]
        if l.shape[0]<=2:
            break


Wystarczy dopasować tak otrzymane dane do modelu :math:`l(\epsilon)
\sim e^{ (1-d)}` i powinniśmy otrzymać przybliżenie wymiaru.

.. sagecellserver:: python

    var('a,d,x')
    model(x)=a*x^(1-d)
    scal_sel = [(eps,length) for eps,length in scal if eps>0.0009 and eps<0.01]
    fit = find_fit(scal_sel,model)
    fit

Narysujmy dopasowanie.

.. sagecellserver:: python

    plot_loglog(model(x).subs(fit),(x,0.001,1),title=r"$l(\epsilon)= b \epsilon^{(1-%0.4f)}}$"%(d.subs(fit))) +\
     point(scal,size=30) + point(scal_sel,size=30,color='red')

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fit_koch`.

    .. figure:: figs/fit_koch.pdf
       :width: 70%
       :name: fit_koch
     
       Wykres w skali logarytmicznej (tzw. log-log) długości łamanej od średniej dlugości segmentu. 


Otrzymujemy liczbę zbliżoną do wyniku dokładnego. Zaletą tego
postępowania jest jego niezależność od źródła danych.



Box counting
^^^^^^^^^^^^


Wyobraźmy sobie, ze robimy zdjęcie naszego obiektu aparatem cyfrowym o
pewnej rozdzielczości i zliczamy tylko te piksele, na których
widać obiekt.  Jak zmienia się liczba pikseli, na których znajduje się
nasz obiekt z rozmiarem piksela aparatu? Taka procedura nazywa się
box-counting. 

Wykorzystujemy histogram wbudowany w numpy: ``np.histogramdd``

Piksel - lub voxel (3d) - może być n-wymiarowym pudełkiem, jednak takim, by
mógł on pokrywać cały obiekt: np. dla krzywej Kocha musimy rozważyć co najmniej piksele 2d.

Zaletą box-countingu jest to, że  wystarczy dysponować punktami należącymi do obiektu w
dowolnej kolejności, np. takimi jak te generowane w grze w chaos.

.. sagecellserver:: python

    # xy = data_circle
    # xy = data_hilbert
    xy = data_koch


.. sagecellserver:: python

    scal = [] 
    # np.logspace(1.2,3.3,10)
    for bs in [15, 27, 46, 79, 135, 232, 398, 681, 1165, 1995]:
        H = np.histogramdd(xy,bins=[np.linspace(-1.,1.0,int(bs))]*2 )[0]
        scal.append( (2*bs,np.sum(H>0) ))
        print np.sum(H>0),bs**2


.. only:: latex
          
    W wyniku działania powyższego kodu otrzymamy następujące liczby pikseli (boxów):

    .. code::

          14 225
          26 729
          68 2116
          116 6241
          240 18225
          476 53824
          963 158404
          1825 463761
          3617 1357225
          7086 3980025



.. sagecellserver:: python

    var('a,d,x')
    model(x)=a*x^d
    fit = find_fit(scal,model)
    print fit
    plt = plot_loglog(model(x).subs(fit),(x,1,1e5),title="$y= c \epsilon^{%0.4f}$"%(d.subs(fit))) + point(scal,size=30)

    plt.show()


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`fit_koch` oraz dopasownie :math:`\simeq 1.25`.

    .. figure:: figs/box_koch.pdf
       :width: 70%
       :name: box_koch
     
       Wykres w skali logarytmicznej liczby pikseli, którą zajmuje
       obiekt do całkowitej liczby pikseli (lub liczby boxów).


Podsumowanie
^^^^^^^^^^^^

Powyższe przykłady zachęcają do przeprowadzania eksperymetnów z
własnymi danymi. Można na przykład wykorzystać dane geodezyjne linii
brzegowej rzek i zbadać ich wymiar fraktalny. Szczególnie prostą i
uniwersalną wydaje się metoda box-counting, która w języku Python -
wykorzystującym biblioteki zawarte w SageMath - zawiera się w kilku
liniach kodu.

