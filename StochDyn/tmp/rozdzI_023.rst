Stany stacjonarne i ich stabilność
==================================

Czasami rozwiązanie równań różniczkowych dąży do stałej wartości dla długich czasów, :math:`t\to \infty`. Mówimy wówczas, że istnieje rozwiązanie stacjonarne (stan stacjonarny, punkt stały, punkt równowagi): 

.. MATH::
    :label: eqn1

    \lim_{t \to \infty}  \vec x(t) = \vec x_s

Może istnieć kilka stanów stacjonarnych, a nawet nieskończenie wiele stanów stacjonarnych. Który z tych stanów się realizuje,  zależy to od warunku początkowego :math:`\vec x(0) = \vec x_0`. Rozwiązanie stacjonarne :math:`\vec x_s` nie zależy od czasu. Nazwa "rozwiązanie stacjonarne" nie jest bezpodstawne. Faktycznie jest to rozwiązanie układu równań  różniczkowych  

.. MATH::
    :label: eqn2

    \frac{d\vec x}{dt} = \vec F(\vec x), \quad \quad \vec x(0)  = \vec x_0  \qquad \quad  


z warunkiem początkowym :math:`\vec x(0) = \vec x_s`. Jeżeli  :math:`\vec x(t) = \vec x_s` jest rozwiązaniem stacjonarnym to musi spełniać układ :eq:`eqn2`., czyli

.. MATH::
    :label: eqn3

    \mbox{jeżeli}  \quad \quad \vec x(t) = \vec x_s \quad \quad\mbox{to} \quad \quad\frac{d\vec x(t)}{dt} = \frac{d\vec x_s}{dt}=0 = \vec F(\vec x(t)) = \vec F(\vec x_s)) = 0


Innymi słowy, stan stacjonarny wyznaczny jest z warunku:

.. MATH::
    :label: eqn4

    \vec F(\vec x_s)) = 0


Powyższy warunek to układ :math:`n`-równań algebraicznych. Zwykle udaje  nam się go rozwiązać analitycznie w niewielu przypadkach,  w szczególności gdy wymiar przestrzeni fazowej  :math:`n >1`.  Natomiast możemy taki układ rozwiązywać numerycznie. Jeżeli już wyznaczymy stan stacjonarny, to nasuwa się pytanie na ile jest on stabily, tzn. gdy nieco wytrącimy układ z tego stanu to czy powróci on do poprzedniego stanu stacjonarnego czy też oddali się od niego.  Na przykład stanem stacjonarnym kulki poruszającej się na nitce w polu ziemskim jest położenie pionowe. Gdy kulkę wychylimy z tego położenia, po dostatecznie długim czasie powróci ona do pozycji pionowej i tak tam pozostanie nieruchoma. Jest to stabilny stan równowagi. Rozważmy teraz kulkę mogącą poruszać się tylko po sferze. Gdy umieścimy kulkę na  biegunie północnym sfery w polu ziemskim to nieskończenie małe zaburzenie spowoduje, że kulka spadnie z tego położenie i nigdy do niego nie powróci. W obu tych przypadkach zakładamy  rzeczywiste warunki ruchu z tarciem. Pominięcie tarcia spowoduje radykalnie różne zachowanie. Te dwa przyklady pozwalają nabyć intuicję, co to znaczy że stan stacjonarny jest stabilny lub jest niestabilny.  Z grubsza można powiedzieć, że stan stacjonarny  :math:`\vec x_s` jest stabilny jeśli każda trajektoria startującego z punktu bliskiego :math:`\vec x_s` pozostaje blisko :math:`\vec x_s` wraz z upływem czasu. Natomiast  :math:`\vec x_s` jest niestabilny gdy  każda każda trajektoria startującego z punktu bliskiego :math:`\vec x_s` oddala się od tego punktu gdy :math:`t\to \infty`.  Można podać bardziej precyzyjne definicje.

Definicja
  Mówimy, że stan stacjonarny  :math:`\vec x_s` jest stabilny jeżeli  dla dowolnego :math:`\epsilon >0` istnieje 
  takie :math:`\delta(\epsilon) >0`, że dla każdego :math:`\vec x_0` takiego że :math:`| \vec x_0 -\vec x_s| < \delta`
  rozwiązanie :math:`\vec x(t)` spełnia nierówność: :math:`|\vec x(t) - \vec x_s| < \epsilon` dla dowolnych czasów :math:`t>0`. 
  Jeżeli dodatkowo :math:`\lim_{t\to \infty} \vec x(t)  = \vec x_s` to stan stacjonarny :math:`\vec x_s` jest asymptotycznie stabilny.

