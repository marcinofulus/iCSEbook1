
Formulation of the Eigenproblem
-------------------------------

.. admonition:: Definicja.
   
   Niech :math:`\,F\ ` będzie operatorem liniowym określonym na przestrzeni wektorowej 
   :math:`\,V(K)\,.\ \,`
   Jeżeli dla pewnego wektora :math:`\,v\in V\!\smallsetminus\!\{\theta\}\ ` 
   i :math:`\,` pewnej liczby :math:`\,\lambda\in K\ ` zachodzi równość
   
   .. math::
      :label: eigen_eq
      
      Fv=\lambda\, v\,,
   
   to :math:`\,\lambda\ ` jest *wartością własną* operatora :math:`\,F,\ `
   a :math:`\ \,v\,` - :math:`\,` *wektorem własnym* operatora :math:`\,F\ `
   należącym do wartości własnej :math:`\,\lambda\ `
   (wektorem własnym dla wartości :math:`\,\lambda`).

   Wzór :eq:`eigen_eq` przedstawia :math:`\,` *równanie własne* :math:`\,` (*problem własny*) 
   :math:`\,` operatora liniowego :math:`\,F\,.` 

**Uwagi i komentarze.**

* Wektor zerowy :math:`\,\theta\ ` jest z założenia wykluczony ze zbioru wektorów własnych,
  chociaż spełnia warunek :eq:`eigen_eq` z dowolną wartością :math:`\,\lambda.\ `
  Natomiast wartość własna :math:`\,\lambda\ ` może być równa :math:`\,0.\ `
  Jeżeli :math:`\,0\ ` jest wartością własną operatora :math:`\,F,\ `
  to zbiór wszystkich wektorów własnych dla tej wartości, uzupełniony wektorem zerowym,
  jest jądrem operatora :math:`\,F.`
  
  .. W takim wypadku zbiór wszystkich wektorów własnych dla tej wartości, uzupełniony wektorem  
     zerowym, jest jądrem operatora :math:`\,F.`
  
  .. Zbiór wektorów własnych operatora :math:`\,F\ ` należących do wartości :math:`\,0,\ `
     uzupełniony wektorem zerowym, jest jądrem operatora :math:`\,F.`
  
  .. Jeżeli :math:`\,v\ ` jest wektorem własnym operatora :math:`\,F,\ `
  
* Działanie operatora :math:`\,F\ ` na jego wektor własny :math:`\,v\ `
  sprowadza się do pomnożenia go przez liczbę.
  Gdy :math:`\,V\ ` jest przestrzenią wektorów geometrycznych, oznacza to 
  że operator :math:`\,F\ ` działając na wektor :math:`\,v\ `
  nie zmienia jego kierunku (może zmienić długość lub zwrot).

* W mechanice kwantowej wielkości fizyczne mierzalne w układzie kwantowym (obserwable)
  są reprezentowane przez hermitowskie operatory liniowe określone na unitarnej 
  przestrzeni stanów układu. Jeżeli operator :math:`\,F\ ` przedstawia obserwablę
  :math:`\,\mathcal{F},\ ` to jego wartości własne są możliwymi wynikami pomiaru 
  tej obserwabli. Hermitowskość operatora :math:`\,F\ ` gwarantuje, że tak obliczone 
  wyniki pomiaru są liczbami rzeczywistymi.

Rozwiązanie problemu własnego :eq:`eigen_eq` operatora :math:`\,F\ `
polega na wyznaczeniu wszystkich możliwych wartości własnych :math:`\,\lambda\ `
oraz odpowiednich wektorów własnych :math:`\,v\ ` dla tych wartości.

Wprowadźmy bazę :math:`\,\mathcal{B}\ ` w :math:`\,n`-wymiarowej przestrzeni :math:`\,V.\ `
Wtedy operatorowi :math:`\,F\ ` odpowiada macierz 
:math:`\,M_{\mathcal{B}}(F)=\boldsymbol{A}=[\alpha_{ij}]_{n\times n}\in M_n(K)\,,\ `
a wektorowi :math:`\,v\ ` - :math:`\,` kolumna jego współrzędnych 
w bazie :math:`\,\mathcal{B}:\ \ I_{\mathcal{B}}(v)=\boldsymbol{x}\in K^n.\ `
Równanie własne można przekształcić następująco:

.. math::
   :nowrap:
   
   \begin{eqnarray*}   
   Fv & = & \lambda\,v\,, \\
   I_{\mathcal{B}}\,(Fv) & = & I_{\mathcal{B}}\,(\lambda\,v)\,, \\
   M_{\mathcal{B}}(F)\cdot I_{\mathcal{B}}(v) & = & \lambda\cdot I_{\mathcal{B}}(v)\,; \\ \\
   \boldsymbol{A}\,\boldsymbol{x} & = & \lambda\:\boldsymbol{x}\,, \\
   \boldsymbol{A}\,\boldsymbol{x} & = & \lambda\ \boldsymbol{I}_n\,\boldsymbol{x}\,, \\
   (\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ \boldsymbol{x} & = & \boldsymbol{0}\,.
   \qquad\qquad(\clubsuit)
   \end{eqnarray*}

Ostatnie równanie, w którym :math:`\,\boldsymbol{I}_n\,` 
jest macierzą jednostkową stopnia :math:`\,n,\ ` przedstawia jednorodny problem liniowy o macierzy 
:math:`\ \boldsymbol{A}-\lambda\,\boldsymbol{I}_n\,.\ `
Z teorii układów równań liniowych wiadomo, że niezerowe rozwiązania :math:`\,\boldsymbol{x}\,`
(a takie nas tutaj interesują) istnieją wtedy i tylko wtedy, gdy

.. math::
   :label: char_eqn_1
   
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ \ =\ \ 
   \left|
   \begin{array}{cccc}
   \alpha_{11}-\lambda & \alpha_{12} & \dots & \alpha_{1n} \\
   \alpha_{21} & \alpha_{22}-\lambda & \dots & \alpha_{2n} \\
   \dots & \dots & \dots & \dots \\
   \alpha_{n1} & \alpha_{n2} & \dots & \alpha_{nn}-\lambda 
   \end{array}
   \right|\ \ =\ \ 0\,.

.. Wielomian :math:`\,n`-tego stopnia 
   :math:`\,w(\lambda)=\det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ `
   jest *wielomianem charakterystycznym* macierzy :math:`\,\boldsymbol{A}\,.\ `
   Równanie :math:`\,w(\lambda)=\det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)=0\ `
   jest *równaniem charakterystycznym*, a jego rozwiązania nazywają się
   *pierwiastkami charakterystycznymi* tej macierzy.

.. admonition:: Definicja.
   
   Niech :math:`\,\boldsymbol{A},\ \boldsymbol{I}_n\,\in\,M_n(K)\,,\ `
   gdzie :math:`\,\boldsymbol{I}_n\ ` jest macierzą jednostkową.
   Wielomian :math:`\,n`-tego stopnia 
   :math:`\,w(\lambda)=\det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ `
   jest *wielomianem charakterystycznym* macierzy :math:`\,\boldsymbol{A}\,.\ `
   Równanie :math:`\ w(\lambda)=0\ ` jest *równaniem charakterystycznym*, :math:`\,`
   a jego rozwiązania są :math:`\,` *pierwiastkami charakterystycznymi* 
   macierzy :math:`\,\boldsymbol{A}.`

Stwierdziliśmy, że rozwiązania :math:`\,v\neq\theta\ ` problemu własnego :eq:`eigen_eq`
istnieją wtedy i tylko wtedy, gdy :math:`\,\lambda\ ` jest pierwiastkiem charakterystycznym
macierzy operatora :math:`\,F\ ` w pewnej bazie :math:`\,\mathcal{B}\,.` 

W różnych bazach operator :math:`\,F\ ` jest jednak reprezentowany przez różne macierze,
nasuwa się więc pytanie, czy dopuszczalne wartości :math:`\,\lambda\ ` 
nie zależą od wybranej bazy. 

Okazuje się, że chociaż macierz operatora liniowego zmienia się przy przejściu
do innej bazy, to wielomian charakterystyczny i jego pierwiastki
od wyboru bazy nie zależą.

Rzeczywiście, niech :math:`\,\mathcal{B}'\ ` będzie inną bazą przestrzeni 
:math:`\,V\ \ \text{i}\ \ \ \text{niech}\ M_{\mathcal{B}'}(F)=\boldsymbol{A}'\,.` :math:`\\`
Wtedy :math:`\,\boldsymbol{A}'=\boldsymbol{S}^{-1}\boldsymbol{A}\,\boldsymbol{S}\,,\ `
gdzie :math:`\,\boldsymbol{S}\ ` jest macierzą przejścia od bazy :math:`\,\mathcal{B}\ `
do bazy :math:`\,\mathcal{B}'\,.\ ` Ponadto

.. math::

   \begin{array}{rll}   
   \det\,(\boldsymbol{A}'-\lambda\,\boldsymbol{I}_n)
   & =\quad\det\,(\boldsymbol{S}^{-1}\boldsymbol{A}\,\boldsymbol{S}-
   \lambda\ \boldsymbol{S}^{-1}\boldsymbol{I}_n\,\boldsymbol{S})\ \ = & 
   \\ \\
   & =\quad\det\,\left[\,\boldsymbol{S}^{-1}\,
   (\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ 
   \boldsymbol{S}\,\right]\ \ = &
   \\ \\
   & =\quad\det\,(\boldsymbol{S}^{-1})\,\cdot\,
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\,\cdot\,
   \det\,\boldsymbol{S}\ \ = &
   \\ \\
   & =\quad(\det\,\boldsymbol{S})^{-1}\,\cdot\,
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\,\cdot\,
   \det\,\boldsymbol{S}\ \ = &
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\,.
   \end{array}

Z dotychczasowych rozważań wynika 

.. .. admonition:: Wniosek.
   
   Wartości własne operatora liniowego :math:`\,F\in\text{End}(V)\,,\ `
   gdzie :math:`\,V\ ` jest skończenie wymiarową przestrzenią wektorową
   nad ciałem :math:`\,K\,,\ ` są pierwiastkami charakterystycznymi 
   macierzy tego operatora w dowolnej bazie przestrzeni :math:`\,V.`

.. admonition:: Wniosek.
   
   Jeżeli :math:`\,V\ ` jest skończenie wymiarową przestrzenią wektorową,
   to wartości własne operatora liniowego :math:`\,F\in\text{End}(V)\ ` 
   są pierwiastkami charakterystycznymi macierzy tego operatora 
   w dowolnej bazie przestrzeni :math:`\,V\,.`

Kwestię rozwiązalności problemu własnego porusza 

.. admonition:: Twierdzenie 1.
   
   Każdy operator liniowy określony na skończenie wymiarowej 
   zespolonej przestrzeni wektorowej ma wektory własne.

Wynika to z *zasadniczego twierdzenia algebry*, według którego
każdy wielomian dodatniego stopnia o współczynnikach zespolonych 
ma pierwiastek w ciele liczb zespolonych. 

Jeżeli więc :math:`\,K=C\,,\ `
to równanie charakterystyczne :eq:`char_eqn_1` ma pierwiastek zespolony :math:`\,\lambda_0\,,\ `
który podstawiony do równania (:math:`\clubsuit`) wyznacza odpowiedni wektor własny
(faktycznie: co najmniej 1-wymiarową podprzestrzeń wektorów własnych).

Twierdzenie 1. nie stosuje się do przestrzeni rzeczywistych. Dla przykładu rozważmy
operator obrotu o kąt :math:`\,\phi\neq k\pi,\ k\in Z\,,\ `
określony w (rzeczywistej) przestrzeni wektorów geometrycznych 
zaczepionych w początku układu współrzędnych płaszczyzny. 
Operator ten zmienia kierunek każdego niezerowego wektora, nie ma więc wektorów własnych.

Gdy :math:`\,V\ ` jest :math:`\,n`-wymiarową przestrzenią zespoloną,
to wielomian charakterystyczny :math:`\,w(\lambda)\ ` 
operatora liniowego :math:`\,F\in\text{End}(V)\ `
ma :math:`\,n\ ` (niekoniecznie różnych) pierwiastków:

.. math::
   :label: prod
   
   w(\lambda)\,=\,\alpha_0\,(\lambda-\lambda_1)^{k_1}\,(\lambda-\lambda_2)^{k_2}\,\ldots\,
                  (\lambda-\lambda_r)^{k_r}\,,\qquad
   k_1+\,k_2\,+\ldots\,+k_r=\,n

(w przypadku przestrzeni rzeczywistej: :math:`\,K=R,\ ` 
w rozkładzie :eq:`prod` mogą wystąpić trójmiany kwadratowe
:math:`\,\lambda^2+p\,\lambda+q\ ` z ujemnym wyróżnikiem :math:`\,\Delta`).
Wykładnik :math:`\,k_i\ ` jest krotnością pierwiastka :math:`\,\lambda_i\ `
wielomianu :math:`\,w(\lambda)\ ` i :math:`\,` jednocześnie *krotnością algebraiczną* 
wartości własnej :math:`\,\lambda_i\ ` operatora :math:`\,F\,.`
Natomiast *krotnością geometryczną* (*krotnością zwyrodnienia*) 
wartości własnej :math:`\,\lambda_i\ ` jest z definicji 
liczba liniowo niezależnych wektorów własnych należących do tej wartości.

Zauważmy, że jeżeli 
:math:`\ \ Fv_1=\lambda\,v_1\,,\ \ Fv_2=\lambda\,v_2\,,\quad 
v_1,v_2\in V\!\smallsetminus\!\{\theta\}\,,\ \,` 
to dla :math:`\ \ \alpha_1,\alpha_2\in K:`

.. math::

   \begin{array}{ccccc}
   F\,(\alpha_1\,v_1+\alpha_2\,v_2) & = & \alpha_1\,Fv_1+\alpha_2\,Fv_2 & = & \\
                               & = & \alpha_1\,\lambda\,v_1+\alpha_2\,\lambda\,v_2 & = & 
   \lambda\ (\alpha_1\,v_1+\alpha_2\,v_2)\,.
   \end{array}

Tak więc każda (różna od wektora zerowego) kombinacja liniowa wektorów własnych :math:`\\` 
należących do wartości własnej :math:`\,\lambda\ ` jest również wektorem własnym dla tej samej wartości.

Odwołując się do kryterium dla podprzestrzeni, można zapisać

.. admonition:: Wniosek.
   
   Zbiór wszystkich wektorów własnych, należących do danej wartości własnej :math:`\,\lambda\ `
   :math:`\\`
   operatora liniowego :math:`\,F\in\text{End}(V),\,`  uzupełniony wektorem zerowym 
   :math:`\,\theta,\,` jest :math:`\\`
   przestrzenią wektorową (podprzestrzenią przestrzeni :math:`\,V`)
   o wymiarze równym :math:`\\`
   krotności geometrycznej wartości własnej :math:`\,\lambda.`

Praktyczne rozwiązanie problemu własnego operatora liniowego :math:`\,F\ ` działającego :math:`\\`
w :math:`\,n`-wymiarowej przestrzeni wektorowej :math:`\,V(K)\ `
składa się z trzech etapów:

0. Konstrukcja macierzy 
   :math:`\,M_{\mathcal{B}}(F)\equiv\boldsymbol{A}=[\alpha_{ij}]_{n\times n}\in M_n(K)\ `
   operatora :math:`\,F\ ` w dowolnie wybranej bazie :math:`\,\mathcal{B}\ ` 
   przestrzeni :math:`\,V\,.`

1. Wyliczenie wartości własnych :math:`\,\lambda\ ` operatora :math:`\,F\ ` jako pierwiastków 
   równania charakterystycznego :eq:`char_eqn_1` macierzy :math:`\,\boldsymbol{A}\,`
   i określenie ich krotności algebraicznych.

   .. macierzy :math:`\,\boldsymbol{A}\,.`

2. Podstawienie każdej wartości własnej :math:`\,\lambda\ ` do równania (:math:`\clubsuit`),
   wyliczenie odpowiednich wektorów własnych (wyznaczonych poprzez ich współrzędne 
   w bazie :math:`\,\mathcal{B}`) i określenie jej krotności geometrycznej. 


























