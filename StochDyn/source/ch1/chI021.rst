Układy dynamiczne z czasem ciągłym
==================================

We Wstępie podaliśmy kilka przykładów układów opisanych za pomocą równań różniczkowych zwyczajnych. Pierwsza klasa układów to  układy opisywane przez  mechanikę klasyczną i jej  równania Newtona. Inna klasa układów to równania fenomenologiczne opisujące procesy wzrostu, procesy kinetyki chemicznej, dynamiki populacyjnej w układach biologicznych, itd. Te dwie klasy układów opisywane są układem równań różniczkowych zwyczajnych zapisanych w ogolnej postaci jako układ

.. MATH::
    :label: eqn1

    \frac{dx_1}{dt} = F_1(x_1, x_2, x_3, ..., x_n)

    \frac{dx_2}{dt} = F_2(x_1, x_2, x_3, ..., x_n)

    \vdots

    \frac{dx_n}{dt} = F_n(x_1, x_2, x_3, ..., x_n) 


Ten układ możemy zapisać w notacji wektorowej w  postaci

.. MATH::
    :label: eqn5

    \frac{d\vec x}{dt} = \vec F(\vec x), \quad \quad \vec x(0)  = \vec x_0  \qquad \quad  


gdzie wektory

.. MATH::
    :label: eqn6

    \vec x = [x_1, x_2, x_3, ...., x_n], \quad \quad \vec F = [F_1, F_2, F_3, ..., F_n]


oraz dany jest zbiór warunków początkowych

.. MATH::
    :label: eqn7

    \vec x(0) = [x_1(0), x_2(0), x_3(0), ... , x_n(0)] = \vec x_0 = [x_1^{(0)}, x_2^{(0)}, x_3^{(0)}, ... ,  x_n^{(0)}]  


Wskaźnik :math:`n` mówi, ile równań różniczkowych jest "ukrytych" w powyższym zapisie wektorowym. Innymi słowy, rozważamy układ :math:`n` równań różniczkowych scharaktaryzowanych przez :math:`n` funkcji skalarnych :math:`F_i(x_1, x_2, x_3, ..., x_n), (i=1,2,3, ..., n)`. Zauważmy, że rozważamy funkcje :math:`F_i` które nie zależą w sposób jawny od czasu. W takim przypadku mówimy, że jest to układ autonomiczny :math:`n` równań  różniczkowych zwyczajnych. Ponadto wektor :math:`\vec F` można traktowac jako pole wektorowe stowarzyszone z układem równań różniczkowych lub pole wektorowe generowane przez układ równań różniczkowych. Do tej kwestii powrócimy jeszcze.

Istnienie i jednoznaczność rozwiązań
------------------------------------ 

Do opisu  realnych zjawisk przy pomocy równań różniczkowych zwyczajnych z warunkami początkowymi zadanymi w chwili  czasu :math:`t=0`, potrzebne nam są rozwiązania dla czasów :math:`t>0` (ewolucja czasowa).  Można też rozpatrywać przypadek :math:`t<0` ale to zaliczyłbym do ćwiczeń matematycznych.  Ważnym zagadnieniem jest istnienie rozwiązań równań różniczkowych. Możemy zapytać, czy zawsze rozwiązania równań różniczkowych istnieją i jeżeli istnieją, to czy to są jedyne rozwiązania z warunkiem początkowym. Oczywiście dla różnych warunków początkowych układ może różnie ewoluować, ale gdy startuje  zawsze z tego samego  stanu (warunku) początkowego to czy ewolucja jest taka sama? Na tym polega problem jednoznaczności rozwiązań. Jeżeli dla danego warunku początkowego istnieją  np. 3 rozwiązania, to jak ewoluuje układ: istnieją 3 możliwości i którą możliwość wybiera układ? Gdyby tak było dla realnych układów to nie moglibyśmy przewidywać ewolucji układu, nie moglibyśmy sterować układami, brak byłoby determinizmu.  W rozwoju nauk ścisłych to właśnie determinizm stał się kołem napędowym rozwoju cywilzacyjnego ludzkości. To determinizm pozwala budować urządzenia, które działają tak jak my sobie tego życzymy: telewizor odbiera wybrany przeze mnie program, używam telefonu do komunikacji  z moją rodziną, wystrzelona rakieta ma taką trajektorię jaką zaplanowałem, itd.  Zbadamy 3 przykłady, które przybliżą nam powyższą problematykę. Źródło tych przykładów jest w  książce: J. Hale, H. Kocak, "Dynamics and Bifurcations". Książka jest znakomita.

Przykład 1
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn8

    \frac{dx}{dt}=-2x, \qquad x(0) = x_0


jest równaniem różniczkowym liniowym. Jest to jedno z najprostszych równań różniczkowych.  Można łatwo sprawdzić, że funkcja

.. MATH::
    :label: eqn9

    x(t) = x_0   e^{-2t}


