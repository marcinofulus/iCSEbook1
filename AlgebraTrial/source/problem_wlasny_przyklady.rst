
Przykłady problemów własnych
----------------------------

Operator w przestrzeni wektorów na płaszczyźnie
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

W dwuwymiarowej przestrzeni wektorów geometrycznych :math:`\,V\ ` z bazą 
:math:`\,\mathcal{B}=\{\vec{e}_1,\vec{e}_2\}\,,\ ` gdzie :math:`\\`
:math:`\,|\vec{e}_1|=|\vec{e}_2|=1,\  \ \vec{e}_1\perp\vec{e}_2\,,\ `
zadajemy operator liniowy :math:`\,F\ ` podając obrazy wektorów bazy :math:`\,\mathcal{B}:`

.. math::
   
   F\vec{e}_1\,=\,2\,\vec{e}_1+\vec{e}_2\,,\qquad 
   F\vec{e}_2\,=\,\vec{e}_1+2\,\vec{e}_2\,.

Szukamy wektorów :math:`\ \vec{r}\,\in\,V\!\smallsetminus\!\{\vec{0}\}\ ` spełniających równanie
:math:`\,F\vec{r}=\lambda\,\vec{r}\ ` dla pewnego :math:`\ \lambda\in R\,.\ `
Działając na te wektory, operator :math:`\,F\ ` nie zmienia ich kierunku, chociaż może
zmienić długość lub zwrot. Pewną orientację w sytuacji daje program, który wyświetla kolejne 
wektory :math:`\ \vec{r}\ ` z pewnego zbioru oraz ich obrazy, eksponując przypadki, 
gdy :math:`\ F(\vec{r})\parallel\vec{r}\ ` 
(po uruchomieniu programu przygotowanie animacji trwa kilkadziesiąt sekund). :math:`\\`

.. sagecellserver::

   e1 = vector([1,0]); e2 = vector([0,1])

   P0 = point((0,0), color='white', 
              faceted=True, size=20, zorder=8)
   
   n = 24          # określa liczbę klatek animacji
   dt = 2*pi/n     # krok parametru między kolejnymi klatkami
   L = []          # inicjacja listy klatek
   
   for k in range(1,n+1):
    
       a1 = cos(k*dt); a2 = sin(k*dt)
       
       plt = P0 + arrow((0,0),a1*e1+a2*e2, color='green', 
                        legend_label=' $\\ \\ \\vec{r}$', zorder=5) +\
                  arrow((0,0),(2*a1+a2)*e1+(a1+2*a2)*e2, 
                        color='red', legend_label=' $F(\\vec{r})$', zorder=5)
   
       for l in range(1+3*(not mod(k-3,6))): L.append(plt)
   
   a = animate(L, aspect_ratio=1, axes_labels=['x','y'], figsize=6, 
               xmin=-2.25, xmax=+2.25, ymin=-2.25, ymax=+2.25)
   
   a; a.show(delay=25, iterations=5)

Problem własny dla operatora :math:`\,F\ ` rozwiążemy w tym przykładzie bezpośrednio,
nie odwołując się do ogólnych wzorów z poprzedniej sekcji.

Podstawiając :math:`\ \vec{r}=\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2\ ` 
do równania własnego otrzymujemy kolejno:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   F\,\vec{r} & = & \lambda\;\vec{r}\,,\quad\vec{r}\neq\vec{0}\,, \\
   F(\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2) & = & \lambda\;(\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2)\,, \\
   \alpha_1\,F\vec{e}_1+\alpha_2\,F\vec{e}_2 & = & \lambda\;(\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2)\,, \\
   \alpha_1\,(2\,\vec{e}_1+\vec{e}_2)+\alpha_2\,(\vec{e}_1+2\,\vec{e}_2) & = & \lambda\;(\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2)\,, \\
   2\,\alpha_1\,\vec{e}_1+\alpha_1\,\vec{e}_2+\alpha_2\,\vec{e}_1+2\,\alpha_2\,\vec{e}_2 & = & \lambda\,\alpha_1\,\vec{e}_1+\lambda\,\alpha_2\,\vec{e}_2\,, \\
   \left[\,(2-\lambda)\,\alpha_1+\alpha_2\,\right]\,\vec{e}_1+\left[\,\alpha_1+(2-\lambda)\,\alpha_2\,\right]\,\vec{e}_2 & = & \vec{0}\,.
   \end{eqnarray*}

Kombinacja niezależnych liniowo wektorów :math:`\ \vec{e}_1,\,\vec{e}_2\ `
bazy :math:`\ \mathcal{B}\ ` równa się wektorowi zerowemu wtedy i tylko wtedy, 
gdy jej współczynniki znikają:

.. math::
   :label: 2_set
   
   \begin{cases}\ \ \begin{array}{c}
   (2-\lambda)\,\alpha_1+\alpha_2\,=\,0 \\
   \alpha_1+(2-\lambda)\,\alpha_2\,=\,0
   \end{array}\end{cases}

