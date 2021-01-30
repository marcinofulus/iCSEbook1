Zadziwiające przybliżenie
=========================


O scenariuszu
^^^^^^^^^^^^^

Prezentowany scenariusz jest wynikiem zajęć (zainspirowanych podręcznikiem "Matematyka się liczy" pod redakcją prof. Wacława Zawadowskiego) prowadzonych w III Liceum Ogólnokształcącym im. Stefana Batorego w Chorzowie. Przeznaczony jest do realizacji na dwóch godzinach lekcyjnych (po jednej na każdą z części).

Struktura materiału jest swego rodzaju rozmową z uczestnikiem zajęć: dopuszczamy więc podejście - także językowe - typu nieformalnego. Użyjemy komputera do zilustrowania **prostego** problemu, używając **podstawowego** programowania.

- Dlaczego podstawowego?

Nie znamy się bowiem na Sage'u zbyt dobrze.

- Dlaczego prostego?

Chcemy bowiem **zafrapować** zagadnieniem matematycznym uważanym za
nudne. Większość uczniów nie lubi rachunków - my spróbujemy więc użyć
komputera do powtórzeń żmudnych obliczeń. Być może doprowadzą nas one
do zasygnalizowania pewnych nieporozumień w używaniu liczb.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.

Lekcje prowadził Krzysztof Oleś.

Wstęp
^^^^^

Matematyka, coraz częściej uznawana za jedną z podstaw kształcenia, jest przedmiotem diagnozy związanej
z osiągnięciami wychowanków wszystkich poziomów nauczania. Przeprowadzane także i w Polsce badania
w ramach Programu Międzynarodowej Oceny Umiejętności Uczniów OECD PISA sugerują, że nierzadko polscy słabsi uczniowie radzą sobie z zadaniami lepiej niż słabsi uczniowie krajów OECD; lepsi uczniowie polscy jednak rozwiązują zadania gorzej niż lepsi uczniowie OECD. Tego typu sytuacja dotyczy najczęściej zadań o średnim poziomie trudności. Konieczną potrzebą jest więc budowanie i pogłębianie aparatu matematycznego, tak by nabywane umiejętności mogły być solidnym fundamentem rozwiązywania problemów matematycznych – przede wszystkim tych, które rozszerzają przewidziane w podstawie programowej treści nauczania. Komputer może naszym zdaniem w pozytywny sposób wpływać na analizowanie pojęć i struktur wprowadzanych na lekcjach klasycznych - prowadzonych (niestety?) jedynie za pomocą przysłowiowych: kredy i tablicy...


Scenariusz zajęć
^^^^^^^^^^^^^^^^

Część pierwsza
""""""""""""""



Rozpocznijmy przybliżaniem pierwiastka kwadratowego liczby 2. Wykorzystamy  algorytm (oparty na metodzie Newtona znajdowania miejsc zerowych funkcji) znany pod hasłem: metoda babilońska.


.. sagecellserver::

    rot=2
    for n in range(1,6):    #zmień przedział
           rot=0.5*(rot+2/rot)
           print(rot)
           print("error =",abs(N(sqrt(2)-rot)))

.. only:: latex
          
    .. figure:: refutacje_media/21.png
       :width: 30%

Czy wiemy

- co znaczy zapis 2.12390141451912e\-6?
- jak zmieni się błąd przy zmianie n?

Zabaczmy jak szybki jest podany algorytm.


.. sagecellserver::

    rot=2
    graph=point((0,sqrt(2)))
    for n in range(1,21):    #czy przedział (1,51) zmieni cokolwiek?
           rot=0.5*(rot+2/rot)
           graph=graph+point((n,rot))
    plot(graph)


.. only:: latex
          
    .. figure:: refutacje_media/22.png
       :width: 65%

Zaraz, zaraz... Co mamy na myśli, używając słowa "szybki"?

Zróbmy pewnego rodzaju porównanie. Jedną z najbardziej popularnych liczb jest  :math:`\pi`, użyjemy zatem algorytmu ją przybliżającego. Oprzemy się na wzorze  podanym przez Wallisa w roku 1655:

.. MATH::

    \frac{\pi}{2}=\prod_{n=1}^\infty\left(\frac{2n}{2n-1}\cdot\frac{2n}{2n+1}\right).

