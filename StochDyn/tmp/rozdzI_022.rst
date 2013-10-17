Dynamiczne układy zachowawcze i dysypatywne

 

Układy zachowawcze 

Niektóre układy równań różniczkowych mają specyficzną strukturę i ukryte własności. Przykłady z fizyki mają taką specyficzną strukturę. Rozpatrzmy równanie Newtona dla cząstki o jednym stopniu swobody w postaci:

.. MATH::
    :label: eqn1

    m\ddot x = F(x) = -\frac{dV(x)}{dx} = - V'(x)


gdzie siła :math:`F(x)` jest potencjalna, tzn.  istnieje taka funkcja :math:`V(x)`, że :math:`F(x) = -V'(x)`.  Oznaczenie :math:`V'(x)` jest pochodną funkcji :math:`V(x)` względem zmiennej :math:`x`. Funkcja  :math:`V(x)` nazywa się energią potencjalną, ale my będziemy pisali krótko - potencjał. Jeżeli znamy siłę :math:`F(x)` to potencjał można znależć obliczając całkę: 

.. MATH::
    :label: eqn2

    V(x) = - \int_a^{\,x}  F(y) dy


gdzie :math:`a` jest dowolną liczbą wybieraną tak jak nam wygodnie. Np. możemy wybrać tak, aby w pewnym punkcie potencjał był zerowy lub nieskończony.

Równanie Newtona jest równaniem 2-go rzędu, autonomicznym.   Zapiszemy je w postaci

.. MATH::
    :label: eqn3

    \dot x = v, \quad \quad x(0)=x_0$$ $$m\dot v = F(x) = -V'(x),  \quad \quad v(0)=v_0


Z tego wynika, że przestrzeń fazowa układu jest 2-wymiarowa :math:`\{x, v\}`. W tej przestrzeni fazowej może analizować krzywe fazowe. Można zauważyć, że położenie :math:`x(t)` oraz prędkość :math:`v(t)` icząstki zmieniają się w czasie zgodnie z równaniem Newtona, to istnieje pewna funkcja (kombinacja) tych 2 funkcji :math:`x(t)` oraz :math:`v(t)`, która nie zmienia się w czasie:

.. MATH::
    :label: eqn4

    E[x(t), v(t)] = \frac{1}{2} m v^2(t) + V(x(t)) = \frac{1}{2} m v^2(0) + V(x(0)) = E[x(0), v(0)]


Wielkość :math:`E` nazywa się  w fizyce całkowitą energią układu i składa się z 2 części: energii kinetycznej cząstki :math:`E_k=mv^2/2` oraz energii potencjalnej  cząstki :math:`E_p = V(x)`. Jeżeli :math:`E` nie zmienia się w czasie, to znaczy że jest to funkcja stała ze względu na czas i pochodna wzgledem czasu powinna być zero. Sprawdźmy to:

.. MATH::
    :label: eqn5

    \frac{dE}{dt} = \frac{d}{dt}  E[x(t), v(t)] = \frac{\partial E}{\partial x}  \frac{dx}{dt} + \frac{\partial E}{\partial v}  \frac{dv}{dt} =  V'(x)  \dot x +  mv \dot v = -F(x) v + v F(x)


gdzie skorzystaliśmy ze związku pomiędzy siłą i energią potencjalną oraz z równania Newtona.

Ponieważ :math:`E` nie zmienia się w czasie, to mówimy że jest to stała ruchu lub całka ruchu, lub całka pierwsza układu (ostatnie nazwy wydają  się być dziwaczne, bo w wyrażeniu dla :math:`E` nie widać żadnej całki).  Istnienie stałych czy też całek ruchu ułatwia analizę układów. Pokażemy to na przykładzie oscylatora harmonicznego  dla którego postać siły jest dobrze znana:

.. MATH::
    :label: eqn6

    F(x) = - k x = - m\omega^2 x, \qquad V(x) = \frac{1}{2} k  x^2  = \frac{1}{2} m\omega^2 x^2, \quad \quad \omega^2 = \frac{k}{m}