Wzór :eq:`2_set` przedstawia jednorodny układ dwóch równań liniowych na niewiadome 
:math:`\ \alpha_1,\,\alpha_2` :math:`\\` z parametrem :math:`\ \lambda.\ `
Rozwiązania niezerowe: :math:`\ \alpha_1^2+\alpha_2^2\,>\,0\,,\ `
istnieją wtedy i tylko wtedy, gdy

.. math::
   :label: det_eqn
   
   \left|\begin{array}{cc} 2-\lambda & 1 \\
                           1 & 2-\lambda \end{array}\right|\ =\ 
   \lambda^2-4\,\lambda+3\ =\ (\lambda-1)(\lambda-3)\ =\ 0\,.

Otrzymaliśmy w ten sposób dwie wartości własne operatora 
:math:`\,F:\quad\blacktriangleright\quad\lambda_1=1\,,\ \ \lambda_2=3\,.\ `

Podstawienie :math:`\ \lambda=\lambda_1=1\ ` w :eq:`2_set` 
daje nieoznaczony układ równań
:math:`\quad\begin{cases}\ \begin{array}{c}
\alpha_1+\alpha_2\,=\,0 \\ \alpha_1+\alpha_2\,=\,0
\end{array}\end{cases}`

którego rozwiązania mają ogólną postać:
:math:`\quad\alpha_1=\alpha\,,\ \ \alpha_2=-\;\alpha\,,\ \ \alpha\in R.`

Wektory własne odpowiadające tej wartości:

.. math::
   :label: eigen_vectors_1
   
   \blacktriangleright\quad
   \vec{r}_1\,=\ \alpha\,\vec{e}_1-\alpha\,\vec{e}_2\,=\ 
   \alpha\,(\vec{e}_1-\vec{e}_2)\ \equiv\ \alpha\,\vec{f}_1\,,\quad
   \alpha\in R\!\smallsetminus\!\{0\}\,,

tworzą :math:`\,` (wespół z wektorem zerowym :math:`\,\vec{0}`) :math:`\,` 
1-wymiarową podprzestrzeń :math:`\,V_1\ ` przestrzeni :math:`\,V,` :math:`\\`
generowaną przez wektor :math:`\,\vec{f}_1=\vec{e}_1-\vec{e}_2:` :math:`\ V_1=L(\vec{f}_1)\,.`

Podstawiając :math:`\ \lambda=\lambda_2=3\ ` w :math:`\,` :eq:`2_set` :math:`\,`
otrzymujemy układ
:math:`\quad\begin{cases}\ \begin{array}{r}
-\ \alpha_1+\alpha_2\,=\,0 \\ \alpha_1-\alpha_2\,=\,0
\end{array}\end{cases}`

o rozwiązaniach:
:math:`\quad\alpha_1=\alpha_2=\alpha\,,\ \ \alpha\in R.\ `
Odpowiednie wektory własne 

.. math::
   :label: eigen_vectors_2
   
   \blacktriangleright\quad
   \vec{r}_2\,=\ \alpha\,\vec{e}_1+\alpha\,\vec{e}_2\,=\ 
   \alpha\,(\vec{e}_1+\vec{e}_2)\ \equiv\ \alpha\,\vec{f}_2\,,\quad
   \alpha\in R\!\smallsetminus\!\{0\}

również tworzą :math:`\,` (łącznie z wektorem zerowym) :math:`\,` 
1-wymiarową podprzestrzeń, :math:`\\`
generowaną tym razem przez wektor :math:`\,\vec{f}_2=\vec{e}_1+\vec{e}_2:\ \ V_2=L(\vec{f}_2)\,.`

Zauważmy, że wektory :math:`\,\vec{f}_1\,,\ \vec{f}_2\ \,`
są wzajemnie prostopadłe oraz mają tę samą długość:

.. math::
   
   \vec{f}_1\cdot\vec{f}_2\ =\ (\vec{e}_1-\vec{e}_2)\cdot(\vec{e}_1+\vec{e}_2)\ =\ 
   \vec{e}_1\cdot\vec{e}_1-\vec{e}_2\cdot\vec{e}_2\ =\ |\vec{e}_1|^2-|\vec{e}_2|^2\ =\ 
   1-1\ =\ 0\,,
   
   |\,\vec{f}_{1,2}\,|^2\ =\ (\vec{e}_1\mp\vec{e}_2)^2\ =\ 
   \vec{e}_1\cdot\vec{e}_1\mp 2\ \,\vec{e}_1\cdot\vec{e}_2+\vec{e}_2\cdot\vec{e}_2\ =\ 2\,.

Dzieląc każdy z wektorów :math:`\ \vec{f}_1,\,\vec{f}_2\ ` przez jego długość:

.. math::
   :label: normal
   
   \vec{f}_1\ \ \rightarrow\ \ \frac{1}{|\,\vec{f}_1\,|}\ \,\vec{f}_1\ \ =\ \ 
                               \frac{1}{\sqrt{2}}\ \,(\vec{e}_1-\vec{e}_2)\,,
   
   \vec{f}_2\ \ \rightarrow\ \ \frac{1}{|\,\vec{f}_2\,|}\ \,\vec{f}_2\ \ =\ \ 
                               \frac{1}{\sqrt{2}}\ \,(\vec{e}_1+\vec{e}_2)\,,

otrzymamy parę :math:`\ (\vec{f}_1,\,\vec{f}_2)\ ` 
wzajemnie prostopadłych wektorów jednostkowych.

W ten sposób w przestrzeni :math:`\,V\ ` istnieją dwie bazy *ortonormalne*:
wyjściowa baza :math:`\,\mathcal{B}=(\vec{e}_1,\vec{e}_2)\ ` oraz
baza :math:`\,\mathcal{F}=(\vec{f}_1,\,\vec{f}_2)\ ` 
złożona z wektorów własnych operatora :math:`\,F:`

.. image:: /figures/Rys_8.png
   :align: center
   :scale: 65%

**Uwagi i komentarze.**

Operator :math:`\,F\ ` jest hermitowski, 
bo jego macierz w ortonormalnej bazie :math:`\,\mathcal{B}:`

.. math::
   :label: mat_AF
   
   \boldsymbol{A}\ =\ M_{\mathcal{B}}(F)\ =\ 
   \left[\,I_{\mathcal{B}}(F\vec{e}_1)\,|\,I_{\mathcal{B}}(F\vec{e}_2)\,\right]\ =\ 
   \left[\begin{array}{cc} 2 & 1 \\ 1 & 2 \end{array}\right]

jest rzeczywista i symetryczna, a więc hermitowska. Ortogonalność należących do różnych wartości 
wektorów własnych :math:`\ \,\vec{f}_1\ \ \text{i}\ \ \vec{f}_2\ \,` 
oraz istnienie ortonormalnej bazy :math:`\ \mathcal{F}\ \,` przestrzeni :math:`\,V,\ ` 
złożonej z wektorów własnych operatora :math:`\,F,\ \,` jest konsekwencją tej hermitowskości.

Wzór :eq:`det_eqn` przedstawia równanie charakterystyczne macierzy :math:`\,\boldsymbol{A}.\ `
Stąd, a także ze wzorów :math:`\,` :eq:`eigen_vectors_1` :math:`\,` i :math:`\,` :eq:`eigen_vectors_2` :math:`\,` wynika, że obydwie wartości własne, 
:math:`\,` :math:`\ \lambda_1=1\ \ \text{i}\ \ \lambda_2=3\,,\ \ `
są algebraicznie i geometrycznie 1-krotne. To, że krotność algebraiczna każdej wartości własnej
równa się jej krotności geometrycznej, jest również cechą operatorów hermitowskich.

Baza :math:`\,\mathcal{F}\ ` jest wynikiem obrotu bazy :math:`\,\mathcal{B}\ `
o kąt :math:`\,\pi/4.\ ` 
Jak należało oczekiwać, macierz przejścia między tymi dwiema ortonormalnymi bazami,
wyznaczona przez związki :eq:`normal`:

.. math::
   
   \boldsymbol{S}\ =\ \frac{1}{\sqrt{2}}\ \,
   \left[\begin{array}{rr} 1 & 1 \\ -1 & 1 \end{array}\right]

jest unitarna (w tym wypadku: rzeczywista ortogonalna): 
:math:`\ \,\boldsymbol{S}^+\boldsymbol{S}=\boldsymbol{S}^{\,T}\boldsymbol{S}=\boldsymbol{I}_2\,.`

Wzór :eq:`mat_AF` przedstawia macierz :math:`\,\boldsymbol{A}\ ` operatora :math:`\,F\ `
w wyjściowej bazie :math:`\ \mathcal{B}.` :math:`\\`
Wyliczymy teraz dwoma sposobami macierz :math:`\,\boldsymbol{F}=[\varphi_{ij}]\ ` 
tego operatora w bazie :math:`\ \mathcal{F}.`

.. Macierz :math:`\,\boldsymbol{F}=M_{\mathcal{F}}(F)=[\,\varphi_{ij}\,]_{2\times 2}\in M_2(R)\ ` 
   operatora :math:`\,F\ ` w bazie :math:`\ \mathcal{F}\ ` wyliczymy dwoma sposobami.

