.. _od_punktu:

Od punktu do punktu
~~~~~~~~~~~~~~~~~~~

O scenariuszu
^^^^^^^^^^^^^

Prezentowany scenariusz jest wynikiem zajęć prowadzonych w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie. Przeznaczony jest
do realizacji na dwóch godzinach lekcyjnych (po jednej na każdą z
części), przy czym - co pokazały m.in. szkolne testowania na grupach
uczniów oraz warszaty prowadzone dla grup nauczycieli - bardzo istotna
jest możliwość przedyskutowania efektów zmian przedstawionych w części
drugiej kodów.  Struktura materiału jest swoistym dialogiem z
uczestnikami zajęć, dopuszczamy więc podejście typu nieformalnego -
najważniejsza jest dla nas bowiem możliwość eksperymentowania.

Lekcje prowadził Krzysztof Oleś.

.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.

Wstęp
^^^^^

W roku 2005 wydawnictwo TIKKUN zaprezentowało Polakom książkę, która w
roku 1976 zdobyła światowy rozgłos (ze względów politycznych – w
Polsce była rodzajem podziemnej klasyki dla matematyków). Piszemy
tutaj o „Dowodach i refutacjach” Imre Lakatosa, w których pokazano,
istotność powątpiewania i stawiania hipotez.  Wspomniany rok 1976
pojawia się także jeszcze w innym kontekście. Otóż właśnie w tym roku
na łamach New York Timesa pojawiła się informacja o udowodnieniu (?)
twierdzenia o czterech barwach – wykorzystano programy komputerowe i
ostateczne wyniki pochodziły z zaprogramowanych obliczeń. Można
oczywiście dyskutować nad tego typu dowodem. Wydaje się jednak, że nad
potrzebą wykorzystywania komputera do stawiania hipotez dyskutować nie
trzeba. I to chcemy naszym wychowankom pokazać, łącząc matematykę z
całkowicie dla nich naturalnym środowiskiem komputerowym.
**Powątpiewanie może być twórcze**, a zabawa (!) może wywoływać
uśmiech odkrywania.


Przedstawiamy ponadto dodatek, który może być punktem wyjścia do
rozważań związanych z próbą definiowania wymiaru obiektów fraktalnych.


Scenariusz zajęć
^^^^^^^^^^^^^^^^

Część pierwsza
===============

Pomyślmy przez chwilę o wykresie funkcji,
np. :math:`f(x)=\log_x\left|4\sin\left(\frac{\pi}{2}-3x\right)-6\right|`.
To oczywiście ciągła linia, którą wyobrażamy sobie bez jakiegokolwiek
problemu. Czyżby?

Stosując w naszych matematycznych podróżach SAGE'a, użyć możemy m.in.:

1. wzoru konkretnej funkcji

.. sagecellserver::

  a=-2 #zmień to
  plot(x^2, (x, a, 10))
  
.. only:: latex
          
    .. figure:: refutacje_media/1.png
       :width: 42%
         
2. równania nazywanego "uwikłanym"

.. sagecellserver::

  var('y')
  a=3 #zmień to
  implicit_plot(((x^2)+(y^2))^2==2*(a^2)*((x^2)-(y^2)),(x,-10,10),
                (y,-10,10))
  
.. only:: latex
          
    .. figure:: refutacje_media/2.png
       :width: 42%

3. postaci biegunowej

.. sagecellserver::

  a=2 #zmień to
  polar_plot(a*x, (x, 0, 2*pi))
  
.. only:: latex
          
    .. figure:: refutacje_media/3.png
       :width: 42%
  
Czasem dostrzegamy pewne podobieństwa w wymienionych tu powyżej
podejściach: w każdym z przypadków na ekranie komputera pojawia się
zestaw punktów - jest on jednak ukryty w mniej lub bardziej
skomplikowanej formule.

A może powinniśmy użyć najprostszej metody: od pukntu do punktu?
Korzystając z rekurencji?

Pomyślmy o punkcie umieszczonym w układzie współrzędnych - da nam to
możliwość połączenia geometrii z rozważaniami numerycznymi. Ważne będą
dla nas możliwości eksperymentowania i komputerowych zabaw -
prezentowane przykłady nie będą natomiast programistycznie
skomplikowane.

Rozpocznijmy więc od umieszczenia na ekranie jednego punktu.

