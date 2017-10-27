.. -*- coding: utf-8 -*-

Przybliżanie wielomianami
==========================

O scenariuszu
^^^^^^^^^^^^^

Scenariusz ten jest materiałem do przeprowadzenia 3h zajęć
lekcyjnych. 

Został on opracowany w ramach projektu iCSE4school na podstawie lekcji
prowadzonych w latach 2015-2017 w III Liceum
Ogólnokształcącym im. Stefana Batorego w Chorzowie przez Krzysztofa
Jarczewskiego.


.. only:: html

   .. admonition::  Uwaga!

      W każdym z okien programu można zmieniać liczby, tekst, zmienne
      lub cały kod.  Nie trzeba się martwić, jeśli program przestanie
      działać, bo po odświeżeniu strony powróci do ustawień
      początkowych.  Często następny kod wynika z poprzedniego, więc
      należy ćwiczenia (algorytmy) wykonywać według kolejności.


Wstęp
^^^^^


**Uczniowie powinni znać:**

    Funkcję liniową i kwadratową *(4.6–10 mat_p)*, pojęcie wielomianu *(3.6 mat_r)*, definicję silnia *(10.1 mat_r)*.
    
    Podstawowe komendy programistyczne w SageMath: działania, funkcję warunkową, pętle *(1.0-II-5.22-23 inf_r)*.

**Uczniowie na poniższych zajęciach poznają:**

- sposoby implementacji i obliczania silni,
- pochodną funkcji i sposoby jej obliczania *(11.2 mat_r)*,
- wyznaczanie prostej, paraboli i wielomianu przechodzącego przez dane punkty *(3.2 mat_p)*,
- wzór Taylora oraz jego interpretację geometryczną.

Powyżej w nawiasach jest wpisany szczegółowy zakres nauczanych treści.

  *mat_p – matematyka poziom podstawowy,*

  *mat_r – matematyka poziom rozszerzony,*
 
  *inf_r – informatyka poziom rozszerzony.*   





Część teoretyczna
^^^^^^^^^^^^^^^^^^

