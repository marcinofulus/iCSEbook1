
Fundamental Concepts in Linear Algebra
--------------------------------------

Zakładamy, że dana jest przestrzeń wektorowa :math:`\,V\,` nad ciałem 
:math:`\,K :\ V(K)\,,\,` gdzie :math:`\,K\,` jest ciałem liczb rzeczywistych :math:`\,R\,`
bądź ciałem liczb zespolonych :math:`\,C\ ` (omawiane pojęcia i twierdzenia można jednak
odnieść do dowolnego abstrakcyjnego ciała :math:`\,K).`

Układ elementów pewnego zbioru jest z definicji ciągiem o wyrazach należących do tego zbioru.
Inaczej niż w przypadku zbioru, kolejność elementów w układzie jest więc istotna.
Wszystkie rozważane dalej układy skalarów bądź wektorów będą układami skończonymi.

Dla odróżnienia od zera ciała :math:`\,K\,,\,` wektor zerowy przestrzeni :math:`\,V\,`
będzie oznaczony :math:`\,\theta\,.`

Odejmowanie w ciele bądź w przestrzeni wektorowej jest z definicji dodawaniem elementu przeciwnego
w odpowiedniej grupie addytywnej:

.. math::
   
   \alpha - \beta\ :\,=\ \alpha\,+\,(-\beta)\,,\qquad\alpha,\beta\in K\,;

   v - w\ :\,=\ v\,+\,(-w)\,,\qquad v,w\in V\,.

A Few Simple Theorems
~~~~~~~~~~~~~~~~~~~~~

1.) Iloczyn dowolnego wektora przez liczbę zero równa się wektorowi zerowemu; :math:`\\`
pomnożenie wektora zerowego przez dowolną liczbę daje w wyniku wektor zerowy:

.. math::
   
   0\cdot v\,=\,\theta\,;\quad\alpha\cdot\theta\,=\,\theta\,.
   
Dowód. Z rozdzielności mnożenia wektorów przez skalary względem dodawania mamy:

.. math::

   0\cdot v\,+\,0\cdot v\ \,=\ \,(0+0)\cdot v\ \,=\ \,0\cdot v\,.

Do obydwu stron otrzymanej równości dodajemy wektor przeciwny do wektora :math:`\,0\cdot v\,`:

.. math::

   [\,0\cdot v\,+\,0\cdot v\,]\,+\,[\,-(0\cdot v)\,]\ \,=\ \,0\cdot v\,+\,[\,-(0\cdot v)\,]\,.

Korzystając z łączności dodawania i z definicji odejmowania wektorów otrzymujemy:

.. math::

   0\cdot v\,+\,[\,0\cdot v\,-\,0\cdot v\,]\ \,=\ \,0\cdot v\,-\,0\cdot v\,.

Różnica dwóch takich samych wektorów równa się wektorowi zerowemu:

.. math::

   0\cdot v\,+\,\theta\ \,=\ \,\theta\,.

Wektor :math:`\,\theta\,` jest elementem neutralnym dla dodawania wektorów, wobec czego ostatecznie: 

.. math::

   0\cdot v\ =\ \theta\,.

Analogicznie dowodzi się drugą część twierdzenia:

.. math::
   
   \alpha\cdot\theta\,+\,\alpha\cdot\theta\ \,=\ \,\alpha\cdot(\theta+\theta)\ =\ \alpha\cdot\theta\,,
   
   [\,\alpha\cdot\theta\,+\,\alpha\cdot\theta\,]\,+\,[\,-(\alpha\cdot\theta)\,]\ \,=\ \,
   \alpha\cdot\theta\,+\,[\,-(\alpha\cdot\theta)\,]\,,

   \alpha\cdot\theta\,+\,[\,\alpha\cdot\theta\,-\,\alpha\cdot\theta\,]\ =\ 
   \alpha\cdot\theta\,-\,\alpha\cdot\theta\,,

   \alpha\cdot\theta\,+\,\theta\ =\ \theta\,,

   \alpha\cdot\theta\,=\,\theta\,.

2.) Iloczyn wektora :math:`\,v\,` przez liczbę przeciwną do :math:`\,\alpha\,` 
równa się iloczynowi wektora przeciwnego do :math:`\,v\,` przez :math:`\,\alpha\,`
i równa się wektorowi przeciwnemu do iloczynu wektora :math:`\,v\,` przez :math:`\,\alpha:`

.. math::
   
   (-\alpha)\cdot v\ =\ \alpha\cdot (-v)\ =\,-\,(\alpha\cdot v)\,.

Dowód. Korzystając z poprzedniego twierdzenia 1.) można zapisać:

.. math::

   (-\alpha)\cdot v \,+\, \alpha\cdot v\ \,=\ \,[\,(-\alpha) + \alpha\,]\cdot v\ \,=\ \,
   0\cdot v\ =\ \theta\,;

   \alpha\cdot (-v)\,+\,\alpha\cdot v\ \,=\ \,\alpha\cdot[\,(-v)+v\,]\ \,=\ \,
   \alpha\cdot\theta\ =\ \theta\,.

A zatem wektory :math:`\ (-\alpha)\cdot v\ \ \;\text{i}\ \ \;\alpha\cdot v\,,\ `
oraz :math:`\ \alpha\cdot (-v)\ \ \;\text{i}\ \ \;\alpha\cdot v\,,\ ` są wzajemnie przeciwne:

.. math::

   (-\alpha)\cdot v\ =\ -\,(\alpha\cdot v)\,,\qquad\alpha\cdot (-v)\ =\ -\,(\alpha\cdot v)\,.

Wniosek: :math:`\ ` kładąc :math:`\,\alpha = 1\,` otrzymujemy: :math:`\ \ (-1)\,v\,=\,-\,v\,.`


3.) Mnożenie wektorów przez skalary jest rozdzielne względem odejmowania:

.. math::
   
   (\alpha-\beta)\cdot v\ =\ 
   \alpha\cdot v\,-\,\beta\cdot v\,,\quad\alpha\cdot (v-w)\ =\ 
   \alpha\cdot v\,-\,\alpha\cdot w\,.

Dowód. Skorzystamy z definicji odejmowania, z rozdzielności mnożenia wektorów przez skalary względem dodawania oraz z udowodnionego już twierdzenia 2.):

.. math::

   (\alpha-\beta)\cdot v\ =\ [\,\alpha + (-\beta)\,]\cdot v\ =\ 
   \alpha\cdot v\,+\,[\,(-\beta)\cdot v\,]\ =\ 
   \alpha\cdot v\,+\,[-(\beta\cdot v)\,]\ =\ 
   \alpha\cdot v\,-\,\beta\cdot v\,;

   \alpha\cdot (v-w)\ =\ \alpha\cdot [\,v + (-w)\,]\ =\ 
   \alpha\cdot v\,+\,[\,\alpha\cdot (-w)\,]\ =\ 
   \alpha\cdot v\,+\,[-(\alpha\cdot w)\,]\ =\ 
   \alpha\cdot v\,-\,\alpha\cdot w\,.

4.) Iloczyn skalara i wektora równa się wektorowi zerowemu wtedy i tylko wtedy, 
gdy skalar jest zerem lub gdy wektor jest wektorem zerowym:

.. math::
   :label: fourth
   
   \alpha\cdot v\,=\,\theta\quad\Leftrightarrow\quad\
   \left(\ \alpha\,=\,0\ \ \lor\ \ v\,=\,\theta\ \right)\,.

Dowód. Twierdzenie w postaci równoważności można potraktować jako koniunkcję dwóch implikacji,
które udowadnia się oddzielnie.

:math:`\Rightarrow\ :\ ` Zakładamy, że :math:`\ \,\alpha\cdot v\,=\,\theta\,.\ `
Oczywiście :math:`\,\alpha = 0\,` albo :math:`\,\alpha \neq 0\,.`

Jeżeli :math:`\ \alpha = 0,\,` to alternatywa
po prawej stronie wzoru :eq:`fourth` jest prawdziwa.
                    
Jeżeli :math:`\ \alpha \neq 0,\,` to w ciele :math:`\,K\,`
istnieje odwrotność :math:`\,\alpha^{-1}\,.\ ` 
Wtedy :math:`\ \ \alpha^{-1}\cdot(\alpha\cdot v)\ =\ \alpha^{-1}\cdot\theta\,.`
     
Ale :math:`\ \ \alpha^{-1}\cdot(\alpha\cdot v)\ =\ 
(\alpha^{-1}\,\alpha)\cdot v\ =\ 1\cdot v\ =\ v\,,\ \,`
a z drugiej strony :math:`\ \ \alpha^{-1}\cdot\theta\ =\ \theta\,.`

A zatem :math:`\ v\,=\,\theta\ ` 
i alternatywa we wzorze :eq:`fourth` jest znowu prawdziwa.

:math:`\Leftarrow\ :\ ` Teraz zakładamy, że 
:math:`\ \,\alpha\,=\,0\ \ \,\text{lub}\ \ \,v\,=\,\theta\,.`
      
Jeżeli :math:`\ \alpha\,=\,0\,,\ \,` 
to :math:`\ \alpha\cdot v\ =\ 0\cdot v\ =\ \theta\,,\ \ `
a jeżeli :math:`\ v\,=\,\theta\,,\ \,` 
to :math:`\ \,\alpha\cdot v\ =\ \alpha\cdot \theta\ =\ \theta\,.`

Stwierdziliśmy w ten sposób, że równoważność :eq:`fourth` jest prawdziwa
w każdym przypadku, co kończy dowód twierdzenia 4.).

Linear Combination of Vectors
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Jeżeli dla pewnego wektora :math:`\,x\in V\,` jest spełniony warunek 

.. math::
   :label: lin
   
   x\,=\,\alpha_1\,x_1\,+\,\alpha_2\,x_2\,+\,\ldots\,+\,\alpha_m\,x_m\,,

gdzie :math:`\ \ \alpha_1,\,\alpha_2,\,\ldots,\,\alpha_m\in K\,,\ \  
x_1,\,x_2,\,\ldots,\,x_m\in V,\ \,`
to wektor :math:`\,x\,` jest *kombinacją liniową* wektorów :math:`\ x_1,\,x_2,\,\ldots,\,x_m\ `
o współczynnikach :math:`\ \alpha_1,\,\alpha_2,\,\ldots,\,\alpha_m\,.`