.. sagecellserver::

  fig=point((1,3))
  fig
  
.. only:: latex
          
    .. figure:: refutacje_media/4.png
       :width: 50%

Właściwie to nic takiego - umieśćmy więc punktów pięć...

.. sagecellserver::

  fig=point((1,3),(1,4),(1,5),(1,6),(1,5))
  fig
  
Po tym małym zaplanowanym błędzie punkty próbujemy dodać.

.. sagecellserver::

  fig=point((1,3))+point((1,4))+point((1,5))+point((1,6))+point((1,7))
  fig
  
.. only:: latex
          
    .. figure:: refutacje_media/5.png
       :width: 50%

Zauważmy, że nawet przy użyciu ctr+c+ctrl+v zabiera to sporo czasu i aż ciężko jest nam myśleć o umieszczaniu na ekranie takim sposobem stu punktów - tym bardziej w sytuacji, w której możemy znaleźć pewną **regularność** w opisie ich drugich współrzędnych. Zatem: użyjmy jej.

.. sagecellserver::

  fig=point((1,3))
  for i in range(4,105):
      fig=fig+point((1,i))
  fig
    
.. only:: latex
          
    .. figure:: refutacje_media/6.png
       :width: 50%

Spróbujmy zmienić też rozmiar puktów oraz ich odcień.

.. sagecellserver::

  s=40 #zmień rozmiar
  fig=point((1,3),rgbcolor=(0,0,0),size=s) #co oznacza (0,0,0)?
  for n in range(4,105):
      fig=fig+point((1,n),rgbcolor=(0,n/105,0),size=s)
  fig
  
.. only:: latex
          
    .. figure:: refutacje_media/7.png
       :width: 50%
       

Nie zapominajmy o możliwości umieszczenia pętli w pętli.

.. sagecellserver::

  a=1
  b=3
  c=105
  d=20
  fig=point((a,b),rgbcolor=(0,0,0),size=d)
  for n in range(4,c):
      for k in range(1,n):
          fig=fig+point((n,k),rgbcolor=(0,n/c,0),size=d)
  fig
  
.. only:: latex
          
    .. figure:: refutacje_media/8.png
       :width: 50%

Patrząc na uzyskany efet, zauważamy pewien problem w "lewym"
wierzchołku trójkąta - usuńmy go, poprawnie manipulując liczbami.


Część druga
============

Przejdźmy do losowania.  

.. sagecellserver::

  n=1001 #zmień to
  a=10*random() #dlaczego używamy mnożenia?
  b=10*random()
  fig=point((a,b))
  for k in range(1,n):
      a=10*random()
      b=10*random()
      fig=fig+point((a,b),color=((1/8)*k,2*k,k)) #zmień sposób kolorowania
  fig
  
.. only:: latex
          
    .. figure:: refutacje_media/9.png
       :width: 40%

W powyższym przykładzie zauważamy specyficzny rodzaj chaosu... Czy
możemy jednak punkty bardziej kontrolować?

Wyobraźmy sobie sytuację, w którym określony punkt początkowy
:math:`(a,b)` przekształcany jest w wybranym losowo jednym z ośmiu
przekształceń. Każde z nich składa się z dwóch części: liniowej
operacji na pierwszej współrzędnej (trzy liczby :math:`a_i,b_i,c_i`)
oraz liniowej operacji na drugiej współrzędnej (trzy liczby
:math:`d_i,e_i,f_i`). Po przekształceniu otrzymujemy nowy punkt
:math:`(a,b)` który przetwarzamy analogicznie - oczywiście nie
poprzestajemy na dwóch punktach, komputer dokona setek powtórzeń.