Wydaje się to dosyć skomplikowane - prawdopodobnie z powodu użycia dużego  :math:`\pi`. A może poniższy zapis

.. MATH::

    \frac{\pi}{2}=\frac{2}{1}\cdot\frac{2}{3}\cdot\frac{4}{3}\cdot\frac{4}{5}\cdot\frac{6}{5}\cdot\frac{6}{7}\cdot\frac{8}{7}\cdot\frac{8}{9}\cdot\cdots

jest prostszy?

Po prostu: duże  :math:`\pi` oznacza iloczyn nieskończony (coś w rodzaju wielu, wielu mnożeń...).

Jak to działa?

Męczące (można to sprawdzić na kartce papieru...) obliczenia przeprowadzi komputer.


.. sagecellserver::

    w=1
    for i in range(1,6):
           w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
           print(2*w     #wolimy ułamki zwykłe czy dziesiętne?)
           print("error =",abs(N(pi-2*w)))
 
.. only:: latex
          
    .. figure:: refutacje_media/23.png
       :width: 30% 
 
Czy wiemy

- co znaczy abs()?
- co znaczy N()?
- jak zmieni się błąd przy zmianie n?
- ilu powtórzeń musimy użyć, by osiągnąć 3,14?

Zabaczmy jak szybki jest podany algorytm.


.. sagecellserver::

    w=1
    graph=point((0,pi))
    for i in range(1,21):
           w=w*((2*i)/(2*i-1))*((2*i)/(2*i+1))
           graph=graph+point((i,2*w))
    plot(graph)


.. only:: latex
          
    .. figure:: refutacje_media/24.png
       :width: 65%

Możemy teraz porównać szybkość pierwszego i drugiego algorytmu oraz zadać niewygodne pytania:

- Czy kiedykolwiek zastanawialiśmy się nad tym, jak nasz kalkulator przybliża liczby?
- Może kalkulator kolegi robi to lepiej? Co znaczy "lepiej"?
- Obliczaliśmy błędy - Sage musiał pierwiastek kwadratowy liczby 2 oraz :math:`\pi` przybliżyć (nie są to liczby wymierne): czy Sage popełnił błąd? Jak duży?


Część druga
""""""""""""


No dobrze, ale kto jest zainteresowany różnicami w przybliżeniach np. na piętnastym miejscu po przecinku?

Zajmijmy się zatem pewnym problemem geometrycznym.

Rozważmy walec wpisany w sześcian (podstawy walca są wpisane w równoległe ściany sześcianu). W rogu tegoż sześcianu umieszczamy stycznie do walca kulkę o maksymalnej objętości. Jaka jest ta objętość?


.. sagecellserver::

    var('x,y,z')
    r=(sqrt(2)-1)/(2*sqrt(2)+2)     #a skąd to?
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    graph=a+b+c
    graph


.. only:: latex
          
    .. figure:: refutacje_media/25.png
       :width: 60%

Jak widzimy długość krawędzi sześcianu wynosi 1

.. MATH::

    x, y, z \in (-0,5;0,5),


a walec związany jest z okręgiem o równaniu

.. MATH::

    x^2+y^2=0,25.


Ale skąd wzięto

.. MATH::

    r=\frac{\sqrt{2}-1}{2\sqrt{2}+2}?


Niech :math:`r` oznacza promień szukanej kulki. Z prostego związku pomiędzy przekątną kwadratu oraz promieniami odpowiednich okregów otrzymujemy:

.. MATH::

    \frac{1}{2}\sqrt{2}=r\sqrt{2}+r+\frac{1}{2}


.. MATH::

    \frac{1}{2}\sqrt{2}-\frac{1}{2}=r\left(1+\sqrt{2}\right)


.. MATH::

    r=\frac{\frac{1}{2}\sqrt{2}-\frac{1}{2}}{1+\sqrt{2}}=\frac{\sqrt{2}-1}{2\sqrt{2}+2}


a szukana objętość jest równa

.. MATH::

    \frac{4}{3}\pi r^3=\frac{4}{3}\pi \left(\frac{1}{2}\right)^3\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\frac{\pi}{6}\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3.


Wszyscy słyszeliśmy o przekształcaniu wyrażeń zawierających liczby niewymierne, zabierzmy się więc do żmudnej roboty...

.. MATH::

    \left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\right)^3=\left(\frac{\sqrt{2}-1}{\sqrt{2}+1}\cdot\frac{\sqrt{2}-1}{\sqrt{2}-1}\right)^3=\left(\sqrt{2}-1\right)^6,