jest rozwiązaniem i spełnia warunek początkowy :math:`x(0) = x_0`. Funkcja ta jest dobrze określona dla wszystkich skończonych  wartości czasu :math:`t \in (-\infty, \infty)`.  Nie ma tu większych ograniczeń.  Jest to jedyne rozwiązanie.  Poniższy rysunek daje wyobrażenie o rozwiązaniach :math:`x(t)` dla 3 różnych warunków początkowych. Przy okazji zauważmy, że wszystkie trzy rozwiązania dążą do tego samego stanu :math:`x=0`  dla długich czasów :math:`t\to \infty`.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g(t,a) = a*exp(-2*t)
    sage: p1=plot(g(t,1),(t,0,2),figsize=(6, 3), legend_label="x(0)=1", color='blue' )
    sage: p2=plot(g(t,0),(t,0,2),figsize=(6, 3), legend_label="x(0)=0", color='red' )
    sage: p3=plot(g(t,-1),(t,0,2),figsize=(6, 3), legend_label="x(0)=-1", color='green' )
    sage: show(p1+p2+p3, axes_labels=[r'$t$',r'$x(t)$'], frame=True, axes=False)

.. end of output

Przykład 2
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn10

    \frac{dx}{dt}= 3 x^2, \qquad x(0) = x_0


jest równaniem różniczkowym nieliniowym.   Prawa strona tego równania jest określona dla wszystkich wartości :math:`x`. Podobnie jak poprzednie równanie, można  je rozwiązać metodą separacji zmiennych. Otrzymamy funkcję

.. MATH::
    :label: eqn11

    x(t) = \frac{x_0}{1-3 x_0 t} 


która jest rozwiązaniem i spełnia warunek początkowy. Funkcja ta nie jest określona dla wszystkich skończonych  wartości czasu :math:`t \in (-\infty, \infty)`.  Istnieją  ograniczenia dla wartości czasu :math:`t`. Ale jest to jedyne rozwiązanie.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: #detect_poles - wykrywanie i rysowanie biegunów
    sage: g=plot(-4.0/(1 +12*t),t,0,5,detect_poles='show',legend_label=r'$x(0)= -4$', color='blue')
    sage: g+=plot(lambda t: 0.0,t,0,5,legend_label=r'$x(0)=0$',color='red')
    sage: g+=plot(1.0/(1-3*t),t,0,0.33,detect_poles='show', legend_label=r'$x(0)=1$',color='green')
    sage: g.show(axes_labels=[r'$t$',r'$x$'],tick_formatter='latex',xmin=0,xmax=0.5,ymin=-4.1,ymax=8, figsize=(7,4), frame=True, axes=False)

.. end of output

Wszystkie rozwiązania z ujemnym warunkiem początkowym :math:`x(0) < 0` sa dobrze zdefiniowane dla wszystkich czasów :math:`t>0` (krzywa niebieska). Podobnie jest z rozwiązaniem :math:`x(t) = 0` dla warunku początkowego :math:`x(0)=0` (krzywa czerwona). Natomiast rozwiązanie z  dodatnim warunkiem początkowym :math:`x(0) > 0` rozbiega się w skończonym czasie :math:`t< 1/3x_0` . Gdyby to równanie miało opisywać ruch cząstki, to oznacza że w skończonym czasie cząstka przebywa nieskończoną odległość. To jest niefizyczne. Równanie  to mogłoby   opisywać proces wybuchu  substancji: :math:`x` mogłoby być objętością pęczniejącej substancji która  wybucha po skończonym czasie. 

Przykład 3
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn12

    \frac{dx}{dt}=  2 \sqrt x, \qquad x(0) = x_0 \ge 0


jest równaniem różniczkowym nieliniowym.  Prawa strona tego równania jest określona dla nieujemnych wartości :math:`x \ge 0`.  Podobnie jak  2 poprzednie równania, można  je rozwiązać metodą separacji zmiennych. Otrzymamy rozwiązanie

.. MATH::
    :label: eqn13

    x(t) = (t +  \sqrt x_0)^2 


Funkcja ta jest określona dla wszystkich wartości czasu :math:`t >0`.   Jest to jedyne  rozwiązanie  z wyjątkiem jednego warunku początkowego: :math:`x(0) = 0`. Dla tego warunku początkowego istnieje jeszcze jedno rozwiązanie, a mianowicie :math:`x(t) = 0`. Tak więc dla :math:`x(0) = 0` mamy  2 różne rozwiązania

.. MATH::
    :label: eqn14

    x(t) = t^2, \qquad x(t) = 0


Jak przebiega ewolucja, gdy układ startuje ze stanu początkowego :math:`x(0) = 0` ? W tym przypadku rozwiązania są niejednoznaczne.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: p1=plot(t*t,(t,0,1),figsize=(6, 3), legend_label="x(0)=1", color='blue' )
    sage: p2=plot(0,(t,0,1),figsize=(6, 3), legend_label="x(0)=0", color='red' )
    sage: show(p1+p2, frame=True, axes=False)

.. end of output