Innymi słowy dla stabilnych stanów rozwiązanie :math:`\vec x(t)` jest cały czas blisko rozwiązania stacjonarnego :math:`\vec x_s`, a dla asymptotycznie stabilnych stanów rozwiązanie :math:`\vec x(t)` dąży do :math:`\vec x_s`  gdy czas :math:`t\to \infty`.

 

Przypadek A: Jedno równanie różniczkowe
---------------------------------------

Przykład: Równanie różniczkowe liniowe
++++++++++++++++++++++++++++++++++++++

.. MATH::
    :label: eqn5

    \dot x = \lambda x = f(x), \quad \quad \lambda  \in R


Stan stacjonarny znajdujemy jako rozwiazanie równania

.. MATH::
    :label: eqn6

    f(x_s) = \lambda x_s =0 \quad \quad \mbox{stąd otrzymujemy stan stacjonarny} \quad \quad x_s = 0


Pytamy, czy ten stan jest stabilny. Musimy zaburzyć rozwiązanie stacjonarne :math:`x(t) = x_s = 0` i wystartować z dostatecznie bliskiego w stosunku do :math:`x_s=0` warunku początkowego :math:`X_0`. Rozwiązaniem równania różniczkowego liniowego jest funkcja

.. MATH::
    :label: eqn7

    x(t) = X_0 e^{\lambda t}


Jeżeli

.. MATH::
    :label: eqn8

    \lambda  < 0  \quad \quad \mbox{ to} \quad \quad x(t) \to 0 \quad \quad \mbox{dla wszystkich}   X_0  \mbox{bliskich} \; 0


Wówczas stan stacjonarny :math:`x_s=0` jest stabilny i dodatkowo jest asymptotycznie stabilny ponieważ rozwiązanie to dąży do :math:`x_s =0`  gdy  :math:`t\to \infty` .

Jeżeli

.. MATH::
    :label: eqn9

    \lambda >0  \quad \quad \mbox{ to} \quad \quad x(t) \to \infty  \quad \quad \mbox{dla wszystkich}   X_0  \mbox{bliskich} \; 0


Wówczas stan stacjonarny :math:`x_s=0` jest niestabilny.

.. sagecellserver::
    :is_verbatim: True
    
    sage: var('x')
    sage: pa1=plot(0.005*exp(-x), (x,0,1), figsize=(6,3),color="red")
    sage: pa2=plot(0.005*exp(x), (x,0, 1), figsize=(6,3))
    sage: pa3=plot(-0.005*exp(-x), (x,0,1), figsize=(6,3),color="red")
    sage: pa4=plot(-0.005*exp(x), (x,0, 1), figsize=(6,3))
    sage: show(pa1+pa2+pa3+pa4)

.. end of input

Na rysunku przedstawiono zagadnienie stabilności:  czerwone krzywe dążą do 0 gdy :math:`t\to \infty`. Niebieskie  krzywe uciekają od   0 gdy :math:`t\to \infty`.

Warunki początkowe :math:`x(0)=\pm 0.05` są blisko stanu stacjonarnego :math:`x_s=0`. Przykład ten sugeruje nam metodę badania stabilności stanu stacjonarnego. Teraz podamy tę metodę.

 

Metoda linearyzacji badania stabilności
---------------------------------------

Rozpatrujemy układ 1-wymiarowy:

.. MATH::
    :label: eqn10

    \frac{dx}{dt} = \dot x = f(x), \quad \quad f(x_s) = 0


Aby zbadać stabilność stanu  :math:`x_s`, analizujemy zaburzenie

.. MATH::
    :label: eqn11

    h(t) = x(t) - x_s,  \quad \quad  |h(0)| = |x(0) - x_s| < \delta


Funkcja :math:`h(t)` powinna być mała, gdy stan :math:`x_s` jest stabilny. Jak daleko jest rozwiązanie :math:`x(t)` od rozwiązania :math:`x_s`. Zobaczmy, jakie równanie różniczkowe spełnia :math:`h(t)`:

.. MATH::
    :label: eqn12

    \frac{dh}{dt} = \frac{d}{dt} [x(t) - x_s] = \frac{dx}{dt} = f(x) = f( x_s +h)  = f(x_s) + f'(x_s) h + \frac{1}{2} f''(x_s) h^2 + \frac{1}{3!} f'''(x_s) h^3+ ....


Ponieważ :math:`f(x_s)=0`, otrzymujemy równanie różniczkowe dla odchylenia :math:`h(t)` od stanu stacjonarnego

.. MATH::
    :label: eqn13

    \frac{dh}{dt} =  f'(x_s) h + \frac{1}{2} f''(x_s) h^2 + \frac{1}{3!} f'''(x_s) h^3+ ....


