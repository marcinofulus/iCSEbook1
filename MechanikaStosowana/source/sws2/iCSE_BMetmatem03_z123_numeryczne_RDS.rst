.. -*- coding: utf-8 -*-


Równanie dyfuzji (1d)
---------------------

Równanie dyfuzji w jednym wymiarze przyjmuje następującą postać:



.. MATH::

     \frac{\partial u}{\partial t}= D \frac{\partial^2u}{\partial x^2}





Aby określić funkcje :math:`u(x,t)` musimy znać stan początkowy i warunku brzegowe.



.. MATH::

     u(x=a,t=0)=u_a \textbf{ oraz } u(x=b,t=0)=u_b


lub



.. MATH::

     u'(x=a,t=0)=J_a \textbf{ oraz } u'(x=b,t=0)=J_b



Dyskretny operator Laplace'a
----------------------------

Zaczynamy od dyskretnej postaci operatora Laplace'a:


Można przestawić go jako złożenie dwóch operatorów różnic skończonych, najlepiej w przód i w tył, tak by efekt był symetryczny.


.. code-block:: python

    sage: N=5
    sage: B=-identity_matrix(N)
    sage: for i in range(1,B.ncols()):
    ...       B[i-1,i]=1
    sage: A=identity_matrix(N)
    sage: for i in range(1,A.ncols()):
    ...       A[i,i-1]=-1
    sage: html.table([[B,A,"=",B*A]])
    ...


.. end of output

Można też wykonać bezpośrednią konstrukcję korzystając z przybliżenia drugiej pochodnej:



.. MATH::

     \displaystyle \frac{f(x_{i+1})-2 f(x_i)+f(x_{i-1}) }{h^2}\simeq  \frac{\partial^2f(x)}{\partial x^2}(x_i)


Możemy napisać:



.. MATH::

    \nabla^2 f(x) = \frac{1}{h^2} L \mathbf{f},


gdzie:



.. MATH::

     L = \left(\begin{array}{rrrr} -2.0 & 1.0 & 0.0 & 0.0 \\ 1.0 & -2.0 & 1.0 & 0.0 \\ 0.0 & 1.0 & -2.0 & 1.0 \\ 0.0 & 0.0 & 1.0 & -2.0 \end{array}\right)


a :math:`\mathbf{f}` jest wektorem wartości funkcji wypróbkowanym na dziedzinie.








.. code-block:: python

    sage: N=7
    sage: L = matrix(RDF,N)
    sage: for i in range(1,N-1):
    ...       L[i,i-1],L[i,i],L[i,i+1] = 1,-2, 1
    sage: L[0,0],L[0,1],L[0,-1] = -2, 1, 1
    sage: L[-1,-1],L[-1,-2],L[-1,0] = -2, 1, 1    
    sage: show(L[:10,:10])


.. MATH::

    \left(\begin{array}{rrrrrrr}
    -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 \\
    1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\
    1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0
    \end{array}\right)

.. end of output

Można też skorzystać z definicji i obliczyć przybliżenie pochodnej stosując technikę "array slicing". Na przykład używając wydajnych numerycznie tablic numpy mamy:


.. code-block:: python

    sage: import numpy as np
    sage: u = np.random.randint(5,size=10)*1.0
    sage: a = np.zeros_like(u)
    sage: b = np.zeros_like(u)
    sage: c = np.zeros_like(u)
    sage: d = np.zeros_like(u)
    sage: a[1:-1]=u[2:]-2.0*u[1:-1]+u[:-2]
    sage: b[1:-1]=u[2:]
    sage: c[1:-1]=-2.0*u[1:-1]
    sage: d[1:-1]=u[:-2]
    sage: html.table([[u],[d],[b],[c],'=',[a]])
    ...


.. end of output

Dalej, będziemy dla wygody stosować skonczony operator liniowy :math:`L`.  Zobaczny jak działa taki operator na dolowlną funkcję wypróbkowaną na równoodległych punktach


.. code-block:: python

    sage: f = vector( [var('f%d'%i) for i in range(N)])
    sage: html.table([[L,'$\cdot$',f.column() ,'$=$',  (L*f).column() ]])
    ...


.. end of output

.. code-block:: python

    sage: #print  latex(L), latex(f.column()), latex((L*f).column() )
    sage: #var('dt,D')
    sage: #f = vector( [var('u_i%d'%i) for i in range(N)])
    sage: #print latex(identity_matrix(N)),latex(dt*D), latex(L), latex(f.column()), latex((L*f).column() )


.. end of output


Numeryczne rozwiązywanie jednowymiarowego równania dyfuzji
----------------------------------------------------------

Równanie dyfuzji możemy zdyskretyzować w dziedzinie czasowej stosując  jawny lub niejawny schemat Eulera i zastępując Laplace'an jego dyskretnym odpowiednikiem:



.. MATH::

    u^{i+1}  = u^i + \left[ \frac{D dt}{h^2} \right] Lu^i.


Schemat, jak i jego zbieżność zależą od jednej stałej :math:`\frac{D dt}{h^2}`, zwanej też  `liczbą Couranta `_ , w której tkwią zarówno wielkości fizyczne jak i dyskretyzacja układu. Dalej, zapisując układ iteracji jako:



.. MATH::

    u^{i+1}  = \left( I + \frac{D dt}{h^2} Lu_i \right) u^i,


widzimy, że rozwiązanie jest potęgami :math:`L_t^1,L_t^2,L_t^3,\dots,L_t^n` operatora