* Według wzorów transformacyjnych dla przejścia 
  od bazy :math:`\,\mathcal{B}\ ` do bazy :math:`\,\mathcal{F}:`

  .. math::
     
     \boldsymbol{F}\ =\ 
     \boldsymbol{S}^{-1}\boldsymbol{A}\,\boldsymbol{S}\ =\  
     \boldsymbol{S}^T\boldsymbol{A}\,\boldsymbol{S}\ \,=\ \,
     \textstyle\frac12\ \,
     \left[\begin{array}{rr} 1 & -1 \\ 1 & 1 \end{array}\right]\ 
     \left[\begin{array}{cc} 2 & 1 \\ 1 & 2 \end{array}\right]\ 
     \left[\begin{array}{rr} 1 & 1 \\ -1 & 1 \end{array}\right]\ =\ 
     \left[\begin{array}{cc} 1 & 0 \\ 0 & 3 \end{array}\right]\,.

* To samo dają wzory dla elementów macierzowych operatora w bazie ortonormalnej:
  
  .. math::
     
     \varphi_{11}\,=\,\boldsymbol{f}_1\cdot F\boldsymbol{f}_1\,=\,
     1\ \ \boldsymbol{f}_1\cdot\boldsymbol{f}_1\,=\,1\,, \qquad
     \varphi_{12}\,=\,\boldsymbol{f}_1\cdot F\boldsymbol{f}_2\,=\,
     3\ \ \boldsymbol{f}_1\cdot\boldsymbol{f}_2\,=\,0\,, 

     \varphi_{21}\,=\,\boldsymbol{f}_2\cdot F\boldsymbol{f}_1\,=\,
     1\ \ \boldsymbol{f}_2\cdot\boldsymbol{f}_1\,=\,0\,, \qquad
     \varphi_{22}\,=\,\boldsymbol{f}_2\cdot F\boldsymbol{f}_2\,=\,
     3\ \ \boldsymbol{f}_2\cdot\boldsymbol{f}_2\,=\,3\,.

Macierz operatora :math:`\,F\ ` w ortonormalnej bazie :math:`\ \mathcal{F}\ `
złożonej z jego wektorów własnych jest diagonalna, z wartościami własnymi na przekątnej.

**Dygresja.**

Każdy wektor :math:`\,\vec{r}\ ` przestrzeni :math:`\,V\ ` 
wektorów geometrycznych na płaszczyźnie
można zapisać jednoznacznie w postaci kombinacji liniowej
wektorów bazowych :math:`\,\vec{f}_1,\,\vec{f}_2:`

.. math::
   
   \vec{r}\,=\,\beta_1\,\vec{f}_1+\beta_2\,\vec{f}_2\,,\qquad\beta_1,\,\beta_1\in R\,.

Ale :math:`\ \,\beta_1\,\vec{f}_1\in V_1\,,\ \ \beta_2\,\vec{f}_2\in V_2\,,\ \,`
gdzie :math:`\ \,V_1=L(\vec{f}_1)\ \ \text{i}\ \ \,V_2=L(\vec{f}_2)\ \,` 
są podprzestrzeniami wektorów własnych operatora :math:`\,F\ `
odpowiednio dla wartości :math:`\ \lambda_1\ \ \text{i}\ \ \lambda_2.\ \,`
Wobec tego dla każdego wektora :math:`\,\vec{r}\in V\ ` zachodzi jednoznaczny rozkład

.. math::
   
   \vec{r}\,=\,\vec{r}_1\,+\,\vec{r}_2\,,\qquad\vec{r}_1\in V_1\,,\ \ \vec{r}_2\in V_2\,.

.. admonition:: Definicja.
   
   Niech :math:`\ V_1\,,\ \,V_2\ \,` będą podprzestrzeniami 
   przestrzeni wektorowej :math:`\,V.\ ` :math:`\\`
   Jeżeli każdy wektor :math:`\,x\in V\ ` można przedstawić jednoznacznie w postaci 
   :math:`\,x_1+x_2\,,\ ` gdzie :math:`\,x_1\in V_1\ \ \text{i}\ \ x_2\in V_2\,,\ `
   to mówimy, że przestrzeń :math:`\,V\ ` *rozkłada się na sumę prostą* swoich podprzestrzeni
   :math:`\,V_1\ \ \text{i}\ \ V_2\,,\ ` co zapisujemy: :math:`\ \  V\,=\,V_1\,\oplus\,V_2\,.`

W naszym przykładzie przestrzeń :math:`\ V,\ ` w której działa operator :math:`\,F,\ `
rozkłada się na sumę prostą podprzestrzeni :math:`\ V_1\ \ \text{i}\ \ V_2\,,\ `
odpowiadających dwóm wartościom własnym :math:`\ \lambda_1\ \ \text{i}\ \ \lambda_2\ `
tego operatora.

Transpozycja macierzy kwadratowych 2. stopnia
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Definiujemy operator transpozycji :math:`\ T\ ` określony na algebrze :math:`\ M_2(R)` :math:`\\`
rzeczywistych kwadratowych macierzy 2. stopnia:

.. math::
   
   T\ 
   \left[\begin{array}{cc}
   \alpha_1 & \alpha_2 \\ \alpha_3 & \alpha_4
   \end{array}\right]\ \,:\,=\ \,
   \left[\begin{array}{cc}
   \alpha_1 & \alpha_2 \\ \alpha_3 & \alpha_4
   \end{array}\right]^{\,T}=\ \;
   \left[\begin{array}{cc}
   \alpha_1 & \alpha_3 \\ \alpha_2 & \alpha_4
   \end{array}\right]\,,\quad
   \alpha_1,\,\alpha_2,\,\alpha_3,\,\alpha_4\in R\,.

Ze względu na bijektywność i liniowość, :math:`\,` operator :math:`\,T\ ` 
jest automorfizmem algebry :math:`\,M_2(R).`

Problem własny operatora :math:`\,T\ ` rozwiążemy stosując schemat postępowania
z poprzedniej sekcji.

0.) Konstrukcja macierzy :math:`\,\boldsymbol{A}=M_{\mathcal{B}}(T)\ ` 
automorfizmu :math:`\,T\ ` w bazie 
:math:`\ \mathcal{B}=(\boldsymbol{e}_1,\boldsymbol{e}_2,\boldsymbol{e}_3,\boldsymbol{e}_4)\,,\ `
gdzie
   
.. math::
      
   \boldsymbol{e}_1\ =\ \left[\begin{array}{cc} 1 & 0 \\ 0 & 0 \end{array}\right]\,,\quad
   \boldsymbol{e}_2\ =\ \left[\begin{array}{cc} 0 & 1 \\ 0 & 0 \end{array}\right]\,,\quad
   \boldsymbol{e}_3\ =\ \left[\begin{array}{cc} 0 & 0 \\ 1 & 0 \end{array}\right]\,,\quad
   \boldsymbol{e}_4\ =\ \left[\begin{array}{cc} 0 & 0 \\ 0 & 1 \end{array}\right]\,.

Jeżeli obrazy kolejnych macierzy z bazy :math:`\ \mathcal{B}\ ` przedstawimy 
w tej samej bazie :math:`\ \mathcal{B}:`

.. math::
   :nowrap:
   
   \begin{alignat*}{6}
   T\,\boldsymbol{e}_1 & {\ } = {\ \,} & 
      \boldsymbol{e}_1 & {\ } = {\ \,} & 1\cdot\boldsymbol{e}_1 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_2 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_3 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_4\,, \\
   T\,\boldsymbol{e}_2 & {\ } = {\ \,} & 
      \boldsymbol{e}_3 & {\ } = {\ \,} & 0\cdot\boldsymbol{e}_1 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_2 & {\ } + {\ \,} & 
                                         1\cdot\boldsymbol{e}_3 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_4\,, \\
   T\,\boldsymbol{e}_3 & {\ } = {\ \,} & 
      \boldsymbol{e}_2 & {\ } = {\ \,} & 0\cdot\boldsymbol{e}_1 & {\ } + {\ \,} & 
                                         1\cdot\boldsymbol{e}_2 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_3 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_4\,, \\
   T\,\boldsymbol{e}_4 & {\ } = {\ \,} & 
      \boldsymbol{e}_4 & {\ } = {\ \,} & 0\cdot\boldsymbol{e}_1 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_2 & {\ } + {\ \,} & 
                                         0\cdot\boldsymbol{e}_3 & {\ } + {\ \,} & 
                                         1\cdot\boldsymbol{e}_4\,,
   \end{alignat*}

to :math:`\ j`-ta kolumna macierzy :math:`\,\boldsymbol{A}\ `
składa się ze współrzędnych macierzy :math:`\,T\boldsymbol{e}_j\,,\ \ j=1,2,3,4:`

.. math::
   :label: mat_AT
   
   \boldsymbol{A}\ =\ M_{\mathcal{B}}(T)\ =\ 
   \left[\begin{array}{cccc} 1 & 0 & 0 & 0 \\ 
                             0 & 0 & 1 & 0 \\ 
                             0 & 1 & 0 & 0 \\ 
                             0 & 0 & 0 & 1 \end{array}\right]\,.

Teraz równanie własne dla operatora :math:`\,T:`

.. math::
   
   T\ 
   \left[\begin{array}{cc}
   \alpha_1 & \alpha_2 \\ \alpha_3 & \alpha_4
   \end{array}\right]\ \,=\ \,
   \lambda\ 
   \left[\begin{array}{cc}
   \alpha_1 & \alpha_2 \\ \alpha_3 & \alpha_4
   \end{array}\right]

przyjmuje postać jednorodnego problemu liniowego:

.. math::
   :label: hom_eqn
   
   \left[\begin{array}{cccc}
   1-\lambda &      0      &      0     &     0 \\
       0     & -\ \lambda  &      1     &     0 \\
       0     &      1      & -\ \lambda &     0 \\
       0     &      0      &      0     & 1-\lambda
   \end{array}\right]\ 
   \left[\begin{array}{c}
   \alpha_1 \\ \alpha_2 \\ \alpha_3 \\ \alpha_4
   \end{array}\right]\ =\ 
   \left[\begin{array}{c}
   0 \\ 0 \\ 0 \\ 0
   \end{array}\right]\,. 