Jeżeli :math:`f'(x_s) \ne 0`, to pierwszy istotny wyraz w tym równaniu jest liniowy względem :math:`h`.  Wyrazy :math:`h^2,  h^3` i wyższych potęg są pomijalnie małe. Jeżeli np. :math:`h =10^{-2}` to  :math:`h^2 = 10^{-4},  h^3 = 10^{-6}`. Wówczas :math:`h^2,  h^3` i wyższe potęgi :math:`h`  można pominąć jako bardzo małe.  Otrzymujemy równanie różniczkowe liniowe 

.. MATH::
    :label: eqn14

    \frac{dh}{dt} =\lambda h, \quad \quad \lambda = f'(x_s)


z rozwiązaniem

.. MATH::
    :label: eqn15

    h(t) = h(0)  e^{\lambda t}


Wiemy już z powyższego przykładu, że gdy :math:`\lambda < 0` to :math:`h(t) \to 0` gdy :math:`t\to \infty`. To oznacza, że  zaburzenie :math:`x(t) \to x_s` gdy  :math:`t \to \infty`  i wówczas stan stacjonarny :math:`x_s` jest stabilny.  Jeżeli  :math:`\lambda > 0` to :math:`|h(t)| \to \infty` gdy :math:`t\to \infty`. To oznacza, że  zaburzenie x(t) ucieka od :math:`x_s` gdy  :math:`t \to \infty`  i wówczas stan stacjonarny :math:`x_s` jest niestabilny. Otrzymujemy następujące kryterium na stabilność stanu stacjonarnego:

Jeżeli :math:`\lambda = f'(x_s) < 0` to  stan stacjonarny jest stabilny; jeżeli :math:`\lambda = f'(x_s) > 0` to  stan stacjonarny jest niestabilny.

Jeżeli :math:`\lambda = f'(x_s) = 0` to  nie wiem nic na temat stabilności. Musimy badać następne niezerowe wyrazy.  Jeżeli :math:`f''(x_s) \ne 0` zatrzymujemy pierwszy nieznikający wyraz czyli  badamy równanie
.. MATH::
    :label: eqn16

    \frac{dh}{dt} =\gamma h^2, \quad \quad \gamma  =  \frac{1}{2}f''(x_s)


Jeżeli  :math:`f'(x_s) =0` oraz :math:`f''(x_s) =0` to  bierzemy następny nieznikający wyraz i badamy równanie