.. MATH::

    L_t= I +  \frac{D dt}{h^2}  L u^i.


Schemat niejawny zawiera wartość :math:`u` w  chwili :math:`i+1` po prawej stronie:



.. MATH::

    u^{i+1}  = u^i + \left[ \frac{D dt}{h^2} \right] Lu^{i+1},


co przepisując szukaną :math:`u_{i+1}` na prawą stronę daje nam niejednorodny układ rówń liniowych:



.. MATH::

     \left( I - \frac{D dt}{h^2} Lu_i \right) u^{i+1}= u^{i}.


W przypadku małego :math:`dt` schematy te są równoważne. Korzystając z twierdzenia o macierzowym szeregu geometrycznym, lub rozwinięcia  w szereg Taylora funkcji  macierzowej ( `link `_ ) mamy:



.. MATH::

     \left({I -\epsilon A}\right)^{-1} = I+\epsilon A+ \epsilon^2 A^2 \dots


Widzimy, że formalnie rozwiązując układ równań liniowych ze schematu niejawnego, biorąc wyrazy liniowe w :math:`dt` dostajemy schemat jawny.








.. code-block:: python

    sage: u = vector(RDF,[0,0,0,1,0,0,0])
    sage: print u
    sage: print L*u
    (0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0)
    (0.0, 0.0, 1.0, -2.0, 1.0, 0.0, 0.0)

.. end of output


Warunki brzegowe.
-----------------

Dyskretny operator Laplace'a w 1d potrzebuje wartości funkcji z dwóch węzłów sąsiadujących z węzłem w którym obliczamy wartosc laplasjanu. Jeśli punkt ten znajduje się na brzegu obszaru to brakuje informacji by obliczyć poprawny operator. Informację tą trzeba dostarczyc w postaci warunku brzegowego by problem miał jednoznaczne rozwiązanie. Przykładem warunku brzegowego może być:



 #. Warunek Dirichleta: :math:`u(0)=u_0`. Np. wartość koncentracji na brzegu. Jeśli wartość ta jest zero to taka sytuacja jest zwana warunkiem pochłaniającym.

 #. Warunek von Neumanna: :math:`J(0) =( \partial_x u)(0)=J_0`. Np. wielkość strumienia na brzegu. Jeśli dla równania adwekcji-dyfuzji strumień przez ściankę wynosi zero to warunek jest nazywany odbijającym. 

 #. Okresowy warunek brzegowy: efektywne pozbycie się brzegu przez wprowadzenie innej topologii. Każdy węzeł ma identyczną wartość jak węzeł po drugiej stronie układu, którym jest najczęściej kostka n\-wymiarowa. W przypadku odcinka, warunek efektywnie rozwiązuje badanie równanie na okręgu. 



Warunki Dirichleta
------------------

Załóżmy, że nakładamy warunek Dirichleta na końcach przedziału: :math:`u_0=1` i :math:`u_{N-1}=2`. Oznacza to, że w ewolucji czasonej wektora :math:`u`, wartości na brzegu będą zawsze utrzymywane "zewnetrznie" na zadanych wartościach. Biorąc jawny schemat mamy:



.. MATH::

    
    \left(\begin{array}{r}\mathbf{u_0^{i+1}}\\u_1^{i+1}\\u_2^{i+1}\\u_3^{i+1}\\\mathbf{u_4^{i+1}}\end{array}\right) =
    \underbrace{
    \left[    \left(\begin{array}{rrrrr}\mathbf{ 1 }& 0 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 0 & 1 \end{array}\right) +\frac{dt  D}{h^2}  \left(\begin{array}{rrrrr} -2.0 & 1.0 & 0.0 & 0.0 & 0.0 \\ 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\ 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\ 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\ 0.0 & 0.0 & 0.0 & 1.0 & -2.0 \end{array}\right)\right]
    }_{L_t}
    \left(\begin{array}{r}\mathbf{u_0^i}\\u_1^i\\u_2^i\\u_3^i\\\mathbf{u_4^i}\end{array}\right)





otrzymamy po każdym kroku wartości :math:`u_0^{i+1}` i :math:`u_4^{i+1}`, które nie będą spełniały dokładnie warunku brzegowego. Należy wieć po każdym kroku wymusić wartości:



.. MATH::

    
    u_0^{i+1}=1 \quad u_4^{i+1}=2


Zauważmy, że wtedy w kolejnym kroku wartościami krańcowymi wektora :math:`u` będą wielkości zgodne z warunkami i będą dawały poprawny przyczynek do swoich sąsiadów.


Warunki Dirichleta, są zwane "istotnymi warunkami brzegowymi" (essential boundary conditions). Nie da się tak zmodyfikować dyskretnego operatora :math:`L` by automatycznie spełniał te warunki i muszą być dołączone dodatkowo w schemacie numerycznym.











.. code-block:: python

    sage: # Dirichlet
    sage: def init_L(N=7):
    ...       L = matrix(RDF,N)
    ...       for i in range(1,N-1):
    ...           L[i,i-1],L[i,i],L[i,i+1] = 1,-2, 1
    ...       L[0,0],L[-1,-1] = 1, 1
    ...       return L
    ...       
    sage: def essential_boundary_conditions(u):
    ...       u[0] = 1.2
    ...       u[-1] = 2.1
    sage: L = init_L(7)
    sage: show(L[:10,:10])


