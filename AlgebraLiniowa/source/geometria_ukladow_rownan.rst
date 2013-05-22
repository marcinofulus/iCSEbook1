.. -*- coding: utf-8 -*-

Geometria układów równań liniowych
----------------------------------

Interpretacja "wierszowa"
~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważmy układ dwóch równań liniowych:

:math:`\qquad\qquad \begin{cases} \begin{alignat*}{3}
\ 2\,x_1 & {\,} - {\,} & x_2 & {\;} = {\;} & 1 \\ x_1 & {\,} + {\,}& x_2 & {\;} = {\;} & 5
\end{alignat*} \end{cases}`
   
Rozwiązaniem są liczby :math:`\ x_1=2\ \; \text{i} \ \; x_2=3\,,\:` 
co łatwo sprawdzić ręcznie lub komputerowo:

.. sagecellserver::

   var('x1 x2')
   
   eq1 = 2*x1-x2==1
   eq2 = x1+x2==5

   show(solve([eq1,eq2],[x1,x2]))
   
Każde z równań przedstawia prostą na płaszczyźnie :math:`(x_1,x_2).`
 
Obrazem rozwiązania układu jest punkt leżący na obydwu prostych jednocześnie,
czyli punkt przecięcia się tych dwóch prostych (o ile proste się przecinają):

.. figure:: figures/Rys_1.png
   :align: center

W ogólności mogą wystąpić następujące sytuacje:

#. proste przecinają się w jednym punkcie,
#. proste pokrywają się (są identyczne),
#. proste są równoległe (ale różne).

Wtedy odpowiednio układ dwóch równań:

#. ma dokładnie jedno rozwiązanie (układ oznaczony),
#. ma nieskończenie wiele rozwiązań (układ nieoznaczony),
#. nie ma żadnych rozwiązań (układ sprzeczny).

Interpretacja "kolumnowa"
~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważany układ równań

.. math::
   
   \begin{cases} \begin{alignat*}{3}
   \  2\,x_1 & {\,} - {\,} & x_2 & {\;} = {\;} & 1 \\
         x_1 & {\,} + {\,} & x_2 & {\;} = {\;} & 5
   \end{alignat*} \end{cases}

można zapisać przy użyciu działań na wektorach kolumnowych:

.. math::

   \left[ \begin{array}{r} 2x_1 \\ x_1 \end{array} \right] +  
   \left[ \begin{array}{r} -x_2 \\ x_2 \end{array} \right] = 
   \left[ \begin{array}{r} 1 \\5 \end{array} \right],

czyli:

.. math::

   x_1 \left[ \begin{array}{r}  2 \\ 1 \end{array} \right] \ + \ 
   x_2 \left[ \begin{array}{r} -1 \\ 1 \end{array} \right] \ = \ 
   \left[ \begin{array}{r} 1 \\ 5 \end{array} \right]

Interpretacja takiego zapisu jest następująca:
 
dla jakich współczynników :math:`\;x_{1},x_{2}\;` kombinacja liniowa wektorów
 
:math:`\;v_1=\left[ \begin{array}{r} 2 \\ 1 \end{array} \right]\;` i 
:math:`\ \,v_2=\left[ \begin{array}{r} -1 \\ 1 \end{array} \right]\;` równa się wektorowi 
:math:`\;w\,=\left[ \begin{array}{r} 1 \\5 \end{array} \right]\;`?

.. sidebar:: Kombinacja liniowa:

   | Kombinacja liniowa wektorów  :math:`\ v_1\:\,\text{i}\ \; v_2\ `
   | o współczynnikach liczbowych :math:`\ x_1\:\,\text{i}\ \; x_2\,`
   | jest z definicji ich "sumą ważoną" postaci :math:`\ x_1 v_1 + x_2 v_2\,.` 

| 

.. admonition:: **Poeksperymentuj z Sage**

   | W poniższym programie można dobrać suwakami wartości współczynników :math:`\,x_1\ \text{i} \ \, x_2\,`
     tak, aby wektor :math:`\;x_1 v_1 + x_2 v_2\;` (oznaczony kolorem szarym) pokrył się z wektorem :math:`\,w`.

