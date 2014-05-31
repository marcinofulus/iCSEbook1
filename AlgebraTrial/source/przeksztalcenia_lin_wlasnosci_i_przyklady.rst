
Własności i przykłady
---------------------

Ważne własności przekształceń liniowych przedstawia

.. .. admonition:: Twierdzenie 3. :math:`\\`

   Niech :math:`\ V\ \,\text{i}\ \ W\ ` będą przestrzeniami wektorowymi nad ciałem :math:`\,K.\ `   
   Jeżeli odwzorowanie :math:`\ F:\,V\rightarrow W\ ` jest przekształceniem liniowym,  
   to obrazem wektora zerowego przestrzeni :math:`\ V\ ` jest wektor zerowy przestrzeni :math:`\ W:`
   
   .. math::
      
      F(\theta_V)\ =\ \theta_W\,.

.. admonition:: Twierdzenie 3. 

   | Niech :math:`\ V\ \,\text{i}\ \ W\ ` będą przestrzeniami wektorowymi nad ciałem :math:`\,K.\ `   
   | Jeżeli odwzorowanie :math:`\ F:\,V\rightarrow W\ ` jest przekształceniem liniowym, :math:`\,` 
     to 

   1. :math:`\ F(\theta_V)\ =\ \theta_W\,;`

   2.  :math:`\ F(-\,v)\ =\ -\ F(v)\,,\qquad v\in V\,;`

   3. :math:`\ F(v_1-\,v_2)\ =\ F(v_1)\,-\,F(v_2)\,,\qquad v_1,\,v_2\in V\,.`

.. Rzeczywiście, 
   :math:`\ \ F(\theta_V)\ =\ F(0\cdot\theta_V)\ =\ 0\cdot F(\theta_V)\ =\ \theta_W\,.`

   Dla dowodu wystarczy zauważyć, że :math:`\ \ \theta_V=0\cdot\theta_V\ \ `
   oraz że :math:`\ \ -\ v\,=\,(-1)\,v,\ \ v\in V.`

**Dowód** :math:`\,` opiera się na związkach: 

.. math::
   
   \begin{array}{rcl}
   \theta_V\,=\ 0\cdot\theta_V\,, & \qquad & 0\cdot w\ =\ \theta_W\,, \\
   -\ v\ =\ (-1)\cdot v\,, & \qquad & (-1)\cdot w\ =\ -\ w\,,
   \end{array}
   \qquad\quad v\in V,\ \ w\in W.

Korzystając z liniowości przekształcenia :math:`\ F\ ` otrzymujemy:
    
1. :math:`\ F(\theta_V)\ =\ F(0\cdot\theta_V)\ =\ 0\cdot F(\theta_V)\ =\ \theta_W\,;`

2. :math:`\ F(-\,v)\ =\ F\,[\,(-1)\cdot v\,]\ =\ (-1)\cdot F(v)\ =\ -\ F(v)\,;`

3. :math:`\ F(v_1-v_2)\ =\ F\,[\,v_1+(-1)\cdot v_2\,]\ =\ 
   F(v_1)+(-1)\cdot F(v_2)\ =\ F(v_1)-F(v_2)\,.`

:math:`\;` 

Izomorfizmy przestrzeni wektorowych, jako bijekcje, są odwzorowaniami odwracalnymi. :math:`\\` 
W związku z tym warto zauważyć, że odwrotność izomorfizmu jest również izomorfizmem. 

.. Dokładnie formułuje to

.. admonition:: Twierdzenie 4.
   
   Niech :math:`\ V\ \,\text{i}\ \;W\ \,` będą przestrzeniami wektorowymi nad ciałem :math:`\,K.`
   Jeżeli przekształcenie liniowe :math:`\ F:\,V\rightarrow W\ ` jest izomorfizmem, 
   to odwzorowanie odwrotne :math:`\ F^{-1}:\ W\rightarrow V\ ` jest też przekształceniem 
   liniowym, a więc jest izomorfizmem.