.. admonition:: Definicja silni.

    **Silnia** z liczby naturalnej *n* to iloczyn wszystkich liczb naturalnych mniejszych lub równej *n*. Symbolicznie zapisujemy *n!*.

    .. math::

         \left\{
         \begin{array}{ll}
         0!=1  & {} \\ 
         n!=n \cdot (n-1)!, & {} n>0 \\
         \end{array}
         \right.

Przykład.

.. math:: 
   \ 4!= 4 \cdot 3! =...= 4 \cdot 3 \cdot 2 \cdot 1 \cdot 1 = 24 
   
**Silnia** w SageMath.

Pierwszy przykład liczy silnię zgodnie z definicją.

.. sagecellserver::
    
   silnia=1
   for i in range(1,6):
        silnia=silnia*i
        print i, '!=', silnia
        
.. only:: latex

    .. code:: python

        1!= 1
        2!= 2
        3!= 6
        4!= 24
        5!= 120
    
    
Drugi przykład przy obliczaniu silni korzysta z wbudowanej funkcji w SageMath.

.. sagecellserver::
    
    print 5, '!=', factorial(5)


.. admonition::

    **Pochodną** będziemy interpretować jako matematyczne działanie na funkcji.

    **Podstawowe wzory:**

    .. math:: 

        \begin{array}{ll}
        n'=0 \\ x'=1 \\ (x^n)'= n \cdot x^{n-1}, & {} n>1 \\ (sin(x))'=cos(x) \\ (cos(x))'=-sin(x)
        \end{array}


Poniżej przykłady obliczania pochodnej w SageMath z wykorzystaniem instrukcji *diff*.

.. sagecellserver::

    f=x^5  #you can change this function
    show("f(x)=",f)
    show("f'(x)=",f.diff(x))
    
.. sagecellserver::

    f=sin(x)
    show("f(x)=",f)
    show("f'(x)=",f.diff(x))
 

.. admonition:: **Kolejne wzory dotyczące pochodnej funkcji.**

    Poniżej wzory na pochodną sumy, różnicy, iloczynu i ilorazu funkcji.

    .. math:: 

        \begin{array}{ll}
        f, g - funkcje, \hspace{1cm} c - liczba \hspace{0,2cm} rzeczywista\\
        (c \cdot f)' =c \cdot f' \\ (f+g)'= f' + g' \\ (f-g)'= f' - g' \\
        (f \cdot g)' = f' \cdot g + f \cdot g' \\ (f/g)'= (f' \cdot g - f \cdot g')/g^2
        \end{array}


.. note:: 

    Liczba przed zmienną nie zmienia operacji na pochodnej.

    Wyrażenia algebraiczne oddzielone *+* lub *-* liczą się oddzielnie.
    

**Przykłady**

.. sagecellserver::


    f=x^3-2*x^2+3*x-4   #you can change this function
    show("1. f(x)=",f,",        f'(x)=",f.diff(x))
    f=x*cos(x)
    show("2. f(x)=",f,",       f'(x)=",f.diff(x))
    f=x^2*sin(x)
    show("3. f(x)=",f,",       f'(x)=",f.diff(x))
    f=sin(x)/x
    show("4. f(x)=",f,",      f'(x)=",f.diff(x))


**Pochodne z pochodnych - pochodne wyższych rzędów.**

Oczywiście, możemy obliczyć pochodną z pochodnej. Pochodne wyższego rzędu zapisujemy w następujący sposób:

.. math:: 

    f''(x) , \hspace{1,1cm}  f'''(x) , \hspace{1,1cm}  f''''(x),\hspace{1cm}... \\
    f^{(2)}(x) , \hspace{1cm}  f^{(3)}(x) , \hspace{1cm}  f^{(4)}(x),\hspace{1cm}...

Poniżej obliczenia wyższych rzędów pochodnej w SageMath:

.. sagecellserver::

    f=x^3-3*x^2  #you can change this function
    show ("      f(x)=",f, "        f'(x)=", f.diff(x))
    show ("f''(x)=",f.diff(x,2),"         f'''(x)=", f.diff(x,3))
    
.. sagecellserver::

    f=sin(x)
    show('f(x)=',f)
    show("f'(x)=",f.diff(x))
    show("f''(x)=",f.diff(x,2))
    show("f'''(x)=",f.diff(x,3))
    show("f''''(x)=",f.diff(x,4))
    
**Obliczanie wartości pochodnej w punkcie.**

Pochodna funkcji jest oczywiście funkcją, więc możemy obliczyć wartość pochodnej dla argumentu.

**Przykłady**

.. sagecellserver::

    f=sin(x) #you can change this function
    w1=f.diff(x).substitute(x = 0)
    w2=f.diff(x).substitute(x = pi/3)
    show("f(x)=", f, ",        f'(x)=",f.diff(x), ",        f'(0)=" , w1, ",        f'(pi/3)=", w2)

.. sagecellserver::

    g=x^4+3-2*x^3+5*x  #you can change this function
    w1=g.diff(x,2).subs(x = 1)
    w2=g.diff(x,2).subs(x = 2)
    show("g(x)=", g, ",      g''(x)=",g.diff(x,2), ",      g''(1)=" , w1, ",      g''(2)=", w2)


.. admonition:: **Definicja wielomianu.**

    **Wielomianem** stopnia n zmiennej x nazywamy funkcję:

    .. math::

        W(x)=a_0+a_1 \cdot x +a_2 \cdot x^2 +...+a_n \cdot x^n,  \hspace{1cm} a_0, a_1, a_2, ..., a_n - współczynniki.

.. note::

    Funkcja liniowa i funkcja kwadratowa jest wielomianem.

    .. math::

        \begin{array}{ll}
        W_1(x)=a_0+a_1 \cdot x  \\
        W_2(x)=a_0+a_1 \cdot x +a_2 \cdot x^2    
        \end{array}


Informatyczne obliczanie wielomianów
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. note:: Funkcja liniowa.

    Wiemy, że przez dwa punkty przechodzi dokładnie jedna prosta.
    Ponadto znając współrzędne powyższych punktów, możemy określić wzór tej prostej.
    Przypomnijmy, że wzór jest funkcję liniową:

    .. math::

        y = a x + b 

Współczynnik kierunkowy i wyraz wolny możemy obliczyć z poniższych wzorów:

.. math:: 

    a=\frac{y_2-y_1}{x_2-x_1} \\
    b=y_1-ax_1  

Wpisując odpowiednie równania, możemy narysować linię prostą przechodzącą przez dwa punkty.

.. sagecellserver::

    x1=-int(random()*4)
    y1=int(random()*9-4)
    x2=int(random()*4)+1
    y2=int(random()*9-4)
    p1=point((x1,y1),size=10)
    p2=point((x2,y2),size=10)
    a=(y2-y1)/(x2-x1)
    b=y1-a*x1
    f=a*x+b
    show ('y=',f)
    g=plot(a*x+b,xmin=x1-2, xmax=x2+2, color="green")
    show(p1+p2+g,figsize=4)

.. only:: latex
          
    a plot as in :numref:`f_liniowa`.

    .. figure:: wielomiany_media/w1.pdf
       :width: 60%
       :name: f_liniowa 


.. note:: Parabola.

    Poniżej znajduje się przykład dotycżący trzech punktów, które nie są współliniowe. Możemy wyznaczyć funkcję kwadratową do której należą te punkty. Więc musimy wyznaczyć z poniższych równań współczynniki *a, b, c* funkcji kwadratowej.

    .. math::

        \begin{cases}
        y_1=ax_1^2+bx_1+c \\
        y_2=ax_2^2+bx_2+c \\ 
        y_3=ax_3^2+bx_3+c 
        \end{cases} 
        

Te obliczenia są żmudne i czasochłonne, nawet dla konkretnego przykładu. Gdybyśmy chcieli wyznaczyć odpowiednie wzory, jak powyżej dla funkcji liniowej, to zajęłoby to nam dużo czasu.

Poniżej wykorzystamy możliwości SageMath.

.. sagecellserver::

    x1=-1
    y1=0
    x2=1
    y2=4
    x3=3
    y3=-1
    p1=point((x1,y1),size=10)
    p2=point((x2,y2),size=10)
    p3=point((x3,y3),size=10)
    show(p1+p2+p3,figsize=3)


Obliczamy następujące równania, z których szukamy współczynniki: *a, b, c*.

.. math:: 

    \begin{cases}  
    y_1=ax_1^2+bx_1+c \\  
    y_2=ax_2^2+bx_2+c \\ 
    y_3=ax_3^2+bx_3+c 
    \end{cases}

Zamieniamy powyższy układ równań na odpowiednie równanie macierzowe.

.. math:: 
    \begin{bmatrix}
    x_1^2&x_1&1\\x_2^2&x_2&1\\
    x_3^2&x_3&1
    \end{bmatrix} 
    \begin{bmatrix} a\\b\\c\end{bmatrix} = \begin{bmatrix} y_1\\y_2\\y_3\end{bmatrix}

W SageMath możemy łatwo rozwiązać powyższe równanie, wystarczy zastosować poniższe działanie:

.. math::

    M v, \hspace{3mm} where \hspace{3mm} M-matrix, \hspace{0.3cm} v-vector \hspace{0.3cm} [y1, y2, y3]


.. sagecellserver::

    M = matrix(3,3,[[x1^2,x1,1],[x2^2,x2,1],[x3^2,x3,1]])
    v = vector([y1,y2,y3])
    wynik = M\v
    [a,b,c]=wynik
    show("a=",a,",  b=",b, ",  c=",c)
    f=a*x^2+b*x+c
    show('y=',f)
    g=plot(f,xmin=-3, xmax=5, color="green")
    show(p1+p2+p3+g,ymin=-7, ymax=8, figsize=4)
    
.. only:: latex
          
    a plot as in :numref:`parabola2`.

    .. figure:: wielomiany_media/w2.pdf
       :width: 60%
       :name: parabola2     
    

Wielomian
^^^^^^^^^^

Oto przykład dla kilku losowych punktów. Otrzymana funkcja jest wielomianem.

Jeśli podasz n punktów, to na pewno przechodzi przez te punkty wielomianem stopnia mniejszego od n.


.. sagecellserver::

    points={}
    vector_x=[]
    vector_y=[]
    k=6                 #number of points
    y=int(random()*7-3)
    vector_y=[y]
    points=point((0,y),size=10)
    print '(',0,',',y,')'
    for i in range(k-1):
        vector_x=vector_x+[0]
    vector_x=vector_x+[1]
    for n in range(k-1):
        x=n+1
        for i in range(k):
            vector_x=vector_x+[x^(k-i-1)]
        y=int(random()*7-3)
        vector_y=vector_y+[y]
        print '(',x,',',y,')'
        points = points + point((x,y),size=10)
    show(points,ymin=-2,ymax=6,figsize=4) 
 

Dla losowych punktów obliczamy współczynniki wielomianu.

.. sagecellserver::

    M = matrix(k,k,vector_x)
    v=vector(vector_y)
    wynik = M\v
    show(M)
    show(wynik)

Rysujemy wielomian, który przechodzi przez podane punkty.

.. sagecellserver::

    var('x')
    vector_x=[]
    for i in range(k):
        vector_x=vector_x+[x^(k-i-1)]
    w=vector(vector_x)
    f=w*wynik
    show("f(x)=",f)
    f=plot(f,xmin=-1, xmax=k, color="green")
    show(points+f,ymin=-7,ymax=8,figsize=6)
    
.. only:: latex
          
    a plot as in :numref:`wielomian`.

    .. figure:: wielomiany_media/w3.pdf
       :width: 60%
       :name: wielomian    
    
   
Wzór Taylora
^^^^^^^^^^^^

Z analizy matematyczna znany poniższy jest wzór, który przybliża dowolną funkcję pewnym odpowiadającym tej funkcji wielomianem.

.. admonition:: **Wzór Taylora**

    .. math::

        \begin{aligned}
        f(x)=f(a)+{\frac  {x-a}{1!}}f^{{(1)}}(a)+{\frac  {(x-a)^{2}}{2!}}f^{{(2)}}(a)+\ldots +
        {\frac  {(x-a)^{n}}{n!}}f^{{(n)}}(a)+\ldots
        \end{aligned}

Możemy uprościć powyższy wzór podstawiajac za a=0.

.. admonition:: **Wzór Taylora-Maclaurina**.

    .. math::

        \begin{aligned}
        f(x)&=f(0)+{\frac  {x}{1!}}f^{{(1)}}(0)+{\frac  {x^{2}}{2!}}f^{{(2)}}(0)+\ldots +
        {\frac  {x^{n}}{n!}}f^{{(n)}}(0)+\ldots
        \end{aligned}

To jest przykład dla funkcji :math:`f(x)=sin(x)`.

.. sagecellserver::

    kolor=[]
    kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    n=6
    f=x
    q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    for i in range(1, n):
        k=2*i+1
        f=f+(-1)^i*(1/factorial(k))*x^k
        q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    show(sin(x),"=",f)
    q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)
    show(q)
 
 
