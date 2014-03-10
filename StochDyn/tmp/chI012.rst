.. -*- coding: utf-8 -*-

Istnienie i jednoznaczność rozwiązań
------------------------------------

Do opisu  realnych zjawisk przy pomocy równań różniczkowych zwyczajnych z warunkami początkowymi zadanymi w chwili  czasu :math:`t=0`, potrzebne nam są rozwiązania dla czasów :math:`t>0` (ewolucja czasowa).  Można też rozpatrywać przypadek :math:`t<0` ale to zaliczyłbym do ćwiczeń matematycznych.  Ważnym zagadnieniem jest istnienie rozwiązań równań różniczkowych. Możemy zapytać, czy zawsze rozwiązania równań różniczkowych istnieją i jeżeli istnieją, to czy to są jedyne rozwiązania z warunkiem początkowym. Oczywiście dla różnych warunków początkowych układ może różnie ewoluować, ale gdy startuje  zawsze z tego samego  stanu (warunku) początkowego to czy ewolucja jest taka sama? Na tym polega problem jednoznaczności rozwiązań. Jeżeli dla danego warunku początkowego istnieją  np. 3 rozwiązania, to jak ewoluuje układ: istnieją 3 możliwości i którą możliwość wybiera układ? Gdyby tak było dla realnych układów to nie moglibyśmy przewidywać ewolucji układu, nie moglibyśmy sterować układami, brak byłoby determinizmu.  W rozwoju nauk ścisłych to właśnie determinizm stał się kołem napędowym rozwoju cywilzacyjnego ludzkości. To determinizm pozwala budować urządzenia, które działają tak jak my sobie tego życzymy: telewizor odbiera wybrany przeze mnie program, używam telefonu do komunikacji  z moją rodziną, wystrzelona rakieta ma taką trajektorię jaką zaplanowałem, itd.  Zbadamy 3 przykłady, które przybliżą nam powyższą problematykę. Źródło tych przykładów jest w  książce: J. Hale, H. Kocak, "Dynamics and Bifurcations". Ksiązka jest znakomita.

Przykład 1
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn1

    \frac{dx}{dt}=-2x, \qquad x(0) = x_0

jest równaniem różniczkowym liniowym. Jest to jedno z najprostszych równań różniczkowych.  Można łatwo sprawdzić, że funkcja

.. MATH::
    :label: eqn2

    x(t) = x_0   e^{-2t}

jest rozwiązaniem i spełnia warunek początkowy :math:`x(0) = x_0`. Funkcja ta jest dobrze określona dla wszystkich skończonych  wartości czasu :math:`t \in (-\infty, \infty)`.  Nie ma tu większych ograniczeń.  Jest to jedyne rozwiązanie.  Poniższy rysunek daje wyobrażenie o rozwiązaniach :math:`x(t)` dla 3 różnych warunków początkowych. Przy okazji zauważmy, że wszystkie trzy rozwiązania dążą do tego samego stanu :math:`x=0`  dla długich czasów :math:`t\to \infty`.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g(t,a) = a*exp(-2*t)
    sage: p1 = plot(g(t,a=1), (t,0,2), legend_label=r"$x(0)=1$", color='blue')
    sage: p2 = plot(g(t,a=0), (t,0,2), legend_label=r"$x(0)=0$", color='red')
    sage: p3 = plot(g(t,a=-1), (t,0,2), legend_label=r"$x(0)=-1$", color='green')
    sage: show(p1+p2+p3, figsize=[6,3], axes_labels=[r'$t$',r'$x(t)$'], axes=False, frame=True)

.. end of output

Przykład 2
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn3

    \frac{dx}{dt}= 3 x^2, \qquad x(0) = x_0

jest równaniem różniczkowym nieliniowym.   Prawa strona tego równania jest określona dla wszystkich wartości :math:`x`. Podobnie jak poprzednie równanie, można  je rozwiązać metodą separacji zmiennych. Otrzymamy funkcję

.. MATH::
    :label: eqn4

    x(t) = \frac{x_0}{1-3 x_0 t} 

która jest rozwiązaniem i spełnia warunek początkowy. Funkcja ta nie jest określona dla wszystkich skończonych  wartości czasu :math:`t \in (-\infty, \infty)`.  Istnieją  ograniczenia dla wartości czasu :math:`t`. Ale jest to jedyne rozwiązanie.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: g  = plot(-4.0/(1 +12*t), (t,0,0.5), detect_poles='show', legend_label=r'$x(0)=-4$', color='blue')
    sage: g += plot(lambda t: 0.0, (t,0,0.5), legend_label=r'$x(0)=0$', color='red')
    sage: g += plot(1.0/(1-3*t), (t,0,1/3), detect_poles='show', legend_label=r'$x(0)=1$', color='green')
    sage: g.show(axes_labels=[r'$t$',r'$x$'], ymin=-4, ymax=8, figsize=[6,3], axes=False, frame=True)

.. end of output