1.) Wyliczenie wartości własnych jako pierwiastków równania charakterystycznego.

.. math::
   
   w(\lambda)\ =\ 
   \left|\begin{array}{cccc}
   1-\lambda &      0      &      0     &     0 \\
       0     & -\ \lambda  &      1     &     0 \\
       0     &      1      & -\ \lambda &     0 \\
       0     &      0      &      0     & 1-\lambda
   \end{array}\right|\ =\ 
   (1-\lambda)^2\,(\lambda^2-1)\ =\ (\lambda-1)^3\,(\lambda+1)\ =\ 0\,.

Wartości własne (i ich krotności algebraiczne) są więc następujące:

.. math::
   
   \blacktriangleright\qquad\lambda_1=1\quad(3)\,,\qquad\lambda_2=-1\quad(1)\,.

2.) Wyznaczenie wektorów (tutaj: macierzy) własnych.

Wstawiając :math:`\,\lambda=\lambda_1=1\ ` do równania :eq:`hom_eqn` otrzymujemy

.. math::
   
   \left[\begin{array}{rrrr}
   0 &  0 &  0 & 0 \\
   0 & -1 &  1 & 0 \\
   0 &  1 & -1 & 0 \\
   0 &  0 &  0 & 0
   \end{array}\right]\ 
   \left[\begin{array}{c}
   \alpha_1 \\ \alpha_2 \\ \alpha_3 \\ \alpha_4
   \end{array}\right]\ =\ 
   \left[\begin{array}{c}
   0 \\ 0 \\ 0 \\ 0
   \end{array}\right]\qquad\text{czyli}\qquad
   \begin{cases}\ \begin{array}{r}
   -\ \alpha_2+\alpha_3\,=\,0\,, \\ \alpha_2-\alpha_3\,=\,0\,.
   \end{array}\end{cases}

Rozwiązanie ma postać: 
:math:`\quad\alpha_1=\alpha\,,\ \ \alpha_2=\alpha_3=\beta\,,\ \ \alpha_4=\gamma\,,\quad
\alpha,\,\beta,\,\gamma\in R.`

Macierze własne operatora :math:`\,T\ ` dla wartości :math:`\,\lambda_1=1\,:`

.. math::
   
   \blacktriangleright\quad
   \left[\begin{array}{cc}
   \alpha & \beta \\ \beta & \gamma
   \end{array}\right]\ =\ 
   \alpha\ 
   \left[\begin{array}{cc}
   1 & 0 \\ 0 & 0
   \end{array}\right]\ +\ 
   \beta\ 
   \left[\begin{array}{cc}
   0 & 1 \\ 1 & 0
   \end{array}\right]\ +\ 
   \gamma\ 
   \left[\begin{array}{cc}
   0 & 0 \\ 0 & 1
   \end{array}\right]\,,\quad
   \begin{array}{l}
   \alpha,\,\beta,\,\gamma\in R\,, \\
   \alpha^2+\beta^2+\gamma^2>0
   \end{array}

tworzą :math:`\,` (po dodaniu macierzy zerowej) :math:`\,` 
trójwymiarową podprzestrzeń :math:`\ V_1\ ` przestrzeni :math:`\\`
wektorowej :math:`\ V=M_2(R),\ ` generowaną przez liniowo niezależne macierze

.. math::
   
   \boldsymbol{t}_1\ =\ 
   \left[\begin{array}{cc}
   1 & 0 \\ 0 & 0
   \end{array}\right]\,,\quad 
   \boldsymbol{t}_2\ =\ 
   \left[\begin{array}{cc}
   0 & 1 \\ 1 & 0
   \end{array}\right]\,,\quad 
   \boldsymbol{t}_3\ =\ 
   \left[\begin{array}{cc}
   0 & 0 \\ 0 & 1
   \end{array}\right]\,:\qquad
   V_1=L(\boldsymbol{t}_1,\boldsymbol{t}_2,\boldsymbol{t}_3)\,.

Wartość własna :math:`\ \lambda_1=1\ ` jest zatem algebraicznie i geometrycznie 3-krotna.

Podstawienie :math:`\ \lambda=\lambda_2=-1\ ` do równania :eq:`hom_eqn` daje

.. math::
   
   \left[\begin{array}{rrrr}
   2 & 0 & 0 & 0 \\
   0 & 1 & 1 & 0 \\
   0 & 1 & 1 & 0 \\
   0 & 0 & 0 & 2
   \end{array}\right]\ 
   \left[\begin{array}{c}
   \alpha_1 \\ \alpha_2 \\ \alpha_3 \\ \alpha_4
   \end{array}\right]\ =\ 
   \left[\begin{array}{c}
   0 \\ 0 \\ 0 \\ 0
   \end{array}\right]\qquad\text{czyli}\qquad
   \begin{cases}\ \begin{array}{r}
   2\,\alpha_1\,=\,0\,, \\ \alpha_2+\alpha_3\,=\,0\,, \\ 
   \alpha_2+\alpha_3\,=\,0\,, \\ 2\,\alpha_4\,=\,0\,.
   \end{array}\end{cases}