.. only:: latex
          
    a plot as in :numref:`t_sin`.

    .. figure:: wielomiany_media/t2.pdf
       :width: 60%
       :name: t_sin     
       

**Ćwiczenia dla uczniów.**

Dla funkcji :math:`f(x)=cos(x)` znajdź odpowiadający wielomian ze wzoru Taylora-Maclaurina.

.. sagecellserver::

    kolor=[]
    kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    n=6
    f=1
    q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    for i in range(1, n):
        k=2*i
        f=f+(-1)^i*(1/factorial(k))*x^k
        q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    show(cos(x),"=",f)    
    f=cos(x)
    q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, linestyle="--", figsize=5.5)
    show(q)


.. only:: latex
          
    a plot as in :numref:`t_cos`.

    .. figure:: wielomiany_media/t3.pdf
       :width: 60%
       :name: t_cos 


Zastosuj wzór Taylora-Maclaurina dla funkcji :math:`f(x)=e^x`.

.. sagecellserver::

    kolor=[]
    kolor=["yellowgreen","green","pink","orange","red","brown","black"]
    n=8
    f=1
    q=plot(f,xmin=-4,xmax=6, ymin=-3, ymax=3,color="yellow", legend_label="T(0)")
    for i in range(0, n):
        k=i+1
        f=f+(1/factorial(k))*x^k
        #print(f(x))
        q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=3, color=kolor[(i-1)%7], legend_label=r"T( %d )" % i)
    show(e^x,"=",f)
    f=e^x
    q=q+plot(f,xmin=-5, xmax=7, ymin=-3, ymax=10, linestyle="--", figsize=5.5)
    show(q)
             