ale

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^2\right)^3=\left(3-2\sqrt{2}\right)^3,


.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(\left(\sqrt{2}-1\right)^3\right)^2=\left(5\sqrt{2}-7\right)^2,


i ostatecznie

.. MATH::

    \left(\sqrt{2}-1\right)^6=\left(5\sqrt{2}-7\right)^2=99-70\sqrt{2}.


Niech

.. MATH::

    w_1=99-70\sqrt{2},\quad w_2=\left(5\sqrt{2}-7\right)^2,\quad w_3=\left(3-2\sqrt{2}\right)^3,
    
.. MATH::

     w_4=\left(\sqrt{2}-1\right)^6,\quad w_5=\left(\frac{\sqrt{2}-1} {\sqrt{2}+1}\right)^3.


Oczywiście  :math:`w_1=w_2=w_3=w_4=w_5`, ale: czy jest jakaś różnica między  :math:`w_1,\dots,w_5` jeśli do pierwiastka kwadratowego liczby 2 będziemy się zbliżać? Zobaczmy...


.. sagecellserver::

    p=1.44     #zmień p
    print('apr=',p)
    print('w_1=',N(99-70*p))
    print('w_2=',N((5*p-7)^2))
    print('w_3=',N((3-2*p)^3))
    print'w_4=',N((p-1)^6)
    print('w_5=',N(((p-1)/(p+1))^3))
    
    
.. only:: latex
          
    .. figure:: refutacje_media/26.png
       :width: 30%


Okazuje się, że różnice pomiędzy przybliżeniami są duże, jeśli za pierwiastek kwadratowy liczby 2 przyjmiemy 1,41 (wielu ludzi przyjmuje takie przybliżenie do części setnych). A co z: 1,414; 1,4142; 1,41421; 1,414213 i tak dalej?

Różnice wciąż są duże, co możemy zobaczyć także na wykresach zwązanych z   :math:`w_1,\dots,w_5` funkcji.


.. sagecellserver::

  @interact
  def _(xlimits=range_slider(0.5, 2.5, 0.1, default=(0.5, 2.5), label="horizontal range"),
      ylimits=range_slider(-10, 10, 0.1, default=(-10, 10), label="vertical range")):
      plt = plot(99-70*x, xlimits, color="red")
      plt = plt+plot((5*x-7)^2, xlimits, color="blue")
      plt = plt+plot((3-2*x)^3, xlimits, color="green")
      plt = plt+plot((x-1)^6, xlimits, color="orange")
      plt = plt+plot(((x-1)/(x+1))^3, xlimits, color="purple")
      show(plt, xmin=xlimits[0], xmax=xlimits[1], ymin=ylimits[0], ymax=ylimits[1], figsize=(4, 3))


.. only:: latex
          
    .. figure:: refutacje_media/27.png
       :width: 45%

Wróćmy zatem do rysunku zawierającego poszukiwaną kulkę.

.. sagecellserver::

    var('x,y,z')
    p=1.41     #zmień p
    r1=N(0.5*((99-70*p)^(1/3)))     #skąd "^(1/3)"?
    r2=N(0.5*(((5*p-7)^2)^(1/3)))
    r3=N(0.5*((3-2*p)^3)^(1/3))
    r4=N(0.5*((p-1)^6)^(1/3))
    r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    r=r5     #zmień r
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r,-0.5+r,-0.5+r), opacity=0.9, color = "green", size=r)
    graph=b+a+c
    graph
    
Powinniśmy zmieniać

- :math:`p`: 1.414, 1.4142, 1.41421, 1.414213;  nie zapomnijmy o sqrt(2),
- :math:`r`:  :math:`r_1,\dots,r_5`.

Zabaczmy pięć kulek jednocześnie.