Mówimy też, że wektor :math:`\,x\,` *wyraża się liniowo*
przez wektory :math:`\ x_1,\,x_2,\,\ldots,\,x_m\,.`

Gdy wszystkie współczynniki są równe zeru, to kombinację nazywamy *trywialną*.
Trywialna kombinacja liniowa jakichkolwiek wektorów równa się wektorowi zerowemu:

.. math::
   :label: triv

   \alpha_1=\alpha_2=\ldots=\alpha_r=0\qquad\Rightarrow\qquad
   \alpha_1\,x_1\,+\,\alpha_2\,x_2\,+\,\ldots\,+\,\alpha_r\,x_r\ =\ \theta\,.
 
Kombinację liniową :eq:`lin` można też napisać używając skróconego zapisu sumy:

.. math::
   
   x\ =\ \sum_{k=1}^m\ \alpha_k\,x_k\,.

Niech :math:`\ \mathcal{X} = (x_1,x_2,\ldots,x_m)\ ` będzie skończonym układem wektorów
przestrzeni :math:`\,V(K)\,.`

Zbiór wszystkich kombinacji liniowych wektorów tego układu nazywamy *powłoką liniową*
(lub *domknięciem liniowym*) układu :math:`\,\mathcal{X}\,` i oznaczamy :math:`\,L(\mathcal{X})\,:`

.. math:: 

   L(\mathcal{X})\,\equiv\,L(x_1,x_2,\ldots,x_m)\ :\,=\ 
   \left\{\ \alpha_1\,x_1 + \alpha_2\,x_2 + \ldots + \alpha_m\,x_m:\ 
   \alpha_1,\alpha_2,\ldots,\alpha_m\in K\ \right\}\,.

Łatwo zauważyć, że :math:`\,L(\mathcal{X})\,` jest podprzestrzenią: :math:`\,L(\mathcal{X}) < V\,.\ `
W tej sytuacji mówimy, że

