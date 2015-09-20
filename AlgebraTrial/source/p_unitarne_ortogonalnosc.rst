
Orthogonality of Vectors
------------------------

Przyjmujemy, że :math:`\,V\ ` jest przestrzenią unitarną bądź euklidesową.

.. Niech :math:`\,x,\,y\in V. ` 

Jeżeli iloczyn skalarny wektorów :math:`\,x,y\in V\ ` równa się zeru: 
:math:`\,\langle x,y\rangle=0\,,\ `
to mówimy, że wektory te są :math:`\,` *ortogonalne*. :math:`\,`
Ortogonalność jest więc uogólnieniem pojęcia prostopadłości wektorów geometrycznych.

Orthogonal Set of Vectors
~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Układ :math:`\ (x_1,x_2,\dots,x_r)\ ` parami ortogonalnych niezerowych 
   wektorów przestrzeni :math:`\,V:`
   
   .. math::
      
      x_i\neq \theta
      \qquad\text{oraz}\qquad
      \langle\,x_i,x_j\rangle=0\quad\text{dla}\quad i\neq j\,,\qquad i,j=1,2,\dots,r\,,

   nazywa się :math:`\,` *układem ortogonalnym*. :math:`\,` 
   Ortogonalny układ wektorów jednostkowych (czyli wektorów o normie :math:`\,1`) :math:`\,`
   jest :math:`\,` *układem ortonormalnym*.

A zatem iloczyn skalarny wektorów ortonormalnego układu :math:`\ (x_1,x_2,\dots,x_r)\ `
dany jest przez