**Dowód.** :math:`\,` Trzeba wykazać addytywność i jednorodność odwzorowania :math:`\,F^{-1}.`

.. Z definicji odwzorowania odwrotnego i z liniowości przekształcenia :math:`\,F,\ ` otrzymujemy:

Biorąc pod uwagę liniowość i różnowartościowość przekształcenia :math:`\,F,\ ` otrzymujemy:

.. math::
   
   F[F^{-1}(w_1+w_2)]=w_1+w_2=F[F^{-1}(w_1)]+F[F^{-1}(w_2)]=F[F^{-1}(w_1)+F^{-1}(w_2)]\,,

   \text{wobec czego}\qquad F^{-1}(w_1+w_2)\ =\ F^{-1}(w_1)+F^{-1}(w_2)\,;

   \text{oraz}\qquad F[F^{-1}(a\,w)]=a\,w=a\,F[F^{-1}(w)]=F[a\,F^{-1}(w)]\,,

   \text{ skąd}\qquad F^{-1}(a\,w)=a\,F^{-1}(w)\,,\qquad w_1,w_2,w\in W,\ \ a\in K.

.. admonition:: Wniosek.
   
   Zbiór :math:`\ \text{Aut}(V)\ ` jest grupą ze względu na składanie odwzorowań.

Istotnie, złożenie dwóch automorfizmów przestrzeni :math:`\ V\ ` jest automorfizmem.
Składanie automorfizmów, jako składanie odwzorowań, jest łączne.
Elementem neutralnym jest automorfizm identycznościowy :math:`\,I(v)=v,\ \ v\in V.\ `
Wreszcie, na mocy Twierdzenia 2., odwrotność automorfizmu jest też automorfizmem.
Grupa :math:`\ \text{Aut}(V)\ ` jest w ogólności grupą nieprzemienną. 

:math:`\,`

Przyjmując w dalszym ciągu, że :math:`\,V\ \,\text{i}\ \ W\ ` są przestrzeniami wektorowymi
nad ciałem :math:`\,K,\ ` załóżmy, że :math:`\ \text{dim}\,V=n\ ` oraz że układ
:math:`\,\mathcal{B}=(v_1,v_2,\dots,v_n)\ ` jest bazą przestrzeni :math:`\,V.\ `
Wtedy każdy wektor :math:`\,v\in V\ ` można przedstawić w postaci kombinacji liniowej wektorów bazy :math:`\,\mathcal{B}:`

.. math::
   
   v\ =\ a_1\,v_1\,+\;a_2\,v_2\,+\ \dots\ +\;a_n\,v_n\,.

Jeżeli :math:`\,F:\,V\rightarrow W\,` jest przekształceniem liniowym, 
to obraz wektora :math:`\,v\ ` jest dany przez:

.. math::
   :nowrap:

   \begin{eqnarray*}
   F(v) & = & F(a_1\,v_1\,+\;a_2\,v_2\,+\ \dots\ +\;a_n\,v_n) \\
        & = & a_1\,Fv_1\,+\;a_2\,Fv_2\,+\ \dots\ +\;a_n\,Fv_n\,.
   \end{eqnarray*}

Liniowość odwzorowania określonego na :math:`\,n`-wymiarowej przestrzeni :math:`\,V\,`
sprawia, że do wyznaczenia obrazu każdego spośród (na ogół nieskończenie wielu) wektorów
:math:`\,v\in V\ ` wystarczy znajomość obrazów tylko :math:`\,n\ ` wektorów 
(pod warunkiem, że są to wektory liniowo niezależne). 
Uzupełnieniem tej uwagi jest 

.. Dokładniej ujmuje to

.. admonition:: Twierdzenie 5. :math:`\\`
   
   Niech :math:`\,V\ \,\text{i}\ \;W\ ` będą dwiema przestrzeniami wektorowymi 
   nad ciałem :math:`\,K,\ ` przy czym :math:`\,V\ ` niech będzie 
   przestrzenią skończenie wymiarową z bazą :math:`\,\mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n).\ `
   Jeżeli :math:`\,F,\,G\in \text{Hom}(V,W),\ ` to
   
   .. math::
      
      F\,=\,G\quad\Leftrightarrow\quad 
      F\,v_i\,=\,G\,v_i\quad\text{dla każdego}\ \,i\in\{1,2,\dots,n\}\,.