Znamy już wzór Taylora. Teraz możemy uprościć nasze obliczenia i użyć wbudowanego wzoru Taylora w SageMath.

.. sagecellserver::

    f=sin(x)*x^2          #your function
    k=8                   #level iteration
    t=taylor(f,x,0,k)     #Taylor function in Sage
    q=plot(t, xmin=-5, xmax=5, ymin=-5, ymax=5, color="red", legend_label=r"Taylor(f, x, 0, %d)" % k)
    show(f,"=",t)
    q=q+plot(f, xmin=-5, xmax=5, ymin=-5, ymax=5, linestyle="--", figsize=5.5, legend_label=r"Your function")
    show(q)


.. only:: latex
          
    a plot as in :numref:`t_sin*x^2`.

    .. figure:: wielomiany_media/t1.pdf
       :width: 60%
       :name: t_sin*x^2 


Wnioski
^^^^^^^^

Zajęcia odbywały się na dodatkowych godzinach w ramach iCSE4school
w III Liceum Ogólnokształcącym im. Stefana Batorego w Chorzowie. Celem
zajęć było rozszerzenie nauczania matematyki i informatyki w drugiej
klasie liceum. Powyższy temat w drugiej grupie testowej był prowadzony
metodą „flip teaching”, czyli uczniowie musieli się przygotować do
zajęć z wykorzystaniem internetu. Pierwsze zajęcia były poświęcone
silni i pochodnej funkcji. Drugie zajęcia to wielomiany i wyznaczanie
wielomianu przechodzącego przez dane punkty. Według programu nauczania
na lekcjach matematyki podobne zadania dotyczą szczególnych przypadków
na prostej i paraboli. Ja sam spotkałem się z pytaniami uczniów, czy
da się wyznaczyć odpowiednie wzory dotyczące paraboli i czy da się to
uogólnić na dowolną ilość punktów. Tak więc powstała idea napisania
przeze mnie programu w SageMath, który przy zadanych punktach wyznaczy
wielomian przechodzący przez te punkty oraz narysuje to na
wykresie. Praca domowa uczniów to zapoznanie się z pojęciem macierzy,
mnożeniem macierzy przez wektor i wyznaczaniem jej
wyznacznika. Trzecie zajęcia to wyznaczanie przybliżenia funkcji
wielomianem przy użyciu wzoru Taylora. Po omówieniu moich przykładów
uczniowie mieli w podobny sposób wyznaczyć wielomiany dla podanych
funkcji. Jeżeli zauważyli pewną prawidłowość w kolejnych
współczynnikach wielomianu to mieli podać hipotezę, a następnie
sprawdzić ją w internecie, czy jest ona prawdziwa.
    
Według mnie zajęcia te mogą być dobrym uzupełnieniem i ugruntowaniem
wiedzy uczniów z matematyki w trzeciej klasie liceum na poziomie
rozszerzonym lub na zajęciach dodatkowych w klasie drugiej. Ponadto
każdy rozdział można traktować niezależnie, czyli przeprowadzać go w
czasie przeprowadzania danego materiału na lekcjach matematyki.