Wszystkie rozwiązania z ujemnym warunkiem początkowym :math:`x(0) < 0` sa dobrze zdefiniowane dla wszystkich czasów :math:`t>0` (krzywa niebieska). Podobnie jest z rozwiązaniem :math:`x(t) = 0` dla warunku początkowego :math:`x(0)=0` (krzywa czerwona). Natomiast rozwiązanie z  dodatnim warunkiem początkowym :math:`x(0) > 0` rozbiega się w skończonym czasie :math:`t< 1/3x_0` . Gdyby to równanie miało opisywać ruch cząstki, to oznacza że w skończonym czasie cząstka przebywa nieskończoną odległość. To jest niefizyczne. Równanie  to mogłoby   opisywać proces wybuchu  substancji: :math:`x` mogłoby być objętością pęczniejącej substancji która  wybucha po skończonym czasie. 

Przykład 3
~~~~~~~~~~

Równanie 

.. MATH::
    :label: eqn5

    \frac{dx}{dt}=  2 \sqrt x, \qquad x(0) = x_0 \ge 0

jest równaniem różniczkowym nieliniowym.  Prawa strona tego równania jest określona dla nieujemnych wartości :math:`x \ge 0`.  Podobnie jak  2 poprzednie równania, można  je rozwiązać metodą separacji zmiennych. Otrzymamy rozwiązanie

.. MATH::
    :label: eqn6

    x(t) = (t +  \sqrt x_0)^2 

Funkcja ta jest określona dla wszystkich wartości czasu :math:`t >0`.   Jest to jedyne  rozwiązanie  z wyjątkiem jednego warunku początkowego: :math:`x(0) = 0`. Dla tego warunku początkowego istnieje jeszcze jedno rozwiązanie, a mianowicie :math:`x(t) = 0`. Tak więc dla :math:`x(0) = 0` mamy  2 różne rozwiązania

.. MATH::
    :label: eqn7

    x(t) = t^2, \qquad x(t) = 0

Jak przebiega ewolucja, gdy układ startuje ze stanu początkowego :math:`x(0) = 0` ? W tym przypadku rozwiązania są niejednoznaczne.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t')
    sage: p1=plot(t**2,(t,0,1), legend_label=r"$x(0)=1$", color='blue')
    sage: p2=plot(0,(t,0,1), legend_label=r"$x(0)=0$", color='red')
    sage: show(p1+p2, figsize=[6,3], axes=False, frame=True)

.. end of output

Co jest takiego charakterystycznego w ostatnim przykładzie, że pojawia się niejednoznaczność rozwiązania równania różniczkowego?  Na to pytanie daje odpowiedź  twierdzenie o jednoznaczności rozwiązania równania różniczkowego. Potrzebna nam będzie własność funkcji:

Mówimy, że funkcja :math:`f(x)` spełnia  warunek Lipschitza na zbiorze otwartym :math:`U` jeżeli istnieje taka stała :math:`L > 0`,  że

.. MATH::
    :label: eqn8

    |f(x_2) -f(x_1)| \le L|x_2 - x_1|

dla wszystkich :math:`x_1, x_2 \in U`.

Warunek Lipschitza można zapisać w postaci

.. MATH::
    :label: eqn9

    |f(x+h) -f(x)| \le L h \quad \quad \mbox{lub jako} \quad \quad \frac{f(x+h) - f(x)}{h}| \le L

Z tego wynika że jeżeli  :math:`f(x)` ma ograniczoną pochodną, to spełnia warunek Lipschitza. Są  oczywiście nieróżniczkowalne funkcje, które spełniają warunek Lipschitza.

Twierdzenie Picarda
  Jeżeli funkcja :math:`f(x)` jest ciągła w :math:`U` oraz spełnia warunek Lipschtza w  :math:`U` wówczas równanie różniczkowe 

.. MATH::
    :label: eqn10

    \frac{dx}{dt} = f(x), \qquad x(0) = x_0

ma dokładnie jedno rozwiązanie w :math:`U`.

Istnieje kilka  modyfikacji tego twierdzenia, ale na nasze potrzeby ta najprostsza wersja jest wystarczająca.

Teraz możemy odpowiedzieć, dlaczego w 3 przykładzie rozwiązanie jest niejednoznaczne: funkcja :math:`f(x) = 2\sqrt x` nie spełnia warunku Lipschitza ponieważ pochodna

.. MATH::
    :label: eqn11

    \frac{df(x)}{dx} = \frac{1}{\sqrt x}

w punkcie :math:`x=0` jest rozbieżna. W punktach :math:`x>0`  pochodna ma wartość skończoną i jest spełnione twierdzenie Picarda. Dlatego też  rozwiązania są jednoznaczne.

Dodatek
~~~~~~~

Sage z powodzeniem jest w stanie rozwiązywać pewne równania różniczkowe zwyczajne. Zobaczmy jak poradzi sobie z powyższymi przykładami.