Co jest takiego charakterystycznego w ostatnim przykładzie, że pojawia się niejednoznaczność rozwiązania równania różniczkowego?  Na to pytanie daje odpowiedź  twierdzenie o jednoznaczności rozwiązania równania różniczkowego. Potrzebna nam będzie własność funkcji:

Mówimy, że funkcja :math:`f(x)` spełnia  warunek Lipschitza na zbiorze otwartym :math:`U` jeżeli istnieje taka stała :math:`L > 0`,  że

.. MATH::
    :label: eqn15

    |f(x) -f(y)| \le L|x- y|


dla wszystkich :math:`x, y2 \in U`.

Warunek Lipschitza można zapisać w postaci

.. MATH::
    :label: eqn16

    |f(x+h) -f(x)| \le L h \quad \quad \mbox{lub jako} \quad \quad \frac{f(x+h) - f(x)}{h}| \le L


Z tego wynika że jeżeli  :math:`f(x)` ma ograniczoną pochodną, to spełnia warunek Lipschitza. Są  oczywiście nieróżniczkowalne funkcje, które spełniają warunek Lipschitza.

 

Twierdzenie Picarda: Jeżeli funkcja :math:`f(x)` jest ciągła w :math:`U` oraz spełnia warunek Lipschtza w  :math:`U` wówczas równanie różniczkowe 

.. MATH::
    :label: eqn17

    \frac{dx}{dt} = f(x), \qquad x(0) = x_0


ma dokładnie jedno rozwiązanie w :math:`U`.

Istnieje kilka  modyfikacji tego twierdzenia, ale na nasze potrzeby ta najprostsza wersja jest wystarczająca.

W przypadku układu równań różniczkowych, warunek Lipschitza ma postać

.. MATH::
    :label: eqn18

    |F_i(x_1, x_2, x_3, ..., x_n) - F_i(y_1, y_2, y_3, ..., y_n)| \le L  \sum_{k=1}^n|x_k-y_k|


Nierówność ta musi  być spełniona dla wszystkich funkcji :math:`F_i` i twierdzenie Picarda brzmi podobnie. Warunek Lipschitza jest spełniony gdy pochodne cząstkowe są ograniczone,

.. MATH::
    :label: eqn19

    \lvert\frac{\partial F_i}{\partial x_k}\rvert \le K


dla dodatnich :math:`K`.

Teraz możemy odpowiedzieć, dlaczego w 3 przykładzie rozwiązanie jest niejednoznaczne: funkcja :math:`f(x) = 2\sqrt x` nie spełnia warunku Lipschitza ponieważ pochodna

.. MATH::
    :label: eqn20

    \frac{df(x)}{dx} = \frac{1}{\sqrt x}


w punkcie :math:`x=0` jest rozbieżna. W punktach :math:`x>0`  pochodna ma wartość skończoną i jest spełnione twierdzenie Picarda. Dlatego też  rozwiązania są jednoznaczne dla :math:`x(0) > 0`.

 

Przestrzeń fazowa
-----------------

Jeszcze raz przepiszemy równania różniczkowe   :eq:`eqn5`  w  notacji:

.. MATH::
    :label: eqn21

    \frac{dx_1}{dt} = F_1(x_1, x_2, x_3, ..., x_n)

    \frac{dx_2}{dt} = F_2(x_1, x_2, x_3, ..., x_n)

    \vdots

    \frac{dx_n}{dt} = F_n(x_1, x_2, x_3, ..., x_n)


Powyższy układ równań różniczkowych  definiuje pewien układ dynamiczny (matematyczna definicja układu dynamicznego może być bardzo abstrakcyjna, ale na nasze potrzeby wystarczy to, co napisaliśmy).  Zbiór wszystkich możliwych wartości :math:`\{x_1, x_2, x_3, ..., x_n\}` tworzy zbiór który nazywamy przestrzenią fazową układu :eq:`eqn24`. Wymiar tej przestrzeni wynosi :math:`n`, czyli tyle ile jest równań różniczkowych.

W zależności od kontekstu, będziemy stosowali różne zapisy tych samych równań.

Przykłady:

1. Jedno równanie różniczkowe. Zwykle będziemy stosowali  zapis

  .. MATH::
      :label: eqn25

      \frac{dx}{dt} = \dot x = f(x)


  Przestrzeń fazowa  jest 1-wymiarowa.

2. Dwa równania różniczkowe. Zwykle będziemy stosowali  zapis

  .. MATH::
      :label: eqn26

      \frac{dx}{dt} = \dot x = f(x, y)

      \frac{dy}{dt} = \dot y= g(x, y)


  Przestrzeń fazowa  jest 2-wymiarowa.

3. Trzy  równania różniczkowe. Zwykle będziemy stosowali  zapis

  .. MATH::
      :label: eqn28

      \frac{dx}{dt} = \dot x = f(x, y, z)

      \frac{dy}{dt} = \dot y= g(x, y, z)

      \frac{dz}{dt} = \dot z= h(x, y, z)


  Przestrzeń fazowa  jest 3-wymiarowa.