.. sagecellserver::

    var('x,y,z')
    p=1.41     #dlaczego mamy problem z p=1.44?
    r1=N(0.5*((99-70*p)^(1/3)))
    r2=N(0.5*(((5*p-7)^2)^(1/3)))
    r3=N(0.5*((3-2*p)^3)^(1/3))
    r4=N(0.5*((p-1)^6)^(1/3))
    r5=N(0.5*(((p-1)/(p+1))^3)^(1/3))
    a=implicit_plot3d(x^2+y^2-0.25,(x,-0.5,0.5),(y,-0.5,0.5),
    (z,-0.5,0.5), color = "green", opacity = 0.4)
    b=cube(center=(0, 0, 0), opacity=0.1, color = "green")
    c=sphere(center=(-0.5+r1,-0.5+r1,-0.5+r1), opacity=0.2, color = "grey", size=r1)
    d=sphere(center=(-0.5+r2,-0.5+r2,-0.5+r2), opacity=0.2, color = "yellow", size=r2)
    e=sphere(center=(-0.5+r3,-0.5+r3,-0.5+r3), opacity=0.2, color = "red", size=r3)
    f=sphere(center=(-0.5+r4,-0.5+r4,-0.5+r4), opacity=0.2, color = "blue", size=r4)
    g=sphere(center=(-0.5+r5,-0.5+r5,-0.5+r5), opacity=0.2, color = "orange", size=r5)
    graph=a+b+c+d+e+f+g
    graph

.. only:: latex
          
    .. figure:: refutacje_media/28.png
       :width: 60%

Czy to nie dziwne?

Zakończmy nasze rachunki rozważeniem poszukiwanej objętości - ponieważ mamy  dość przyglądania się dalekim miejscom po przecinku, przyjmijmy, że długość krawędzi sześcianu wynosi 60.


.. sagecellserver::

    p=1.41     #zmień p
    print('apr=',p)
    w_1=N(99-70*p)
    w_2=N((5*p-7)^2)
    w_3=N((3-2*p)^3)
    w_4=N((p-1)^6)
    w_5=N(((p-1)/(p+1))^3)
    print('volume 1=',N(pi)*36000*w_1)    #skąd 36000?
    print('volume 2=',N(pi)*36000*w_2)
    print('volume 3=',N(pi)*36000*w_3)
    print('volume 4=',N(pi)*36000*w_4)
    print('volume 5=',N(pi)*36000*w_5)
    
    
.. only:: latex
          
    .. figure:: refutacje_media/29.png
       :width: 30%

I znowu - powinniśmy zmieniać  :math:`p`: 1,414; 1,4142; 1,41421; 1,414213;  nie zapomnijmy o sqrt(2).

I po raz kolejny: czy to nie dziwne? Może nie (?!), ale powyższy przykład pokazuje, jak bardzo należy uważać, wykorzystując w rachunkach przybliżenia.

Podsumowanie
^^^^^^^^^^^^

Chcieliśmy pokazać, jak ważna jest różnica w użyciu wyrażenia algebraicznego w rodzaju

.. MATH::

    \frac{\sqrt{2}-1}{2\sqrt{2}+2}



a jego przybliżeń. Dlaczego?


Po pierwsze: ponieważ używamy liczb, które nie są wymierne, a oznacza
to konieczność ich przybliżania. Próbowaliśmy pokazać dwa różne -
jeśli chodzi o liczbę koniecznych do odpowiedniego przybliżenia
powtórzeń - algorytmy. Zasugerowaliśmy znalezienie niemałej liczby
koniecznych powtórzeń, by uzyskać przybliżenia liczby :math:`\pi`
przysłowiowym 3,14. Ponieważ jednak dziesiętne przybliżenia mogą nie
wydawać się interesujące - zdecydowaliśmy się zobaczyć (!) ich wagę w
problemie geometrycznym, w którym szczególną rolę odegrały
przybliżenia pierwiastka kwadratowego liczby 2.

Po drugie: ponieważ w szkołach polskich mamy do czynienia z przewagą
rozwiązań (np. równań) w postaci algebraicznej. Oznacza to, że
maturalne rozwiązanie równania


.. MATH::

    7x^2+27x-31=0


powinno mieć postać

.. MATH::

    x_1=\frac{-27-\sqrt{1597}}{14},\quad x_2=\frac{-27+\sqrt{1597}}{14}.


Wydaje się, że warto czasem zwrócić uwagę na mentalną przepaść pomiędzy powyższymi "obrazkami" a poniższymi "liczbami"

.. MATH::

    x_1\approx -4,78303;\quad  x_2\approx 0,92589.


Być może nasze rozważania dotyczą jedynie (?) różnic między znakami

.. MATH::

    {\Large{=}}\qquad\textrm{ oraz }\qquad{\Large{\approx}}