.. sagecellserver::

   v1 = vector([2,1]); v2 = vector([-1,1]); w = vector([1,5])

   @interact

   def _(x1=('$$x_1:$$', slider(0,3,1/2, default=3)),
         x2=('$$x_2:$$', slider(0,3,1/2, default=2))):
          
       plt = arrow((0,0),v1, color='red',  legend_label=' $v_1$', zorder=5) +\
             arrow((0,0),v2, color='green',legend_label=' $v_2$', zorder=5) +\
             arrow((0,0), w, color='black',legend_label=' $w$',   zorder=5) +\
             arrow((0,0),x1*v1, color='gray', width=1, arrowsize=3) +\
             arrow((0,0),x2*v2, color='gray', width=1, arrowsize=3) +\
             arrow((0,0),x1*v1+x2*v2, color='gray', width=1.75, arrowsize=3) +\
             line([x1*v1,x2*v2+x1*v1],linestyle='dashed',thickness=0.5,color='black') +\
             line([x2*v2,x2*v2+x1*v1],linestyle='dashed',thickness=0.5,color='black') +\
             point((0,0), color='white', faceted=True, size=18, zorder=7)
          
       plt.set_axes_range(-3,7, -1,6)
       if x1*v1+x2*v2==w: html("SUKCES!!!")
       plt.show(aspect_ratio=1, ticks=[1,1], figsize=5)

|

Aby się upewnić, że jesteśmy w stanie przenieść wnioski na większą
liczbę równań, rozważmy teraz układ trzech równań o trzech niewiadomych:

.. math::

   \begin{cases}\begin{alignat*}{4}
   \  2\,x_1 & {\,} + {\,} & x_2 & {\,} + {\,} &    x_3 & {\;} = {} &  1 \\
         x_1 & {\,} - {\,} & x_2 &             &        & {\;} = {} & -1 \\
         x_1 & {\,} + {\,} & x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {} &  2 
   \end{alignat*}\end{cases}

Ma on rozwiązanie w punkcie :math:`\ x_1 = -\frac{1}{4},\ x_2 = \frac{3}{4},\ x_3 = \frac{3}{4}\,.`


W trójwymiarowej przestrzeni współrzędnych :math:`\ x_1,\,x_2,\,x_3\ ` równanie liniowe przedstawia płaszczyznę;
rozwiązanie układu równań jest więc wyznaczone przez miejsce geometryczne przecięcia się trzech płaszczyzn.

Płaszczyzny odpowiadające kolejnym równaniom układu są oznaczone kolorem czerwonym, zielonym i niebieskim.
W tym wypadku istnieje dokładnie jeden punkt wspólny tych płaszczyzn (kolor biały):

.. figure:: figures/Rys_24.png
   :align: center

Przejście do postaci kolumnowej układu trzech równań o współczynnikach całkowitych
można wykonać automatycznie przy użyciu podanej niżej funkcji ``verse3column()``
(wykonanie kodu definiującego funkcję nie wyprowadzi na razie żadnego wyniku):

.. sagecellserver::

   def verse3colmn(Eqns):

       var('x1 x2 x3')
    
       L = [vector([eq.lhs().coeff(x)
            for eq in Eqns])
            for x in [x1,x2,x3]]
       
       b = vector([eq.rhs() for eq in Eqns])
       L.append(b)
       
       clmn = '$\\left[\\begin{array}{r} %d \\\ %d \\\ %d \\end{array}\\right]$'
       comp = '$x_%i$' + clmn
   
       html(comp % (1, L[0][0],L[0][1],L[0][2]) + ' $+$ ' +\
            comp % (2, L[1][0],L[1][1],L[1][2]) + ' $+$ ' +\
            comp % (3, L[2][0],L[2][1],L[2][2]) + ' $=$ ' +\
            clmn %    (L[3][0],L[3][1],L[3][2]))
            
       return