Spójrzmy uważnie na kod źródłowy (szczególnie na linie zawierające #).

.. sagecellserver::

  a=0 #pierwsza współrzędna punktu startowego
  b=0 #druga współrzędna punktu startowego
  d=1001 #liczba powtórzeń i długie listy czynników poniżej...
  a1=0.333;b1=0;c1=-0.333;d1=0;e1=0.333;f1=0.333
  a2=0.333;b2=0;c2=0;d2=0;e2=0.333;f2=0.333
  a3=0.333;b3=0;c3=0.333;d3=0;e3=0.333;f3=0.333
  a4=0.333;b4=0;c4=0.333;d4=0;e4=0.333;f4=0
  a5=0.333;b5=0;c5=0.333;d5=0;e5=0.333;f5=-0.333
  a6=0.333;b6=0;c6=0;d6=0;e6=0.333;f6=-0.333
  a7=0.333;b7=0;c7=-0.333;d7=0;e7=0.333;f7=-0.333
  a8=0.333;b8=0;c8=-0.333;d8=0;e8=0.333;f8=0 #i wreszcie koniec listy
  r=point((a,b),axes=False, frame=False,size=0) 
  for c in range(1,d):
    n=randint(1,8) #wybór jednego z ośmiu przekształceń
    if n==1:
        a=(a1*a)+(b1*b)+c1
        b=(d1*a)+(e1*b)+f1
        r=r+point((a,b),axes=False, frame=False,size=5,color='red')
    if n==2:
        a=(a2*a)+(b2*b)+c2
        b=(d2*a)+(e2*b)+f2
        r=r+point((a,b),axes=False, frame=False,size=5,color='green')
    if n==3:
        a=(a3*a)+(b3*b)+c3
        b=(d3*a)+(e3*b)+f3
        r=r+point((a,b),axes=False, frame=False,size=5,color='purple')
    if n==4:
        a=(a4*a)+(b4*b)+c4
        b=(d4*a)+(e4*b)+f4
        r=r+point((a,b),axes=False, frame=False,size=5,color='blue')
    if n==5:
        a=(a5*a)+(b5*b)+c5
        b=(d5*a)+(e5*b)+f5
        r=r+point((a,b),axes=False, frame=False,size=5,color='orange')
    if n==6:
        a=(a6*a)+(b6*b)+c6
        b=(d6*a)+(e6*b)+f6
        r=r+point((a,b),axes=False, frame=False,size=5,color='yellow')
    if n==7:
        a=(a7*a)+(b7*b)+c7
        b=(d7*a)+(e7*b)+f7
        r=r+point((a,b),axes=False, frame=False,size=5,color='pink')
    if n==8:
        a=(a8*a)+(b8*b)+c8
        b=(d8*a)+(e8*b)+f8
        r=r+point((a,b),axes=False, frame=False,size=5,color='black')     
  show (r, figsize=(8.75,8))
  
Przy stu powtórzeniach otrzymana figura wydaje się chaotyczna, dlatego
też wykonaliśmy większą liczbę powtórzeń (proponujemy dalsze
zwiększanie liczby d).

.. only:: latex
          
    .. figure:: refutacje_media/10.png
       :width: 40%

Czy układ punktów nie zaczyna nam czegoś przypominać?

Gdzieś w głowie powinien pojawić się nam dywan Sierpińskiego.


Poeksperymentujmy z tym tworem i spróbujmy odpowiedzieć na niełatwe
pytania:

* Czy generowana figura zależy od doboru punktu startowego?
* Co stanie się, gdy zmieniać będziemy liczby :math:`a_i,b_i,c_i,d_i,e_i,f_i`?
* Co stanie się, jeśli np. jedno z ośmiu przekształceń "wyłączymy" i
  czy na pewno umiemy to w kodzie żródłowym zrobić?
* Dlaczego dywan pokolorowany jest w taki a nie inny sposób?

Wydaje się, że odpowiedzi na te pytania (oparte na pewnych
założeniach) będą zaskakujące, ale komputer się nie męczy - stawiajmy
więc hipotezy...

Być może ciekawszym od dywanu będzie znany (prawie wszystkim) liść.

.. sagecellserver::

  c=10001 #liczba powtórzeń
  a=0 #pierwsza współrzędna punktu startowego
  b=0 #druga współrzędna punktu startowego
  p=7 #szerokość obrazu
  q=10 #wysokość obrazu
  r=point((a,b),size=1, axes=false, frame=false) #zmieniając 'false' na 'true' możemy uzyskać osie i ramkę
  for m in range (0,c):
    n=random()
    if n<0.01: #a co to takiego?!
        o=0.0*a + 0.0*b + 0.0
        b=0.0*a + 0.16*b + 0.0
        a=o
        r=r+point((a,b), axes=false, frame=false, color='green', size=1) 
    elif n<0.08: #dlaczego elif?
        o=0.2*a - 0.26*b + 0.0
        b=0.23*a + 0.22*b + 1.6
        a=o
        r=r+point((a,b), axes=false, frame=false,color='red', size=1) 
    elif n<0.15:
        o=-0.15*a + 0.28*b + 0.0
        b=0.26*a + 0.24*b + 0.44
        a=o
        r=r+point((a,b), axes=false, frame=false,color='blue',size=1) 
    elif n<1:
        o=0.85*a + 0.04*b + 0.0
        b=-0.04*a + 0.85*b + 1.6
        a=o
        r=r+point((a,b), axes=false, frame=false,color='purple', size=1) 
  show(r, figsize=(p,q))
  
.. only:: latex
          
    .. figure:: refutacje_media/11.png
       :width: 40%

Przypuszczalnie dywan i liść **pociągną** nas do dalszego
eksperymentu, w którym spróbujemy zapisać współczynniki w tabelach
(poprzednie sposoby zapisu zachęcają do takiego rozwiązania).

.. sagecellserver::

  a1=[0.05,0,-0.06,0,0.4,-0.47]
  a2=[-0.05,0,-0.06,0,-0.4,-0.47]
  a3=[0.03,-0.14,-0.16,0,0.26,-0.01]
  a4=[-0.03,0.14,-0.16,0,-0.26,-0.01]
  a5=[0.56,0.44,0.3,-0.37,0.51,0.15]
  a6=[0.19,0.07,-0.2,-0.1,0.15,0.28]
  a7=[-0.33,-0.34,-0.54,-0.33,0.34,0.39]
  c=1
  d=1
  t=10001
  r=point((c,d),axes=False, frame=False,size=0.1,)
  for u in range(1,t):
    n=randint(1,7)
    if n==1:
        i=(a1[0]*c)+(a1[1]*d)+a1[2]
        o=(a1[3]*c)+(a1[4]*d)+a1[5]
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='red')
    if n==2:
        i=(a2[0]*c)+(a2[1]*d)+a2[2]
        o=(a2[3]*c)+(a2[4]*d)+a2[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='green')
    if n==3:
        i=(a3[0]*c)+(a3[1]*d)+a3[2]
        o=(a3[3]*c)+(a3[4]*d)+a3[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='blue')
    if n==4:
        i=(a4[0]*c)+(a4[1]*d)+a4[2]
        o=(a4[3]*c)+(a4[4]*d)+a4[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='orange')
    if n==5:
        i=(a5[0]*c)+(a5[1]*d)+a5[2]
        o=(a5[3]*c)+(a5[4]*d)+a5[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='black')
    if n==6:
        i=(a6[0]*c)+(a6[1]*d)+a6[2]
        o=(a6[3]*c)+(a6[4]*d)+a6[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='purple')
    if n==7:
        i=(a7[0]*c)+(a7[1]*d)+a7[2]
        o=(a7[3]*c)+(a7[4]*d)+a7[5]        
        c=i
        d=o
        r=r+point((c,d),axes=False, frame=False,size=1,color='brown')
  r
  