.. MATH::
    :label: eqn17

     \frac{dh}{dt} =\nu h^3, \quad \quad \nu  =    \frac{1}{3!} f'''(x_s) 


 Jeżeli w tych przypadkach :math:`h(t) \to 0` gdy :math:`t\to \infty`, to  stan stacjonarny :math:`x_s` jest stabilny. W przeciwnym przypadku  - nie jest stabilny.

 
Metoda potencjału badania stabilności
-------------------------------------

W jednym wymiarze, równanie różniczkowe  zawsze można przedstawić w postaci


.. MATH::
    :label: eqn18

    \frac{dx}{dt} = \dot x = f(x) = -\frac{dV(x)}{dx} = -V'(x), \quad \quad f(x_s) = 0


gdzie funkcja

.. MATH::
    :label: eqn19

    V(x) = -\int f(x)  dx 


nazywana jest "potencjałem".  W ogólności to nie jest potencjał fizyczny który pojawia się w równaniu Newtona  dla cząstki z tłumieniem:

.. MATH::
    :label: eqn20

    m \ddot x + \gamma \dot x = -V'(x)


Jeżeli ruch cząstki odbywa się w środowisku o dużym  tarciu, w tzw. reżimie przetłumionym, w którym przyśpieszenie cząstki jest znikomo małe (formalnie gdy :math:`m=0`), wówczas równanie Newtona ma postać

.. MATH::
    :label: eqn21

    \gamma \dot x = -V'(x)


które po przeskalowaniu ma postać:

.. MATH::
    :label: eqn22

    \dot x = -\frac{1}{\gamma} V'(x) = - {\tilde V} '(x)


Stąd też "historycznie" wywodzi sią nazwa potencjał dla abstrakcyjnego układu dynamicznego: 

.. MATH::
    :label: eqn23

     \dot x = f(x) =  = -V'(x)


Stan stacjonarny :math:`x_s` określony równaniem

.. MATH::
    :label: eqn24

    f(x_s) = -V'(x_s) = 0


to punkt ekstremalny potencjału (o ile  pochodna parzystego rzędu :math:`V^{(2k)}(x_s) \ne 0`).  Punkt :math:`x_s` jest stabilny gdy

.. MATH::
    :label: eqn25

    \lambda = f'(x_s) = - V''(x_s) < 0


czyli :math:`V''(x_s) > 0`. To odpowiada minimum potencjału. Natomiast punkt :math:`x_s`  niestabily odpowiada maksimum potencjału. Mamy więc klarowy obraz: Rysujemy potencjał :math:`V(x)`. Minima potencjału to stabilne stany stacjonarne; maksima potencjału to niestabilne stany stacjonarne.

.. topic:: Zadania

  Wyznacz stany stacjonarne i zbadaj ich (asymptotyczną) stabilność. Korzystaj z metody linearyzacji i metody potencjału.  

  1. :math:`\dot x = 4 x - x^3`

  2. :math:`\dot x = 1+x^4`

  3. :math:`\dot x =3 \sin(x)`

  4. :math:`\dot x =2x \sin(x)`

  5. :math:`\dot x =-x^2 \sin(x)`

Poniżej pokazujemy wyniki dla zadania 1. Są 3 stany stacjonarne: :math:`x_{s1} = 2,  x_{s2} = 0,  x_{s3} = -2`. Stany  :math:`x_{s1} = 2`  oraz  :math:`x_{s3} = -2`  są asymptotycznie stabilne (rozwiązania dążą do tych stanów). Stan :math:`x_{s2} = 0`  jest niestabilny (rozwiązania uciekają od tego stanu).

.. sagecellserver::
    :is_verbatim: True

    sage: var('x,y,z,u,Z,Y,t')
    sage: T0 = srange(0,1.5,0.01)
    sage: f11=4*x-x^3
    sage: f12=4*y-y^3
    sage: f13=4*z-z^3
    sage: f15=4*u-u^3
    sage: f16=0
    sage: sol5=desolve_odeint( vector([f11, f12, f13, 0, 0,f15]), [4,0.2,-0.2,2,-2,-4],T0,[x,y,z,Z,Y,u])
    sage: line( zip ( T0,sol5[:,0]) ,figsize=(7, 4)) +\
    ... line( zip ( T0,sol5[:,1]) ,color='red')+\
    ... line( zip ( T0,sol5[:,2]) ,color='green') +\
    ... line( zip ( T0,sol5[:,4]) ,color='gray') +\
    ... line( zip ( T0,sol5[:,5]) ,color='black')+\
    ... line( zip ( T0,sol5[:,3]) ,color='violet')

.. end of input

Z powyższego przykładu zauważmy następujące cechy:

1.  Zbiór warunków początkowych dzieli się na dwa podzbiory :math:`A_1 = (-\infty, 0)` oraz  :math:`A_2=(0, \infty)`. Dla warunków  początkowych ze zbioru :math:`A_1` rozwiązania :math:`x(t) \to -2` dla :math:`t\to\infty`, a  dla warunków  początkowych ze zbioru :math:`A_2` rozwiązania :math:`x(t) \to 2` dla :math:`t\to\infty`.

2. Krzywe :math:`x(t)`  są funkcjami monotonicznymi: albo cały czas rosną w czasie, albo cały czas maleją gdy czas rośnie. Dlaczego? Rozważmy  2 przykłady warunków początkowych widocznych na rysunku:

  (a)  gdy :math:`x(0) = 4` to :math:`(dx/dt) (x=4) = 4*4 -4^3 = -48 < 0`.   Pochodna jest ujemna, a to oznacza 
  że funkcja maleje. Podobnie jest dla wszystkich warunków początkowych :math:`x(0) > 2`

  (b) gdy :math:`x(0) = 0.2` to :math:`(dx/dt) (x=0.2) = 4*0.2 -(0.2)^3 > 0`.  Pochodna jest dodatnia, a to oznacza 
  że funkcja rośnie. Podobnie jest dla wszystkich warunków początkowych :math:`x(0)  \in (0, 2)`

3. Różne krzywe :math:`x(t)` nigdy się nie przecinają. Wynika to z tego, że rozwiązania są jedyne i jednoznaczne. Jeżeli by się przecinały,  to z punktu przecięcia wychodziłoby kilka rozwiązań. A to jest niemożliwe na mocy twierdzenia o jednoznaczności rozwiązań.


Przypadek B: Układ  2 równań różniczkowych
------------------------------------------

Dla jasności prezentacji, rozpatrujemy układ 2 równań różniczkowych

.. MATH::
    :label: eqn26

    \dot x = f(x, y)$$ $$\dot y = g(x, y)


Stany stacjonarne :math:`(x_s, y_s)`  określone są jako rozwiązania układu równań algebraicznych

.. MATH::
    :label: eqn27

    f(x_s, y_s)=0$$ $$g(x_s, y_s) =0


Gdyby istniał potencjał :math:`V(x, y)`, powyżej przedstawione wnioski otrzymane z metody potencjału są  także prawdziwe dla układów wielowymiarowyxch. Ponieważ w ogólnym  przypadku nie musi istnieć "potencjał",  zbadamy  stabilność stanów   :math:`(x_s, y_s)`  stosując metodę linearyzacji. Definiujemy  nowe funkcje

.. MATH::
    :label: eqn28

    X(t) = x(t) - x_s$$ $$Y(t)=y(t)-y_s


Charakteryzują one odchylenie od stanu stacjonarnego, które są małe gdy stan stacjonarny jest stabilny. Zobaczymy, jakie równania różniczkowe spełniają te funkcje:

.. MATH::
    :label: eqn29

    \dot X(t) = \dot x(t) - \dot x_s  = \dot x(t) =  f(x(t), y(t)) = f(x_s +X(t), y_s + Y(t))  = f(x_s, y_s) + \frac{\partial f}{\partial x}  X + \frac{\partial f}{\partial y} Y+ ...


.. MATH::
    :label: eqn30

     \dot Y(t)= \dot y(t) - \dot y_s  = \dot y(t) =  g(x(t), y(t)) =g(x_s +X(t), y_s + Y(t))  = gf(x_s, y_s) + \frac{\partial g}{\partial x}  X + \frac{\partial g}{\partial y} Y + ...


Wszystkie pochodne cząstkowe są obliczane w punkcie :math:`(x_s, y_s)`. Ponieważ w punkcie stacjonarnym :math:`f(x_s, y_s)=g(x_s, y_s)=0` otrzymujemy zlinearyzowane równania różniczkowe w postaci

.. MATH::
    :label: eqn31

    \dot X =  a_{11} X +  a_{12} Y


.. MATH::
    :label: eqn32

     \dot Y=  a_{21} X +  a_{22} Y 


gdzie macierz współczynników

.. MATH::
    :label: eqn33

     \qquad \quad J = \begin{bmatrix}\frac{ \partial f}{\partial x}& \frac{\partial f}{\partial y}\\ \frac{\partial g}{\partial x}& \frac{\partial g}{\partial y}  \end{bmatrix}  =   \begin{bmatrix}a_{11} &  a_{12} \\ a_{21}& a_{22}  \end{bmatrix}   \quad \quad \mbox{obliczona w punkcie} \quad (x_s, y_s)


jest macierzą Jacobiego. Ponieważ otrzymaliśmy liniowy układ równań różniczkowych,  jego rozwiązanie poszukujemy w postaci funkcji

.. MATH::
    :label: eqn34

    X(t) = A e^{\lambda t}, \quad \quad  Y(t) = B e^{\lambda t}


gdzie stałe :math:`A` oraz :math:`B` są określone przez warunki początkowe :math:`(X(0), Y(0))`.

Zauważamy, że

.. MATH::
    :label: eqn35

     \dot X = \lambda X, \quad \quad \dot Y = \lambda  Y


Wstawiamy te relacje do  układu równań zlinearyzowanych:

.. MATH::
    :label: eqn36

    \lambda A = a_{11} A +  a_{12} B


.. MATH::
    :label: eqn37

     \lambda  Y=  a_{21} A +  a_{22} B 


Jest to zagadnienie własne dla macierzy Jacobiego, gdzie :math:`\lambda` to są wartości własne macierzy Jacobiego. To   jest także  równoważne liniowemu układowi równań algebraicznych 

.. MATH::
    :label: eqn38

    \ (a_{11} - \lambda) A +  a_{12} B  = 0 


.. MATH::
    :label: eqn39

    a_{21} A +  (a_{22} -\lambda) B  = 0 


Taki układ ma niezerowe rozwiązanie dla :math:`A` oraz :math:`B` gdy wyznacznik

.. MATH::
    :label: eqn40

    \mbox{Det}  |J-\lambda I| = \mbox{Det} \begin{bmatrix}a_{11} -\lambda &  a_{12} \\ a_{21}& a_{22} - \lambda  \end{bmatrix} = (a_{11} -\lambda) ( a_{22} -\lambda) -a_{12} a_{21} = \lambda^2  - (a_{11} +a_{22} ) \lambda +a_{11} a_{22} -a_{12} a_{21} = 0


Macierz :math:`I` jest macierzą jednostkową, tzn. diagonalną :math:`2\times 2` i wszystkie elementy diagonalne to 1. Z powyższej relacji  otrzymujemy równanie kwadratowe dla nieznanych wartości  własnych :math:`\lambda = \lambda_1`  oraz :math:`\lambda = \lambda_2`. 

Rozwiązanie zlinearyzowanego układu jest w postaci kombinacji liniowej :

.. MATH::
    :label: eqn41

    X(t) = A_1  e^{\lambda_1 t} + A_2 e^{\lambda_2 t}, \quad \quad  Y(t) = B_1 e^{\lambda_1 t} +  B_2 e^{\lambda_2 t}


Pytanie o stabilność stanu stacjonarnego :math:`(x_s, y_s)` jest równoważne pytaniu: kiedy

.. MATH::
    :label: eqn42

    \lim_{t\to \infty} X(t) = 0  \quad \quad \lim_{t\to \infty} Y(t) = 0


Funkcje exponencjalne dążą do zera jeżeli część rzeczywista  wartości własnych macierzy Jacobiego :math:`\lambda_i` są  ujemne:

.. MATH::
    :label: eqn43

     Re(\lambda_1) < 0, \quad \quad Re(\lambda_2) < 0


Wówczas stan stacjonarny jest asymptotycznie stabilny. Jeżeli 

.. MATH::
    :label: eqn44

     Re(\lambda_1) > 0, \quad \quad \mbox{i/lub} \quad \quad Re(\lambda_2) >  0


to stan stacjonarny jest niestabilny. Jeżeli 

.. MATH::
    :label: eqn45

     Re(\lambda_1) = Re(\lambda_2) =  0


to stan stacjonarny jest stabilny, ale nie  jest asymptotycznie stabilny. Jeżeli wartości własne macierzy Jacobiego wynoszą zero, metoda linearyzacji nie rozstrzyga o stabilności.

Zamiast wyznaczyć wartości własne :math:`(\lambda_{1}, \lambda_{2})` tej macierzy, wystarczy sprawdzić, kiedy część rzeczywista wartości własnych jest ujemna (lub dodatnia).  Ponieważ macierz Jacobiego jest macierzą :math:`2 \times 2`, więc otrzymujemy równanie kwadratowe  dla :math:`\lambda`. Aby wartości własne miały część rzeczywistą ujemną muszą zachodzić dwie relacje:

.. MATH::
    :label: eqn46

    \lambda_1 + \lambda_2  = a_{11}  + a_{22} <0  \quad \mbox{oraz} \quad \lambda_1 \; \lambda_2 = a_{11} a_{22}  -a_{12}a_{21} > 0,
     
to oznacza że

.. MATH::
    :label: eqn46a
     
    \mbox{Tr} \, J < 0, \quad \quad \mbox{det} \,J > 0


gdzie Tr oznacza ślad macierzy, czyli sumę elementów diagonalnych macierzy oraz Det jest wyznacznikiem macierzy.

 

Przykład 1
++++++++++

.. MATH::
    :label: eqn47

    \dot x= 1-xy = f(x, y),
    
    \dot y = x-y^2 = g(x, y).


Łatwo znaleźć stany stacjonarne

.. MATH::
    :label: eqn48

     1-xy = 0,
     
     x-y^2 = 0. 


Z drugiego równania :math:`x=y^2` wstawiamy do pierwszego równania: :math:`1-y^3=0` czyli :math:`y^3=1`. Stąd :math:`y=1` oraz :math:`x=1`. Otrzymujemy stan stacjonarny

.. MATH::
    :label: eqn49

    (x_s, y_s) = (1, 1)


Obliczmy elementy macierzy Jacobiego

.. MATH::
    :label: eqn50

     \qquad \quad J = \begin{bmatrix}\frac{ \partial f}{\partial x}& \frac{\partial f}{\partial y}\\ \frac{\partial g}{\partial x}& \frac{\partial g}{\partial y}  \end{bmatrix}  =   \begin{bmatrix}-y & -x \\ 1& -2y  \end{bmatrix}    =  \begin{bmatrix}-1 & -1 \\ 1& -2  \end{bmatrix}\quad \quad \mbox{w punkcie} \quad (x=1, y=1)


Ślad macierz :math:`J`, czyli suma elementów diagonalnych Tr:math:`J = -3 < 0` oraz wyznacznik Det:math:`J = 3 > 0`. Spełnione są relacje dla stany stacjonarnego który jest asymptotycznie stabilny. Wniosek: stan stacjonarny :math:`(x_s, y_s) = (1, 1)` jest asymptotycznie stabilny.

Można sprawdzić to, wyliczając explicite wartości własne macierzy Jacobiego:

.. MATH::
    :label: eqn51

    \lambda_1 = \frac{1}{2} (-3+i \sqrt 3), \quad \quad \lambda_1 = \frac{1}{2} (-3-i \sqrt 3)


Ich części rzeczywiste są ujemne:  Re:math:`\lambda_1 = -3/2,  \lambda_2 = -3/2`. 

 
Przypadek C: Stabilność stanów stacjonarnych układów wielowymiarowych 
--------------------------------------------------------------------- 

Dla układu równań różniczkowych o wymiarze większym niż 2 stosujemy te same metody co dla układu 2 równań różniczkowych.  Oczywiście istnieje więcej różnych przypadków i większe bogactwo własności  stanów stacjonarnych.  Nie będziemy przedstawiali tu przypadku o dowolnym wymiarze. Rozważymy przypadek 3 równań, aby pokazać podobieństwo do przypadku 2 równań. Analizujemy układ 3 równań różniczkowych:

.. MATH::
    :label: eqn52

    \dot x = F_1(x, y, z), \quad x(0) = x_0 $$ $$\dot y = F_2(x, y, z),  \quad y(0) = y_0 $$ $$\dot z = F_3(x, y, z),  \quad z(0) = z_0 


Stany stacjonarne są określone przez rozwiązania układu równań algebraicznych:

.. MATH::
    :label: eqn53

    F_1(x, y, z) = 0, \quad  F_2(x, y, z) = 0,  \quad  F_3(x, y, z)=0


Z równań tych otrzymujemy  stan stacjonarny   :math:`(x, y, z,) = (x_{s}, y_{s}, z_s)`. Następnie obliczmy macierz Jacobiego 

.. MATH::
    :label: eqn54

     J = \begin{bmatrix}\frac{ \partial F_1}{\partial x}& \frac{\partial F_1}{\partial y}&\frac{ \partial F_1}{\partial z}\\ \frac{ \partial F_2}{\partial x}&  \frac{ \partial F_2}{\partial y} &\frac{ \partial F_2}{\partial z} \\ \frac{ \partial F_3}{\partial x}& \frac{ \partial F_3}{\partial y}&\frac{ \partial F_3}{\partial z} \end{bmatrix}


Obliczmy  macierz Jacobiego w punkcie stacjonarnym :math:`J=J(x_s, y_s, z_s)`.  W ten sposób otrzymujemy macierz liczbową. Kolejnym krokiem jest znalezienie wartości własnych :math:`\lambda = \lambda_i   (i=1, 2, 3)`   tej macierzy, czyli rozwiązanie  wielomianu 3-go stopnia dla :math:`\lambda`:

.. MATH::
    :label: eqn55

     \mbox{Det} (J -\lambda I)  = \mbox{Det}  \begin{bmatrix}\frac{ \partial F_1}{\partial x} -\lambda & \frac{\partial F_1}{\partial y}&\frac{ \partial F_1}{\partial z}\\ \frac{ \partial F_2}{\partial x}&  \frac{ \partial F_2}{\partial y} -\lambda &\frac{ \partial F_2}{\partial z} \\ \frac{ \partial F_3}{\partial x}& \frac{ \partial F_3}{\partial y}&\frac{ \partial F_3}{\partial z} -\lambda \end{bmatrix}  =  0


Macierz :math:`I` jest macierzą jednostkową, tzn. diagonalną :math:`3\times 3` i wszystkie elementy diagonalne to 1.

Jeżeli części  rzeczywiste  wszystkich wartości własnych macierzy Jacobiego :math:`\lambda_i` są  ujemne:

.. MATH::
    :label: eqn56

     Re(\lambda_1) < 0, \quad \quad Re(\lambda_2) < 0, \quad \quad Re(\lambda_3) < 0


to  stan stacjonarny jest asymptotycznie stabilny. Jeżeli  chociaż jedna z wartości własnych :math:`\lambda_i` ma część rzeczywistą dodatnią

.. MATH::
    :label: eqn57

     Re(\lambda_1) > 0, \quad \quad \mbox{i/lub} \quad \quad Re(\lambda_2) >  0, \quad \quad \mbox{i/lub} \quad \quad Re(\lambda_3) >  0


to stan stacjonarny jest niestabilny.

W przypadkach wielowymiarowych wygodnie jest stosować metody numeryczne. Obliczanie wartości własnych macierzy jest numerycznie zadaniem łatwym.

 

Przykład 2: Model Lorenza
+++++++++++++++++++++++++

.. MATH::
    :label: eqn58

    \dot x = \sigma (y-x) = F_1(x, y,  z), \quad \quad x(0) = x_0$$ $$ \dot y = x(\rho - z) -y = F_2(x, y,  z),  \quad \quad y(0) = y_0$$ $$ \dot z = x y - \beta z = F_3(x, y,  z), , \quad \quad z(0) = z_0


gdzie wszystkie parametry są dodatnie: :math:`\sigma, \rho, \beta > 0`.

KROK 1: Znajdujemy stany stacjonarne czyli rozwiązujemy układ równań algebraicznych

.. MATH::
    :label: eqn59

    \sigma (y-x) =0$$ $$x(\rho - z) -y = 0$$ $$x y - \beta z = 0


Możemy posłużyć się programem w Sage, ale układ ten jest na tyle prosty, że możemy go roziązać  sami. Z pierwszego równania wynika, że

.. MATH::
    :label: eqn60

    y=x


Z trzeciego równania otrzymujemy

.. MATH::
    :label: eqn61

    z= \frac{1}{\beta} x^2


Wstawiamy :math:`x` oraz :math:`z` do drugiego równania otrzymując relację:

.. MATH::
    :label: eqn62

    x \rho - x   {\frac{1}{\beta} }x^2 -x=0


czyli
.. MATH::
    :label: eqn63

    x [ \rho - 1  - {\frac{1}{\beta} }x^2]=0


Ta relacja jest prosta i wynika z niej że

.. MATH::
    :label: eqn64

    x= x_1 = 0 \quad \mbox{lub} \quad x=  x_2 = \sqrt{\beta ( \rho -1)} \quad \mbox{lub} \quad x= x_3 =  - \sqrt{\beta ( \rho -1)}


Otrzymujemy 3 stany stacjonarne:

.. MATH::
    :label: eqn65

    P_1 = (x_1, y_1, z_1) =  (0, 0, 0)$$  $$P_2 = (x_2, y_2, z_2) =  ( \sqrt{\beta ( \rho -1)}, \sqrt{\beta ( \rho -1)}, \rho - 1)$$  $$P_3 = (x_3, y_3, z_3) =  ( - \sqrt{\beta ( \rho -1)}, -  \sqrt{\beta ( \rho -1)}, \rho - 1)


Dla każdego stanu stacjonarnego musimy zbadać jego stabilność analizując zagadnienie własne dla macierzy Jacobiego. No to do dzieła...

.. sagecellserver::
    :is_verbatim: True

    sage: #kilka zmiennych 
    sage: reset()
    sage: var('x y z sigma rho beta alpha')
    sage: #i kilka zalozen
    sage: assume(sigma>0)
    sage: assume(rho>0)
    sage: assume(beta>0) 
    sage: #definiujemy rownania rozniczkowe
    sage: F1 = sigma*(y-x)
    sage: F2 = x*(rho-z) - y
    sage: F3 = x*y - beta*z
    sage: html.table([['$F_1$','$F_2$','$F_3$'],[F1,F1,F3]])
    sage: print "stany stacjonarne"
    sage: rozw = solve([F1==0,F2==0,F3==0],[x,y,z])
    sage: P1 = rozw[2]
    sage: P2 = rozw[0]
    sage: P3 = rozw[1]
    sage: html.table([['$P_1$','$P_2$','$P_3$'],[P1,P2,P3]])
    sage: print 'Macierz Jakobiego'
    sage: J = matrix([
    sage: [diff(F1,x),diff(F1,y),diff(F1,z)],
    sage: [diff(F2,x),diff(F2,y),diff(F2,z)],
    sage: [diff(F3,x),diff(F3,y),diff(F3,z)]
    sage: ])
    sage: show(J)
    sage: #
    sage: @interact
    sage: def _(punkt=['P1','P2','P3']):
    ...    P = dict(zip(['P1','P2','P3'],[P1,P2,P3]))[punkt]
    ...    J = matrix([
    ...    [
    ...    diff(F1,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F1,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F1,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ...    ],
    ...    [
    ...    diff(F2,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F2,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F2,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ...    ],
    ...    [
    ...    diff(F3,x)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F3,y)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs()),
    ...    diff(F3,z)(x=P[0].rhs(),y=P[1].rhs(),z=P[2].rhs())
    ...    ]
    ...    ])
    ...    print "macierz Jakobiego w punkcie %s" % P
    ...    show(J)
    ...    #zagadnienie własne macierzy
    ...    dJ = det(J - alpha*matrix(3,3,1)) == 0
    ...    rozwdJ1 = solve(dJ,alpha)
    ...    show(rozwdJ1)
    ...    b = 1
    ...    s = 2
    ...    r = 3
    ...    i = 0
    ...    for a in rozwdJ1:
    ...        print "sprawdzamy"
    ...        print "wartość własna alpha_%d"%(i+1)
    ...        buf = real(a.rhs()(rho=r,beta=b,sigma=s))
    ...        show(n(buf))
    ...        if buf < 0:
    ...            print "jest < 0"
    ...        else:
    ...            print "jest > 0"
    ...            i += 1
    ...    if i == 0:
    ...        print "\n"
    ...        print "Wynika z tego, że dla"
    ...        print "beta=%s, sigma=%s, rho=%s"%(b,s,r)
    ...        print "%s jest punktem stabilnym"%P
    ...    else:
    ...        print "\n"
    ...        print "Wynika z tego, że dla"
    ...        print "beta=%s, sigma=%s, rho=%s"%(b,s,r)
    ...        print "%s nie jest punktem stabilnym"%P

.. end of input


 