Aby zastosować funkcję, trzeba utworzyć listę równań ``Eqns = [eq1,eq2,eq3]`` i podać ją jako argument:

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = 2*x1+1*x2+1*x3== 1
   eq2 = 1*x1-1*x2+0*x3==-1
   eq3 = 1*x1+1*x2+2*x3== 2

   Eqns = [eq1,eq2,eq3]
   
   verse3colmn(Eqns)

Rozwiązanie układu równań sprowadza się do wyznaczenia współczynników :math:`\ x_1,\,x_2,\,x_3\ ` kombinacji liniowej
wektorów :math:`\ v_1,\,v_2,\,v_3,\ ` która równałaby się wektorowi :math:`\,w\,` wolnych wyrazów po prawej stronie równości.

Poniższy program wyświetla geometryczny obraz tego zagadnienia.

Wektory :math:`\ v_1,\,v_2,\,v_3,\;` występujące po lewej stronie kolumnowej postaci układu równań,
są oznaczone odpowiednio kolorem czerwonym, zielonym i niebieskim; wektor wolnych wyrazów :math:`\,w\;` jest szary.

.. admonition:: **Poeksperymentuj z Sage**
   
   | Używając myszy, otrzymany obraz można powiększać, obracać i oglądać z różnej perspektywy.

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = 2*x1+1*x2+1*x3== 1
   eq2 = 1*x1-1*x2+0*x3==-1
   eq3 = 1*x1+1*x2+2*x3== 2

   [v1,v2,v3] = [vector([eq.lhs().coeff(x)
                 for eq in [eq1,eq2,eq3]])
                 for x in [x1,x2,x3]]
              
   w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])

   plt = arrow((0,0,0),v1, color='red')   +\
         arrow((0,0,0),v2, color='limegreen') +\
         arrow((0,0,0),v3, color='blue')  +\
         arrow((0,0,0), w, color='darkgrey')
      
   show(plt)

| Widać, że wektory :math:`\ v_1,\,v_2,\,v_3\ ` nie są komplanarne (nie leżą w jednej płaszczyźnie). 
| Można pokazać, że wtedy i tylko wtedy układ równań ma dokładnie jedno rozwiązanie.

Przypadek osobliwy: układ równań liniowych  ma nieskończenie wiele rozwiązań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Weźmy układ równań:

.. math::

   \begin{cases}\begin{alignat*}{4}
   \  2\,x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} &    x_3 & {\;} = {\;} & 1 \\
      4\,x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 2 \\
         x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 3
   \end{alignat*}\end{cases}

Stosując procedurę ``solve()`` otrzymujemy rozwiązanie zależne od zmiennej :math:`r_1`,  
która może przyjmować dowolne wartości: 

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = 2*x1+1*x2+1*x3==1
   eq2 = 4*x1+2*x2+2*x3==2
   eq3 = 1*x1+1*x2+2*x3==3

   show(solve([eq1,eq2,eq3],[x1,x2,x3]))

| Oznacza to, że układ równań jest spełniony przez nieskończenie wiele trójek liczb w powyższej postaci.

Taka sytuacja wystąpi zawsze wtedy, gdy jedno z równań jest kombinacją liniową pozostałych.
Równanie takie wynika z równań pozostałych, odrzucenie go nie zmienia więc zbioru rozwiązań.

W tym wypadku drugie równanie jest po prostu podwojonym równaniem pierwszym.
Mamy więc faktycznie układ dwóch niezależnych równań o trzech niewiadomych.

Podany niżej kod wyświetla wierszową i kolumnową interpretację geometryczną tego układu.

.. admonition:: **Poeksperymentuj z Sage**
   
   | Używając myszy, otrzymany obraz można powiększać, obracać i oglądać z różnej perspektywy.
   
.. sagecellserver::

   var('x1 x2 x3 r')

   eq1 = 2*x1+1*x2+1*x3==1
   eq2 = 4*x1+2*x2+2*x3==2
   eq3 = 1*x1+1*x2+2*x3==3

   p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='red')
   p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='green', opacity=0.87)
   p3 = implicit_plot3d(eq3,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='blue')
   ln = parametric_plot([r-2, -3*r+5, r], (r, 0, 3.3), color='white', thickness=5)

   plot1 = p1+p2+p3+ln

   [v1,v2,v3] = [vector([eq.lhs().coeff(x)
                 for eq in [eq1,eq2,eq3]])
                 for x in [x1,x2,x3]]
              
   w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])

   plot2 = arrow((0,0,0),v1, color='red')   +\
           arrow((0,0,0),v2, color='limegreen') +\
           arrow((0,0,0),v3, color='blue')  +\
           arrow((0,0,0), w, color='darkgrey')

   show(plot1)