* układ :math:`\,\mathcal{X}\,` *rozpina* (*generuje*) podprzestrzeń :math:`\ L(\mathcal{X})\,;`
* podprzestrzeń :math:`\,L(\mathcal{X})\,` jest *rozpięta* na układzie :math:`\,\mathcal{X}\,` 
  (*generowana* przez układ :math:`\,\mathcal{X})\,;`
* :math:`\,\mathcal{X}\,` jest *układem generatorów* podprzestrzeni :math:`\,L(\mathcal{X})\,.`

Może się zdarzyć, że :math:`\ L(\mathcal{X}) = V\,.\ ` 
Wtedy układ :math:`\,\mathcal{X}\,` generuje przestrzeń :math:`\,V\ `
(jest układem generatorów przestrzeni :math:`\,V).`

**Przykład.**

Załóżmy, że :math:`\ \vec{v}_1,\,\vec{v}_2,\,\vec{v}_3\ ` są trzema niekomplanarnymi 
(czyli nie leżącymi w jednej płaszczyżnie) wektorami geometrycznymi,
zaczepionymi w ustalonym punkcie :math:`\,\boldsymbol{O}.\ ` Wtedy:

1. :math:`L(\vec{v}_1)\,=\,\left\{\ \alpha\,\vec{v}_1 :\ \alpha\in R\ \right\}\ ` 
   jest zbiorem wektorów leżących na prostej przechodzącej przez punkt :math:`\,\boldsymbol{O}\ \,`
   i wyznaczonej przez wektor :math:`\,\vec{v}_1\,;`

2. :math:`L(\vec{v}_1,\vec{v}_2)\,=\,\left\{\ \alpha_1\,\vec{v}_1 + \alpha_2\,\vec{v}_2 :\ \alpha_1,
   \alpha_2\in R\ \right\}\ ` jest zbiorem wektorów leżących na płaszczyźnie 
   przechodzącej przez punkt :math:`\,\boldsymbol{O}\ \,` i wyznaczonej przez
   wektory :math:`\,\vec{v}_1,\,\vec{v}_2\,;`

3. :math:`L(\vec{v}_1,\vec{v}_2,\vec{v}_3)\,=\,
   \left\{\ \alpha_1\,\vec{v}_1+\alpha_2\,\vec{v}_2+\alpha_3\,\vec{v}_3 :\  
   \alpha_1,\alpha_2,\alpha_3\in R\ \right\}\ `
   przedstawia całą przestrzeń wektorów zaczepionych w punkcie :math:`\,\boldsymbol{O}.`

Podprzestrzenie te są związane relacją:

.. math::
   
   L(\vec{v}_1)\,<\,L(\vec{v}_1,\vec{v}_2)\,<\,L(\vec{v}_1,\vec{v}_2,\vec{v}_3)\,.

Linear Dependence and Independence
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mówimy, że układ wektorów :math:`\,(x_1,x_2,\ldots,x_r)\,` jest *liniowo zależny*
(lub, że wektory :math:`\,x_1,x_2,\ldots,x_r\ ` są :math:`\,` *liniowo zależne*), :math:`\,`
gdy istnieje nietrywialna kombinacja liniowa tych wektorów równa wektorowi zerowemu :math:`\,\theta.`

Układ :math:`\ (x_1,x_2,\ldots,x_r)\ ` jest *liniowo niezależny*
(wektory :math:`\ x_1,x_2,\ldots,x_r\ ` są :math:`\,` *liniowo niezależne*),
gdy nie jest on liniowo zależny, czyli gdy każda nietrywialna kombinacja liniowa tych wektorów 
jest różna od wektora zerowego.

A zatem układ :math:`\,(x_1,x_2,\ldots,x_r)\,` jest liniowo zależny wtedy i tylko wtedy,
gdy istnieje układ :math:`\,(\alpha_1,\alpha_2,\ldots,\alpha_r)\,` skalarów, 
z których co najmniej jeden jest różny od zera, taki że

.. math::
   :label: lindep

   \alpha_1\,x_1\,+\,\alpha_2\,x_2\,+\,\ldots\,+\,\alpha_r\,x_r\ =\ \theta\,.

Natomiast układ ten jest liniowo niezależny, gdy jedyną kombinacją liniową jego wektorów, równą wektorowi zerowemu, jest kombinacja trywialna:

.. math::
   :label: linindep

   \alpha_1\,x_1\,+\,\alpha_2\,x_2\,+\,\ldots\,+\,\alpha_r\,x_r\ =\ \theta\qquad
   \Rightarrow\qquad\alpha_1=\alpha_2=\ldots=\alpha_r=0\,.

Warto zauważyć, że warunek :eq:`linindep` jest implikacją odwrotną do :eq:`triv`.

**Twierdzenie 1.** :math:`\,` 
Wektory :math:`\ x_1,x_2,\ldots,x_r\,,\ ` gdzie :math:`\ r \geq 2,\ `
są liniowo zależne wtedy i tylko wtedy, :math:`\,` gdy co najmniej jeden z nich wyraża się
liniowo przez wektory pozostałe, :math:`\,` czyli gdy dla pewnego wskaźnika 
:math:`\,i\in\{\,1,2,\ldots,r\,\}\,` zachodzi warunek

.. math::
   :label: detach

   x_i\ =\ \beta_1\,x_1\,+\,\ldots\,+\,\beta_{i-1}\,x_{i-1}\,+\,
           \beta_{i+1}\,x_{i+1}\,+\,\ldots\,+\,\beta_r\,x_r\,.

Uwaga: :math:`\ ` co najmniej jeden, to znaczy niekoniecznie każdy.

**Dowód.**

:math:`\Rightarrow\,:\ ` Zakładamy, że wektory :math:`\ x_1,x_2,\ldots,x_r\ ` są liniowo zależne:

.. math::
   
   \alpha_1\,x_1\,+\,\alpha_2\,x_2\,+\,\ldots\,+\,\alpha_r\,x_r\ =\ \theta\,,

przy czym :math:`\ \alpha_i\neq 0\ ` dla pewnego wskaźnika :math:`\ i\in\{\,1,2,\ldots,r\,\}\,.`

Po przeniesieniu na prawą stronę wszystkich składników z wyjątkiem :math:`\,i`-tego otrzymujemy

.. math::
   :label: ith

   \alpha_i\,x_i\ =\ -\,\alpha_1\,x_1\,-\,\ldots\,-\,\alpha_{i-1}\,x_{i-1}\,-\,
   \alpha_{i+1}\,x_{i+1}\,-\,\ldots\,-\,\alpha_r\,x_r\,.

Z założenia :math:`\,\alpha_i\neq 0\,` wynika, że w ciele :math:`\,K\,` istnieje element
:math:`\,\alpha_i^{-1}\,` taki, że :math:`\,\alpha_i\cdot\alpha_i^{-1}=1.\ `
Mnożąc obustronnie :eq:`ith` przez :math:`\,\alpha_i^{-1}\ \,` 
i :math:`\,` oznaczając :math:`\ \beta_j\,=\,-\,\alpha_i^{-1}\,\alpha_j\,`
dla :math:`\ j\,=\,1,\ldots,i-1,\ i+1,\ldots,r\,,\ `
dochodzimy do warunku :eq:`detach`, :math:`\,` co kończy tę część dowodu. 

:math:`\Leftarrow\,:\ ` Teraz zakładamy, że spełniony jest warunek :eq:`detach`:

.. math::
   
   x_i\ =\ \beta_1\,x_1\,+\,\ldots\,+\,\beta_{i-1}\,x_{i-1}\,+\,
   \beta_{i+1}\,x_{i+1}\,+\,\ldots\,+\,\beta_r\,x_r\,.

Przenosząc wyraz :math:`\,x_i\,` na prawą stronę i biorąc pod uwagę, 
że :math:`\ \,-x_i\,=\,(-1)\cdot x_i\,,\ ` otrzymujemy

.. math::

   \beta_1\,x_1\,+\,\ldots\,+\,\beta_{i-1}\,x_{i-1}\,+\,(-1)\,x_i\,+\,
   \beta_{i+1}\,x_{i+1}\,+\,\ldots\,+\,\beta_r\,x_r\ = \theta\,.

Ponieważ :math:`\,-1\neq 0\,,\ ` kombinacja liniowa po lewej stronie jest nietrywialna,
a to oznacza, że wektory :math:`\ x_1,x_2,\ldots,x_r\ ` są liniowo zależne.

**Wniosek:** :math:`\ `
Wektory :math:`\ x_1,x_2,\ldots,x_r\ ` są liniowo niezależne wtedy i tylko wtedy, gdy żadnego z nich nie można zapisać w postaci kombinacji liniowej pozostałych.

.. Łatwo można uzasadnić następujące użyteczne stwierdzenia
   (l.z. = liniowo zależny, :math:`\,` l.n. = liniowo niezależny):

   1. | Układ :math:`\,(x),\,` składający się z jednego wektora, jest l.z. wtedy
        i tylko wtedy, gdy :math:`\,x = \theta\,.`

   2. | Jeżeli jakiś podukład danego układu jest l.z., to cały układ jest też l.z.
      | Wniosek 1.: Każdy układ zawierający wektor zerowy jest l.z.
      | Wniosek 2.: Jeżeli w układzie jakieś dwa wektory są sobie równe, to układ jest l.z.
      | Wniosek 3.: Jeżeli dwa wektory są proporcjonalne:
        :math:`\ x_j = \lambda\,x_i\,,\ ` to układ jest l.z.

   3. | Każdy podukład układu liniowo niezależnego jest l.n.
      | Wniosek: :math:`\ ` Układ l.n. nie zawiera wektora zerowego 
        ani wektorów identycznych lub proporcjonalnych.

   4. | Kolejność wektorów nie ma wpływu na ich liniową zależność albo niezależność.

Łatwo można uzasadnić następujące użyteczne stwierdzenia :math:`\\`
(l.z. = liniowo zależny, :math:`\,` l.n. = liniowo niezależny):

1. | Układ :math:`\,(x),\,` składający się z jednego wektora, jest l.z. wtedy
     i tylko wtedy, gdy :math:`\,x = \theta\,.`
2. | Jeżeli jakiś podukład danego układu jest l.z., to cały układ jest też l.z.
   | Wniosek 1.: Każdy układ zawierający wektor zerowy jest l.z.
   | Wniosek 2.: Jeżeli w układzie jakieś dwa wektory są sobie równe, to układ jest l.z.
   | Wniosek 3.: Jeżeli dwa wektory są proporcjonalne:
     :math:`\ x_j = \lambda\,x_i\,,\ ` to układ jest l.z.
3. | Każdy podukład układu liniowo niezależnego jest l.n.
   | Wniosek: :math:`\ ` Układ l.n. nie zawiera wektora zerowego 
     ani wektorów identycznych lub proporcjonalnych.
4. | Kolejność wektorów nie ma wpływu na ich liniową zależność albo niezależność.

**Przykład 0.** :math:`\ `
Rozważmy przestrzeń :math:`\,C(R)\,` liczb zespolonych nad ciałem liczb rzeczywistych.

Wektory (tu: liczby) :math:`\ 1\ ` oraz :math:`\ i\ \,` są :math:`\,` l.n., :math:`\,`
bo dla dowolnych :math:`\,\alpha,\beta\in R\ ` zachodzi warunek :eq:`linindep`:

.. math::
   
   \alpha\cdot 1\,+\,\beta\cdot i\ =\ 0\qquad\Rightarrow\qquad\alpha = \beta = 0\,.

**Przykład 1.** :math:`\ `
Niech :math:`\quad 
x\ =\ \left[\begin{array}{c} 1 \\ 0 \\ 1 \end{array}\right]\,,\quad
y\ =\ \left[\begin{array}{c} 0 \\ 1 \\ 0 \end{array}\right]\,,\quad
z\ =\ \left[\begin{array}{c} 2 \\ 2 \\ 2 \end{array}\right]   \quad\in\ R^3\,.`

Układ :math:`\,(x,y,z)\,` jest :math:`\,` liniowo zależny, :math:`\,` bo

* :math:`\,2\,x\,+\,2\,y\,-\,z\,=\,\theta\quad`
  (istnieje nietrywialna kombinacja liniowa równa :math:`\,\theta`);

* :math:`\,z\,=\,2\,x\,+\,2\,y\quad`
  (jeden z wektorów wyraża się liniowo przez pozostałe dwa).

Obydwa warunki są sobie równoważne i wystarczyło stwierdzić tylko jeden z nich.

**Przykład 2.** :math:`\ `
Niech :math:`\quad 
x\ =\ \left[\begin{array}{c} 2 \\ 2 \end{array}\right]\,,\quad
y\ =\ \left[\begin{array}{c} 1 \\ 0 \end{array}\right]   \quad\in\ R^2\,.`

Układ :math:`\,(x,y)\,` jest liniowo niezależny.
Rzeczywiście, załóżmy że

.. math::

   \alpha\,x\,+\,\beta\,y\,=\,\theta\,,\qquad\text{czyli}\qquad
   \alpha\ \left[\begin{array}{c} 2 \\ 2 \end{array}\right]\ +\ 
   \beta\  \left[\begin{array}{c} 1 \\ 0 \end{array}\right]\ =\ 
   \left[\begin{array}{c} 0 \\ 0 \end{array}\right]\,.

Wykonując działania po lewej stronie dochodzimy do układu równań

.. math::
   :nowrap:

   \begin{alignat*}{3}
   \ 2\,\alpha & {\,} + {\,} & \beta & {\;} = {\;} & 0 \\
     2\,\alpha & {\,}   {\,} &       & {\;} = {\;} & 0
   \end{alignat*}

który ma jedynie rozwiązanie zerowe: :math:`\ \alpha = \beta = 0\,.\ `
A zatem wektory :math:`\ x,y\ ` spełniają warunek

.. math::

   \alpha\,x\,+\,\beta\,y\,=\,\theta\qquad\Rightarrow\qquad\alpha = \beta = 0\,,

co oznacza ich liniową niezależność.

Basis of a Vector Space
~~~~~~~~~~~~~~~~~~~~~~~

Układ :math:`\ \mathcal{B}\ ` wektorów przestrzeni :math:`\,V\,` jest *bazą* 
tej przestrzeni, gdy dowolny wektor :math:`\,v\in V\,` można przedstawić jednoznacznie
w postaci kombinacji liniowej wektorów układu :math:`\,\mathcal{B}\,.`

Jeśli więc układ :math:`\,\mathcal{B} = (v_1,v_2,\ldots,v_n)\,` 
jest bazą przestrzeni :math:`\,V,\ ` to dla każdego wektora :math:`\,v\in V\,`
istnieje dokładnie jeden układ skalarów :math:`\,(\alpha_1,\alpha_2,\ldots,\alpha_n)\,`
taki, że :math:`\,v\,` równa się kombinacji liniowej wektorów :math:`\,v_1,\,v_2,\,\ldots,\,v_n\,`
o współczynnikach :math:`\,\alpha_1,\,\alpha_2,\,\ldots,\,\alpha_n\,:`

.. math::
   :label: baza

   v\ =\ \alpha_1\,v_1\,+\,\alpha_2\,v_2\,+\,\ldots\,+\,\alpha_n\,v_n\,.

Skalary :math:`\,\alpha_1,\,\alpha_2,\,\ldots,\,\alpha_n\,` nazywają się 
*współrzędnymi* wektora :math:`\,v\,` w bazie :math:`\,\mathcal{B}.`

Jeżeli w przestrzeni :math:`\,V\,` istnieje baza :math:`\,n`-elementowa,
to każdy wektor jest scharakteryzowany jednoznacznie poprzez układ :math:`\,n\,`
swoich współrzędnych w tej bazie. W różnych bazach ten sam wektor będzie miał
na ogół różne współrzędne.

**Twierdzenie 2.** :math:`\ ` Układ :math:`\,\mathcal{B}\,` jest bazą przestrzeni :math:`\,V\,` 
wtedy i tylko wtedy, gdy :math:`\,\mathcal{B}\,` jest liniowo niezależnym układem generatorów 
tej przestrzeni.

**Dowód.** :math:`\,` Niech :math:`\,\mathcal{B} = (v_1,v_2,\ldots,v_n)\,.`

:math:`\Rightarrow\,:\ ` Zakładamy, że układ :math:`\,\mathcal{B}\,`
jest bazą przestrzeni :math:`\,V.`

Warunek :eq:`baza` stwierdza, że :math:`\ V \subset L(\mathcal{B})\,.\ `
Z drugiej strony oczywiście :math:`\ L(\mathcal{B}) \subset V\,.\ `
Wobec tego :math:`\ V = L(\mathcal{B})\,,\ `
czyli :math:`\,\mathcal{B}\,` jest układem generatorów przestrzeni :math:`\,V.`

Aby wykazać liniową niezależność układu :math:`\,\mathcal{B}\,,` zauważmy , że tożsamość

.. math::
   
   0\cdot v_1\,+\,0\cdot v_2\,+\,\ldots\,+\,0\cdot v_n\ =\ \theta

można zinterpretować jako przedstawienie wektora zerowego w bazie :math:`\,\mathcal{B}.\ `
Z jednoznaczności tego przedstawienia wynika, że kombinacja trywialna jest jedyną
kombinacją liniową wektorów układu :math:`\,\mathcal{B}\,,\ ` równą wektorowi :math:`\,\theta.\ `
Oznacza to, że :math:`\,\mathcal{B}\,` jest układem liniowo niezależnym. 

:math:`\Leftarrow\,:\ ` Zakładamy, że :math:`\,\mathcal{B}\ `
jest liniowo niezależnym układem generatorów przestrzeni :math:`\,V.`

Z samego faktu, że :math:`\,\mathcal{B}\,` generuje przestrzeń :math:`\,V\,` wynika,
że każdy wektor :math:`\,v\in V\,` ma postać :eq:`baza`. :math:`\ `
Pozostaje udowodnić, że przedstawienie takie jest jednoznaczne.

Przypuśćmy, że tak nie jest, czyli że wektor :math:`\,v\,` ma dwa różne takie przedstawienia:

.. math::
   
   v\ =\ \alpha_1\,v_1\,+\,\alpha_2\,v_2\,+\,\ldots\,+\,\alpha_n\,v_n\,,

   v\ =\ \beta_1\,v_1\,+\,\beta_2\,v_2\,+\,\ldots\,+\,\beta_n\,v_n\,,

przy czym :math:`\ \beta_i\neq\alpha_i\ ` dla pewnego :math:`\ i\in\{1,2,\ldots,n\}\,.`

Odejmując stronami otrzymujemy

.. math::
   
   (\alpha_1-\beta_1)\ v_1\,+\,(\alpha_2-\beta_2)\ v_2\,+\,\ldots\,+\,
   (\alpha_n-\beta_n)\ v_n\ =\ \theta\,,

gdzie współczynnik :math:`\ \alpha_i-\beta_i\neq 0\,.\ `
Okazuje się więc, że wtedy nietrywialna kombinacja liniowa wektorów 
:math:`\,v_1,\,v_2,\,\ldots,\,v_n\,` równałaby się wektorowi zerowemu. 
Doszliśmy do sprzeczności z założeniem o liniowej niezależności tych wektorów.

Wobec tego rozkład :eq:`baza` jest jednoznaczny i układ :math:`\,\mathcal{B}\,`
jest bazą przestrzeni :math:`\,V.`

Twierdzenie 2. podaje warunek konieczny i wystarczający dla bazy,
mogłoby zatem być alternatywną definicją tego pojęcia.
Możliwe jest jeszcze inne podejście, oparte na podanej niżej definicji i twierdzeniu 3.

.. Liniowo niezależny układ wektorów przestrzeni :math:`\ V\ ` nazywa się
   *maksymalnym liniowo niezależnym układem*, gdy nie można do niego dołączyć
   żadnego wektora tak, aby powstały układ był liniowo niezależny.

Liniowo niezależny układ wektorów przestrzeni :math:`\ V\ ` nazywa się
*maksymalnym liniowo niezależnym układem*, gdy dołączenie doń 
jakiegokolwiek wektora z :math:`\,V\,` daje układ liniowo zależny.

**Twierdzenie 3.** :math:`\,` Układ :math:`\,\mathcal{B}\,` 
wektorów przestrzeni :math:`\,V\,` jest bazą tej przestrzeni
wtedy i tylko wtedy, :math:`\,` gdy jest on maksymalnym liniowo niezależnym układem.

**Dowód.** :math:`\,` Niech :math:`\,\mathcal{B} = (v_1,v_2,\ldots,v_n)\,.`

:math:`\Rightarrow\,:\ ` Zakładamy, że układ :math:`\,\mathcal{B}\,`
jest bazą przestrzeni :math:`\,V.`

.. Wtedy dla każdego wektora :math:`\,v\in V\,` zachodzi rozkład :eq:`baza`,
   co oznacza, że dla każdego wektora :math:`\,v\in V\,`
   układ :math:`\,(v,v_1,v_2,\ldots,v_n)\,` jest liniowo zależny.

Wtedy :math:`\,\mathcal{B}\,` jest układem liniowo niezależnym, 
a dla każdego wektora :math:`\,v\in V\,` zachodzi rozkład :eq:`baza`.
Oznacza to, że dla każdego wektora :math:`\,v\in V\,`
układ :math:`\,(v,v_1,v_2,\ldots,v_n)\,` jest liniowo zależny.
A zatem :math:`\,\mathcal{B} = (v_1,v_2,\ldots,v_n)\,`
jest maksymalnym liniowo niezależnym układem.

:math:`\Leftarrow\,:\ ` Zakładamy, że :math:`\,\mathcal{B}\ `
jest maksymalnym liniowo niezależnym układem wektorów.

Wtedy dla każdego wektora :math:`\,v\in V\,`
układ :math:`\,(v,v_1,v_2,\ldots,v_n)\,` jest liniowo zależny:

.. math::
   :label: presume

   \alpha_0\,v\,+\,\alpha_1\,v_1\,+\,\alpha_2\,v_2\,+\,\ldots\,+\,\alpha_n\,v_n\,=\,\theta\,,

gdzie nie wszystkie współczynniki :math:`\,\alpha_0,\,\alpha_1,\,\ldots,\,\alpha_n\,` znikają.

Gdyby :math:`\,\alpha_0=0,\ ` to miałaby miejsce równość

.. math::

   \alpha_1\,v_1\,+\,\alpha_2\,v_2\,+\,\ldots\,+\,\alpha_n\,v_n\,=\,\theta\,,

w której nie wszystkie współczynniki :math:`\,\alpha_1,\,\ldots,\,\alpha_n\,` znikają.
Stoi to w sprzeczności z założeniem o liniowej niezależności układu :math:`\,\mathcal{B}.\ `

A zatem :math:`\ \alpha_0\neq 0.\ \,` W tej sytuacji równanie :eq:`presume` można przepisać w postaci

.. math::

   v\ =\ \beta_1\,v_1\,+\,\beta_2\,v_2\,+\,\ldots\,+\,\beta_n\,v_n\,,

gdzie :math:`\ \,\beta_i\,=\,-\,\alpha_0^{-1}\,\alpha_i\ \,` dla :math:`\ i\,=\,1,\ldots,n\,.\ `
Warunek ten, spełniony dla każdego :math:`\,v\in V,\ ` oznacza 
że :math:`\,\mathcal{B}\ ` jest liniowo niezależnym układem generatorów 
przestrzeni :math:`\,V,\ ` czyli bazą :math:`\,V.` :math:`\\`

.. | **Uwagi i komentarze.**
   |
   | Każda baza przestrzeni wektorowej jest układem liniowo niezależnym.
   | Liniowa niezależność jest warunkiem koniecznym do tego, aby układ był bazą:
   | żaden układ liniowo zależny nie jest bazą.
   | Jednak sama liniowa niezależność nie jest warunkiem wystarczającym.
   | Mówiąc obrazowo, liniowo niezależnych wektorów musi być w bazie dostatecznie wiele,
   | aby generowały one całą przestrzeń, a nie jakąś jej właściwą podprzestrzeń.

**Uwagi i komentarze.**

Każda baza przestrzeni wektorowej jest układem liniowo niezależnym. :math:`\\`
Liniowa niezależność jest warunkiem koniecznym do tego, aby układ był bazą: :math:`\\`
żaden układ liniowo zależny nie może być bazą. :math:`\\`
Jednak sama liniowa niezależność nie jest warunkiem wystarczającym. :math:`\\`
Mówiąc obrazowo, liniowo niezależnych wektorów musi być w bazie dostatecznie wiele, :math:`\\`
aby generowały one całą przestrzeń, a nie jakąś jej właściwą podprzestrzeń.

Dimension of a Vector Space
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Pojęcie wymiaru przestrzeni można wprowadzić w oparciu o

**Twierdzenie 4.** :math:`\ `
Jeżeli przestrzeń wektorowa ma bazę :math:`\,n`-elementową,
to każda jej baza liczy :math:`\,n\,` elementów.

Wobec tego ma sens następująca definicja:
   
Jeżeli przestrzeń wektorowa :math:`\,V\,` ma bazę skończoną,
to liczbę elementów tej bazy nazywamy *wymiarem przestrzeni* :math:`\,V\,`
i oznaczamy :math:`\,\text{dim}\,V.`

Przestrzenie posiadające bazy skończone nazywamy *skończenie wymiarowymi*,
przy czym jeśli :math:`\,\text{dim}\,V = n\,,` to :math:`\,V\,`
jest przestrzenią :math:`\,n`-wymiarową.
Dodatkowo umawiamy się, że wymiar przestrzeni zerowej (składającej się tylko
z wektora zerowego) wynosi zero: :math:`\ \text{dim}\,\{\theta\} = 0\,.`

W praktyce przydatne bywa

**Twierdzenie 5.** :math:`\ ` W :math:`\,n`-wymiarowej przestrzeni wektorowej:

a. każdy układ liczący więcej niż :math:`\,n\,` wektorów
   jest liniowo zależny;
b. każdy liniowo niezależny układ :math:`\,n\,` wektorów jest bazą.

**Przykłady.**

0. W rzeczywistej przestrzeni :math:`\,R(R)\,,\ ` 
   jak również w zespolonej przestrzeni :math:`\,C(C)\,,`
   bazą może być każdy 1-elementowy układ zawierający różną od zera liczbę rzeczywistą
   (odpowiednio: zespoloną), :math:`\,` np. :math:`\ \mathcal{B} = (1)\,.\,`
   Wobec tego :math:`\ \text{dim}\,R(R) = \text{dim}\,C(C) = \,1\,.`
   Natomiast w przestrzeni :math:`\,C(R)\,` liczb zespolonych  nad ciałem
   liczb rzeczywistych bazą może być np. układ :math:`\ \mathcal{B} = (1,\,i)\,,\ `
   z czego wynika, że :math:`\ \text{dim}\,C(R) = 2\,.` 

1. W przestrzeni :math:`\,V\,` wektorów geometrycznych zaczepionych
   w punkcie :math:`\,\boldsymbol{O}\,` bazą jest każdy układ trzech wektorów niekomplanarnych.
   Najczęściej używana jest baza ortonormalna w postaci trójki wzajemnie prostopadłych wektorów
   jednostkowych: :math:`\ \mathcal{B} = (\vec{e}_1,\vec{e}_2,\vec{e}_3)\,.`
   A zatem również w algebraicznym sensie fizyczna przestrzeń jest trójwymiarowa:
   :math:`\ \text{dim}\,V = 3\,.`

2. W przestrzeni :math:`\,K^n\,` złożonej z :math:`\,n`-elementowych
   wektorów kolumnowych o wyrazach z ciała :math:`\,K\,`
   najwygodniejsza jest *baza kanoniczna*
   :math:`\ \mathcal{E}\,=\,(e_1,e_2,\ldots,e_n)\,,\ ` gdzie

   .. math::
   
      e_1\ =\ \left[\begin{array}{c} 1 \\ 0 \\ \cdots \\ 0 \end{array}\right]\,,\quad
      e_2\ =\ \left[\begin{array}{c} 0 \\ 1 \\ \cdots \\ 0 \end{array}\right]\,,\quad
      \ldots,\quad
      e_n\ =\ \left[\begin{array}{c} 0 \\ 0 \\ \cdots \\ 1 \end{array}\right]\,.

   Wynika stąd, że :math:`\ \text{dim}\,K^n = n\,,\ \ n=1,2,\ldots`

3. W podprzestrzeni 
   :math:`\ \ W_p\ =\ \left\{\ \,\left[\begin{array}{c}
   x_1 \\ \ldots \\ x_p \\ 0 \\ \ldots \\ 0
   \end{array}\right]\ :\quad x_i\in K\,,\ \ i = 1,2,\ldots,p.\;\right\}\ \ <\ \ K^n\,,\ `

   gdzie :math:`\ 1 \leq p < n\,,\ `
   bazą będzie układ :math:`\ \mathcal{E}_p = (e_1,e_2,\ldots,e_p)\,,\ `
   skąd :math:`\ \text{dim}\,W_p = p.`







 





