Prawo zachowania energii mówi, że

.. MATH::
    :label: eqn7

    E = \frac{1}{2} m v^2(t) + \frac{1}{2} k x^2(t) = const. = \frac{1}{2} m v^2(0) + \frac{1}{2} k x^2(0)


Ponieważ ta wielkość jest niezmienna w czasie, to określa równanie krzywej fazowej na płaszczyźnie :math:`XY`. Łatwo zauważyć, że powyższe równanie w zmiennych :math:`\{x, y=v\}` ma postać

.. MATH::
    :label: eqn8

     m y^2 +  k x^2 =  2E 


Jest to równanie elipsy:

.. MATH::
    :label: eqn9

    \frac{x^2}{(2E/k)} + \frac{y^2}{(2E/m)} = 1


o osiach :math:`a=2E/k` oraz :math:`b=2E/m`. Narysujmy sobie takę elipsę dla, powiedzmy, :math:`E = 2, k = 0.2` oraz :math:`m=1`. Wiadomo, że każdy wie jak taka elipsa będzie wyglądać, ale zrobimy to bardziej po to, żeby wyrobić sobie naturalną umiejętność używania programów typu Sage do wizualizacji i interpretacji wyników.

.. sagecellserver::
    :is_verbatim: True


.. end of input

Elipsa jest krzywą zamkniętą, więc ruch jest periodyczny. Można sobie wyobrażać, że ruch cząstki w potencjale :math:`V(x)` jest  podobny do  ruchu cząstki we wnętrzu połówki sfery (w czasze). Nie jest to prawdą, ale takie wyobrażenie wyrabia w nas intuicję o własnościach ruchu. Poniżej przedstawiamy krok po kroku co zrobić, aby narysować krzywe fazowe układu.

