.. -*- coding: utf-8 -*-

.. Dynamika deterministyczna
.. -------------------------

Opis i modelowanie zjawisk oraz procesów przy pomocy równań różniczkowych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jednym z podstawowych praw fizyki, jakie poznajemy w szkole średniej jest II zasada dynamiki Newtona. Opisuje ona klasyczne układy mechaniczne. Układy te są idealizacją realnych układów występujących w otaczającym nas świecie. W najprostszej wersji II zasada dynamiki Newtona w odniesieniu do jednej cząstki poruszającej się tylko wzdłuż jednej osi współrzędnych, np. wzdłuż osi OX, może być sformułowana w następującej postaci: 

.. 
  
  Ruch cząstki jest zdeterminowany przez siły jakie działają na cząstkę

Z punktu widzenia matematycznego, ruch cząstki opisany jest przez równanie Newtona:

.. MATH::
    :label: eqn1

    m a = F

W równaniu tym występują trzy wielkości:

:math:`m`  to masa cząstki
:math:`a` jest przyśpieszeniem cząstki
:math:`F` jest siłą działającą na czastkę.
Ponieważ ruch zachodzi tylko wzdłuż osi OX (tak zakładamy dla prostoty), siła  :math:`F`  działa tylko w kierunku OX oraz przyśpieszenie :math:`a` jest wzdłuż osi OX.

Wiemy z kursu fizyki, że przyśpieszenie cząstki jest pochodną ( względem czasu) pierwszego rzędu prędkości :math:`v` cząstki. Z kolei prędkość cząstki :math:`v` jest pochodną pierwszego rzędu położenia czastki :math:`x`. 

.. MATH::
    :label: eqn2

    a= \frac{d}{dt} v= \frac{d}{dt} \frac{d}{dt} x = \frac{d^2x}{dt^2}

W ogólnej postaci siła

.. MATH::
    :label: eqn3

    F = F(x, v, t) = F(x, dx/dt, t)

może zależeć od położenia :math:`x` cząstki, jej prędkości :math:`v=dx/dt` oraz czasu :math:`t`. 

Jeżeli przyśpieszenie :math:`a` oraz siłę :math:`F` w takiej postaci podstawimy do równania Newtona, to jego postać jest następująca:

.. MATH::
    :label: eqn4

     m  \frac{d^2x}{dt^2} = F\left(x, \frac{dx}{dt}, t\right) \qquad  

W ten sposób otrzymujemy równanie różniczkowe, które opisuje jednowymiarowy ruch cząstki wzdłuż osi OX.  Co możemy powiedzieć o tym równaniu:

Jest to równanie różniczkowe drugiego rzędu, ponieważ pojawia się  pochodna drugiego rzędu :math:`d^2x/dt^2`.
Jest to równanie różniczkowe zwyczajne, ponieważ  nie występują pochodne cząstkowe a jedynie pochodne ze względu na jedną zmienną - w tym przypadku pochodne względem czasu :math:`t`.
Samo równanie Newtona nie wystarczy, aby opisać ruch cząstki. Musimy zadać warunki początkowe dla tego równania. Ponieważ jest to równanie drugiego rzędu, musimy zadać dwa warunki początkowe: początkowe położenie :math:`x(t_0) = x_0` oraz początkową  prędkość :math:`v(t_0) = v_0`. Warunki początkowe można zadać w dowolnej chwili czasu :math:`t_0`, ale zazwyczaj tą chwilą początkową jest umowna chwila  :math:`t_0 = 0`. 
Równanie :eq:`eqn4` możemy zatem przedstawić w równoważnej postaci:

.. MATH::
    :label: eqn5

    \frac{dx}{dt} = v \qquad  

.. MATH::
    :label: eqn6

    \frac{dv}{dt} = \frac{1}{m} F\left(x, v, t\right) \qquad  

gdzie wprowadziliśmy nową zmienną :math:`v` która ma interpretację prędkości cząstki. W ten sposób otrzymaliśmy układ 2 równań różniczkowych pierwszego rzędu. Jak później zobaczymy, taka manipulacja jest użyteczna przy wprowadzeniu pojęcia przestrzeni fazowej dla równań różniczkowych.  Jeżeli siła :math:`F` nie zależy w sposób jawny od czasu, to układ równań 

.. MATH::
    :label: eqn7

    \frac{dx}{dt} = v \qquad  

.. MATH::
    :label: eqn8

     m \frac{dv}{dt} =  F(x, v) \qquad  

nazywamy autonomicznym. Innymi słowy, jest to autonomiczny układ 2 równań różniczkowych zwyczajnych 1-rzędu. Mówimy wówczas, że jego przestrzeń fazowa jest 2-wymiarowa.

Jeżeli cząstka porusza się na płaszczyźnie :math:`(X, Y)`, to równanie Newtona ma postać:

.. MATH::
    :label: eqn9

     m  \frac{d^2x}{dt^2} = F\left(x, y, \frac{dx}{dt}, \frac{dy}{dt}, t\right) \qquad  

.. MATH::
    :label: eqn10

     m  \frac{d^2y}{dt^2} = G\left(x, y, \frac{dx}{dt}, \frac{dy}{dt}, t\right) \qquad  

gdzie :math:`F`  i  :math:`G`  są składowymi siły działającymi  na cząstkę w kierunku :math:`x` oraz :math:`y`. W ogólnym przypadku siły te zależą od położenia cząstki :math:`(x, y)`, jej składowych prędkości :math:`(dx/dt, dy/dt)` oraz czasu :math:`t`.

Jeżeli składowe siły :math:`F`  i :math:`G`  nie zależą w sposób jawny od czasu, to postępując podobnie jak poprzednio otrzymamy układ: 

.. MATH::
    :label: eqn11

    \frac{dx}{dt} = v \qquad  

.. MATH::
    :label: eqn12

    \frac{dy}{dt} = u \qquad  

.. MATH::
    :label: eqn13

     m  \frac{dv}{dt} = F(x, y, v, u) \qquad  

.. MATH::
    :label: eqn14

     m  \frac{du}{dt} = G(x, y, v, u ) \qquad  

Jest to autonomiczny układ 4 równań różniczkowych zwyczajnych 1-rzędu. Mówimy wówczas, że jego przestrzeń fazowa jest 4-wymiarowa.

Dla cząstki poruszającej się w przestrzeni :math:`(X, Y, Z)`, mamy 3 równania Newtona 2-rzędu. Jeżeli  3 składowe siły   nie zależą w sposób jawny od czasu, to postępując podobnie jak poprzednio otrzymamy  układ 6 równań różniczkowych 1-rzędu i przestrzeń fazowa jest 6-wymiarowa.W ogólności, dla :math:`N` cząstek poruszających się w przestrzeni, przestrzeń fazowa ma wymiar :math:`6N`. Analiza takich równań przekracza możliwości współczesnej matematyki w tym sensie, że mało wiemy o ogólnych własnościach konkretnych układów, które modelujemy.  To powoduje, że musimy stosować numeryczne metody i komputer jest nieodzownym narzędziem analizy.

Powyżej podaliśmy jeden przykład modelowania. Bazuje on na formaliźmie Newtona i równaniach  ruchu Newtona, Może być stosowany do opisu dynamiki cząstek klasycznych. Czasami wygodnie jest stosować inny formalizm jak na przykład formalizm Lagrange'a lub formalizm Hamiltona. W wielu przypadkach wszystkie trzy formalizmy są równoważne. Dla tzw. układów z więzami, wygodnie jest stosować formalizm Lagrange'a lub formalizm Hamiltona.

Definiując układ równań różniczkowych jako autonomiczny, zakładaliśmy że siła nie zależy w sposób jawny od czasu. Może wydawać się, że jest to jakieś ograniczenie. Nie jest to prawdą. Układy nieautonomiczne można sprowadzić do układów autonomicznych wprowadzając dodatkową zmienną niezależną, dodatkowe "położenie". Pokażemy to na prostym przykładzie. Rozpatrzmy cząstkę poruszającą się wzdłuż osi X. Na cząstkę działa siła tarcie proporcjonalna do prędkości cząstki, :math:`F = -\gamma v`, działa siła potencjalna :math:`F(x) = -V'(x)` pochodząca od energii potencjalnej :math:`V(x)` (nazywanej skrótowo potencjałem). Siła ta jest ujemnym gradientem potencjału (czyli pochodną :math:`V'(x)`). Dodatkowo na cząstkę działa periodyczna w czasie siła :math:`F(t)  = A cos(\omega t)`. Równanie Newtona ma postać

.. MATH::
    :label: eqn15

    m\ddot x = -\gamma \dot x - V'(x) + A cos(\omega t) \qquad  

gdzie kropki oznaczają pochodne względem czasu, a apostrof oznacza pochodną względem :math:`x`. I tak

.. MATH::
    :label: eqn16

    \dot x = \frac{dx}{dt}, \qquad \ddot x = \frac{d^2x}{dt^2}, \qquad V'(x) = \frac{dV(x)}{dx} 

Równanie to możemy przedstawić w postaci układu 3 równań różniczkowych:

.. MATH::
    :label: eqn17

    \dot x = v \qquad  

.. MATH::
    :label: eqn18

    m \dot v = -\gamma v -V'(x) + A cos (z)\qquad  

.. MATH::
    :label: eqn19

    \dot z = \omega\qquad  

Równoważność  pokazujemy  w następujący sposób:

w równaniu  :eq:`eqn18`  należy zastąpić :math:`v`   z równania :eq:`eqn17` wyrażeniem   :math:`v=\dot x` pamiętając jednocześnie że :math:`\dot v = \ddot x`
równanie :eq:`eqn19` można scałkować i otrzymamy :math:`z=\omega t`; wstawiamy to wyrażenie do równania :eq:`eqn18`.
W ten sposób otrzymujemy znowu równanie :eq:`eqn15`. Tak więc jedno równanie różniczkowe nieutonomiczne 2-rzędu jest równoważne układowi 3 równań różniczkowych 1-rzędu. Odpowiadająca temu układowi przestrzeń fazowa jest 3-wymiarowa.  Z przykładu tego płynie ważna wskazówka, jak otrzymywać autonomiczny układ równań różniczkowych 1-rzędu. Liczba tych równań definiuje przestrzeń fazową układu. Wymiar tej przestrzeni jest jedną z najważniejszych charakterystyk. Proszę to zapamiętać!

Fizyka stosuje też aparat równań różniczkowych cząstkowych. Studenci kierunku fizyka i pokrewnych kierunków znają przykłady takich równań. Równanie Schrodingera, równanie falowe, równanie dyfuzji, równania Maxwela to są równania różniczkowe cząstkowe. Ich analiza jest znacznie trudniejsza. Istnieją specjalne i specyficzne  metody matematyczne pozwalające otrzymać informację o własnościach układów opisywanych takimi równaniami.

W wielu dziedzinach nauki (chemia, biologia, socjologia, nauki ekonomiczne) stosuje się fenomenologiczny sposób modelowania.  Aby uzmysłowić, jak go stosować podamy jeden przykład.