.. only:: latex
          
    .. figure:: refutacje_media/12.png
       :width: 50%

A można by jakoś te nużące zapisy skrócić? Może np. tak:

.. sagecellserver::

    A = [[0.05,0,-0.06,0,0.4,-0.47],
     [-0.05,0,-0.06,0,-0.4,-0.47],
     [0.03,-0.14,-0.16,0,0.26,-0.01],
     [-0.03,0.14,-0.16,0,-0.26,-0.01],
     [0.56,0.44,0.3,-0.37,0.51,0.15],
     [0.19,0.07,-0.2,-0.1,0.15,0.28],
     [-0.33,-0.34,-0.54,-0.33,0.34,0.39]]
    c = 1
    d = 1
    t = 100001
    pkt_lst = []
    for u in range(1,t):
      n = randint(0,6)
      a = A[n]
      i = (a[0]*c)+(a[1]*d)+a[2]
      o = (a[3]*c)+(a[4]*d)+a[5]
      c = i
      d = o
      pkt_lst.append( (c,d) )

    point(pkt_lst,axes=False, frame=False,size=1,color='red')

Eksperymentujmy!

Dodatek
^^^^^^^

Wróćmy do dywanu Sierpińskiego. Czy jest to raczej rodzaj linii lub
też coś w rodzaju połączonych kwadratów? Czy nieustanne (w naszej
głowie) powtarzanie iteracji zbliża nas do bardziej normalnych
kwadratów? Co oznacza "bardziej"?