4. Równanie Newtona dla cząstki poruszającej się tylko wzdłuż osi :math:`OX` na którą działa siła :math:`F(x)` zależna tylko od położenia  ma postać

  .. MATH::
      :label: eqn31

      m \ddot x= F(x)


  gdzie :math:`m` jest masą czastki. Jest to równanie różniczkowe 2-go rzędu i jest ono  równoważne układowi 2 równań różniczkowych 1-go rzędu:

  .. MATH::
      :label: eqn32

      \dot x = v
      
      \dot v = \frac{1}{m} F(x)


  Przestrzeń fazowa  jest 2-wymiarowa: jest to zbiór możliwych położeń i prędkości cząstki, :math:`\{x, v\}`.  
  Mimo swej prostoty, ten model jest niesłychanie ważny. Stanowi on punkt wyjścia dla zrozumienia wielu ważnych 
  aspektów układów dynamicznych. 

Geometryczne własności przestrzeni fazowej
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Krzywa fazowe
"""""""""""""

Aby uniknąć na tym etapie abstrakcyjnych definicji, będziemy rozważać dla przykładu 2-wymiarowy układ dynamiczny

.. MATH::
    :label: eqn33

     \dot x = f(x, y), \quad \quad x(0) = x_0 

     \dot y= g(x, y),\quad \quad y(0) = y_0 


Przestrzeń fazowa jest 2-wymiarowa. Może to być płaszczyzna lub jej część. Ale może to być bardziej skomplikowany zbiór 2-wymiarowy. Na przykład może to być sfera (podobna do  powierzchnii piłki), może to być torus (podobny do dętki rowerowej). Mogą to być jeszcze bardziej skomplikowane obiekty 2-wymiarowe. Ale dla naszych celów wystarczy rozważać płaszczyznę. Na płaszczyźnie można estetycznie przedstawiać coś w formie rysunków. Wprowadzamy na płaszczyźnie kartezjański układ współrzędnych o osiach OX i OY. Warunek początkowy :math:`\{x_0=x(0), y_0=y(0)\}` jest punktem o odpowiednich współrzędnych. Rozwiązyjemy powyższy układ równań różniczkowych numerycznie przy pomocy najprostszego schematu:

.. MATH::
    :label: eqn35

    \frac{x(t+h) - x(t)}{h} = f(x(t), y(t))

    \frac{y(t+h) - y(t)}{h} = g(x(t), y(t))


Przepiszemy to w postaci

.. MATH::
    :label: eqn37

    x(t+h) = x(t) + f(x(t), y(t)) h

    y(t+h) = y(t) + g(x(t), y(t)) h


I. Obliczenia numeryczne musimy zacząć od warunku początkowego w chwili :math:`t=0`, czyli w pierwszym kroku obliczamy

  .. MATH::
      :label: eqn39

      x_1 =x(h) = x(0) + f(x(0), y(0)) h

      y_1 = y(h) = y(0) + g(x(0), y(0)) h


  Na płaszczyżnie otrzymujemy punkt o współrzędnych :math:`\{x_1, y_1\}`. Zaznaczmy go na płaszczyźnie. Teraz mamy już 2 punkty:

  .. MATH::
      :label: eqn41

      \{x_0, y_0\}, \quad \quad \{x_1, y_1\}


II. W następnym kroku wybieramy czas :math:`t=h`:

  .. MATH::
      :label: eqn42

      x_2 =x(h+h) = x(2h) =  x(h) + f(x(h), y(h)) h
      
      y_2 = y(h+h) = y(2h) =  y(h) + g(x(h), y(h)) h


  Wykorzystamy oznaczenie jek wyżej: :math:`x_1 =  x(h),  y_1 = y(h)` i przepiszemy te równania w postaci

  .. MATH::
      :label: eqn43

      x_2 =  x_1 + f(x_1, y_1) h

      y_2 =  y_1 + g(x_1, y_1) h


  Na płaszczyżnie otrzymujemy punkt o współrzędnych :math:`\{x_2, y_2\}`. Zaznaczmy go na płaszczyźnie. Teraz mamy już 3 punkty:

  .. MATH::
      :label: eqn45

      \{x_0, y_0\}, \quad \quad \{x_1, y_1\},  \quad \quad \{x_2, y_2\}


III. Widzimy od razu, że w 3 kroku otrzymujemy równania

  .. MATH::
      :label: eqn46

      x_3 =  x_2 + f(x_2, y_2) h
      
      y_3 =  y_2 + g(x_2, y_2) h


  i otrzymujemy punkt o współrzędnych :math:`\{x_3, y_3\}`.

IV. Zauważamy, że w n-tym kroku otrzymujemy równania

  .. MATH::
      :label: eqn48

      x_n =  x_{n-1} + f(x_{n-1}, y_{n-1}) h
      
      y_n =  y_{n-1} + g(x_{n-1}, y_{n-1}) h