Modelowanie procesu wzrostu
"""""""""""""""""""""""""""

Procesy wzrostu pojawiają się na wielu obszarach. Nie trzeba być bystrym obserwatorem, aby zauważyć co wokół nas może wzrastać. My rozważamy jedną  z możliwych klas procesów wzrosu: wzrost populacji zajęcy czy  bakterii, wzrost depozytów pieniężnych na lokatach bankowych, wzrost stężenia substancji w reakcjach chemicznych  czy  wzrost liczby komórek nowotworowych. Często procesom wzrostu towarzyszą procesy malenia (zaniku, śmierci, ...). My je będziemy pomijać. Rozpatrzmy konkretny przykład: wzrost pieniędzy na lokacie bankowej. Załóżmy, żę w chwili czasu :math:`t` jest na lokacie :math:`x(t)` (np. złotych polskich). Pytamy, ile pieniędzy przyrośnie  po pewnym czasie :math:`h`, czyli ile pieniędzy będzie w chwili :math:`t+h`. Zaczynamy modelować ten proces. Oznaczmy, że w chwili :math:`t+h` jest :math:`x(t+h)` pieniędzy. Na tę kwotę składają się pieniądze :math:`x(t)` oraz przyrost :math:`\delta` z odsetek, czyli

.. MATH::
    :label: eqn20

    x(t+h)  =  x(t) + \delta

Przyrost :math:`\delta ` zależy od :math:`x(t)`,  od wielkości oprocentowania :math:`k` oraz od tego jak długo :math:`(h)` trzymamy pieniądze na lokacie, czyli 

.. MATH::
    :label: eqn21

     \delta \propto  x(t), \qquad \delta \propto  k, \qquad \delta \propto  h

Możemy to skomasować pisząc:

.. MATH::
    :label: eqn22

    \delta = k  x(t)  h

Dlatego też

.. MATH::
    :label: eqn23

    x(t+h) = x(t) +  k  x(t)  h

Relacje tę możemy przepisać w postaci

.. MATH::
    :label: eqn24

    \frac{x(t+h) - x(t)}{h} = k  x(t)

W granicy małych przyrostów czasu :math:`h \to 0`, lewa strona jest definicją pochodnej

.. MATH::
    :label: eqn25

    \frac{dx(t)}{dt} =  k x(t), \quad \quad x(0) = x_0

gdzie :math:`x_0` jest wartością początkową naszej lokaty. W ten oto sposób otrzymaliśmy równanie opisujące dynamikę wzrostu pieniędzy na naszej lokacie bankowej. Jest to równanie różniczkowe zwyczajne, 1-go rzędu, autonomiczne. Jego przestrzeń fazowa jest 1-wymiarowa.

Poniżej pokazujemy  rozwiązania tego równania dla 3 różnych wartości :math:`k`. 

.. sagecellserver::
    :is_verbatim: True

    sage: var('N1,N2,N3')
    sage: T = srange(0,3,0.01)
    sage: ## rozwiązania dla różnych wartości k=0, 0.1, 0.2
    sage: sol=desolve_odeint( vector([0, 0.1*N2,  0.2*N3]), [5,5,5],T,[N1,N2,N3])
    sage: ## wykresy rozwiązań dla różnych wartości k=-1, 0, 0.5
    sage: line(zip(T,sol[:,0]), figsize=(5, 3), legend_label="k=0") +\
    sage:  line(zip(T,sol[:,1]), color='red', legend_label="k=0.1")+\
    sage:  line(zip(T,sol[:,2]), color='green', legend_label="k=0.2") 

.. end of output

Inne procesy wzrostu także można modelować tym równaniem. Równanie to jest też punktem wyjściowym do modyfikacji, uogólnień, rozszerzeń, itp.  Proste rozszerzenie polega na uzależnieniu współczynnika tempa wzrostu k od dodatkowych czynników. Na przykład przy modelowaniu wzrostu populacji zajęcy, możemy uzależnić tempo wzrostu k od liczby zajęcy  w populacji: duża ilość zajęcy powoduje dużą konsumpcję pożywienia, a to z kolei skutkuje zmaleniem ilości pożywienia i utrudnieniami w zdobywaniu pożywienia. W efekcie zmniejsza się tempo wzrostu k. Innymi słowy, :math:`k` powinno być malejącą funkcją :math:`x(t)` liczebników w populacji.  Istnieje nieskończenie wiele takich funkcji.  Na przykład

.. MATH::
    :label: eqn26

    k  \to  k(x) = exp(-b x), \quad \quad b>0

jest malejącą funkcją :math:`x`. Teraz równanie różniczkowe ma postać

.. MATH::
    :label: eqn27

    \frac{dx}{dt} = x e^{-bx}, \quad x = x(t), \quad x(0) = x_0

Jakie są skutki takiej zmiany? Pokazujemy to na poniższym rysunku. Zauważamy, że tempo wzrostu populacji zmniejsza się w porównaniu z poprzednim przypadkiem. 

Model można rozszerzyć uwzględniając procesy śmierci: te naturalne i te wskutek istnienia drapieżników, które zjadają  osobników populacji. Prosty model  ofiara-drapieżca  jest 2-wymiarowy: opisuje zmiany w populacji ofiar i zmiany w populacji drapieżników. Jest to autonomiczny układ 2 równań różniczkowych zwyczajnych. 

.. sagecellserver::
    :is_verbatim: True

    sage: var('x,y,z')
    sage: U = srange(0,300,0.01)
    sage: sol=desolve_odeint( vector([x*exp(-0.1*x),  y*exp(-0.2*y),  z*exp(-0.3*z)]), [5,5,5],U,[x,y,z])
    sage: ## pokazujemy rozwiązania dla różnych wartości k=-1, 0, 0.5
    sage: line(zip(U,sol[:,0]), figsize=(5, 3), legend_label="k=0")+\
    sage:  line(zip(U,sol[:,1]), color='red', legend_label="k=0.1")+\
    sage:  line(zip(U,sol[:,2]), color='green', legend_label="k=0.2")

.. end of output

Modelowanie z czasem dyskretnym
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Powyżej otrzymaliśmy takie oto wyrażenie na przyrost:

.. MATH::
    :label: eqn28

    x(t+h) = x(t) + k h x(t)

Jeżeli zmiany następowałyby nie w sposób ciągły  lecz dyskretny (np.  co 1 dzien, co jedną godzinę) wówczas  krok czasowy :math:`h` jest dyskretny. Można wprowadzić oznaczenia

.. MATH::
    :label: eqn29

    x_n = x(t), \quad \quad x_{n+1} = x(t+h)

i wówczas równanie dla przyrostu ma postać

.. MATH::
    :label: eqn30

    x_{n+1} = x_n + \alpha x_n, \quad \quad \alpha = k h

W ten sposób otrzymujemy równanie z czasem dyskretnym. Ogólna postać tego typu równania to

.. MATH::
    :label: eqn31

    x_{n+1} = f(x_n) 

które mówi nam, jaką wartość przyjmuje dana wielkość w następnym kroku :math:`n+1` jeżeli znana jest wartość tej wielkości w kroku :math:`n`. Równanie to nazywa się też równaniem rekurencyjnym. W zależności od postaci funkcji :math:`f(x)` otrzymujemy różne modele dynamiki układów.

Układ 2 równań z czasem dyskretnym ma postać

.. MATH::
    :label: eqn32

    x_{n+1} = f(x_n, y_n) 

.. MATH::
    :label: eqn33

    y_{n+1} = g(x_n, y_n) 

Analiza jakościowa takiego układu jest bardzo trudna. Czasami  nieumiejętne stosowanie numerycznej analizy może skutkować tym, że umkną nam istotne cechy takiego układu, zwłaszcza gdy w układzie  występują dodatkowo  parametry których zmiana może powodować coś, co nazywa się bifurkacjami.  Ale o tym w dalszej części książki.    