**Dowód.** :math:`\,` Wynikanie :math:`\ \Rightarrow\ ` jest oczywiste. :math:`\,`
Udowodnimy więc tylko implikację :math:`\ \Leftarrow.`

Niech :math:`\ \displaystyle\,v\,=\,\sum_{i\,=\,1}^n\ a_i\,v_i\ ` 
będzie dowolnym wektorem przestrzeni :math:`\,V.\ ` Wtedy

.. math::
   
   F(v)\ =\ F\left(\,\sum_{i\,=\,1}^n\ a_i\,v_i\right)\ =\ \sum_{i\,=\,1}^n\ a_i\,Fv_i\ =\ 
   \sum_{i\,=\,1}^n\ a_i\,Gv_i\ =\ G\left(\,\sum_{i\,=\,1}^n\ a_i\,v_i\right)\ =\ G(v)\,.

.. admonition:: Wniosek.
   
   Przekształcenie liniowe skończenie wymiarowej przestrzeni :math:`\,V\ ` 
   w dowolną przestrzeń :math:`\,W\,` (obie nad tym samym ciałem :math:`\,K`)
   jest dane jednoznacznie przez określenie jego wartości na wektorach dowolnej bazy
   przestrzeni :math:`\,V.`

Omówimy teraz kilka przykładów przekształceń liniowych.

**Przykład 0.** :math:`\,` Niech :math:`\,V\ \,\text{i}\ \ W\ ` będą dowolnymi przestrzeniami wektorowymi nad ciałem :math:`\,K.\ ` Następujące odwzorowania są przekształceniami liniowymi:

a. odwzorowanie zerowe :math:`\ \,\Theta:\,V\rightarrow W:\qquad 
   \Theta(v)\ =\ \theta_W\,,\quad v\in V\,;`

b. odwzorowanie identycznościowe :math:`\ \,I:\,V\rightarrow V:\qquad
   I(v)\ =\ v\,,\quad v\in V\,;`

c. odwzorowanie :math:`\ \,F_a:\,V\rightarrow V:\qquad
   F_a(v)\ =\ a\,v\,,\quad a\in K,\ \ v\in V\,.`

Przekształcenia :math:`\,I\ \,\text{oraz}\ \ F_a\ ` (przy :math:`\,a\ne 0`) :math:`\,`
są automorfizmami przestrzeni :math:`\,V.` 

**Przykład 1.** :math:`\,` 
Następujące odwzorowania :math:`\ \,F:\,K^n\rightarrow K^m\ ` są przekształceniami liniowymi:

a. :math:`\quad F
   \left[\begin{array}{l}
   x_1 \\ \dots \\ x_m \\ x_{m+1} \\ \dots \\ x_n
   \end{array}\right]
   \ =\ 
   \left[\begin{array}{l}
   x_1 \\ \dots \\ x_m
   \end{array}\right]\,,\qquad (n\geq m).`

   W szczególności, przy :math:`\,m=1\ ` przekształcenie :math:`\ F\ ` jest funkcjonałem liniowym.  

b. :math:`\quad F(\boldsymbol{x})\ =\ \boldsymbol{A}\,\boldsymbol{x}\,,\qquad`
   gdzie :math:`\ \boldsymbol{A}\in M_{m\times n}(K)\ ` jest ustaloną macierzą, 
   :math:`\ \,\boldsymbol{x}\in K^n.`

**Przykład 2.** :math:`\,` Operacja transponowania macierzy

.. math::
   
   T(\boldsymbol{A})\ =\ \boldsymbol{A}^{\,T}\,,\qquad\boldsymbol{A}\in M_{m\times n}(K)