Płaszczyzny, przedstawiające dwa pierwsze równania (oznaczone kolorem czerwonym i zielonym)
są identyczne i pokrywają się. Trzecia płaszczyzna (niebieska), odpowiadająca trzeciemu równaniu, 
przecina się z nimi wzdłuż linii prostej (białej). Linia ta przedstawia zbiór rozwiązań układu,
składający się z nieskończenie wielu punktów.

.. sagecellserver::

   show(plot2)

Wektory kolumnowe :math:`\ v_1,\,v_2,\,v_3\ ` (oznaczone odpowiednio kolorem czerwonym, zielonym i niebieskim)
leżą w jednej płaszczyźnie, a wektor :math:`w\,` (szary), będący prawą stroną układu równań, 
też należy do tej płaszczyzny. W tej sytuacji nieskończenie wiele kombinacji liniowych wektorów
:math:`\ v_1,\,v_2,\,v_3\ ` może równać się wektorowi :math:`w`.


Przypadek osobliwy: układ sprzeczny
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważmy teraz podobny układ równań, lecz z inną prawą stroną:

.. math::

   \begin{cases}\begin{alignat*}{4}
   \  2\,x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} &    x_3 & {\;} = {\;} & 0 \\
      4\,x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 5 \\
         x_1 & {\,} + {\,} &    x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 1
   \end{alignat*}\end{cases}

Układ ten nie ma rozwiązań:

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = 2*x1+1*x2+1*x3==0
   eq2 = 4*x1+2*x2+2*x3==5
   eq3 = 1*x1+1*x2+2*x3==1

   show(solve([eq1,eq2,eq3],[x1,x2,x3]))

Wzajemna sprzeczność pierwszych dwóch równań jest oczywista:
lewa strona drugiego równania jest podwojoną lewą stroną pierwszego równania, powinna więc być równa 0, a nie 5.

Zobaczmy, co to oznacza w interpretacji wierszowej i kolumnowej:

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = 2*x1+1*x2+1*x3==0
   eq2 = 4*x1+2*x2+2*x3==5
   eq3 = 1*x1+1*x2+2*x3==1

   p1 = implicit_plot3d(eq1,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='red')
   p2 = implicit_plot3d(eq2,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='green')
   p3 = implicit_plot3d(eq3,(x1,-5,5),(x2,-5,5),(x3,-5,5), color='blue')

   plot1 = p1+p2+p3

   [v1,v2,v3] = [vector([eq.lhs().coeff(x)
                 for eq in [eq1,eq2,eq3]])
                 for x in [x1,x2,x3]]
              
   w = vector([eq.rhs() for eq in [eq1,eq2,eq3]])

   plot2 = arrow((0,0,0),v1, color='red')   +\
           arrow((0,0,0),v2, color='limegreen') +\
           arrow((0,0,0),v3, color='blue')  +\
           arrow((0,0,0), w, color='darkgrey')

   show(plot1)

Płaszczyzny, odpowiadajace pierwszym dwóm równaniom układu (czerwona i zielona) są równoległe, ale nie pokrywają się. W tej sytuacji nie ma punktów wspólnych dla wszystkich trzech płaszczyzn.

.. sagecellserver::

   show(plot2)

Tutaj wektory :math:`\ v_1,\,v_2,\,v_3\ ` leżą na tej samej płaszczyźnie.
W odróżnieniu jednak od poprzedniego przypadku z nieskończoną ilością rozwiązań,
wektor :math:`w` nie jest z nimi komplanarny, przez co nie może być ich kombinacją liniową
(każda kombinacja liniowa wektorów :math:`\ v_1,\,v_2,\,v_3\ ` leży w ich płaszczyźnie).