Stąd :math:`\ \ \alpha_1=\alpha_4=0\,,\ \ \alpha_2=-\ \alpha_3=\delta\,,\ \ \delta\in R\,,\ \,`
a macierze własne dla wartości :math:`\ \lambda_2=-1:`

.. math::
   
   \blacktriangleright\quad
   \left[\begin{array}{rr}
   0 & \delta \\ -\delta & 0
   \end{array}\right]\ =\ 
   \delta\ 
   \left[\begin{array}{rr}
   0 & 1 \\ -1 & 0
   \end{array}\right]\ =\ 
   \delta\ \boldsymbol{t}_4\,,\qquad
   \boldsymbol{t}_4\,=\,
   \left[\begin{array}{rr} 
   0 & 1 \\ -1 & 0 
   \end{array}\right]\,,\quad
   \delta\in R\smallsetminus\!\{0\}\,,

tworzą :math:`\,` (razem z macierzą zerową) :math:`\,` 
1-wymiarową podprzestrzeń :math:`\ V_{-1}=L(\boldsymbol{t}_4)\,.` :math:`\\`
Krotność geometryczna wartości własnej :math:`\ \lambda_2\ ` 
równa się jej krotności algebraicznej i wynosi 1.

**Uwagi i komentarze.**

Macierze własne 
:math:`\ \boldsymbol{t}_1,\,\boldsymbol{t}_2,\,\boldsymbol{t}_3,\,\boldsymbol{t}_4\ `
są liniowo niezależne. :math:`\\`
Rzeczywiście, jeżeli ich kombinacja liniowa równa się macierzy zerowej:

.. math::
   
   \alpha\ \boldsymbol{t}_1\,+\,\beta\ \boldsymbol{t}_2\,+\,
   \gamma\ \boldsymbol{t}_3\,+\,\delta\ \boldsymbol{t}_4\ =\ 
   \boldsymbol{0}\,,

to, wykonując działania po lewej stronie równości, otrzymujemy

.. math::
   
   \left[\begin{array}{cc}
   \alpha & \beta+\delta \\ \beta-\delta & \gamma
   \end{array}\right]\ =\ 
   \left[\begin{array}{cc}
   0 & 0 \\ 0 & 0
   \end{array}\right]\quad\text{czyli}\quad
   \begin{cases}\ \begin{array}{r}
   \alpha=0\,, \\ \beta+\delta=0\,, \\ \beta-\delta=0\,, \\ \gamma=0\,,
   \end{array}\end{cases}\quad\text{skąd}\quad
   \begin{cases}\ \begin{array}{r}
   \alpha=0\,, \\ \beta=0\,, \\ \gamma=0\,, \\ \delta=0\,.
   \end{array}\end{cases}

Układ :math:`\ \mathcal{T}=(\boldsymbol{t}_1,\boldsymbol{t}_2,\boldsymbol{t}_3,\boldsymbol{t}_4)\ `
jest więc bazą algebry :math:`\,M_2(R),\ ` alternatywną względem wyjściowej bazy
:math:`\ \mathcal{B}=(\boldsymbol{e}_1,\boldsymbol{e}_2,\boldsymbol{e}_3,\boldsymbol{e}_4)\,.\ `
Związki między wektorami tych baz:

.. math::
   :nowrap:
   
   \begin{alignat*}{5}
   \boldsymbol{t}_1 & {\ \,} = {\ \,} & 1\cdot\boldsymbol{e}_1 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_2 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_3 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_4 \,, \\
   \boldsymbol{t}_2 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{e}_1 {\ } + {\ } 
                                        1\cdot\boldsymbol{e}_2 {\ } + {\ } 
                                        1\cdot\boldsymbol{e}_3 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_4 \,, \\
   \boldsymbol{t}_3 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{e}_1 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_2 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_3 {\ } + {\ } 
                                        1\cdot\boldsymbol{e}_4 \,, \\
   \boldsymbol{t}_4 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{e}_1 {\ } + {\ } 
                                        1\cdot\boldsymbol{e}_2 {\ } - {\ } 
                                        1\cdot\boldsymbol{e}_3 {\ } + {\ } 
                                        0\cdot\boldsymbol{e}_4 \,,
   \end{alignat*}

dają macierz przejścia :math:`\,\boldsymbol{S}\ ` od bazy :math:`\,\mathcal{B}\ ` 
do bazy :math:`\,\mathcal{T}:`