Rysujemy wykres przedstawiający potencjal :math:`V(x)`
Poniżej tego wykresu, z osią pionową ustawioną jak w wykresie dla potencjału, rysujemy 2 symetryczne krzywe zadane przez prawo zachowania energii:math:``\frac{1}{2}m v^2 + V(x) = E \qquad \mbox{czyli stąd wynika że } \qquad v = \pm \sqrt{\frac{2}{m}[(E-V(x)]}:math:`` Te dwie krzywe :math:`v=v(x, E)` są krzywymi fazowymi.
Cząstka porusza się w prawo gdy prędkość jest dodatnia :math:`v>0` (zielona krzywa) i w lewo gdy prędkość jest ujemna :math:`v<0` (czerwona krzywa). Prędkość jest zero wówczas, gdy :math:``V(x) = E:math:``
Wynika to z prawa zachowania energii (podstaw tam :math:`v=0`). Równanie :math:`V(x) = E` wyznacza punkty zwrotu :math:`x_i` : cząstka w tych punktach ma zerową prędkość i zmienia kierunek ruch (zawraca). 

Spróbujemy, krok po kroku zanalizować równanie Newtona aby uzyskać krzywe fazowe.

.. MATH::
    :label: eqn10

    m \ddot{x} = F


Jeżeli siła bedzie liniowa :math:`F=-kx` to dostaniemy wyżej opisane zagadnienie oscylatora harmonicznego. Na początku musimy zadeklarować nazwy zmiennych oraz parametrów użytych w modelu. Pamiętaj - każdorazowo, jeżeli chcesz obliczac coś symbolicznie, trzeba taką linijkę napisać i ją wykonać. W kolejnych linijkach ustalimy parametry układu, zdefiniujemy siły z jakimi mamy do czynienia i obliczymy potencjał (całka z siły brana ze znakiem minus). W następnym kroku, z prawa zachowania energii, obliczymy teraz jak prędkość zależy od położenia (owe krzywe fazowe). 

.. sagecellserver::
    :is_verbatim: True


.. end of input

Układy potencjalne

Układ o 1 stopniu swobody jest  potencjalny (tzn. istnieje potencjał :math:`V(x)`  pod warunkiem, że siła zależy tylko od położenia cząstki, tzn. :math:`F=F(x)`. Jeżeli siła zależy także od prędkości cząstki, tzn gdy :math:`F=F(x, v)`, nie istnieje potencjał :math:`V` taki aby :math:`F = -V' = - dV/dx`. Dla układów o wielu stopniach swobody, opisywanych układem równań Newtona

.. MATH::
    :label: eqn11

    m_i \frac{d^2\vec r_i}{dt^2} = \vec F_i(\vec r_1,  \vec r_2, \vec r_3, ..., \vec r_N)


dla :math:`N` cząstek, układ jest potencjalny, gdy istnieje taka funkcja skalarna :math:`V(\vec r_1,  \vec r_2, \vec r_3, ..., \vec r_N)`, że siła działająca na :math:`i`-tą cząstkę jest gradientem potencjału ze znakiem minus. Prościej jest to wyjaśnić na przykładzie 1 cząstki poruszającej się w przestrzeni 3-wymiarowej:

.. MATH::
    :label: eqn12

    m\frac{d^2x}{dt^2} = F_1(x, y, z) = - \frac{\partial}{\partial x} V(x, y, z) $$ $$m\frac{d^2y}{dt^2}   = F_2(x, y, z) = - \frac{\partial}{\partial y} V(x, y, z)  $$ $$m\frac{d^2z}{dt^2} = F_3(x, y, z) = - \frac{\partial}{\partial x} V(x, y, z) 


W ogólnym przypadku, gdy mamy zadane 3 składowe siły :math:`F_1,  F_2` oraz :math:`F_3`, nie musi istniej tylko jedna funkcja :math:`V` taka aby powyższe równania były spełnione. Nasuwa się pytanie, czy istnieje proste kryterium mówiące, że układ jest potencjalny. Jeżeli

.. MATH::
    :label: eqn13

    \vec F = - grad \; V \qquad \mbox{to} \qquad rot\; \vec F = - rot \;grad \;V  =  - \vec \nabla \times \vec \nabla V \equiv 0 


gdzie operator :math:`\vec\nabla` jest operatorem różniczkowania

.. MATH::
    :label: eqn14

    \vec\nabla = \hat e_x \frac{\partial}{\partial x} + \hat e_y \frac{\partial}{\partial y} + \hat e_y \frac{\partial}{\partial y}


Wystarczy zatem sprawdzić, czy rotacja pola sił  :math:`\vec F`  jest 0.

 

ZADANIE: Sprawdzić, czy  siły :math:`\vec F(x, y, z)` o składowych

.. MATH::
    :label: eqn15

     1.  \quad \quad F_1(x, y,z) = \frac{y}{x^2 + y^2 + z^2},  \quad F_2(x, y,z) = - \frac{x}{x^2 + y^2 + z^2},  \quad F_3(x, y,z) = \frac{z}{x^2 + y^2 + z^2}


.. MATH::
    :label: eqn16

     2.  \quad \quad F_1(x, y,z) = \frac{x-z}{x^2 + y^2 },  \quad F_2(x, y,z) = x e^{-y^2},  \quad F_3(x, y,z) = z+5


.. MATH::
    :label: eqn17

    3. \quad \quad F_1(x, y,z) = 25 x^4 y - 3y^2,  \quad F_2(x, y,z) = 5x^5 -6xy -5,  \quad F_3(x, y,z) =0


są potencjalne

 

Jeżeli układ jest potencjalny to łatwo sprawdzić, podobnie jak wyżej w przypadku układu o 1-stopniu swobody,  że istnieje stała ruchu - całkowita energia układu:

.. MATH::
    :label: eqn18

    E = \sum_i \frac{m\vec v^2}{2} + V(\vec r_1,  \vec r_2, \vec r_3, ..., \vec r_N)  = constant, \qquad \frac{dE}{dt} = 0


Dlatego  takie pole sił nazywa się zachowawczym polem sił.  Wszystkie siły związane z potencjalnym polem sił są siłami zachowawczymi. Istnieją jednak siły, które nie są siłami potencjalnymi, mimo to pozostają siłami zachowawczymi. Przykładem może być siła Lorentza działająca na naładowaną cząstkę poruszającą się w polu magnetycznym. Nie należy tego mylić z zachowawczymi układami dynamicznymi. Tę kwestię postaramy się teraz wyjaśnić.

Dynamiczne układy zachowawcze i dysypatywne

W teorii układów dynamicznych ważną rolę pełnią dwa pojęcia: zachowawcze układy dynamiczne i dysypatywne układy dynamiczne.  Znowu dla jasności wywodu rozpatrzymy przykład układu o 3-wymiarowej przestrzeni fazowej:

.. MATH::
    :label: eqn19

    \dot x = F_1(x, y, z), \quad x(0) = x_0 $$ $$\dot y = F_2(x, y, z),  \quad x(0) = x_0 $$ $$\dot z = F_3(x, y, z),  \quad x(0) = x_0 


Wybieramy w przestrzeni fazowej obszar :math:`D(0)`  o objętości :math:`M(0)`. Zawiera on wszystkie możliwe warunki początkowe

.. MATH::
    :label: eqn20

    \{x_0, y_0, z_0\} \in D(0)


Pod wpływem ewolucji każdy punkt :math:`(x_0, y_0, z_0)`  z tego obszaru przejdzie po czasie :math:`t` do punktu :math:`(x(t),  y(t), z(t))`.  Zbiór tych punktów w chwili :math:`t` tworzy obszar  :math:`D(t)`  o objętości :math:`M(t)`. Zachodzi pytanie:

.. MATH::
    :label: eqn21

     \mbox{w jakich przypadkach} \quad M(t) = M(0)


Innymi słowy, kiedy układ dynamiczny zachowuje objętość fazową. Zbadamy ten problem. Wprowadzimy nowe oznaczenia, aby ułatwić notację:

.. MATH::
    :label: eqn22

    x_t = x(t), \quad \quad y_t = y(t), \quad \quad z(t) = z_t


Objętość fazowa warunków początkowych w chwili :math:`t=0` wynosi

.. MATH::
    :label: eqn23

    M(0) = \int \int \int_{D(0)}  dx_0 dy_0 dz_0 


Objętość fazowa w chwili :math:`t` wynosi

.. MATH::
    :label: eqn24

    M(t) = \int \int \int_{D(t)}  dx_t dy_t dz_t 


Ewolucja układu to nic innego jak zamiana zmiennych :math:`(x_0, y_0, z_0) \to (x_t, y_t, z_t)`. Dokonajmy tej zamiany zmiennych w drugiej całce:

.. MATH::
    :label: eqn25

    M(t) = \int \int \int_{D(t)}  dx_t dy_t dz_t   =  \int \int \int_{D(0)}  \frac{\partial (x_t, y_t, z_t)}{\partial (x_0, y_0, z_0)} \; dx_0 dy_0 dz_0  = \int \int \int_{D(0)}   J(t)  dx_0 dy_0 dz_0 \qquad  


gdzie :math:`J` jest jakobianem transformacji  :math:`(x_t, y_t, z_t) \to (x_0, y_0, z_0)`. Jeżeli objętość fazowa nie zmienia się w czasie (jest funkcją stałą), to jej pochodna

.. MATH::
    :label: eqn26

    \frac{dM(t)}{dt} = \int \int \int_{D(0)}  \frac{ dJ(t)}{dt}  dx_0 dy_0 dz_0  \qquad  


wynosi zero. Jeżeli

.. MATH::
    :label: eqn27

     \frac{ dJ(t)}{dt} = 0  \qquad \mbox{to} \qquad \frac{dM(t)}{dt} = 0 \qquad \mbox{czyli } \qquad M(t)=M(0) 


Więc rozpoczynamy obliczenia 

.. MATH::
    :label: eqn28

     \frac{ dJ(t)}{dt} = \frac{d}{dt} \; \frac{\partial (x_t, y_t, z_t)}{\partial (x_0, y_0, z_0)} = \frac{d}{dt}  \begin{bmatrix}\frac{ \partial x_t}{\partial x_0}& \frac{\partial x_t}{\partial y_0}&\frac{ \partial x_t}{\partial z_0}\\ \frac{ \partial y_t}{\partial x_0}&  \frac{ \partial y_t}{\partial y_0} &\frac{ \partial y_t}{\partial z_0} \\ \frac{ \partial z_t}{\partial x_0}& \frac{ \partial z_t}{\partial y_0}&\frac{ \partial z_t}{\partial z_0} \end{bmatrix}


Należy powyższy wyznacznik rozwinąć i pamiętać, że rozwiązania równań różniczkowych

.. MATH::
    :label: eqn29

    x_t = x_t(x_0, y_0, z_0), \quad \quad y_t = y_t(x_0, y_0, z_0), \quad \quad z_t = z_t(x_0, y_0, z_0) \quad \quad


zależą od warunków początkowych :math:`\{x_0, y_0, z_0\}`.  Po rozwinięciu wyznacznika pojawiają się wyrażenia typu

.. MATH::
    :label: eqn30

    \frac{d}{dt}  \frac{ \partial x_t}{\partial z_0} = \frac{ \partial }{\partial z_0} \frac{dx_t}{dt} = \frac{ \partial }{\partial z_0} \dot x_t = \frac{ \partial }{\partial z_0} F_1(x_t, y_t, z_t) = \frac{ \partial F_1}{\partial x_t}  \frac{ \partial x_t}{\partial z_0} +  \frac{ \partial F_1}{\partial y_t}  \frac{ \partial y_t}{\partial z_0}  +\frac{ \partial F_1}{\partial y_t}  \frac{ \partial y_t}{\partial z_0}  


Jak widać, w tym prostym przypadku musimy przeprowadzić uciążliwe rachunki. Znacznie lepiej jest posłużyć się rachunkiem symbolicznym z wykorzystaniem SAGE.

Aby przeprowadzić dowód, najlepiej jest obejść  ograniczenia operacji na wyrazeniach z pochodnymi w Sage.Pochodna wyznacznika jest zrobiona automatycznie, potem jest recznie wykonane podstawienie:

.. MATH::
    :label: eqn31

     \frac{ \partial }{\partial z_0} \dot x_t = \frac{ \partial F_1}{\partial x_t}  \frac{ \partial x_t}{\partial z_0} +  \frac{ \partial F_1}{\partial y_t}  \frac{ \partial y_t}{\partial z_0}  +\frac{ \partial F_1}{\partial y_t}  \frac{ \partial y_t}{\partial z_0}  


.. sagecellserver::
    :is_verbatim: True


.. end of input

Ostatecznie otrzymamy wyrażenie

.. MATH::
    :label: eqn32

    \frac{dJ(t)}{dt} = J(t) \left[\frac{\partial F_1}{\partial  x_t} + \frac{\partial  F_2}{\partial  y_t} + \frac{\partial F_3}{\partial z_t} \right]  = J(t)\; \mbox{ div} \vec F


To, co jest w nawiasie kwadratowym  nazywa się dywergencją pola wektorowego :math:`\vec F`. Wstawiamy to wyrażemie do równania :eq:`eqn26` i otrzymamy

.. MATH::
    :label: eqn33

    \frac{dM(t)}{dt} = \int \int \int_{D(0)}  \frac{ dJ(t)}{dt}  dx_0 dy_0 dz_0   = \int \int \int_{D(0)} J(t)\; \mbox{ div} \vec F  dx_0 dy_0 dz_0  =  \int \int \int_{D(t)} \; \mbox{ div} \vec F  dx_t dy_t dz_t \qquad  


gdzie dokonaliśmy odwrotnego przejścia  ( z prawej strony na lewą stronę) jak  w równaniu :eq:`eqn25`.

Można teraz uogólnić ten wynik na dowolną ilość wymiarów przestrzeni fazowej  dla układu równań

.. MATH::
    :label: eqn34

    \frac{d\vec x}{dt} = \vec F (\vec x), \quad \quad \vec x = [x_1, x_2, x_3, ...., x_n], \quad \quad \vec F = [F_1, F_2, F_3, ..., F_n]


i otrzymamy

TWIERDZENIE: Jeżeli dywergencja pola wektorowego :math:`\vec F`  danego równania różniczkowego jest zero,

.. MATH::
    :label: eqn35

    \mbox{ div} \vec F = \sum_i \frac{\partial F_i}{\partial x_i} = 0


wówczas objętość fazowa jest zachowana, :math:`M(t) = M(0)`. Takie układy dynamiczne nazywamy zachowawczymi. Jeżeli objętość fazowa maleje w czasie, to układ nazywamy dysypatywnym. Innymi słowy, układ jest dysypatywny gdy objętość :math:`M(t) < M(0)` dla :math:`t>0`. Oznacza to, że dla układów dysypatywnych

.. MATH::
    :label: eqn36

    \frac{dM(t)}{dt} < 0 


Gdyby

.. MATH::
    :label: eqn37

    \mbox{ div} \vec F = C_0 = const. \qquad  


wówczas z równania :eq:`eqn33` otrzymujemy prostą relację

.. MATH::
    :label: eqn38

    \frac{dM(t)}{dt} = C_0 M(t)


która pozwala rozstrzygnąć czy układ jest dysypatywny.

 

PRZYKŁAD 1: Oscylator harmoniczny tłumiony

.. MATH::
    :label: eqn39

    \dot x = y = F_1(x, y), \quad \quad x(0) = x_0$$ $$ \dot y = -\gamma y -\omega^2 x = F_2(x, y), \quad \quad y(0) = y_0


Łatwo obliczyć dywergencję pola

.. MATH::
    :label: eqn40

    \mbox{ div} \vec F =  \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y} = -\gamma <0


Równanie :eq:`eqn37` przyjmuje postać

.. MATH::
    :label: eqn41

    \frac{dM(t)}{dt} = -\gamma  M(t),  \qquad \mbox{ jego rozwiązaniem jest funkcja malejąca } \qquad M(t) = M(0) e^{-\gamma t}


czyli  objętość fazowa (w tym przypadku powierzchnia fazowa) maleje  w czasie i dlatego jest to dysypatywny układ dynamiczny.

 

PRZYKŁAD 2: Model Lorenza

.. MATH::
    :label: eqn42

    \dot x = \sigma (y-x) = F_1(x, y,  z), \quad \quad x(0) = x_0$$ $$ \dot y = x(\rho - z) -y = F_2(x, y,  z),  \quad \quad y(0) = y_0$$ $$ \dot z = x y - \beta z = F_3(x, y,  z), , \quad \quad z(0) = z_0


gdzie wszystkie parametry są dodatnie: :math:`\sigma, \rho, \beta > 0`. 

 

Obliczymy  dywergencję 3-wymiarowego pola :math:`\vec F = [F_1, F_2, F_3]`. Proste rachunki pokazują, że

.. MATH::
    :label: eqn43

    \mbox{ div} \vec F =  \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y}   + \frac{\partial F_3}{\partial z}  = -\sigma -1 - \beta <0


Objętość fazowa (w tym przypadku faktycznie objętość w 3 wymiarowej przestrzeni) maleje  eksponencjalnie w czasie, podobnie jak w poprzednim przykłĸadzie.  Dlatego też jest to dysypatywny układ dynamiczny.
 

