.. _sage_w_pigulce:

SageMath w pigułce
------------------

.. _arytmetyka:

Bogaty i szybki kalkulator naukowy.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Praktycznie, każda ważna funkcja, wzór matematyczny są już
zaimplementowane w języku SageMath. Poniżej tylko niektóre instrukcje,
które można wykorzystać w szkole średniej:

- wartość bezwzględna – *abs*,
- rozkład na czynniki pierwsze - *factor*,
- silnia – *factorial*,
- symbol Newtona – *binomial*,
- rozwiąż równanie – *solve*,
- narysuj wykres – *plot*,
- następna liczba pierwsza – *next_prime*,
- NWD – *gcd*, NWW – *lcm*,
- pochodna – *diff*,
- całka – *integrate*.

Pierwszy przykład pokazuje możliwości rachunkowe Sage'a. Można używać
go do sprawdzania: przeprowadzonych rachunków, zadań domowych przez
uczniów. Jeżeli nauczyciel pozna powyższy język programowania, to może
stworzyć kod, który umożliwia rozwiązywanie zadań rachunkowych "krok
po kroku". 

.. sagecellserver::
    :linked: false

    print("(4/3+5/5)-(5/2-4/6) =", (4/3+5/5)-(5/2-4/6))
    print("(3^15-3^13)/(3^13+3^14) =", (3^15-3^13)/(3^13+3^14))
    print("1001 =", factor(1001))
    print("(sqrt(8)-sqrt(2))^2 =", (sqrt(8)-sqrt(2))^2)
    print("5! =", factorial(5))
    print("NWD(354,222) =", gcd(354, 222))


.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. code:: python

      (4/3+5/5)-(5/2-4/6) = 1/2
      (3^15-3^13)/(3^13+3^14) = 2
      1001 = 7 * 11 * 13
      (sqrt(8)-sqrt(2))^2 = 2
      5! = 120
      NWD(354,222) = 6

          
SageMath ma wbudowane różne systemy arytmetyczne i może np.
przybliżać liczby niewymierne z dowolną precyzją. Te możliwości
wykorzystaliśmy w naszym projekcie, przed wszystkim w szyfrowaniu RSA
oraz w rozdziale dotyczących przybliżeń wyrażeń niewymiernych.

.. sagecellserver::
    :linked: false

    show(sqrt(2), "=", N(sqrt(2), digits=60))
    show(pi, "=", N(pi, digits=60))
    show(2^168+5^80)

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \sqrt{2} = 1.41421356237309504880168872420969807856967187537694807317668 \\
      \pi=3.14159265358979323846264338327950288419716939937510582097494 \\
      82718435399721924198287929350313460725034243008818892481

.. _logika:

Działania na wyrażeniach logicznych.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

SageMath a także sam język Python, umożliwia wykonanie działań na
wyrazeniach logicznych. Może się do okazać przydatne w wielu
dziedzinach. Dla przykładu rozważmy zagadkę:

.. admonition:: Zagadka o kłamcach

    Sa dwa rodzaje ludzi - jeden zawsze kłamie a jeden mówi zawsze
    prawdę. Ala i Bolek należą do jednej z tych kategorii. Ala
    powiedziała: ja i Bolek jesteśmy kłamcami. Kto jest kłamcą a kto
    mówi prawdę?

Stosując SageMath możemy przyjąć następującą interpretacje: niech
:math:`a` będzie prawdą jeśli Ala jest prawdomówna a :math:`b` będzie
prawdą jeśli Bolek jest prawdomówny. Wtedy możemy w Sage zapisać:

.. sagecellserver::
    :linked: false

    f = propcalc.formula("a&(~a&~b) | ~a&(~(~a&~b))")
    show(f)
    print(f.truthtable())

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
    .. code::
       
        a      b      value
        False  False  False  
        False  True   True   
        True   False  False  
        True   True   False 

Od razu widać, że jedynym rozwiązaniem jest takie w którym Ala kłamie
a Bolek mówi prawdę.