.. math::
   
   \boldsymbol{S}\ =\ 
   \left[\begin{array}{rrrr}
   1 & 0 & 0 &  0 \\
   0 & 1 & 0 &  1 \\
   0 & 1 & 0 & -1 \\
   0 & 0 & 1 &  0 
   \end{array}\right]\,.

Wzór :math:`\,` :eq:`mat_AT` :math:`\,` przedstawia 
macierz :math:`\,\boldsymbol{A}\ ` operatora :math:`\,T\ `
w wyjściowej bazie :math:`\ \mathcal{B}.` :math:`\\`
Macierz :math:`\ \boldsymbol{T}=[\tau_{ij}]\ ` operatora :math:`\ T\ `
w bazie :math:`\ \mathcal{T}\ ` wyliczymy dwoma sposobami.

* Z definicji, :math:`\,` elementy :math:`\,\tau_{ij}\ ` macierzy :math:`\,\boldsymbol{T}\ `
  określone są przez związki
  
  .. math::
     
     T\ \boldsymbol{t}_j\ =\ 
     \tau_{1j}\ \boldsymbol{t}_1\ +\  
     \tau_{2j}\ \boldsymbol{t}_2\ +\ 
     \tau_{3j}\ \boldsymbol{t}_3\ +\ 
     \tau_{4j}\ \boldsymbol{t}_4\,,\qquad j=1,2,3,4.

  Biorąc pod uwagę, że :math:`\,\boldsymbol{t}_i\,,\ i=1,2,3,4,\ ` 
  są macierzami własnymi operatora :math:`\,T,\ ` mamy:
  
  .. math::
     :nowrap:
     
     \begin{alignat*}{6}
     T\ \boldsymbol{t}_1 & {\ \,} = {\ \,} & 
        \boldsymbol{t}_1 & {\ \,} = {\ \,} & 1\cdot\boldsymbol{t}_1 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_2 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_3 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_4 \,, \\
     T\ \boldsymbol{t}_2 & {\ \,} = {\ \,} & 
        \boldsymbol{t}_2 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{t}_1 {\ } + {\ } 
                                             1\cdot\boldsymbol{t}_2 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_3 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_4 \,, \\
     T\ \boldsymbol{t}_3 & {\ \,} = {\ \,} & 
        \boldsymbol{t}_3 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{t}_1 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_2 {\ } + {\ } 
                                             1\cdot\boldsymbol{t}_3 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_4 \,, \\
     T\ \boldsymbol{t}_4 & {\ \,} = {\ \,} & 
     -\ \boldsymbol{t}_4 & {\ \,} = {\ \,} & 0\cdot\boldsymbol{t}_1 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_2 {\ } + {\ } 
                                             0\cdot\boldsymbol{t}_3 {\ } - {\ } 
                                             1\cdot\boldsymbol{t}_4 \,.
     \end{alignat*}
  
  Macierz :math:`\,\boldsymbol{T}\ ` jest więc diagonalna, 
  z wartościami własnymi operatora :math:`\,T\ ` na przekątnej:
  
  .. math::
     
     \boldsymbol{T}\ =\ M_{\mathcal{T}}(T)\ =\ 
     \left[\begin{array}{rrrr}
     1 & 0 & 0 &  0 \\
     0 & 1 & 0 &  0 \\
     0 & 0 & 1 &  0 \\
     0 & 0 & 0 & -1
     \end{array}\right]\,.

* | Wzory transformacyjne dla przejścia od bazy :math:`\ \mathcal{B}\ ` 
    do bazy :math:`\ \mathcal{T}\ ` dają:
    :math:`\ \ \boldsymbol{T}\ =\ \boldsymbol{S}^{-1}\boldsymbol{A}\,\boldsymbol{S}\,.`
  | W rachunkach macierzowych wykorzystamy pakiet Sage:
  
  .. code-block:: python
     
     sage: A = matrix(QQ,[[1,0,0,0],
     ...                  [0,0,1,0],
     ...                  [0,1,0,0],
     ...                  [0,0,0,1]])

     sage: S = matrix(QQ,[[1,0,0, 0],
     ...                  [0,1,0, 1],
     ...                  [0,1,0,-1],
     ...                  [0,0,1, 0]])
     sage: S.I*A*S                             
  
     [ 1  0  0  0]
     [ 0  1  0  0]
     [ 0  0  1  0]
     [ 0  0  0 -1]

Powtarzając argumentację z poprzedniego przykładu
można stwierdzić, że przestrzeń :math:`\ M_2(R)\ ` 
rozkłada się na sumę prostą podprzestrzeni 
:math:`\,V_1=L(\boldsymbol{t}_1,\boldsymbol{t}_2,\boldsymbol{t}_3)\ ` macierzy symetrycznych
oraz podprzestrzeni :math:`\,V_{-1}=L(\boldsymbol{t}_4)\ ` macierzy antysymetrycznych:

.. math::
   
   M_2(R)\ =\ V_1\,\oplus\,V_{-1}\,.




   








