.. MATH::

    \left(\begin{array}{rrrrrrr}
    1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0
    \end{array}\right)

.. end of output

Okresowy warunek brzegowy
-------------------------

Okresowy warunek brzegowy w przypadku jednowymiarowym polega na utożsamieniu :math:`u_0=u_{N}`. Obszar na którym rozwiązywane jest równanie jest topologicznie równoważny okręgowi. Okrąg nie posiada brzegu więc problem jest dobrze określony - nie ma gdzie zadawać warunku brzegowego.


Warunek ten można zaimplementowac modyfikująć dyskretny operator Laplace'a :math:`L` tak by: :math:`L_{0,N-1}=1` i :math:`L_{N-1,0}=1`. Niech :math:`N=5`, mamy:



.. MATH::

      \left(\begin{array}{rrrrr} -2.0 & 1.0 & 0.0 & 0.0 & 1.0 \\ 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\ 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\ 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\ 1.0 & 0.0 & 0.0 & 1.0 & -2.0 \end{array}\right) \left(\begin{array}{r} f_{0} \\ f_{1} \\ f_{2} \\ f_{3} \\ f_{4} \end{array}\right) \left(\begin{array}{r} -2.0 \, f_{0} + f_{1} + f_{4} \\ f_{0} - 2.0 \, f_{1} + f_{2} \\ f_{1} - 2.0 \, f_{2} + f_{3} \\ f_{2} - 2.0 \, f_{3} + f_{4} \\ f_{0} + f_{3} - 2.0 \, f_{4} \end{array}\right)


Widać, że taki operator oblicza poprawnie Laplacjan dla punktów skrajcym, biarąc za brakujące punkty :math:`u_{-1}` i  :math:`u_5`, odpowiednio: :math:`u_{4}` oraz  :math:`u_0`.





.. code-block:: python

    sage: # PBC
    sage: def init_L_pbc(N=7):
    ...       L = matrix(RDF,N)
    ...       for i in range(1,N-1):
    ...           L[i,i-1],L[i,i],L[i,i+1] = 1,-2, 1
    ...       L[0,0],L[0,1],L[0,-1] = -2, 1, 1
    ...       L[-1,-1],L[-1,-2],L[-1,0] = -2, 1, 1    
    ...       return L    
    sage: def essential_boundary_conditions(u):
    ...       pass
    sage: L  = init_L_pbc(7)
    sage: show(L[:10,:10])