.. _algebra:
    
Działania na wyrażeniach algebraicznych.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Jedną z ważniejszych możliwości, którą można zastosować na lekcjach
matematyki, fizyki oraz chemii jest przeprowadzanie rachunków nie
tylko na liczbach, ale także na zmiennych. SageMath doskonale sobie radzi
z obliczeniami symbolicznymi, czyli potrafi przeprowadzać obliczenia,
przekształcenia na wyrażeniach algebraicznych. Przez co możemy
modyfikować postać wzoru, obliczać jedną zmienną przy pomocy innych,
wyprowadzać wzory -- ogólne rozwiązania. Poniżej pokazane są proste
przykłady dotyczące wzorów skróconego mnożenia oraz wyrażeń
wymiernych.

**Wzory skróconego mnożenia.**

.. sagecellserver::
    :linked: false

    var('a','b')
    wzor1 = (a+b)^2
    wzor2 = (a-b)^2
    wzor3 = (a+b)*(a-b)
    show (wzor1, "=", wzor1.canonicalize_radical())
    show (wzor2, "=", wzor2.canonicalize_radical())
    show (wzor3, "=", wzor3.canonicalize_radical())
    a=sqrt(3)
    b=2
    wzor1=(a+b)^2
    wzor2=(a-b)^2
    wzor3=(a+b)*(a-b)
    show (wzor1, "=", wzor1.canonicalize_radical())
    show (wzor2, "=", wzor2.canonicalize_radical())
    show (wzor3, "=", wzor3.canonicalize_radical())

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
    .. math::
       
       {\left(a + b\right)}^{2} \text{\texttt{=}} a^{2} + 2 \, a b + b^{2}
       
       
    .. math::
    
       {\left(a - b\right)}^{2} \text{\texttt{=}} a^{2} - 2 \, a b + b^{2} 
   
   
    .. math::    
      
       {\left(a + b\right)} {\left(a - b\right)} \text{\texttt{=}} a^{2} - b^{2}
    
    
    .. math::
    
       {\left(\sqrt{3} + 2\right)}^{2} \text{\texttt{=}} 4 \, \sqrt{3} + 7 
       
       
    .. math::
     
       {\left(\sqrt{3} - 2\right)}^{2} \text{\texttt{=}} -4 \, \sqrt{3} + 7
       
       
    .. math::
      
       {\left(\sqrt{3} + 2\right)} {\left(\sqrt{3} - 2\right)} \text{\texttt{=}} -1
       
            
    
**Zamiana postaci wyrażenia algebraicznego.**

.. sagecellserver:: 

    var('n')
    wyr = n^3-(n-1)^3
    show ("n=2")
    show(wyr," = ", wyr.canonicalize_radical()," = ",wyr.substitute(n = 2))

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:


   .. math::
      
      n=2
      
      
   .. math::

      -{\left(n - 1\right)}^{3} + n^{3} \text{\texttt{{ }={ }}} 3 \, n^{2} - 3 \, n + 1 \text{\texttt{{ }={ }}} 7 


**Zamiana postaci wyrażenia wymiernego.**

.. sagecellserver::    :linked: false

    var('z')
    wyr = (z^2+3*z)/z
    show (wyr)
    show (wyr.canonicalize_radical())
    show (wyr.subs(z=x+1))
    show (wyr.subs(z=2))


.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \frac{z^{2} + 3 \, z}{z} 
      
      
   .. math::
   
      z + 3 
      
   
   .. math::
   
      \frac{{\left(x + 1\right)}^{2} + 3 \, x + 3}{x + 1} 
      
   .. math::   
      
      5
 

Upraszczanie wyrażeń zawierających funkcje trygonometryczne wymaga
użycia metod :code:`.trig_simplify`. Na przykład aby wykorzystać
jedynkę trygonometryczą należy wykonać:

.. sagecellserver::
   :linked: false

   ( sin(x)^2+cos(x)^2 ).trig_simplify()



