.. _matura2015_p14.rst:

Jak skomplikować proste i popaść w kłopoty z funkcją tangens
------------------------------------------------------------

.. image:: matura2015/matura2015_p14.png
   :align: center

Wynik otrzymujemy natychmiast bez komputera metodą *przez "ogląd":*,
łatwo widać, że ostatnia odpowiedz jest prawdziwa. Mówiąc inaczej
korzystamy z definicji tangensa: :math:`tan(\alpha)=\frac{y}{x}` dla
:math:`x=-4` i :math:`y=5`.


Wyobraźmy sobie jednak, że zapomnielismy co to tangens, ale pamiętamy,
że Sage posiada funkcję odwrotną :code:`arctan`, która pozwoli nam
rozwiązać zadanie "od końca" przez wyliczenie kątów i narysowanie
wszystkie odpowiedzi w tescie. Będziemy do tego potrzebowali jeszcze
odległości od początku układu wspólrzędnych, którą wyliczymy z
Twierdzenie Pitagorasa: :math:`r=\sqrt{x^2+y^2}=\sqrt{5^2+4^2}`. Z
definicji *sinusa* i *cosinusa* wiemy też, że współrzędne spełniają:

.. math::

   x = r \cos(\phi) \\
   y = r \sin(\phi)

Wystarczy więc dla każdej odpowiedzi z testu obliczyć kąt i narysować
odpowiadający punkt na wykresie (np. funkcją
:code:`point((x,y))`. Właściwą odpowiedź rozpoznamy graficznie.

*Nasuwa się pytanie: czy można jeszcze bardziej skomplikować to zadanie?*

Napiszmy więc:

.. sagecellserver::

    r = sqrt( 5^2+4^2 )     
    tanphi=-sqrt(3)/3 # inne odpowiedzi: -4/5,-1,-5/4
    phi = arctan(tanphi )
    point ( (r*cos(phi),r*sin(phi) ),size=20)

Jednak wykres nie jest zbyt piękny, fajnie by było ustawić takie same
zakresy osi jak w zadaniu. Aby precyzyjnie odczytać położenie punktu z
wykresu dorysujemy też siatkę z lini pionowych i poziomych
:code:`gridlines`.



.. sagecellserver::

    r = sqrt( 5^2+4^2 ) 
    
    tanphi=-sqrt(3)/3 
    phi = arctan(tanphi )
    point ( (r*cos(phi),r*sin(phi) ),size=20,\
      ymin=-6,ymax=6,xmin=-6,xmax=6,\
      gridlines=[range(-5,6),range(-5,6)]) 
   

No to mamy już nasz program gotowy, dodajemy jeszcze :code:`@interact`
by sprawdzać odpowiedzi kliknięciem w odpowiedni klawisz:


.. sagecellserver::

    r = sqrt( 5^2+4^2 ) 
    @interact
    def _(tanphi=[-sqrt(3)/3,-4/5,-1,-5/4]):
        phi = arctan(tanphi )
        plt = point ( (r*cos(phi),r*sin(phi) ),size=20,\
          ymin=-6,ymax=6,xmin=-6,xmax=6,\
          gridlines=[range(-5,6),range(-5,6)])
        plt.show()


Co się okazuje, **żadna** odpowiedź daje punktu w tym samym miejscu
jak w zadaniu? Co poszło nie tak?

Okazuje się że zawiniła właność funkcji :math:`\tan`. Jej okres to
:math:`\pi` - a nie :math:`2 \pi` jak u poczciwego
*sinusa*. Oznacza to, że jeżeli:

.. math::

   a = \tan(\phi), 

to także zachodzi:

.. math::

   a = \tan(\phi+\pi) 

Czyli działając funkcją odwrotną:

.. math::

   \arctan(a) = \phi+\pi!

Dodajmy więc do naszego rysunku drugi punkt dlą kąta :math:`\phi+\pi`:


.. sagecellserver::

    r = sqrt( 5^2+4^2 ) 
    @interact
    def _(tanphi=[-sqrt(3)/3,-4/5,-1,-5/4]):
        phi = arctan(tanphi )
        plt = point ( (r*cos(phi),r*sin(phi) ),size=20,\
          ymin=-6,ymax=6,xmin=-6,xmax=6,\
          gridlines=[range(-5,6),range(-5,6)]) 
        phi += pi
        plt += point ( (r*cos(phi),r*sin(phi) ),size=20 )
        plt.show()


I zgadza się! W ostatnim przypadku otrzymujemy wszystkie punkty dla
których :math:`\tan(\phi)=-\frac{5}{4}` i :math:`r=\sqrt{41}`. Jednym
z tych punktów jest ten z rysunku w zadaniu.



.. admonition:: Jak to działa: :code:`gridlines`

   Opcja `gridlines` pozwala na narysowanie pionowych i poziomych lini
   na dowolnym wykresie w Sage. Składnia wygląda tak:

   .. code-block:: python
                   
       gridlines = [ [x1,x2,...,xn], [y1,y2,...,yn] ]

   gdzie `x1,x2,...` to położenia prostych pionowych a `y1,y2,...`
   poziomych. Jest to zagnieżdżona lista, dwuelementowa, na której
   znajdują się dwie listy ze współrzędnymi. Przykłady:

     - :code:`gridlines=[[1,2,5],[]]` - trzy linie pionowe 
     - :code:`gridlines=[ range(1,20),[3]]` - 19 lini pionowych i jedna pozioma
   