Przykład 1
""""""""""

.. MATH::
    :label: eqn12

    \frac{dx}{dt}=-2x, \qquad x(0) = x_0

z rozwiązaniem

.. MATH::
    :label: eqn13

    x(t) = x_0   e^{-2t}.

Na początek zadamy sobie zmienne. Druga linijka mówi o tym, że zmienna :math:`x` będzie funkcją parametru :math:`t` (czasu). Zamiast 
używac nazwy ``g`` użyjemy świerzo obliczonego rozwiązania ``rozw``.

.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0')
    sage: x = function('x', t)
    sage: rrz = diff(x,t) == -2*x
    sage: rozw = desolve(rrz, x)
    sage: rozw = rozw.subs(c=x_0)
    sage: print "rozwiązanie równania"
    sage: show(rozw)
    sage: p1 = plot(rozw(x_0=1), (t,0,2), legend_label=r"$x(0)=1$", color='blue')
    sage: p2 = plot(rozw(x_0=0), (t,0,2), legend_label=r"$x(0)=0$", color='red')
    sage: p3 = plot(rozw(x_0=-1), (t,0,2), legend_label=r"$x(0)=-1$", color='green')
    sage: show(p1+p2+p3, figsize=[6,3], axes_labels=[r'$t$',r'$x(t)$'], axes=False, frame=True)

.. end of output


Przykład 2
""""""""""

.. MATH::
    :label: eqn14

    \frac{dx}{dt}= 3 x^2, \qquad x(0) = x_0

z rozwiązaniem

.. MATH::
    :label: eqn15

    x(t) = \frac{x_0}{1-3 x_0 t}.


.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0 c')
    sage: x = function('x', t)
    sage: print "Definiujemy równanie różniczkowe"
    sage: rrz = diff(x,t) == 3*x^2
    sage: rozw2 = desolve(rrz, x)
    sage: print "i je rozwiązujemy..."
    sage: show(rozw2)
    sage: print "krok 1\n obliczamy x(t) z poprzedniego kroku"
    sage: rozw2 = solve(rozw2,x)[0].rhs()
    sage: show(rozw2)
    sage: print "krok 2\n obliczamy x(0)"
    sage: buf = rozw2(t=0) == x_0
    sage: show(buf)
    sage: print "krok 3\n wyznaczamy stałą c"
    sage: buf = solve(buf,c)[0].rhs()
    sage: show(buf)
    sage: print "krok 4\n wstawiamy c do równania"
    sage: rozw2 = rozw2.subs(c=buf).full_simplify()
    sage: show(rozw2)
    sage: print "I na koniec prezentujemy wyniki"
    sage: x0 = -4
    sage: w = plot(rozw2(x_0=x0), (t,0,1), detect_poles='show', legend_label=r'$x(0)=%d$'%x0, color='blue')
    sage: x0 = 0    
    sage: w += plot(rozw2(x_0=x0), (t,0,1), legend_label=r'$x(0)=%d$'%x0, color='red')
    sage: x0 = 1
    sage: w += plot(rozw2(x_0=x0), (t,0,1/3), legend_label=r'$x(0)=%d$'%x0, color='green')
    sage: w.show(axes_labels=[r'$t$',r'$x$'], tick_formatter='latex', xmin=0, xmax=0.5, ymin=-4.1, ymax=8, figsize=(6,3), axes=False, frame=True)

.. end of output


Przykład 2
""""""""""

.. MATH::
    :label: eqn16

    \frac{dx}{dt}=  2 \sqrt x, \qquad x(0) = x_0 \ge 0

z rozwiązaniem

.. MATH::
    :label: eqn17

    x(t) = (t +  \sqrt x_0)^2 

.. sagecellserver::
    :is_verbatim: True

    sage: var('t x_0 c')
    sage: forget()
    sage: assume(x_0>=0)
    sage: assume(t+c>0)
    sage: print "równanie"
    sage: x = function('x', t)
    sage: rrz = diff(x,t) == 2*sqrt(x)
    sage: show(rrz)
    sage: print "i jego rozwiązanie"
    sage: rozw3 = solve(desolve(rrz, x),x)[0]
    sage: show(rozw3)
    sage: print "stała całkowania"
    sage: buf = solve(x_0 == rozw3.rhs()(t=0),c)
    sage: show(buf)
    sage: print "mamy dwa możliwe rozwiązania, wybieramy to z dodatnim c"
    sage: buf = buf[1]
    sage: show(buf)
    sage: print "i dostajemy ostatecznie"
    sage: rozw3 = rozw3.subs(c=buf.rhs())
    sage: show(rozw3)
    sage: print "I na koniec prezentujemy wyniki"
    sage: p1=plot(rozw3.rhs()(x_0=0),(t,0,1), legend_label=r"$x(0)=1$", color='blue')
    sage: show(p1, figsize=[6,3], axes=False, frame=True)

.. end of output

No tak, ale gdzie jest rozwiązanie :math:`x(t) = 0`? Na chwilę obecną Sage nie rozróżni obu możliwych rozwiązań. Dlatego umiejętność analitycznego rozwiązania takich problemów wciąż jest niezbędna!