Popatrzmy na niebieską linię poniżej - chciejmy ją zmierzyć zieloną linijką.

.. sagecellserver::

  plot(x * sin(x), (x, -2, 10), axes=false)+line([(4.1,4.1*sin(4.1)), (5.1,5.1*sin(5.1))], color='darkgreen', thickness=2)
  
.. only:: latex
          
    .. figure:: refutacje_media/13.png
       :width: 50%

Oszacujmy długość niebieskiej linii.  Niech :math:`M(\epsilon)`
oznacza długość mierzonej krzywej linijką długości :math:`\epsilon`
oraz :math:`L(\epsilon)` przyłożeń tejże linijki. Zauważmy, że im
mniejsze :math:`\epsilon` tym szacowanie dokładniejsze. Zauważmy, że
:math:`M(\epsilon)\approx\epsilon\cdot L(\epsilon)` i

.. math::
  L(\epsilon)\sim\frac{1}{\epsilon} 
  
(krótsza linijka oznacza większą liczbę jej przyłożeń).
Jeśli powtórzymy nasze rozumowanie, rozważając pole zamiast długości, to "linijka" będzie kwadratem o boku długości :math:`\epsilon` i 

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^2}.

A co z objętością? Być może "linijka" będzie sześcianem i

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^3}.

Zatem

.. math::

  L(\epsilon)\sim\frac{1}{\epsilon^d}
    
i :math:`d=1` (jeśli próbujemy oszacować długość), :math:`d=2` (jeśli próbujemy oszacować pole), :math:`d=3` (jeśli próbujemy oszacować objętość).

Spróbujmy dobrać się do :math:`d`.

.. math::

  L(\epsilon)\approx\left(\frac{1}{\epsilon}\right)^d,

.. math::

  \log L(\epsilon)\approx \log\left(\frac{1}{\epsilon}\right)^d=d\log\left(\frac{1}{\epsilon}\right),

i

.. math::

  d\approx\frac{\log{L(\epsilon)}}{\log\frac{1}{\epsilon}},

może zapiszmy to tak:

.. math::

  d=\lim_{\epsilon\to 0}\frac{\log{L(\epsilon)}}{\log\frac{1}{\epsilon}}?

(czy jest jakiś błąd w zamiennym użyciu znaków: :math:`\sim, \approx,=`?).

Wygląda to dość dramatycznie - zobaczmy jak zadziała w przypadku dywanu Sierpińskiego.
Figurę tą możemy (**na pewno**?!) pokryć 1 kwadratem o boku długości 1, 8 kwadratami o boku dłogości :math:`\frac{1}{3}`, 64 kwadratami o boku długości :math:`\frac{1}{9}`,..., :math:`8^n` kwadratami o boku długości :math:`\left(\frac{1}{3}\right)^n` i

.. math::

  d=\lim_{n\to\infty}\frac{\log8^n}{\log3^n}=\frac{\log8}{\log3}\approx1.893.

Dywan Sierpińskiego jest czymś między linią a powierzchnią: być może - przy okazji - zbliżyliśmy się trochę do pojęcia wymiaru... Rozwinięcie powyższej  idei można znaleźć w scenariuszu :ref:`wymiar`.



Podsumowanie
^^^^^^^^^^^^


W powyższym tekście trzy wyrażenia zapisaliśmy czcionką pogrubioną -
chcielibyśmy do nich powrócić.

**Regularność**

Działania wspomagane Sage'em mogą uczniom pomóc w badaniu rekurencji
(pewnej regularności powtarzanej wielokrotnie, dzięki komputerom
bardzo wiele razy).

**Pociągną**

Warto naszym zdaniem pociągnąć (angielskie "to attract") uczniów do
koncepcji atraktora: fraktale to często atraktory - komputer może
przecież pomóc w małych matematycznych odkryciach.

**Na pewno**

Należy podkreślić, że powyższe rozważania dotyczące wymiaru są tylko
zasygnalizowaniem problemu - ale mogą budować uczniowską intuicję
(która nie powinna być natychmiast zafrapowana problemem istnienia
:math:`\lim_{\epsilon\to0}\dots`).

A przy okazji - na samym końcu - warto postawić pytanie: gdzie jest
granica między intuicyjną zabawą ucznia a poważnym rozumowaniem
matematycznym?

  