V. Częściej pisze się, co się otrzymuje w następnym kroku, czyli n+1 :

  .. MATH::
      :label: eqn50

      x_{n+1} =  x_n + f(x_n, y_n) h

      y_{n+1} =  y_n + g(x_n, y_n) h


Otrzymujemy równania rekurencyjne, które pozwalają wyznaczyć ewolucję układu, czyli rozwiązanie numeryczne układu równań różniczkowych. Na płaszczyżnie :math:`XY` otrzymujemy ciąg punktów o współrzędnych

.. MATH::
    :label: eqn52

    \{x_n, y_n\}


Jeżeli przyrost czasu :math:`h` jest odpowiednio mały, to ten ciąg punktów łączymy linią ciągłą i otrzymujemy  krzywą na płaszczyźnie. Ta krzywa nazywa się krzywą fazową układu dynamicznego.   Mając narysowaną taką krzywą fazową, możemy wnioskować o ewolucji układu i cechach charakterystycznych zachowania się układu w czasie :math:`t`.       Poniżej przedstawiamy dwa przykłady: krzywe fazowe dla oscylatora harmonicznego  i oscylatora harmonicznego tłumionego.  

Oscylator harmoniczny
+++++++++++++++++++++

Przykładem oscylatora harmonicznego jest ciało o masie :math:`m` przyczepione do sprężyny i poruszające się wzdłuż osi :math:`OX`.  Siła działające na to ciało jest proporcjonalna do wychylenia :math:`x` od położenia równowagi i przeciwnie skierowana do wychylenia; gdy rozciągamy sprężynę w kierunku większych dodatnich wartości :math:`x` to siła działa w kierunku ujemnych wartości :math:`x`: 

.. MATH::
    :label: eqn53

     F = -kx


gdzie :math:`k` charakteryzuje "sprężystość" sprężyny. Równanie Newtona ma postać:

.. MATH::
    :label: eqn54

    m\ddot x = -kx, \quad \quad \mbox{lub w postaci} \quad \quad \ddot x = -(k/m) x = -\omega^2 x


gdzie :math:`\omega^2 = k/m`. To równanie drugiego rzędu jest równoważne 2 równaniom pierwszego rzędu:

.. MATH::
    :label: eqn55

    \dot x = y, \quad \quad x(0) = x_0

    \dot y = -\omega^2 x, \quad \quad y(0) = y_0


Tłumiony oscylator harmoniczny
++++++++++++++++++++++++++++++

Jeżeli w poprzednim przykładzie założymy bardziej realistyczną sytuację, w której  układ nie jest w próżni, ale znajduje się w środowisku (np. w powietrzu, w wodzie lub innej cieczy), to na ciało działa dodatkowa siła, a mianowicie siła tarcia  (tłumienia) :math:`F_d`. Siła tarcia jest proporcjonalna do prędkości cząstki i przeciwnie skierowana do kierunku ruchu

.. MATH::
    :label: eqn57

    F_d = -\gamma_0 v = -\gamma_0 \dot x


gdzie :math:`\gamma_0` nazywa sie współczynnikiem tarcia (tłumienia). 

Siła tarcia jest związana z oddziaływaniem ciała z cząsteczkami otoczenia. Otoczenie stawia opór gdy ciało porusza się w nim i im większa jest prędkość ciała tym większy jest opór otoczenia. Doświadczamy to, gdy biegniemy cali zanurzeni w wodzie. 

Uwzględniając siłę tarcia, równanie Newtona przyjmuje postać

.. MATH::
    :label: eqn58

    m\ddot x = -kx - \gamma_0 \dot x, \quad \quad \mbox{lub w postaci} \quad \quad \ddot x = -\frac{k}{m} x - \frac{\gamma_0}{m} x = -\omega^2 x - \gamma \dot x


gdzie :math:`\omega^2 = k/m`  oraz :math:`\gamma = \gamma_0/m`. Równanie  powyższe  jest równoważne 2 równaniom pierwszego rzędu:

.. MATH::
    :label: eqn59

    \dot x = y, \quad \quad x(0) = x_0
    
    \dot y = -\gamma y -\omega^2 x, \quad \quad y(0) = y_0


Oczywiście gdy :math:`\gamma = 0`, wówczas  otrzymujemy równanie oscylatora harmonicznego bez tarcia (nietłumionego).

Poniżej przedstawiamy krzywe fazowe dla tych 2 przykładów.

Oscylator harmoniczny bez tarcia
++++++++++++++++++++++++++++++++