.. MATH::

    \left(\begin{array}{rrrrrrr}
    -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 \\
    1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\
    1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: L.rank()
    7

.. end of output


Warunek von Neumanna
--------------------

W przypadku ogólnym, rozważmy  równania dające się zapisać w postaci prawa zachowania:



.. MATH::

    \frac{\partial u}{\partial t} = -  \nabla \cdot \vec J,


gdzie :math:`J` to strumień pola :math:`u`. Równanie dyfuzji można przedstawić z tej postaci przy założeniu że:



.. MATH::

    \vec J = - \vec\nabla u


Jeśli równanie zawiera człon adwekcyjny (tzn proporcjonalny do pierwszej pochodnej) to strumień będzie zawierał dodatkowe człony.


Widać, że przypadku jednowymiarowego równania dyfizji warunek von Neumanna jest efektywnie  warunkiem na pochodną funkcji na brzegu:



.. MATH::

    \frac{u_1-u_0}{h}=-J


Przypadkiem szczególnym warunku Neumanna jest bariera odbijająca, w której zakładamy że strumień cząstek opisywanych gęstością lub stężeniem :math:`u` przez barierę wynosi zero. W takim przypadku można napisać operator Laplace'a, który będzie konsystentny z tym warunkiem:



.. MATH::

    
    \left(\begin{array}{rrrrr} -1.0 & 1.0 & 0.0 & 0.0 & 0.0 \\ 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\ 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\ 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\ 0.0 & 0.0 & 0.0 & 1.0 & -1.0 \end{array}\right) \left(\begin{array}{r} f_{0} \\ f_{1} \\ f_{2} \\ f_{3} \\ f_{4} \end{array}\right)
    = \left(\begin{array}{r} -f_{0} + f_{1} \\ f_{0} - 2.0 \, f_{1} + f_{2} \\ f_{1} - 2.0 \, f_{2} + f_{3} \\ f_{2} - 2.0 \, f_{3} + f_{4} \\ f_{3} - f_{4} \end{array}\right)


Widać, że taki operator, zamiast drugiej pochodnej w punktach skrajnych oblicza pierwszą pochodną. Intuicyjnie,  działanie operatora ewolucji  na dowolny wektor będzie poprawiało wartość w pierwszym i ostatnim węźle tak długo aż pierwsze pochodne będą zero.


Warto odnotować, że taki operator ma rząd o jednej większy od wymiaru. Wynika z tego, że rozwiązanie zerowe spełnia takie równanie. Rzeczywiście: równanie dyfuzji na obszarze z odbijającymi scianami jest spełnione jeśli w układzie nie ma cząstek! Ponadto widać, że jesli rozwiązanie jest określone co do wartości stałej multyplikatywnej.





.. code-block:: python

    sage: # von Neumann/reflecting BC
    sage: def init_L_ref(N=7):
    ...       L = matrix(RDF,N)
    ...       for i in range(1,N-1):
    ...           L[i,i-1],L[i,i],L[i,i+1] = 1,-2, 1
    ...       L[0,0],L[0,1] = -1, 1
    ...       L[-1,-1],L[-1,-2] = -1, 1
    ...       return L
    ...       
    sage: def essential_boundary_conditions(u):
    ...       pass
    sage: L = init_L_ref(7)
    sage: show(L[:10,:10])


.. MATH::

    \left(\begin{array}{rrrrrrr}
    -1.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 & 0.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -2.0 & 1.0 \\
    0.0 & 0.0 & 0.0 & 0.0 & 0.0 & 1.0 & -1.0
    \end{array}\right)

.. end of output

.. code-block:: python

    sage: L.rank()
    6

.. end of output


.. code-block:: python

    sage: Lt=identity_matrix(N)+0.40*L
    sage: eig = list(Lt.eigenvalues())
    sage: eig_s = sorted(map(lambda x:x.n(digits=3),map(real,eig)))
    sage: show(eig_s)


.. MATH::

    \left[-0.521, -0.299, 0.0220, 0.378, 0.699, 0.921, 1.00\right]


.. end of output

Stabilność i własności operatora :math:`L_t`
--------------------------------------------




Sprawdźmy wartości własne operatora :math:`L_t=I+\frac{D dt}{h^2}L`, dla różnych wartości stałej :math:`C=\frac{D dt}{h^2}`. Zacznijmy od małej wartości np: :math:`C=0.2`. Dla :math:`N=5` i operatora z okresowymi warunkami brzegowymi otrzymujemy:



.. MATH::

    \left[0.240, 0.240, 0.511, 0.511, 0.849, 0.849, 1.00\right].


Widać, że wartości własne są rzeczywiste, dodatnie, mniejsze od jednego z wyjątkiem jednej. Ewolucja czasowa układu jest dana przez potęgi operatora :math:`L_t`:  

.. MATH::

    L_t^1,L_t^2,L_t^3,\dots,L_t^n.

  Oznacza to, że kolejne iteracje będą wygaszać składowe wektora wzdłuż wszystkich wektorów własnych, z wyjątkiem tego należącego do wartości jeden, która to będzie stanem stacjonarnym.


Niech :math:`C=0.4`, otrzymujemy wtedy:



.. MATH::

    \left[-0.521, -0.521, 0.0220, 0.0220, 0.699, 0.699, 1.00\right]


Pojawiają  się ujemne wartości własnych, co oznacza oscylacje pomiędzy dodatnimi i ujemnymi wartościami np. stężenia w czasie. Nie jest to efekt fizyczny i jawny algorytm Eulera dla równaia dyfuzji dla :math:`C=0.4` jest robieżny.


Warto odnotować, że stała od której zależy stabilnośc zawiera w liczniku  krok czasowu a w mianowniku kwadrat kroku przestrzennego. Oznacza to, że zmniejszając dyskretyzacje przestrzeni musimy jednocześnie używać mniejszego kroku czasowego, by schemat był stabilny.


.. code-block:: python

    sage: N=7
    sage: L = matrix(RDF,N)
    sage: for i in range(1,N-1):
    ...       L[i,i-1],L[i,i],L[i,i+1] = 1,-2, 1
    sage: L[0,0],L[0,1],L[0,-1] = -2, 1, 1
    sage: L[-1,-1],L[-1,-2],L[-1,0] = -2, 1, 1    
    sage: @interact
    sage: def _(C=slider(0.01,1.0,0.01)):
    ...       
    ...       Lt=matrix(RDF,identity_matrix(N)+C*L)
    ...       eig = list(Lt.eigenvalues())
    ...       l = sorted(map(lambda x:x.n(digits=3),map(real,eig)))
    ...       
    ...       print l[0:6],"...",l[-1]


.. end of output


Mając juz wszystkie składniki można napisać algorytm który będzie rozwiązywał numerycznie równanie dyfuzji przy zadanych warunkach brzegowych i początkowych.



.. code-block:: python

    sage: L.ncols(),L.rank()
    (7, 7)

.. end of output


.. code-block:: python

    sage: L = init_L_ref(45)
    sage: def essential_boundary_conditions(u):
    ...       pass
    ...       
    sage: Tlst=[]
    sage: Lt=matrix(RDF,identity_matrix(L.ncols())+0.2*L)
    sage: u = zero_vector(RDF,L.ncols())
    sage: u[ int(L.ncols()/2) ] = 1.0
    sage: essential_boundary_conditions(u)
    sage: for i in range(150):
    ...       Tlst.append(u)
    ...       u = Lt*u # schemat jawny
    ...       essential_boundary_conditions(u)
    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       p =  list_plot(Tlst[ti],plotjoined=True)
    ...       p += list_plot(Tlst[-1],plotjoined=True,color='gray',ymin=-0.2,ymax=1.0)
    ...       p += list_plot(Tlst[0],plotjoined=True,color='gray')
    ...       p.show(figsize=(9,3))


.. end of output

Warunek unormowania:


.. code-block:: python

    sage: [sum(T_) for T_ in Tlst]
    [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]

.. end of output

Numeryczne rozwiązanie równanie dyfuzji \- porównanie z rozwiązaniem dokładnym.
-------------------------------------------------------------------------------

Rozważmy równanie:



.. MATH::

     \frac{\partial u}{\partial t}= D \frac{\partial^2u}{\partial x^2}


na odcinku :math:`(0,l)` z odbijającymi warunkami brzegowymi. W tym celu stosujemy jawny schemat Eulera. Krok przestrzenny :math:`h` jest równy:



.. MATH::

    h  = \frac{l^2}{(N-1)^2}.


Wobec tego mamy następujący infinitezymalny operator ewolucji



.. MATH::

    L_t= I +  dt\frac{D  (N-1)^2}{l^2}  L u^i,


przy czym maksymalny krok czasowy zależy od parametrów układu i jest ograniczony przez:



.. MATH::

    dt_{max}<0.25 \frac{l^2}{(N-1)^2 D}.





.. code-block:: python

    sage: N = 125
    sage: Dyf = 1.0
    sage: l =100
    sage: dt_max = 0.2/(Dyf*(N-1)^2/l^2)
    sage: dt = dt_max/2.0
    sage: C = dt*Dyf*(N-1)^2/l^2
    sage: print C,dt
    0.100000000000000 0.0650364203954214

.. end of output

.. code-block:: python

    sage: L = init_L_ref(N)
    sage: def essential_boundary_conditions(u):
    ...       pass
    ...       
    sage: Tlst=[]
    sage: Lt=matrix(RDF,identity_matrix(L.ncols())+C*L)
    sage: u = zero_vector(RDF,L.ncols())
    sage: u[ int(L.ncols()/2) ] = 1.0/(l/(N-1))
    sage: essential_boundary_conditions(u)
    sage: for i in range(150):
    ...       Tlst.append(u)
    ...       u = Lt*u # schemat jawny
    ...       essential_boundary_conditions(u)
    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       p =  list_plot(Tlst[ti],plotjoined=True)
    ...       p += list_plot(Tlst[-1],plotjoined=True,color='gray',ymin=-0.2,ymax=0.5)
    ...       p += list_plot(Tlst[0],plotjoined=True,color='gray')
    ...       p.show(figsize=(9,3))


.. end of output


.. code-block:: python

    sage: c(x,t)=1/sqrt(4*pi*Dyf*t)*exp(-(x^2)/(4*Dyf*t) )
    sage: print "Unormowanie wzoru analitycznego:",integrate(c(x,0.23),(x,-oo,oo))
    sage: T = [i*dt for i in range(150)] 
    sage: X = [ (-l/2 + i*l/(N-1)).n() for i in range(N)]
    sage: @interact
    sage: def _(ti=slider(range(1,len(Tlst)))):
    ...       print "t=",dt*ti,"Norma=",sum(Tlst[ti])*(l/(N-1))
    ...       plt = point(zip(X,Tlst[ti]),figsize=(7,3),color='red') 
    ...       plt +=  plot(c(x,dt*ti),(x,-50,50))
    ...       plt.show(figsize=(8,3))


.. end of output



Układ reakcji\-dyfuzji: Model Fishera Kołogomorowa
--------------------------------------------------




.. code-block:: python

    sage: import numpy as np 
    sage: from scipy.sparse import dia_matrix


.. end of output

.. code-block:: python

    sage: %timeit 
    sage: sparse = True
    sage: slicing = False
    sage: Dyf = 1.0
    sage: r = 1.0
    sage: l = 100.0 # dlugosc ukladu
    sage: t_end = 100 # czas symulacje
    sage: N = 250 # dyskretyzacja przestrzeni
    sage: h = l/(N-1) 
    sage: dt = 0.052/(Dyf*(N-1)**2/l**2) # 0.2 z warunku CFL, krok nie moze byc wiekszy
    sage: sps = int(1/dt) # liczba krokow na jednostke czasu
    sage: Nsteps=sps*t_end  # calkowita liczba krotkow 
    sage: print "sps=",sps,"dt=",dt,'Nsteps=',Nsteps
    sage: if sparse:
    ...       L = dia_matrix( (np.array([N*[-2.],N*[1.],N*[1.]]),np.array([0,-1,1])), shape=(N,N))
    sage: if slicing:
    ...       one = np.identity(N)
    ...       L=np.roll(one,-1)+np.roll(one,1)-2*one
    ...       L[0,0]=1.
    ...       L[-1,-1]=1.
    sage: # warunek poczatkowy
    sage: u = np.zeros(N)
    sage: #u[int(N/2)-20:int(N/2)+20]=1 # step
    sage: #for i in range(1,3):
    sage: #    u[i] = 1.0 - i/3.0
    sage: u[:int(N/2)]=1
    sage: def essential_boundary_conditions(u):
    ...       u[0] = 1.0
    ...       u[-1] = 0.0
    sage: Tlst=[]
    sage: essential_boundary_conditions(u)
    sage: for i in range(Nsteps):
    ...       if not i%sps:
    ...           Tlst.append(list(u))
    ...       if slicing:
    ...           u[1:-1] = u[1:-1] + dt*(r*u[1:-1]*(1-u[1:-1]) + Dyf*(N-1)**2/l**2*np.diff(u,2))
    ...       else:    
    ...           u = u + dt*(r*u*(1-u)  + Dyf*(N-1)**2/l**2*L.dot(u))
    ...       
    ...       essential_boundary_conditions(u)
    sage: print "Saved ",len(Tlst), " from ", Nsteps
    sps= 119 dt= 0.00838696150062096 Nsteps= 59500
    Saved  500  from  59500
    CPU time: 23.92 s,  Wall time: 23.92 s

.. end of output

.. code-block:: python

    sage: pos_lst = []
    sage: for T_ in Tlst:
    ...       for (i,a),b in zip(enumerate(T_),T_[1:]):
    ...           if a>=0.5 and b<=0.5:
    ...               pos_lst.append( i+(a-0.5)/(a-b) ) 
    ...           
    sage: list_plot( [l/(N-1)*(b-a)/(sps*dt) for a,b in zip(pos_lst,pos_lst[1:])] , figsize=(7,3),gridlines=[[],[2]],ymax=2)


.. end of output

.. code-block:: python

    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       print r"t=",dt*ti
    ...       p =  list_plot(Tlst[ti],plotjoined=True)
    ...       p += list_plot(Tlst[-1],plotjoined=True,color='red',ymin=0,ymax=1.5)
    ...       p += list_plot(Tlst[0],plotjoined=True,color='gray')
    ...       p.show(figsize=(8,3))


.. end of output

.. code-block:: python

    sage: %timeit 
    sage: Dyf = 1.0
    sage: r = 1.0
    sage: l = 100.0 # dlugosc ukladu
    sage: t_end = 100 # czas symulacje
    sage: N = 100 # dyskretyzacja przestrzeni
    sage: h = l/(N-1) 
    sage: dt = 0.052/(Dyf*(N-1)**2/l**2) # 0.2 z warunku CFL, krok nie moze byc wiekszy
    sage: sps = int(1/dt) # liczba krokow na jednostke czasu
    sage: Nsteps=sps*t_end  # calkowita liczba krotkow 
    sage: print "sps=",sps,"dt=",dt,'Nsteps=',Nsteps
    sage: # warunek poczatkowy
    sage: u = np.zeros((N,N))
    sage: #u[int(N/2)-5:int(N/2)+5,int(N/2)-5:int(N/2)+5]=1 # step
    sage: #u[:int(N/2)+5,:]=1.0 # step
    sage: u[int(N/2),int(N/2)]=1.0
    sage: def essential_boundary_conditions(u):
    ...       u[:,0] = 0.0
    ...       u[:,-1] = 0.0
    ...       u[-1,:] = 0.0
    ...       u[0,:] = 0.0
    sage: Tlst=[]
    sage: essential_boundary_conditions(u)
    sage: for i in range(Nsteps):
    ...       if not i%sps:
    ...           Tlst.append(u.copy())
    ...       
    ...       u[1:-1,1:-1] = u[1:-1,1:-1] + dt*(r*u[1:-1,1:-1]*(1-u[1:-1,1:-1]) + \
    ...        Dyf*(N-1)**2/l**2*(np.diff(u,2,axis=0)[:,1:-1]+np.diff(u,2,axis=1)[1:-1,:]))
    ...       
    ...       essential_boundary_conditions(u)
    sage: print "Saved ",len(Tlst), " from ", Nsteps
    sps= 18 dt= 0.0530558106315682 Nsteps= 1800
    Saved  100  from  1800
    CPU time: 1.58 s,  Wall time: 1.58 s

.. end of output

.. code-block:: python

    sage: import pylab
    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       print r"t=",dt*ti
    ...       if True: 
    ...           pylab.clf()   
    ...           pylab.imshow(Tlst[ti],origin='top')
    ...           pylab.savefig('1.png',dpi=70)
    ...       else:
    ...           p =  matrix_plot(Tlst[ti])
    ...           p.show(figsize=(4,4))


.. end of output

Rozwiązania spiralne w układzie reakcji z dyfuzją (Bielousow\-Zabotyński)
-------------------------------------------------------------------------

.. image:: iCSE_BMetmatem03_z123_numeryczne_RDS_media/data/spiral.gif
    :align: center






Dynamika modelu bez dyfuzji.


.. code-block:: python

    sage: a=1.0
    sage: b=0.1
    sage: eps=0.1
    sage: a = 0.75
    sage: b = 0.0006
    sage: eps = 0.072
    sage: var('u v')
    sage: f(u,v) = u*(1-u)*(u-(v-b)/a)
    sage: g(u,v) = u-v
    sage: V = vector( (1/eps*f,g))
    sage: V=V/V.norm()
    sage: vfield=plot_vector_field(V,(u,0,1),(v,0,1))+implicit_plot(g,(u,0,1),(v,0,1))
    sage: t = srange(0,4/eps,0.01)
    sage: sol = desolve_odeint([19*f,g], [0.5,0.0], t, [u,v])  
    sage: plt_phase = vfield+line(sol,color='red',figsize=5)
    sage: plt_time = line(zip(t,sol[:,0]),figsize=5)
    sage: html.table([[plt_phase,plt_time]])


.. end of output


.. code-block:: python

    sage: %timeit 
    sage: import numpy as np
    sage: sparse = True
    sage: slicing = True
    sage: Dyf_u = 1.0
    sage: Dyf_v = 0.052
    sage: Dyf = max(Dyf_u,Dyf_v)
    sage: a = 1.0 
    sage: b = 0.001
    sage: eps = 0.072
    sage: l = 100.0 # dlugosc ukladu
    sage: t_end = 100 # czas symulacje
    sage: N = 160 # dyskretyzacja przestrzeni
    sage: h = l/(N-1) 
    sage: dt = 0.052/(Dyf*(N-1)**2/l**2) # 0.2 z warunku CFL, krok nie moze byc wiekszy
    sage: dt_dyn = (1.0/eps)/125.0
    sage: sps = int(1/dt) # liczba krokow na jednostke czasu
    sage: Nsteps=sps*t_end  # calkowita liczba krotkow 
    sage: print "dt,dt_dyn",dt,dt_dyn
    sage: dt = min(dt,dt_dyn)
    sage: print "sps=",sps,"dt=",dt,'Nsteps=',Nsteps
    sage: # warunek poczatkowy
    sage: u = np.zeros((N,N))
    sage: v = np.zeros((N,N))
    sage: #u[int(N/2)-5:int(N/2)+5,int(N/2)-5:int(N/2)+5]=1 # step
    sage: #u[:int(N/2)+5,:]=1.0 # step
    sage: #u[int(N/2)-5:int(N/2)+5,int(N/2)-20:int(N/2)+20]=1.0
    sage: #v[int(N/2)-5:int(N/2)+3,int(N/2)-20:int(N/2)+20]=1.0
    sage: #u[int(N/2)-5:int(N/2)+5,int(N/2)-20:int(N/2)+20]=1.0
    sage: #v[int(N/2)-5:int(N/2)+5,int(N/2)-22:int(N/2)+18]=1.0
    sage: #u[-20:-1,int(N/2)-5:int(N/2)+5]=1.0
    sage: #v[-20:-1,int(N/2)-6:int(N/2)+4]=1.0
    sage: #u[:5,:]=1.0
    sage: #v[:4,:]=1.0
    sage: #u[-10:,:]=1.0
    sage: #v[-4:,:]=1.0
    sage: u[:int(N/2),int(N/2)-5:int(N/2)+5]=1.0
    sage: v[:int(N/2),int(N/2)-6:int(N/2)+4]=1.0
    sage: # aby wymusic ruch falowy, przesuwamy u wzgledem v
    sage: def essential_boundary_conditions(u):
    ...       u[:,0] = 0.0
    ...       u[:,-1] = 0.0
    ...       u[-1,:] = 0.0
    ...       u[0,:] = 0.0
    ...       v[:,0] = 0.0
    ...       v[:,-1] = 0.0
    ...       v[-1,:] = 0.0
    ...       v[0,:] = 0.0
    ...       
    sage: Tlst=[]
    sage: Tvlst=[]
    sage: essential_boundary_conditions(u)
    sage: for i in range(Nsteps):
    ...       if not i%sps:
    ...           Tlst.append(u.copy())
    ...           Tvlst.append(v.copy())
    ...       
    ...       u[1:-1,1:-1] = u[1:-1,1:-1] + dt*(1.0/eps*u[1:-1,1:-1]*(1-u[1:-1,1:-1])*( u[1:-1,1:-1]-(v[1:-1,1:-1]+b)/a ) + \
    ...        Dyf_u*(N-1)**2/l**2*(np.diff(u,2,axis=0)[:,1:-1]+np.diff(u,2,axis=1)[1:-1,:]))
    ...       v[1:-1,1:-1] = v[1:-1,1:-1] + dt*( (u[1:-1,1:-1]-v[1:-1,1:-1]) )
    ...       # + \
    ...       # Dyf*(N-1)**2/l**2*(np.diff(v,2,axis=0)[:,1:-1]+np.diff(v,2,axis=1)[1:-1,:]))
    ...       essential_boundary_conditions(u)
    ...       
    sage: print "Saved ",len(Tlst), " from ", Nsteps
    dt,dt_dyn 0.0205688066136624 0.111111111111111
    sps= 48 dt= 0.0205688066136624 Nsteps= 4800
    Saved  100  from  4800
    CPU time: 9.69 s,  Wall time: 9.69 s

.. end of output

.. code-block:: python

    sage: anim=animate([matrix_plot(u,cmap='jet',figsize=(4,4)) for u in Tlst[:]])
    sage: anim.show()


.. end of output

.. code-block:: python

    sage: import pylab
    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       print r"t=",dt*ti*sps
    ...       if True: 
    ...           pylab.subplot(1,2,1)   
    ...           pylab.imshow(Tlst[ti],vmin=0,vmax=1,origin='top')
    ...           pylab.subplot(1,2,2) 
    ...           pylab.imshow(Tvlst[ti],vmin=0,vmax=1,origin='top') 
    ...           pylab.savefig('1.png',dpi=70)
    ...       else:
    ...           p =  matrix_plot(Tlst[ti])
    ...           p.show(figsize=(4,4))


.. end of output

.. code-block:: python

    sage: anim=animate([matrix_plot(u,cmap='jet',figsize=(2,2)) for u in Tlst[40:72:2]])
    sage: anim.show()


.. end of output


.. code-block:: python

    sage: anim.save(DATA+"spiral.gif")


.. end of output



Gray Scott model
----------------

a=1.0

b=0.1

eps=0.1

a = 0.75

b = 0.0006

eps = 0.072

var('u v')

f(u,v) = u\*(1\-u)\*(u\-(v\-b)/a)

g(u,v) = u\-v

V = vector( (1/eps\*f,g))

V=V/V.norm()

vfield=plot_vector_field(V,(u,0,1),(v,0,1))\+implicit_plot(g,(u,0,1),(v,0,1))

t = srange(0,4/eps,0.01)

sol = desolve_odeint([19\*f,g], [0.5,0.0], t, [u,v])  

plt_phase = vfield\+line(sol,color='red',figsize=5)

plt_time = line(zip(t,sol[:,0]),figsize=5)

html.table([[plt_phase,plt_time]])

Dynamika modelu (bez dyfuzji)





.. code-block:: python

    sage: F = 0.1
    sage: k = 0.04
    sage: F = 0.04
    sage: k = 0.062
    sage: var('u v')
    sage: f(u,v) = -u*v^2+ F*(1-u)
    sage: g(u,v) = u*v^2-(F+k)*v
    sage: V = vector( (f,g))
    sage: V=V/V.norm()
    sage: vfield=plot_vector_field(V,(u,-0.1,1.2),(v,-0.1,1.2))
    sage: nullclines=implicit_plot(f,(u,-0.1,1.2), (v,-0.1,1.2),color='red')+implicit_plot(g,(u,-0.1,1.2),(v,-0.1,1.2),color='green')
    sage: t = srange(0,226,0.01)
    sage: plt_phase = vfield+nullclines
    sage: sol = desolve_odeint([f,g], [1,0.25], t, [u,v])  
    sage: plt_phase += line(sol,color='blue',figsize=5)
    sage: plt_time = line(zip(t,sol[:,0]),figsize=5) + line(zip(t,sol[:,1]),color='green')
    sage: html.table([[plt_phase,plt_time]])
    ...


.. end of output


.. code-block:: python

    sage: %timeit 
    sage: Dyf_u = 2e-5
    sage: Dyf_v = 2e-5
    sage: Dyf = max(Dyf_u,Dyf_v)
    sage: F = 0.04
    sage: k = 0.0562
    sage: l = 2.5 # dlugosc ukladu
    sage: t_end = 100 # czas symulacje
    sage: N = 256 # dyskretyzacja przestrzeni
    sage: h = l/(N-1) 
    sage: dt = 0.052/(Dyf*(N-1)**2/l**2) # 0.2 z warunku CFL, krok nie moze byc wiekszy
    sage: #dt_dyn = (1.0)/125.0
    sage: #dt = min(dt,dt_dyn)
    sage: #sps = int(1/dt) # liczba krokow na jednostke czasu
    sage: #Nsteps=sps*t_end  # calkowita liczba krotkow
    sage: n=1
    sage: dt = 1.0/n
    sage: Nsteps = 20000*n
    sage: sps = n*10
    sage: print "dt,dt_dyn",dt,dt_dyn
    sage: print "sps=",sps,"dt=",dt,'Nsteps=',Nsteps
    sage: # warunek poczatkowy
    sage: u = np.ones((N,N))
    sage: v = np.zeros((N,N))
    sage: u[int(N/2)-10:int(N/2)+20,int(N/2)-10:int(N/2)+10]=.5
    sage: v[int(N/2)-10:int(N/2)+10,int(N/2)-20:int(N/2)+10]=.24
    sage: u = u + np.random.uniform(low=0,high=0.01,size=(N,N))
    sage: v = v + np.random.uniform(low=0,high=0.01,size=(N,N))
    sage: def essential_boundary_conditions(u):
    ...       u[:,0] = 1.0
    ...       u[:,-1] = 1.0
    ...       u[-1,:] = 1.0
    ...       u[0,:] = 1.0
    ...       v[:,0] = 0.0
    ...       v[:,-1] = 0.0
    ...       v[-1,:] = 0.0
    ...       v[0,:] = 0.0
    sage: Tlst=[]
    sage: Tvlst=[]
    sage: essential_boundary_conditions(u)
    sage: for i in range(Nsteps):
    ...       if not i%sps:
    ...           Tlst.append(u.copy())
    ...           Tvlst.append(v.copy())
    ...       
    ...       u[1:-1,1:-1] = u[1:-1,1:-1] + dt*(-u[1:-1,1:-1]*v[1:-1,1:-1]**2 + F*(1.0r-u[1:-1,1:-1])  + \
    ...        Dyf_u*(N-1)**2/l**2*(np.diff(u,2,axis=0)[:,1:-1]+np.diff(u,2,axis=1)[1:-1,:]))
    ...       v[1:-1,1:-1] = v[1:-1,1:-1] + dt*( u[1:-1,1:-1]*v[1:-1,1:-1]**2 - (F+k)*v[1:-1,1:-1]+ \
    ...        Dyf_v*(N-1)**2/l**2*(np.diff(v,2,axis=0)[:,1:-1]+np.diff(v,2,axis=1)[1:-1,:]))
    ...       essential_boundary_conditions(u)
    ...       
    sage: print "Saved ",len(Tlst), " from ", Nsteps
    sage: pylab.clf()
    sage: pylab.imshow(u,vmin=0.2,vmax=1,origin='top') 
    sage: pylab.colorbar()
    sage: pylab.savefig('1.png',dpi=70)
    dt,dt_dyn 1.00000000000000 0.00800000000000000
    sps= 10 dt= 1.00000000000000 Nsteps= 20000
    Saved  2000  from  20000
    CPU time: 88.02 s,  Wall time: 88.02 s

.. end of output

.. code-block:: python

    sage: import pylab
    sage: @interact
    sage: def _(ti=slider(range(len(Tlst)))):
    ...       print r"t=",dt*ti*sps
    ...       pylab.clf() 
    ...       pylab.subplot(1,2,1)   
    ...       pylab.imshow(Tlst[ti],vmin=0,vmax=1,origin='top')
    ...       pylab.subplot(1,2,2) 
    ...       pylab.imshow(Tvlst[ti],vmin=0,vmax=1,origin='top') 
    ...       pylab.colorbar()
    ...       pylab.savefig('1.png',dpi=70)


.. end of output