Jeśli chcemy udowodnić tożsamość trygonometryczną lepiej użyć
:code:`bool` niż próbować uprościć jedną ze stron by przypominała
drugą:


.. sagecellserver::
    :linked: false

    expr = (2*sin(x)^2-1)/(sin(x)*cos(x)) == tan(x)-cot(x)  
    show(expr)
    bool(expr)


.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \newcommand{\Bold}[1]{\mathbf{#1}}\frac{2 \, \sin\left(x\right)^{2} - 1}{\cos\left(x\right) \sin\left(x\right)} = -\cot\left(x\right) + \tan\left(x\right) 

    True


    
Rozwiązywanie równań i układów równań.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Największą ilość zadań z przedmiotów ścisłych jaką uczeń musi wykonać
to rozwiązywanie równań i układów równań. Oczywiście żadne narzędzie
nie zastąpi samodzielnego rozwiązywania zadań przez uczniów, ale może
być bardzo przydatne do ćwiczeń, sprawdzania wyników, czy też
rozwiązywania równań, które uczeń musi samodzielnie wyprowadzić na
podstawie zadań tekstowych. Powyższy język umożliwia rozwiązywanie
nawet trudnych równań i układów równań przy pomocy jednej instrukcji
-- :code:`solve`.

Poniżej zamieszczamy przykłady, które demonstrują
użycie instrukcji na podstawie równania kwadratowego oraz prostego
układu równań z dwoma niewiadomymi. Dla nauczycieli prowadzących
zajęcia dodatkowe z matematyki dla uczniów zdolnych nie bez znaczenia
będzie fakt, ze Sage rozwiązuje równania w zbiorze liczb zespolonych
oraz macierzowe.

**Równanie kwadratowe.**

.. sagecellserver::
    :linked: false

    var('a','b','c')
    r_kwadr = a*x^2 + b*x + c == 0
    show(solve(r_kwadr, x))
    a = 1
    b = 4
    c = -5
    r_kwadr = a*x^2 + b*x + c == 0
    show (solve(r_kwadr, x))

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      \left[x = -\frac{b + \sqrt{b^{2} - 4 \, a c}}{2 \, a}, x = -\frac{b - \sqrt{b^{2} - 4 \, a c}}{2 \, a}\right] \\
      \left[x = \left(-5\right), x = 1\right]

    
**Układ równań z dwoma niewiadomymi.**


.. sagecellserver::
    :linked: false

    var('x','y')
    solve([x-3*y==2, x-2*y==8],x,y)

.. only:: latex

    Wykonując ten kod otrzymamy następujący wynik:
   
   .. math::

      [[x == 20, y == 6]]

   
      
.. _wykresy:
             
Wizualizacja.
^^^^^^^^^^^^^    
  
Uczniowie dzięki stronom internetowym czy platformom społecznościowym
odbierają świat "obrazkowo", czyli wiążą krótkie informacje z
odpowiednim obrazkiem, zdjęciem, wykresem. Dlatego też wizualizacja
dla obecnego pokolenia młodzieży jest bardzo ważna. Sage umożliwia
rysowanie wykresów funkcji w prosty sposób. Zatem możemy szybko
przedstawiać rozwiązania na wykresie lub też rysować interesujące nas
funkcje podczas lekcji. Uczniowie mogą modyfikować już istniejący kod
programu i analizować otrzymane funkcje. Można to zastosować nie tylko
na matematyce ale także na pozostałych przedmiotach ścisłych.

Poniższy program dotyczy miejsc zerowych funkcji
kwadratowej. Obliczono w nim pierwiastki funkcji kwadratowej, punkt
przecięcia funkcji z osią Y następnie narysowano wykres funkcji i
zaznaczono wyróżnione punkty.

.. sagecellserver::
    :linked: false

    a = 1
    b = 3
    c = 2
    d = b*b - 4*a*c
    f(x) = a*x*x + b*x + c
    if d < 0:
        print("Brak rozwiązania dla liczb rzeczywistych!")
        xmin,xmax =-5, 5
        x1,x2 = 0,0
        
    if d > 0:
        x1 = float((-b-sqrt(d))/(2*a))
        x2 = float((-b+sqrt(d))/(2*a))
        
        print("x1=", x1, ", ", "x2=", x2)

        if x1<x2:
            xmin,xmax = x1-2,x2+2
        else:
            xmin,xmax = x2-2,x1+2
            
    p1 = point((x1,0), color="red", size=35)
    p2 = point((x2,0), color="red", size=35)
    p3 = point((0, c), color="green", size=35)
    q = plot(f(x),(x,xmin,xmax))
    show(p1+p2+p3+q, figsize=4)

    
.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres  :numref:`parabola`.

    .. figure:: dlaczego_Sage/kw.pdf
       :width: 50%
       :name: parabola     
     
       Parabola z miejscami zerowymi. 


Dzięki instrukcji :code:`region_plot` możemy na wykresie przedstawiać
także rozwiązanie układów nierówności.

.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x^2/4+1*x
    g2 = 0.25*x
    f1 = plot(g1, (x,-0.4,4.5), linestyle="--")
    f2 = plot(g2,(x,-0.4,4.5), linestyle="-", color="green")
    rp = region_plot([y<g1,y>=g2],(x,-0.3,4.5),(y,-1,1.2), incol="khaki")
    show(f1 + f2 + rp, figsize=5)         

    
.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres :numref:`region1`.

    .. figure:: dlaczego_Sage/reg1.pdf
       :width: 40%
       :name: region1   
  
       Przykład wizualizacji nierówności z pomocą `region_plot`

       
.. sagecellserver::
    :linked: false

    var('x','y')
    g1 = -x-2
    g2 = -x+2
    g3 = x-2
    g4 = x+2
    f1 = plot(g1, (x,-2.5,2.5), linestyle="--")
    f2 = plot(g2, (x,-2.5,2.5), linestyle="--", color="royalblue")
    f3 = plot(g3, (x,-2.5,2.5), linestyle="-", color="green")
    f4 = plot(g4, (x,-2.5,2.5), linestyle="-", color="lightgreen")
    rp = region_plot([y>g1,y<g2,y>=g3,y<=g4],\
         (x,-2,2),(y,-2,2), incol="khaki")
    show(f1 + f2 + f3 + f4 + rp, figsize=5,ymax=3,ymin=-3)

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres   :numref:`region2`.

    .. figure:: dlaczego_Sage/reg2.pdf
       :width: 40%
       :name: region2

       Wizualizacja rozwiązania nierówności za pomocą `region_plot`. 



W systemie SageMath rysowaną funkcję możemy stworzyć również
algorytmicznie. Wyobraźmy sobie, że chcemy zobaczyć jak wygląda wykres:

.. math::

   f(x) = \sum_{i=0}^{N}\sin(\omega_i x)

dla dużych wartosci N. W systemie Sage możemy zsumować wiele funkcji
wykorzystując pętlę. Tworzenie takich złożonych funkcji ma
zastosowanie na lekcjach fizyki podczas omawiania zjawisk
falowych. Poniższy kod doda fale o zbliżonych częstościach:

.. sagecellserver::
    :linked: false

      f = sum([sin(w*x) for w in srange(0.9,1.101,0.02)])
      plot(f,(x,-200,200),figsize=(10,2),thickness=0.5)


.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres   :numref:`paczka_fig`.

    .. figure:: dlaczego_Sage/paczka.pdf
       :width: 100%
       :name: paczka_fig

       Wizualizacja paczki falowej. 


Ciekawym przykładem wizualizacji jest graficzne przedstawianie pól
wektorowych. Podczas lekcji fizyki, można wykorzystać możliwości
SagaMath do rysowania pół wektorowych. Poniżej zamieszczony jest
przykład pola pochodządzego od dipola magnetycznego. Pole jest
trójwymiarowe, w przykładzie przedstawiony jest przekrój takiego pola
przez płaszczyznę :math:`x=0`


.. sagecellserver::
    :linked: false

    var('x y z',domain='real')
    m = 1 
    r = sqrt(x^2+y^2+z^2+1e-6)
    Bx = 3*m*x*z/(r^5)
    By = 3*m*y*z/(r^5)
    Bz = 3*m*z^2/(r^5)-m/r^3
    B = vector( [Bx,By,Bz])
    Bmod = B.subs(x==0)[1:].norm()
    plot_vector_field(B.subs(x==0)[1:]/Bmod,(y,-2,2),(z,-2,2))

.. only:: latex
          
    Wynikiem działania powyższego kodu jest wykres   :numref:`pole_vec_fig`.

    .. figure:: figs/pole_vec.pdf
       :width: 70%
       :name: pole_vec_fig

       Wizualizacja pola wektorowego. 




Interakcja
^^^^^^^^^^    

Duże walory edukacyjne mają programy komputerowe pozwalające wykonać
animację lub dynamicznie zmieniać parametr i obserwować jak wpływa on
na rozwiązanie. Tego typu elementy, najczęściej wykonane są w
technologii Flash lub javascript są atrakcyjną cyfrową pomocą
naukową. Zazwyczaj jednak uczeń ograniczony jest jedynie do interakcji
z takim programem. System SageMath pozwala pojść jeden krok dalej -
pozwala na bardzo łatwe tworzenie tych elementów. Korzystając z
prostych funkcji uczeń może samodzielnie stworzyć interaktywną
applikację, która może ilustrować badane zagadnienie.

Zilustrujemy na przykładzie następującego problemu:

.. admonition:: Zadanie 

   Zbadaj ile ma rozwiązań równanie :math:`x^2=x-a` w zależności od parametru :math:`a\in(0,\frac{1}{2})`?

   
W SageMath możemy narysować wykresy zarówno prostej :math:`y=x-a` jak
i paraboli :math:`y=x^2` i zaznaczyć na nich pierwiastki równania
:math:`x^2=x-a`.  Wystarczy taki stworzony kod programu opakować w
funkcję i dodać tzw. dekorator :code:`@interact`. SageMath wygeneruje
nam interaktywną aplikację, w której będzie można zmieniać myszką
wartość parametru i obserwować jak zmienia się wykres.



.. sagecellserver::
    :linked: false

    @interact
    def fun(a=slider(0,1/2,0.01)):
        p = plot([x^2,x-a],(x,-1,1),figsize=5,ymax=1,ymin=-1)
        assume(x,'real')
        pkt = [(x.subs(s),x.subs(s)-a) for s in solve(x^2==x-a,x)]
        if pkt:
             p += point(pkt,size=40,color='red')
        else:
             print("Nie ma pierwiastkow")
        show(p)


.. only:: latex
          
    Wynikiem działania powyższego kodu jest  :numref:`interact`.

    .. figure:: dlaczego_Sage/interact.png
       :width: 60%
       :name: interact

       Interaktywna ilustracja równania :math:`x^2=x-a`.




Sage = interdyscyplinarność.
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Podsumowując SageMath umożliwia:

 1. Szybkie i dokładne obliczenia nawet
    dowolnie dużych liczb.
 2. Przeprowadzanie obliczeń na wyrażeniach algebraicznych.
    rozwiązywanie równań w zbiorze liczb zespolonych, rozwiązywanie
    układów równań i nierówności.
 3. Wizualizację rozwiązań na wykresach, rysowanie wykresów funkcji.
 4. Obliczanie pochodnych, całek i wielu innych działań
    matematycznych.

Podanto SageMath to bardzo dobre i bogate narzędzie programistyczne,
dzięki któremu możemy łączyć przedmioty ścisłe: informatykę,
programowanie, matematykę, fizykę, chemię. Czy istnieją ograniczenia
dla Sage'a? Tak, ale pewnie wcześniej natrafimy na ograniczenia naszej
wyobraźni.