.. sagecellserver::
    :is_verbatim: True

    sage: var('x y')
    sage: def schemat_eulera2D(vec, ics, Tlist):
    ...    i = 0
    ...    dx = [ics[0]]
    ...    dy = [ics[1]]
    ...    h = Tlist[i+1] - Tlist[i]
    ...    iks(x,y) = vec[0R]*h
    ...    igrek(x,y) = vec[1R]*h
    ...    for time in Tlist:
    ...        dx.append(dx[i] + iks(dx[i],dy[i]))
    ...        dy.append(dy[i] + igrek(dx[i],dy[i]))
    ...        i += 1
    ...    return zip(dx,dy)
    sage: #
    sage: @interact(layout={'top':[['omega','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.005','0.01','0.05','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(0, width=10), omega=input_box(1,label=r'$\omega$', width=10)):
    ...    global oscylator_nietlumiony, background
    ...    if T == 0:
    ...        T = 2*pi/omega
    ...    listT = srange(0,T,float(h), include_endpoint=True)
    ...    background = desolve_odeint(vector([y,-omega^2*x]), [x0, y0], srange(0,T+0.1,0.1,include_endpoint=True), [x,y])
    ...    oscylator_nietlumiony = schemat_eulera2D([y,-omega^2*x], [x0, y0], listT)
    ...    print r'Parametry modelu'
    ...    html(r'$\omega=%s, x_0=%s, y_0=%s$'%(omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    ...    print '\nDla T=0 lista generowana jest automatycznie dla jednego okresu własnego oscylatora'
    sage: #
    sage: @interact
    sage: def _(krok=slider(1, len(oscylator_nietlumiony), 1, default=1, label=r'krok')):
    ...    
    ...    buf = zip(*oscylator_nietlumiony)
    ...    minx, maxx, miny, maxy = min(buf[0]), max(buf[0]), min(buf[1]), max(buf[1])
    ...    kroki = oscylator_nietlumiony[:krok]
    ...    kroki_plot = list_plot(kroki, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=minx, xmax=maxx, ymin=miny, ymax=maxy)
    ...    
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    
    ...    full_plot = list_plot(oscylator_nietlumiony, plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    ...    full_plot += list_plot(background.tolist(), plotjoined=1, color='grey', alpha=0.5)
    ...    html.table([["krzywe fazowe dla oscylatora bez tarcia",""],[full_plot+kroki_plot,kroki_plot+txt_plot]])

.. end of output

W przypadku oscylatora nietłumionego, krzywe fazowe są zamknięte. Cząstka z biegiem czasu porusza się tak, że położenie :math:`x` i prędkość :math:`v=y`  leżą na krzywej fazowej. Ponieważ jest to krzywa zamknięta, to po pewnym czasie cząstka znowu "przebiega" punkty, które się powtarzają. Powtarzanie się jest cechą charakterystyczną ruchu okresowego. Tak więc krzywa fazowa zamknięta przedstawia ruch okresowy (periodyczny). Okres takiego ruchu periodycznego to czas potrzebny na to, aby cząstka startując od punktu np. :math:`\{x_0, y_0\}` i  poruszając się po krzywej fazowej dotarła znowu do tego samego punktu  :math:`\{x_0, y_0\}`.

W przypadku oscylatora tłumionego, krzywą fazową jest spirala zwijająca sie do punktu :math:`\{0, 0\}`. Ruch po spirali oznacza, że zarówno :math:`x` jak i :math:`v=y` maleją w czasie i dla długich czasów położenie :math:`x` oraz prędkość :math:`v` dążą do zera, czyli cząstka zwalnia i na końcu zatrzymuje się. To jest ruch tłumiony: amplituda drgań maleje w czasie. To jest to, co obserwujemy w ruchu kulki zawieszonej na nitce: kulka wukonuje coraz to mniejsze drgania i po długim czasie wisi pionowo ( to jest coś co nazywa sie stanem równowagi lub położeniem stacjonarnym).

Gdy mamy bardziej skomplikowane krzywe fazowe, ich "rozszyfrowanie" może być trudniejsze. Ale ogólna zasada jest taka: gdy :math:`x` rośnie to oznacza wzrost położenia cząstki. Gdy :math:`y` maleje to oznacza, że maleje prędkość cząstki.  Gdy :math:`x` maleje to maleje współrzędna położenia cząstki. Gdy :math:`y` rośnie to rośnie prędkość cząstki.

Tłumiony oscylator harmoniczny
++++++++++++++++++++++++++++++

.. sagecellserver::
    :is_verbatim: True

    sage: var('x y')
    sage: def schemat_eulera2D(vec, ics, Tlist):
    ...    i = 0
    ...    dx = [ics[0]]
    ...    dy = [ics[1]]
    ...    h = Tlist[i+1] - Tlist[i]
    ...    iks(x,y) = vec[0R]*h
    ...    igrek(x,y) = vec[1R]*h
    ...    for time in Tlist:
    ...        dx.append(dx[i] + iks(dx[i],dy[i]))
    ...        dy.append(dy[i] + igrek(dx[i],dy[i]))
    ...        i += 1
    ...    return zip(dx,dy)
    sage: #
    sage: @interact(layout={'top':[['omega','ggamma','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.05','0.01','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(0, width=10), omega=input_box(1,label=r'$\omega$', width=10), ggamma=input_box(0.5,label=r'$\gamma$', width=10)):
    ...    global oscylator_tlumiony, globggamma, globomega, background2
    ...    globggamma = ggamma
    ...    globomega = omega
    ...    if T == 0: 
    ...        T = 2*pi/omega
    ...    listT = srange(0,T,float(h),include_endpoint=True)
    ...    background2 = desolve_odeint(vector([y,-omega^2*x-ggamma*y]), [x0, y0], srange(0,2*pi/omega+0.1,0.1,include_endpoint=True), [x,y])
    ...    oscylator_tlumiony = schemat_eulera2D([y,-omega^2*x-ggamma*y], [x0, y0], listT)
    ...    print r'Parametry modelu'
    ...    html(r'$\gamma=%s, \omega=%s, x_0=%s, y_0=%s$'%(ggamma,omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    ...    print '\nDla T=0 lista generowana jest automatycznie dla jednego okresu własnego oscylatora'
    sage: #
    sage: @interact    
    sage: def _(krok=slider(1, len(oscylator_tlumiony), 1, default=1, label=r'krok')):
    ...    buf = zip(*oscylator_tlumiony)
    ...    minx, maxx, miny, maxy = min(buf[0]), max(buf[0]), min(buf[1]), max(buf[1])
    ...    kroki = oscylator_tlumiony[:krok]
    ...    kroki_plot = list_plot(kroki, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=minx, xmax=maxx, ymin=miny, ymax=maxy)
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    full_plot = list_plot(oscylator_tlumiony, plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    ...    full_plot += list_plot(background2.tolist(), plotjoined=1, color='grey', alpha=0.5)
    ...    html.table([["krzywe fazowe dla oscylatora tłumionego",""],[full_plot+kroki_plot,kroki_plot+txt_plot]])

.. end of output

Pole wektorowe
--------------

Prawe strony układu równań różniczkowych  

.. MATH::
    :label: eqn61

     \dot x = f(x, y), \quad \quad x(0) = x_0 

     \dot y= g(x, y),\quad \quad y(0) = y_0 


można traktować jak składowe pewnego pola wektorowego:

.. MATH::
    :label: eqn63

    \vec F = [F_x, F_y] = [f(x, y), g(x, y)]


W każdym punkcie płaszczyzny o współrzędnych :math:`\{x, y\}` rysujemy wektor  o składowych  :math:`[f(x, y), g(x, y)]`. W ten sposób otrzymujemy pole wektorowe. No dobrze, ale jaką informację o układzie można "wyciągnąć" z tego pola wektorowego. Wykonajmy takie oto ćwiczenie numeryczne: Startujemy z warunku początkowego :math:`\{x_0, y_0\}` i rysujemy w tym punkcie wektor o składowych :math:`[f(x_0, y_0), g(x_0, y_0)]` czyli

.. MATH::
    :label: eqn64

    \mbox{w punkcie }  \quad \{x_0, y_0\}   \quad \mbox{rysujemy wektor o składowych} \quad [f(x_0, y_0), g(x_0, y_0)]


Jak poprzednio, rozwiązujemy numerycznie układ równań różniczkowych i obliczamy  :math:`\{x_1, y_1\}`:

.. MATH::
    :label: eqn65

    \mbox{w punkcie }  \quad \{x_1, y_1\}   \quad \mbox{rysujemy wektor o składowych} \quad [f(x_1, y_1), g(x_1, y_1)]


Następnie obliczamy  :math:`\{x_2, y_2\}`:

.. MATH::
    :label: eqn66

    \mbox{w punkcie }  \quad \{x_2, y_2\}   \quad \mbox{rysujemy wektor o składowych} \quad [f(x_2, y_2), g(x_2, y_2)]


W n-tym kroku iteracji obliczamy  :math:`\{x_n, y_n\}`:

.. MATH::
    :label: eqn67

    \mbox{w punkcie }  \quad \{x_n, y_n\}   \quad \mbox{rysujemy wektor o składowych} \quad [f(x_n, y_n), g(x_n, y_n)]


Ponieważ wszystkie powyższe punkty  :math:`\{x_i, y_i\}` leżą na krzywej fazowej, to wektory :math:`[f(x_i, y_i), g(x_i, y_i)]`  są przyczepione do tych krzywych fazowych. Zauważamy, że wektory te są styczne do krzywej fazowej. Jeżeli :math:`\{x_i, y_i\}` miały by interpretacje położenia cząstki na płaszczyźnie, to wektory  :math:`[f(x_i, y_i), g(x_i, y_i)]` miały by interpretację prędkości ponieważ :math:`\dot x = f(x, y)` oraz :math:`\dot y = g(x, y)`. Wiemy, że :math:`\dot x = v_x` jest x-ową składową prędkości, z kolei :math:`\dot y = v_y` jest y-ową składową prędkości. Innymi słowy, otrzymane pole wektorowe to pole prędkości fikcyjnej cząstki.

.. sagecellserver::
    :is_verbatim: True
    
    sage: var('x y')
    sage: @interact(layout={'top':[['omega','ggamma','x0','y0']],'bottom':[['T','h']]})
    sage: def _(title=['a','b'], h=selector(['0.05','0.01','0.1','0.5','1'], default='0.1', buttons=True),x0=input_box(2,label=r'$x_0$', width=10), y0=input_box(4,label=r'$y_0$', width=10), T=input_box(20, width=10), omega=input_box(1,label=r'$\omega$', width=10), ggamma=input_box(0.5,label=r'$\gamma$', width=10)):
    ...    global oscylator_tlumiony, globggamma, globomega
    ...    globggamma = ggamma
    ...    globomega = omega
    ...    listT = srange(0,T,float(h))
    ...    oscylator_tlumiony = desolve_odeint(vector([y,-omega^2*x-ggamma*y]), [x0, y0], listT, [x,y])   
    ...    print r'Parametry modelu'
    ...    html(r'$\gamma=%s, \omega=%s, x_0=%s, y_0=%s$'%(ggamma,omega,x0,y0))
    ...    print r'Parametry symulacji'
    ...    html(r'$h=%s, T=%s$'%(h,T))
    sage: vf = lambda u,a,b: (u[0]+u[1],u[1]-a*u[0]-b*u[1])
    sage: #
    sage: @interact
    sage: def _(krok=slider(1, len(oscylator_tlumiony), 1, default=1, label=r'krok')):
    ...    kroki = oscylator_tlumiony[:krok]
    ...    kroki_plot = list_plot(kroki.tolist(), figsize=(4,4), axes_labels=[r'$x$',r'$y$'], size=30, xmin=-4.5, xmax=4.5, ymin=-4.5, ymax=4.5)
    ...    pole_wektorowe = arrow(kroki[0],vf(kroki[0],globomega^2,globggamma),color='red',xmax=vf(kroki[0],globomega^2,globggamma)[0])
    ...    for krok in kroki[1:]:
    ...        pole_wektorowe += arrow(krok,vf(krok,globomega^2,globggamma),color='red', width=.4)      
    ...    txt_plot = text(r'$[x_0,y_0]$',kroki[0],vertical_alignment='bottom',horizontal_alignment='left')
    ...    for i in range(1,len(kroki)):
    ...        txt_plot += text(r'$[x_{%d},y_{%d}]$'%(i,i),kroki[i],vertical_alignment='bottom',horizontal_alignment='left')
    ...    shadowplot = list_plot(oscylator_tlumiony.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'], alpha=0.2) 
    ...    full_plot = list_plot(oscylator_tlumiony.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$']) + plot_vector_field([y,-globomega^2*x-globggamma*y], (x, -4.5, 4.5), (y, -4.5, 4.5), plot_points=20, color='lime')
    ...    html.table([["krzywe fazowe dla oscylatora tłumionego",""],[full_plot+kroki_plot,shadowplot+kroki_plot+txt_plot+pole_wektorowe]])

.. end of output

Poniżej znajdziecie komórkę, w której zachęcamy wszystkich do poeksperymentowania z różnymi modelami. Miłej zabawy...

.. tip::
   
   Aby całość zadziałała poprawnie musicie zadeklarować model podając ``dx`` i ``dy``, 
   podać wartości wszystkich parametrów (teraz jest tylko ``alpha``)
   oraz warunki początkowe ``x0`` i ``y0``. 
   Na koniec zdecudujcie jaki okres dynamiki punktu chcecie symulować 
   przypisując do zmiennej ``T`` odpowiednią wartość.

.. sagecellserver::
    :is_verbatim: True

    sage: #########
    sage: # Model #
    sage: #########
    sage: # zmienne
    sage: var('x y')
    sage: #
    sage: # parametry
    sage: # UWAGA: jeżeli Twój model będzie zależny od innych parametrów 
    sage: #        tu właśnie musisz je wszystkie wyspecyfikować
    sage: alpha = 1
    sage: #
    sage: # warunki początkowe
    sage: x0 = 1
    sage: y0 = 1
    sage: #
    sage: # model
    sage: dx = y
    sage: dy = -alpha*x - y
    sage: #
    sage: # czas (T) symulacji
    sage: T = 12
    sage: #
    sage: ###################################################
    sage: # Symulacje + wizualizacja                        #
    sage: ###################################################
    sage: listT = srange(0,T,0.1,include_endpoint=True)
    sage: numeryka = desolve_odeint(vector([dx, dy]), [x0, y0], listT, [x,y])
    sage: przestrzen_fazowa = list_plot(numeryka.tolist(), plotjoined=1, figsize=(4,4), axes_labels=[r'$x$',r'$y$'])
    sage: pole_wektorowe = plot_vector_field([dx,dy], (x, numeryka[:,0].min(), numeryka[:,0].max()), (y, numeryka[:,1].min(), numeryka[:,1].max()), plot_points=10, color='lime')
    sage: show(przestrzen_fazowa+pole_wektorowe)

.. end of output