.. math::
   
   \langle\,x_i,x_j\rangle=\delta_{ij}\,,\quad\text{gdzie}\quad\delta_{ij}\ \,=\ \,
   \left\{\ 
   \begin{array}{cc} 1 & \text{dla}\ \ i=j, \\ 0 & \text{dla}\ \ i\ne j; \end{array}
   \right.\quad
   i,j=1,2,\ldots,r\quad
   \text{(delta Kroneckera).}

Związek między ortogonalnością i liniową niezależnością układu wektorów przedstawia

.. admonition:: Twierdzenie 3.
   
   Każdy ortogonalny układ wektorów przestrzeni :math:`\,V\ ` jest liniowo niezależny.

**Dowód.** :math:`\,` Zakładamy, że układ :math:`\ (x_1,x_2,\dots,x_r)\ ` wektorów 
przestrzeni :math:`\,V\ ` jest ortogonalny:

.. math::
   :label: assumpt
   
   \langle\,x_i,x_i\rangle>0\,,\qquad\quad
   \langle\,x_i,x_j\rangle=0\quad\text{dla}\quad i\neq j\,,\qquad\quad i,j=1,2,\dots,r\,.

.. Dla wykazania liniowej niezależności tego układu przypuśćmy, że
   
   .. math::
   
   \alpha_1\,x_1\,+\;\alpha_2\,x_2\,+\,\dots\,+\,\alpha_r\,x_r\ =\ \theta\,.

Niech :math:`\quad\alpha_1\,x_1\,+\;\alpha_2\,x_2\,+\,\dots\,+\,\alpha_r\,x_r\ =\ \theta\,.`

Mnożąc tę równość skalarnie z lewej strony kolejno przez :math:`\ x_1,\;x_2,\,\dots,\,x_r\ \,`
i :math:`\,` korzystając z liniowości iloczynu skalarnego względem drugiego czynnika wektorowego, :math:`\,` otrzymujemy

.. .. math::
   
   \alpha_1\,\langle x_1,x_1\rangle\ +\ \alpha_2\,\langle x_1,x_2\rangle\ +\ \ldots\ +\ \alpha_r\,\langle x_1,x_r\rangle\ =\ 0

   \alpha_1\,\langle x_2,x_1\rangle\ +\ \alpha_2\,\langle x_2,x_2\rangle\ +\ \ldots\ +\ \alpha_r\,\langle x_2,x_r\rangle\ =\ 0 

   \dots\qquad\dots\qquad\dots\qquad\dots

   \alpha_1\,\langle x_r,x_1\rangle\ +\ \alpha_2\,\langle x_r,x_2\rangle\ +\ \ldots\ +\ \alpha_r\,\langle x_r,x_r\rangle\ =\ 0  

.. math::
   :nowrap:
   
   \begin{alignat*}{5}
   \alpha_1\,\langle x_1,x_1\rangle & {\,} + {\ } & \alpha_2\,\langle x_1,x_2\rangle & {\,} + {\ } & \ldots   & {\ \ } + {\ } & \alpha_r\,\langle x_1,x_r\rangle & {\ } = {\ \,} & 0 \\
   \alpha_1\,\langle x_2,x_1\rangle & {\,} + {\ } & \alpha_2\,\langle x_2,x_2\rangle & {\,} + {\ } & \ldots   & {\ \ } + {\ } & \alpha_r\,\langle x_2,x_r\rangle & {\ } = {\ \,} & 0 \\
   \dots\quad\ \                    &             & \dots\quad\ \                    &             & \ \ldots &               & \dots\quad\ \                    &               &   \\
   \alpha_1\,\langle x_r,x_1\rangle & {\,} + {\ } & \alpha_2\,\langle x_r,x_2\rangle & {\,} + {\ } & \ldots   & {\ \ } + {\ } & \alpha_r\,\langle x_r,x_r\rangle & {\ } = {\ \,} & 0 
   \end{alignat*}

Z warunków :eq:`assumpt` wynika, że
:math:`\quad\alpha_1\,=\;\alpha_2\,=\;\dots\;=\,\alpha_r\ =\ 0\,.`

Zachodzi więc implikacja

.. math::
   
   \alpha_1\,x_1+\,\alpha_2\,x_2+\ldots+\,\alpha_r\,x_r\ =\ \theta
   \qquad\Rightarrow\qquad   
   \alpha_1=\,\alpha_2=\ldots=\,\alpha_r\,=\,0\,,

która oznacza liniową niezależność wektorów :math:`\ x_1,\,x_2,\,\dots,\,x_r\,.`

.. admonition:: Wniosek.
   
   W :math:`\,n`-wymiarowej przestrzeni unitarnej bądź euklidesowej:

   1. każdy ortogonalny układ :math:`\,n\ ` wektorów jest bazą ;

   2. układ ortogonalny nie może zawierać więcej niż :math:`\,n\ ` wektorów.

Orthonormal Basis
~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Bazę skończenie wymiarowej przestrzeni :math:`\,V,\ ` której wektory
   tworzą układ ortogonalny (ortonormalny), nazywamy *bazą ortogonalną*
   (odpowiednio *ortonormalną*).

.. **Zależności w bazie ortonormalnej.**

Załóżmy, że baza :math:`\,\mathcal{B}=(u_1,u_2,\dots,u_n)\ ` przestrzeni :math:`\,V\ `
jest ortonormalna:

.. math::
   
   \langle\,u_i,u_j\rangle\,=\,\delta_{ij}\,,\qquad i,j=1,2,\dots,n.

1. Niech :math:`\ \,v\,=\,\displaystyle\sum_{k\,=\,1}^n\ \alpha_k\,u_k\,.\ \,` 
   Wtedy, z definicji iloczynu skalarnego:
   
   .. math::
      :label: ortho_1
   
      \begin{array}{l}
      \displaystyle   
      \langle\,u_i,v\,\rangle\ \,=\ \,
      \left\langle u_i\,,\ \sum_{k\,=\,1}^n\ \alpha_k\,u_k\right\rangle
             \ =\ \sum_{k\,=\,1}^n\ \alpha_k\,\langle u_i,u_k\rangle
             \ =\ \sum_{k\,=\,1}^n\ \alpha_k\,\delta_{ik}\ =\ \alpha_i\,;
      \\ \\
      \blacktriangleright\quad\alpha_i\ =\ \langle\,u_i,v\,\rangle\,,\qquad i=1,2,\dots,n.
      \end{array}

   :math:`\,i`-ta współrzędna wektora :math:`\,v\ ` w bazie :math:`\ \mathcal{B}\ `
   równa się iloczynowi skalarnemu :math:`\,i`-tego wektora bazy :math:`\,\mathcal{B}\ ` 
   przez wektor :math:`\,v\,,\quad i=1,2,\dots,n.`

2. Niech :math:`\quad v\,=\,\displaystyle\sum_{i\,=\,1}^n\ \alpha_i\,u_i\,,\ \ 
   w\,=\,\displaystyle\sum_{j\,=\,1}^n\ \beta_j\,u_j\,:\quad
   I_{\mathcal{B}}(v)=
   \left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\,,\ \ 
   I_{\mathcal{B}}(w)=
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\,.`

   .. math::

      \begin{array}{rcl}
      \langle\,v,w\,\rangle & = & 
      \left\langle\ \displaystyle\sum_{i\,=\,1}^n\ \alpha_i\,u_i\,,
      \ \displaystyle\sum_{j\,=\,1}^n\ \beta_j\,u_j\right\rangle\ \ =\ 
      \ \displaystyle\sum_{i,j\,=\,1}^n\ \alpha_i^*\,\beta_j\ \langle\,u_i,u_j\rangle\ \ =\ \ 
      \\ \\ 
      & = & \displaystyle\sum_{i,j\,=\,1}^n\ \alpha_i^*\ \beta_j\ \delta_{ij}\ \ =\ \ 
                  \displaystyle\sum_{i\,=\,1}^n\ \alpha_i^*\,\beta_i\ \ =\ \ 
                  \langle\,I_{\mathcal{B}}(v),\,I_{\mathcal{B}}(w)\,\rangle\,;
      \\ \\
      \blacktriangleright\quad\langle\,v,w\,\rangle & = & \langle\,I_{\mathcal{B}}(v),
                                                             \,I_{\mathcal{B}}(w)\,\rangle\,.
      \end{array}

   Iloczyn skalarny wektorów :math:`\,v\ \,\text{i}\ \ w\ ` 
   (w przestrzeni unitarnej albo euklidesowej :math:`\,V`) :math:`\,` 
   równa się iloczynowi skalarnemu :math:`\,` (w przestrzeni :math:`\,C^n` 
   albo odpowiednio :math:`\,R^n`) :math:`\,` wektorów kolumnowych przedstawiających współrzędne
   wektorów :math:`\,v\ \,\text{i}\ \ w\ ` w bazie :math:`\,\mathcal{B}.`

3. Niech :math:`\,F\in\text{End}(V)\,,\ \ M_{\mathcal{B}}(F)=[\,\varphi_{ij}\,]_{n\times n}\,.\ `
   Z definicji macierzy operatora liniowego :

   .. math::
      :label: ortho_3
      
      \begin{array}{rcl}
      \langle\,u_i,Fu_j\rangle & = & 
      \left\langle u_i\,,\,\displaystyle\sum_{k\,=\,1}^n\ \varphi_{kj}\,u_k\right\rangle\ \ = 
                       \ \ \displaystyle\sum_{k\,=\,1}^n\ \varphi_{kj}\,\langle u_i,u_k\rangle\ \ =
      \\ \\      
                 & = & \displaystyle\sum_{k\,=\,1}^n\ \varphi_{kj}\ \delta_{ik}\ \ =\ \ 
                       \displaystyle\sum_{k\,=\,1}^n\ \delta_{ik}\ \varphi_{kj}\ \ =
                       \ \ \varphi_{ij}\ ;
      \\ \\
      \blacktriangleright\quad\varphi_{ij} & = & \langle\,u_i,Fu_j\rangle\,,\qquad i,j=1,2,\dots,n.
      \end{array}

   Element :math:`\,\varphi_{ij}\ ` macierzy operatora liniowego :math:`\,F\,` 
   w bazie :math:`\,\mathcal{B}\ ` równa się iloczynowi skalarnemu 
   :math:`\,i`-tego wektora bazy :math:`\,\mathcal{B}\ ` przez obraz :math:`\,` 
   (przy przekształceniu :math:`F`) :math:`\ \,j`-tego wektora tej bazy, 
   :math:`\ \ i,j=1,2,\dots,n.`

Warto zauważyć, że o ile w dowolnej bazie :math:`\,\mathcal{B}=(v_1,v_2,\dots,v_n)\ `
współrzędne :math:`\,\alpha_i\ ` wektora :math:`\,v\ ` oraz elementy :math:`\,\varphi_{ij}\ `
macierzy operatora :math:`\,F\ ` określone są w sposób uwikłany poprzez związki

.. math::
   
   v\,=\,\sum_{i\,=\,1}^n\ \alpha_i\,v_i\,,\qquad Fv_j\,=\,\sum_{i\,=\,1}^n\ \varphi_{ij}\,v_i\,,
   \quad j=1,2,\dots,n\,,

to w bazie ortonormalnej wielkości te dane są *explicite* 
przez wzory :eq:`ortho_1` :math:`\,` i :math:`\,` :eq:`ortho_3`.

Ponadto, z równania :eq:`ortho_1` wynika, że dowolny wektor :math:`\,v\in V\ ` można zapisać jako

.. math::
   :label: coord
   
   v\ \,=\ \,\sum_{i\;\,=\ \,1}^n\ \alpha_i\,u_i\ =\ \sum_{i\,=\,1}^n\ \langle u_i,v\rangle\;u_i\,.

.. admonition:: Definicja.
   
   Niech :math:`\,u,v\in V\,.\ `
   Jeżeli wektor :math:`\,u\ ` ma normę :math:`\,1:\ \ \|u\|=1\,,\ \\`
   to iloczyn skalarny :math:`\,\langle u,v\rangle\ ` nazywamy 
   *współrzędną wektora* :math:`\,v\ ` *na osi* :math:`\,` u.

Wzór :eq:`coord` stwierdza, że współrzędne wektora :math:`\,v\ ` w bazie ortonormalnej 
:math:`\,\mathcal{B}=(u_1,u_2,\dots,u_n)\ ` są jego współrzędnymi na osiach 
:math:`\,\text{u}_1,\,\text{u}_2,\,\dots,\,\text{u}_n\,.`

**Przykłady.**

1. W rzeczywistej trójwymiarowej przestrzeni wektorów geometrycznych bazą ortonormalną
   jest trójka wzajemnie prostopadłych wektorów jednostkowych 
   :math:`\,\mathcal{E}=(\vec{e}_1,\vec{e}_2,\vec{e}_3).\ ` Iloczyn skalarny wektorów 
   :math:`\,\vec{a}=\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2+\alpha_3\,\vec{e}_3\,,\ 
   \vec{b}=\beta_1\,\vec{e}_1+\beta_2\,\vec{e}_2+\beta_3\,\vec{e}_3\ ` wynosi
   
   .. math::
      
      \vec{a}\cdot\vec{b}\ =\ 
      (\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2+\alpha_3\,\vec{e}_3)\cdot
      (\beta_1\,\vec{e}_1+\beta_2\,\vec{e}_2+\beta_3\,\vec{e}_3)\ =\ 
      \alpha_1\,\beta_1\,+\,\alpha_2\,\beta_2\,+\,\alpha_3\,\beta_3\,.

2. W unitarnej przestrzeni :math:`\,C^n\ ` (a także w euklidesowej przestrzeni :math:`\,R^n`)
   przykładem bazy ortonormalnej jest baza kanoniczna :math:`\,\mathcal{E}=(e_1,e_2,\dots,e_n),\ `
   gdzie :math:`\,i`-ty wektor  równa się
   
   .. math::
      
      e_i\ =\ \left[\begin{array}{c}  0 \\ \dots \\       1       \\ \dots \\ 0  \end{array}\right]
                    \begin{array}{c} \; \\  \;   \\ \leftarrow\ i \\   \;  \\ \; \end{array}\,,
      \qquad i=1,2,\dots,n\,.
   

    
















        



               
 






