wyznacza przekształcenie liniowe :math:`\ T:\,M_{m\times n}(K)\rightarrow M_{n\times m}(K).`
       
**Przykład 3.** :math:`\,` Niech będą dane macierze 
:math:`\ \boldsymbol{B}\in M_{k\times m}(K)\ \,\text{i}\ \ \boldsymbol{C}\in M_{n\times l}(K).\ `
Z własności mnożenia macierzowego wynika, że odwzorowanie 
:math:`\ F:\,M_{m\times n}(K)\rightarrow M_{k\times l}(K)\ ` dane przez

.. math::
   
   F(\boldsymbol{A})\ =\ \boldsymbol{B}\boldsymbol{A}\boldsymbol{C}\,,\qquad
   \boldsymbol{A}\in M_{m\times n}(K)\,,

jest przekształceniem liniowym.

**Przykład 4.** :math:`\,` Niech :math:`\ V\ ` będzie trójwymiarową przestrzenią 
wektorów geometrycznych, :math:`\ \vec{a}\in V.`

a. Odwzorowanie :math:`\ F:\,V\rightarrow V\ ` wyrażające się przez iloczyn wektorowy
   
   .. math::
   
      F(\vec{r})\ =\ \vec{a}\times\vec{r}\,,\qquad\vec{r}\in V\,,
   
   jest (niesurjektywnym) endomorfizmem przestrzeni :math:`\ V.`

b. Odwzorowanie :math:`\ f:\,V\rightarrow R\ ` dane przez iloczyn skalarny

   .. math::
   
      F(\vec{r})\ =\ \vec{a}\cdot\vec{r}\,,\qquad\vec{r}\in V\,,
   
   jest funkcjonałem liniowym określonym na przestrzeni :math:`\ V.`

Natomiast dla ustalonej liczby :math:`\,0\ne a\in R\ ` 
przekształcenie :math:`\ F:\,V\rightarrow V\ ` dane wzorem

.. math::
   
   F(\vec{r})\ =\ a\,\vec{r}\,,\qquad\vec{r}\in V\,,
   
jest automorfizmem przestrzeni :math:`\ V.`

**Przykład 5.** :math:`\,` 
Odwzorowanie :math:`\,f:\,K^n\rightarrow K\ ` zadane przez 

.. math::
   
   f\left[\begin{array}{l} x_1 \\ x_2 \\ \dots \\ x_n \end{array}\right]\ \,=\ \,
   x_1 + x_2 + \ \dots\ + x_n

jest przykładem funkcjonału liniowego.

**Przykład 6.** :math:`\,` 
Definiujemy :math:`\,` *ślad* (ang. trace) :math:`\,` kwadratowej macierzy
:math:`\ \boldsymbol{A}=[a_{ij}]_{n\times n}\in M_n(K)\ ` jako sumę 
jej elementów diagonalnych:

.. math::
   
   \text{tr}\,\boldsymbol{A}\ \,:\,=\ \,\sum_{i\,=\,1}^n\ a_{ii}\,.

Z własności działań na macierzach wynika, że odwzorowanie
:math:`\ \text{tr}:\,M_n(K)\rightarrow K\ \,` jest funkcjonałem liniowym
określonym na algebrze macierzy kwadratowych stopnia :math:`\,n\,` nad ciałem :math:`\,K.`

**Przykład 7.** :math:`\,` Niech :math:`\,\mathcal{C}_{[\,0,1\,]}^{\,\infty}\ ` oznacza 
przestrzeń funkcji o wartościach rzeczywistych, określonych na odcinku :math:`\,[\,0,\,1\,]\ ` 
i posiadających pochodne dowolnego rzędu, z dodawaniem i mnożeniem przez liczby rzeczywiste.
Przekształcenie, przypisujące każdej funkcji jej pierwszą pochodną, :math:`\,` jest endomorfizmem
przestrzeni :math:`\,\mathcal{C}_{[\,0,1\,]}^{\,\infty}\,,\ ` bo operacja różniczkowania jest liniowa.
















   
