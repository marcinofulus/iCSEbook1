
Problem własny w układach równań różniczkowych
----------------------------------------------

Rozwiązania liniowych układów równań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Zajmiemy się liniowym układem równań różniczkowych 1. rzędu o stałych współczynnikach:

.. .. math::
   :label: set_diff
   
   \dot{x}_1\ =\ a_{11}\,x_1\,+\,a_{12}\,x_2\,+\,\ldots\,+\,a_{1n}\,x_n
   
   \dot{x}_2\ =\ a_{21}\,x_1\,+\,a_{22}\,x_2\,+\,\ldots\,+\,a_{2n}\,x_n
   
   \quad\ \ \ldots\qquad\ldots\qquad\ \ \ldots\qquad\ldots\qquad\ldots\qquad
   
   \dot{x}_n\ =\ a_{n1}\,x_1\,+\,a_{n2}\,x_2\,+\,\ldots\,+\,a_{nn}\,x_n

.. math::
   :label: set_diff
   
   \begin{array}{l}
   \dot{x}_1\ =\ a_{11}\,x_1\,+\,a_{12}\,x_2\,+\,\ldots\,+\,a_{1n}\,x_n \\
   \dot{x}_2\ =\ a_{21}\,x_1\,+\,a_{22}\,x_2\,+\,\ldots\,+\,a_{2n}\,x_n \\
   \ \ldots\qquad\ldots\qquad\ \ \ldots\qquad\ldots\qquad\ldots\qquad \\
   \dot{x}_n\ =\ a_{n1}\,x_1\,+\,a_{n2}\,x_2\,+\,\ldots\,+\,a_{nn}\,x_n 
   \end{array}

gdzie :math:`\ \ x_i=x_i(t)\,,\ \ \dot{x}_i\,=\,\frac{d}{dt}\ x_i(t)\,,\ \ 
a_{ij}\in R\,,\ \ i,j=1,2,\ldots,n.\ `
Wprowadzając oznaczenia

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{cccc} 
   a_{11} & a_{12} & \dots & a_{1n} \\
   a_{21} & a_{22} & \dots & a_{2n} \\
   \dots & \dots & \dots & \dots \\
   a_{n1} & a_{n2} & \dots & a_{nn}
   \end{array}\right]\,,\qquad
   \boldsymbol{x}\ =\ 
   \left[\begin{array}{c} x_1 \\ x_2 \\ \ldots \\ x_n \end{array}\right]\,,\qquad
   \boldsymbol{\dot{x}}\ =\ 
   \left[\begin{array}{c} \dot{x}_1 \\ \dot{x}_2 \\ \ldots \\ \dot{x}_n \end{array}\right]\,,


można układ :eq:`set_diff` zapisać w zwartej postaci macierzowej:
 
.. math::
   :label: mat_eqn
   
   \boldsymbol{\dot{x}}\ =\ \boldsymbol{A}\,\boldsymbol{x}\,.

Szukamy rozwiązań postaci 

.. math::
   :label: exp_soln
   
   \boldsymbol{x}(t)\,=\,\boldsymbol{v}\,e^{\,\lambda\,t}\,,\qquad
   \lambda\in C\,,\quad\boldsymbol{v}=[\,\beta_i\,]_n\in C^n\,.

Wtedy :math:`\ \,\boldsymbol{\dot{x}}(t)=\lambda\,\boldsymbol{v}\,e^{\,\lambda\,t}\ `
i podstawienie do :eq:`mat_eqn` daje

.. math::
   
   \lambda\,\boldsymbol{v}\,e^{\,\lambda\,t}\ =\ 
   \boldsymbol{A}\,\boldsymbol{v}\,e^{\,\lambda\,t}\,,

skąd, po podzieleniu przez :math:`\ e^{\,\lambda\,t}\neq 0\,,\ ` otrzymujemy

.. math::
   :label: eigen_eqn
   
   \boldsymbol{A}\,\boldsymbol{v}\ =\ \lambda\,\boldsymbol{v}\,.

Równanie :eq:`eigen_eqn` jest problemem własnym macierzy :math:`\,\boldsymbol{A}\ `
potraktowanej jako operator liniowy w przestrzeni :math:`\,C^n\ `
(działanie tego operatora na wektor :math:`\,\boldsymbol{x}\in C^n\,`
polega na mnożeniu go z lewej strony przez :math:`\boldsymbol{A}`).

.. (działając na wektor :math:`\,\boldsymbol{x}\in C^n\,` operator 
   mnoży go z lewej strony przez :math:`\boldsymbol{A}`).

Tak więc funkcja :eq:`exp_soln` jest rozwiązaniem równania :eq:`mat_eqn` wtedy i tylko wtedy, 
:math:`\,` gdy :math:`\\`
:math:`\lambda\ ` jest wartością własną macierzy :math:`\,\boldsymbol{A}\,,\ ` 
a :math:`\ \,\boldsymbol{v}\ ` - :math:`\,` 
wektorem własnym należącym do tej wartości.

Wartości własne :math:`\ \lambda\ ` wyliczamy z równania charakterystycznego

.. .. math::
   :label: char_eqn
   
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ =\ 0\,,

.. math::
   :label: char_eqn
   
   \det\,(\boldsymbol{A}-\lambda\,\boldsymbol{I}_n)\ \ =\ \ 
   \left|
   \begin{array}{cccc}
   \alpha_{11}-\lambda & \alpha_{12} & \dots & \alpha_{1n} \\
   \alpha_{21} & \alpha_{22}-\lambda & \dots & \alpha_{2n} \\
   \dots & \dots & \dots & \dots \\
   \alpha_{n1} & \alpha_{n2} & \dots & \alpha_{nn}-\lambda 
   \end{array}
   \right|\ \ =\ \ 0\,.

a odpowiednie wektory własne :math:`\,` - :math:`\,` rozwiązując problem liniowy :eq:`eigen_eqn`
dla danej wartości :math:`\,\lambda:`

.. .. math::
   :label: hom_set
   
   (a_{11}-\lambda)\ \beta_1\,+\,a_{12}\ \beta_2\,+\,\ldots\,+\,a_{1n}\ \beta_n\ =\ 0

   a_{21}\ \beta_1\,+\,(a_{22}-\lambda)\ \beta_2\,+\,\ldots\,+\,a_{2n}\ \beta_n\ =\ 0

   \quad\ldots\qquad\ldots\qquad\ldots\qquad\ldots\qquad\ldots

   a_{n1}\ \beta_1\,+\,a_{n2}\ \beta_2\,+\,\ldots\,+\,(a_{nn}-\lambda)\ \beta_n\ =\ 0

.. math::
   :label: hom_set
   
   \begin{array}{l}
   (a_{11}-\lambda)\ \beta_1\,+\,a_{12}\ \beta_2\,+\,\ldots\,+\,a_{1n}\ \beta_n\ =\ 0 \\
   a_{21}\ \beta_1\,+\,(a_{22}-\lambda)\ \beta_2\,+\,\ldots\,+\,a_{2n}\ \beta_n\ =\ 0 \\
   \ \ \ldots\qquad\ldots\qquad\ldots\qquad\ldots\qquad\ldots \\
   a_{n1}\ \beta_1\,+\,a_{n2}\ \beta_2\,+\,\ldots\,+\,(a_{nn}-\lambda)\ \beta_n\ =\ 0
   \end{array}

Ze względu na jednorodność układu :eq:`set_diff`, a także odpowiadającego mu równania macierzowego
:eq:`mat_eqn`, każda kombinacja liniowa rozwiązań jest również jego rozwiązaniem.
Omówimy teraz różne sytuacje, odpowiadające możliwym rozwiązaniom równania charakterystycznego.

:math:`\;`

**Przypadek 1.** :math:`\,`
 
Równanie :eq:`char_eqn` ma :math:`\,n\ ` różnych pierwiastków rzeczywistych
:math:`\ \lambda_1,\,\lambda_2,\,\ldots,\,\lambda_n\,.\ `

Wtedy należące do tych wartości rzeczywiste wektory własne 
:math:`\ \boldsymbol{v}_1,\,\boldsymbol{v}_2,\,\ldots,\,\boldsymbol{v}_n\,,` :math:`\\`
a także odpowiadające im rozwiązania szczególne

.. math::
   :label: spec_sols

   \boldsymbol{x}^1(t)=e^{\,\lambda_1\,t}\,\boldsymbol{v}_1\,,\quad
   \boldsymbol{x}^2(t)=e^{\,\lambda_2\,t}\,\boldsymbol{v}_2\,,\quad\ldots\,,\quad
   \boldsymbol{x}^n(t)=e^{\,\lambda_n\,t}\,\boldsymbol{v}_n    
    
.. :math:`\ \boldsymbol{x}^1(t)=e^{\,\lambda_1\,t}\,\boldsymbol{v}_1\,,\ \,
   \boldsymbol{x}^2(t)=e^{\,\lambda_2\,t}\,\boldsymbol{v}_2\,,\,\ldots\,,\,
   \boldsymbol{x}^n(t)=e^{\,\lambda_n\,t}\,\boldsymbol{v}_n\ \,`

są liniowo niezależne.
 
Ogólne rozwiązanie jest dowolną kombinacją liniową tych rozwiązań szczególnych:

.. math::
   :label: gen_sol
   
   \boldsymbol{x}(t)\ =\ c_1\ \boldsymbol{x}^1(t)\,+\,c_2\ \boldsymbol{x}^2(t)\,+\,\ldots\,+\,
                      c_n\ \boldsymbol{x}^n(t)\,,\qquad c_1,\,c_2,\,\ldots,\,c_n\in R\,.

**Przykład 1.** :math:`\,` Wyznaczymy ogólne rozwiązanie układu równań

.. math::
   :nowrap:
   
   \begin{alignat*}{3}
   \dot{x}_1 & {\ } = {\ } & 2\,x_1 & {\ } - {\ } &    x_2 \\
   \dot{x}_2 & {\ } = {\ } & 4\,x_1 & {\ } - {\ } & 3\,x_2
   \end{alignat*}

Równanie charakterystyczne :eq:`char_eqn` dla macierzy :math:`\,\boldsymbol{A}\ =\ 
\left[\begin{array}{rr} 2 & -1 \\ 4 & -3 \end{array}\right]:`

.. math::
   
   \left|\begin{array}{cc} 2-\lambda & -1 \\ 4 & -3-\lambda \end{array}\right|\ \,=\ \,
   \lambda^2+\lambda-2\ \,=\ \,
   (\lambda-1)(\lambda+2)\ \,=\ \,0

ma dwa różne pierwiastki rzeczywiste: :math:`\ \,\lambda_1=1\,,\ \,\lambda_2=-2\,.`

Wektory własne :math:`\ \boldsymbol{v}_1\,,\ \boldsymbol{v}_2\ \,`
dla wartości :math:`\ \lambda_1\,,\ \,\lambda_2\ \,`
wyznaczamy z równań :eq:`hom_set`:

.. math::
   
   \begin{array}{llll}
   \left[\begin{array}{cc} 1 & -1 \\ 4 & -4 \end{array}\right]\   
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \end{array}\right]\ =\  
   \left[\begin{array}{c} 0 \\ 0 \end{array}\right]\,: &
   \beta_1=\beta_2=\beta\,, &
   \boldsymbol{v}_1\,=\,\beta\ \left[\begin{array}{c} 1 \\ 1 \end{array}\right]\,, &
   \beta\in R\!\smallsetminus\!\{0\}\,;
   \\ \\
   \left[\begin{array}{cc} 4 & -1 \\ 4 & -1 \end{array}\right]\   
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \end{array}\right]\ =\  
   \left[\begin{array}{c} 0 \\ 0 \end{array}\right]\,: &
   \beta_2=4\,\beta_1=4\,\beta\,, &
   \boldsymbol{v}_2\,=\,\beta\ \left[\begin{array}{c} 1 \\ 4 \end{array}\right]\,, &
   \beta\in R\!\smallsetminus\!\{0\}\,.
   \end{array}

Kładąc :math:`\,\beta=1\ ` otrzymujemy dwa liniowo niezależne rozwiązania szczególne:

.. math::
   
   \boldsymbol{x}^1(t)\ \,=\ \,
   e^{\;t}\ \boldsymbol{v}_1\ \,=\ \,
   e^{\;t}\ \left[\begin{array}{c} 1 \\ 1 \end{array}\right]\,,\qquad
   \boldsymbol{x}^2(t)\ \,=\ \,
   e^{\,-2\,t}\ \,\boldsymbol{v}_2\ \,=\ \,
   e^{\,-2\,t}\ \left[\begin{array}{c} 1 \\ 4 \end{array}\right]\,,

które składają się na rozwiązanie ogólne:

.. math::
   
   \begin{array}{c}
   \boldsymbol{x}(t)\,=\,c_1\ \boldsymbol{x}^1(t)\,+\,c_2\ \boldsymbol{x}^2(t)\ :
   \\ \\
   \left[\begin{array}{c} x_1(t) \\ x_2(t) \end{array}\right]\ =\ 
   c_1\ e^{\;t}\ \left[\begin{array}{c} 1 \\ 1 \end{array}\right]\ +\ 
   c_2\ e^{\,-2\,t}\ \left[\begin{array}{c} 1 \\ 4 \end{array}\right]\,,
   \\ \\
   \qquad
   \begin{cases}\ \begin{array}{l}
   x_1(t)\ =\ c_1\ e^{\;t}\,+\,c_2\ e^{\,-2\,t} \\
   x_2(t)\ =\ c_1\ e^{\;t}\,+\,4\,c_2\ e^{\,-2\,t}
   \end{array}\end{cases}
   \qquad c_1,c_2\in R\,.
   \end{array}
   
   \;

**Przypadek 2.**

Równanie :eq:`char_eqn` ma :math:`\,n\ ` różnych (jednokrotnych) pierwiastków 
:math:`\ \lambda_1,\,\lambda_2,\,\ldots,\,\lambda_n\,,` :math:`\\`
w tym pierwiastki zespolone nierzeczywiste.

Dyskusja oraz wzory :eq:`spec_sols` i :eq:`gen_sol` 
z Przypadku 1. są nadal aktualne z tym, że teraz rozwiązania szczególne odpowiadające 
pierwiastkom nierzeczywistym będą również nierzeczywiste.
Poprzez odpowiednie złożenie tych rozwiązań można jednak otrzymać układ
:math:`\,n\,` liniowo niezależnych rozwiązań rzeczywistych.

Przede wszystkim zauważmy, że skoro macierz :math:`\,\boldsymbol{A}\ ` jest rzeczywista,
to zespolone nierzeczywiste pierwiastki równania charakterystycznego występują parami:
razem z :math:`\,\lambda\in C\!\smallsetminus\! R\ ` 
w zbiorze pierwiastków występuje też :math:`\,\lambda^*\,,\ `
przy czym jeśli :math:`\,\boldsymbol{v}\in C^n\ ` jest wektorem własnym 
macierzy :math:`\,\boldsymbol{A}\ ` dla wartości :math:`\ \lambda,\ \,`
to :math:`\ \boldsymbol{v}^*\ ` jest wektorem własnym dla wartości :math:`\ \lambda^*:`

.. math::
      
   \boldsymbol{A}\,\boldsymbol{v}\ =\ \lambda\,\boldsymbol{v}
   \qquad\Leftrightarrow\qquad
   \boldsymbol{A}\,\boldsymbol{v}^*\ =\ \lambda^*\,\boldsymbol{v}^*\,.

Rozwiązania szczególne odpowiadające pierwiastkom
:math:`\ \lambda\ \,` i  :math:`\ \,\lambda^*\ ` są wzajemnie sprzężone:

.. math::
   
   e^{\,\lambda^*\,t}\;\boldsymbol{v}^*\ =\ \left[\,e^{\,\lambda\,t}\;\boldsymbol{v}\,\right]^*\,.

Rozwiązanie :math:`\ \,\boldsymbol{x}(t)\,=\,e^{\,\lambda\,t}\,\boldsymbol{v}\,,\ `
odpowiadające pierwiastkowi :math:`\,\lambda\,,\ ` zapiszemy w postaci

.. math::
   
   \boldsymbol{x}(t)\,=\,\boldsymbol{x}_1(t)+i\ \boldsymbol{x}_2(t)\,,

gdzie :math:`\ \,\boldsymbol{x}_1(t)\,=\,\text{re}\ \,\boldsymbol{x}(t)\,,\ \,
\boldsymbol{x}_2(t)\,=\,\text{im}\ \,\boldsymbol{x}(t)\ \,`
są funkcjami o wartościach w :math:`\,R^n\,.`

Wtedy rozwiązanie  :math:`\ \,\boldsymbol{x}^*(t)\,=\,e^{\,\lambda^*\,t}\,\boldsymbol{v}^*\,,\ `
odpowiadające pierwiastkowi :math:`\,\lambda^*\,,\ ` dane jest przez

.. math::
   
   \boldsymbol{x}^*(t)\,=\,\boldsymbol{x}_1(t)-i\ \boldsymbol{x}_2(t)\,.
 

.. Niech :math:`\ \ e^{\,\lambda\,t}\,\boldsymbol{v}\,=\,\boldsymbol{x}(t)\,=\,
   \boldsymbol{x}_1(t)+i\ \boldsymbol{x}_2(t)\,,\ \ ` 
   gdzie :math:`\ \ \boldsymbol{x}_1(t)\,=\,\text{re}\ \boldsymbol{x}(t)\,,\ \ 
   \boldsymbol{x}_2(t)\,=\,\text{im}\ \boldsymbol{x}(t)` :math:`\\` 
   są funkcjami o wartościach w :math:`\,R^n\,.\ `
   Wtedy :math:`\ \,e^{\,\lambda^*\,t}\;\boldsymbol{v}^*\,=\,
   \boldsymbol{x}_1(t)-i\ \boldsymbol{x}_2(t)\,.\ `

Sprawdzimy, że część rzeczywista :math:`\ \boldsymbol{x}_1(t)\ \,` i :math:`\,` część urojona
:math:`\ \boldsymbol{x}_2(t)\ \,` rozwiązania :math:`\ \boldsymbol{x}(t)\ \,`
są też rozwiązaniami równania :eq:`mat_eqn`. :math:`\,` Istotnie, 

.. math::
   
   \boldsymbol{\dot{x}}_1(t)+i\ \boldsymbol{\dot{x}}_2(t)\ =\ 
   \boldsymbol{\dot{x}}(t)\ =\ 
   \boldsymbol{A}\ \boldsymbol{x}(t)\ =\ 
   \boldsymbol{A}\ [\,\boldsymbol{x}_1(t)+i\ \boldsymbol{x}_2(t)\,]\ =\
   \boldsymbol{A}\ \boldsymbol{x}_1(t)+i\ \boldsymbol{A}\ \boldsymbol{x}_2(t)

i z przyrównania części rzeczywistych oraz części urojonych skrajnych wyrażeń wynika, że

.. math::
   
   \boldsymbol{\dot{x}}_1(t)\ =\ \boldsymbol{A}\ \boldsymbol{x}_1(t)\,,\qquad
   \boldsymbol{\dot{x}}_2(t)\ =\ \boldsymbol{A}\ \boldsymbol{x}_2(t)\,.

Zauważmy jeszcze, że liniowa niezależność rozwiązań 
:math:`\ \boldsymbol{x}(t)\,,\ \boldsymbol{x}^*(t)\ `
jest równoważna liniowej niezależności rozwiązań
:math:`\ \boldsymbol{x}_1(t)\,,\ \boldsymbol{x}_2(t)\,.\ `
A zatem w wyrażeniu :eq:`gen_sol` dla ogólnego rozwiązania układu :eq:`set_diff`
kombinację liniową zespolonych rozwiązań :math:`\ \boldsymbol{x}(t)\,,\ \boldsymbol{x}^*(t)\ `
można zastąpić przez kombinację rozwiązań rzeczywistych 
:math:`\ \boldsymbol{x}_1(t)\,,\ \boldsymbol{x}_2(t)\,,\ `
dzięki czemu rozwiązanie ogólne będzie w całości rzeczywiste.

**Ćwiczenie.** :math:`\,`
W uzupełnieniu dyskusji Przypadków :math:`\,` 1. :math:`\,` i :math:`\,` 2. :math:`\,` udowodnij, że:

1. Jeżeli wektory :math:`\ \boldsymbol{v}_1,\,\boldsymbol{v}_2,\,\ldots,\,\boldsymbol{v}_n\in C^n\ `
   są liniowo niezależne, to dla :math:`\ \alpha_i\in C\!\smallsetminus\!\{0\}\,,\ `
   :math:`i=1,2,\ldots,n\,,\ \,` liniowo niezależne są również wektory 
   :math:`\ \ \alpha_1\,\boldsymbol{v}_1,\ \ \alpha_2\,\boldsymbol{v}_2,\ \ldots,\ 
   \alpha_n\,\boldsymbol{v}_n` :math:`\\` (w wyrażeniach :eq:`spec_sols` dla rozwiązań szczególnych
   :math:`\ \alpha_i=\exp{(\lambda_i\,t)}\,,\ i=1,2,\ldots,n`).

2. Jeżeli wektor :math:`\ \boldsymbol{x}\in C^n\ ` ma postać
   :math:`\ \boldsymbol{x}=\boldsymbol{x}_1+i\ \boldsymbol{x}_2\,,\ \,\text{gdzie}\ \, 
   \boldsymbol{x}_1,\boldsymbol{x}_2\in R^n\,,\ ` to liniowa niezależność wektorów
   :math:`\ \boldsymbol{x},\,\boldsymbol{x}^*\ ` jest równoważna liniowej niezależności 
   wektorów :math:`\ \boldsymbol{x}_1,\boldsymbol{x}_2\,.`

**Przykład 2.** :math:`\,` Rozwiążemy liniowy układ równań:

.. math::
   :nowrap:
   
   \begin{alignat*}{3}
   \dot{x}_1 & {\ } = {\ } & 3\,x_1 & {\ } - {\ } &    x_2 \\
   \dot{x}_2 & {\ } = {\ } &    x_1 & {\ } + {\ } & 3\,x_2
   \end{alignat*}

Równanie charakterystyczne :eq:`char_eqn` dla macierzy :math:`\ \,\boldsymbol{A}\ =\ 
\left[\begin{array}{rr} 3 & -1 \\ 1 & 3 \end{array}\right]:`

.. math::
   
   \left|\begin{array}{cc} 3-\lambda & -1 \\ 1 & 3-\lambda \end{array}\right|\ \,=\ \,
   \lambda^2-6\,\lambda+10\ \,=\ \,0

ma dwa różne pierwiastki zespolone, wzajemnie sprzężone:

.. math::
   
   \lambda_1\,=\,3+i\,,\qquad\lambda_2\,=\,3-i\,. 

Wektory własne :math:`\ \boldsymbol{v}_1\ ` dla wartości :math:`\ \lambda_1\ ` 
wyznaczamy z równania :eq:`hom_set`:

.. math::
   
   \left[\begin{array}{rr} -i & -1 \\ 1 & -i \end{array}\right]
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \end{array}\right]
   \ =\ 
   \left[\begin{array}{c} 0 \\ 0 \end{array}\right]\,,
   \quad\text{skąd}\quad\ 
   \begin{cases}\begin{array}{r}
   -i\ \beta_1 - \beta_2 = 0 \\ \beta_1 - i\ \beta_2 = 0 
   \end{array}\end{cases}:\quad
   \beta_2=-i\ \beta_1\,.

Rozwiązaniem jest :math:`\ \ \beta_1=\beta\,,\ \ \beta_2=-i\ \beta\,,\ \ \beta\in C\,,\ \ ` więc :math:`\ \ \boldsymbol{v}_1=\beta\ \left[\begin{array}{r} 1 \\ -i \end{array}\right]\,,\ \ 
\beta\in C\!\smallsetminus\!\{0\}\,.`

Wektorami własnymi dla wartości :math:`\,\lambda_2=\lambda_1^*\ \ ` są
:math:`\ \ \boldsymbol{v}_2=\beta\ \left[\begin{array}{r} 1 \\ -i \end{array}\right]^* =
\beta\ \left[\begin{array}{r} 1 \\ i \end{array}\right]\,,\ \ 
\beta\in C\!\smallsetminus\!\{0\}\,.` :math:`\\`

Przy :math:`\,\beta=1\,,\ ` rozwiązanie szczególne odpowiadające wartości :math:`\ \lambda_1\,:`

.. math::
   
   \begin{array}{rcl}
   \boldsymbol{x}^1(t) & = & e^{\,\lambda_1\,t}\ \boldsymbol{v}_1\ =\ 
   e^{\,(3+i)\,t}\ \left[\begin{array}{r} 1 \\ -i \end{array}\right]\ =\ 
   e^{\,3\,t}\ e^{\,i\,t}\ \left[\begin{array}{r} 1 \\ -i \end{array}\right]\ =
   \\ \\
   & = &
   e^{\,3\,t}\ (\cos{t}+i\ \sin{t})\ \left[\begin{array}{r} 1 \\ -i \end{array}\right]\ =\ 
   e^{\,3\,t}\ \left[\begin{array}{c} \cos{t}+i\ \sin{t} \\
                                      \sin{t}-i\ \cos{t} \end{array}\right]\ =
   \\ \\
   & = &
   e^{\,3\,t}\ \left[\begin{array}{c} \cos{t} \\ \sin{t} \end{array}\right]\ +\ 
   i\ e^{\,3\,t}\ \left[\begin{array}{r} \sin{t} \\ -\cos{t} \end{array}\right]
   \end{array}

ma postać :math:`\ \boldsymbol{x}^1(t)=\boldsymbol{x}_1(t)+i\ \boldsymbol{x}_2(t)\,,\ `
gdzie :math:`\ \boldsymbol{x}_1(t)\,,\ \boldsymbol{x}_2(t)\ ` 
są funkcjami o wartościach w :math:`\ R^2\,.` :math:`\\`

Ponieważ część rzeczywista i część urojona rozwiązania zespolonego jest, każda z osobna,
rozwiązaniem układu, to ogólne rozwiązanie dane jest przez dowolną ich kombinację liniową:

.. math::
   
   \begin{array}{c}
   \boldsymbol{x}(t)\ =\ c_1\ \boldsymbol{x}_1(t)\ +\ c_2\ \boldsymbol{x}_2(t)\ :
   \\ \\
   \left[\begin{array}{c} x_1(t) \\ x_2(t) \end{array}\right]\ \ =\ \ 
   e^{\,3\,t}\ \left(\ 
   c_1\ \left[\begin{array}{c} \cos{t} \\ \sin{t} \end{array}\right]\ \,+\ \,
   c_2\ \left[\begin{array}{r} \sin{t} \\ -\cos{t} \end{array}\right]\ \,\right)
   \\ \\
   \begin{cases}\begin{array}{c}
   \ x_1(t)\ \,=\ \,e^{\,3\,t}\ (c_1\,\cos{t}\,+\,c_2\,\sin{t}) \\
   \ x_2(t)\ \,=\ \,e^{\,3\,t}\ (c_1\,\sin{t}\,-\,c_2\,\cos{t})
   \end{array}\end{cases}\qquad c_1,c_2\in R\,.
   \end{array}

**Przypadek 3.**

Niektóre wartości własne macierzy :math:`\,\boldsymbol{A}\ ` są pierwiastkami wielokrotnymi
jej wielomianu charakterystycznego, przy czym krotności geometryczne takich wartości
równają się odpowiednim krotnościom algebraicznym.
Oznacza to, że dla każdego :math:`\,k`-krotnego pierwiastka wielomianu charakterystycznego
istnieje :math:`\,k\ ` liniowo niezależnych wektorów własnych macierzy :math:`\,\boldsymbol{A}\,.`

.. Sytuacja ta nie wymaga wprowadzania nowych elementów do postępowania opisanego
   w przypadkach 1. i 2.

W tej sytuacji można zastosować bez zmian postępowanie 
opisane w Przypadkach :math:`\,` 1. :math:`\,` i :math:`\,` 2.

**Przykład 3.** :math:`\,` 
Wyznaczymy rozwiązanie ogólne układu

.. math::
   :nowrap:
   
   \begin{alignat*}{4}
   \dot{x}_1 & {\ } = {\ } & -8\ x_1 & {\ } + {\ } &  18\ x_2 & {\ } + {\ } &  9\ x_3 \\
   \dot{x}_1 & {\ } = {\ } & -9\ x_1 & {\ } + {\ } &  19\ x_2 & {\ } + {\ } &  9\ x_3 \\
   \dot{x}_1 & {\ } = {\ } & 12\ x_1 & {\ } - {\ } &  24\ x_2 & {\ } - {\ } & 11\ x_3 
   \end{alignat*}

Równanie charakterystyczne macierzy :math:`\,\boldsymbol{A}:`

.. math::
   
   \left|\begin{array}{ccc}
   -8-\lambda & 18 & 9 \\
   -9 & 19-\lambda & 9 \\
   12 & -24 & -11-\lambda
   \end{array}\right|\ =\ 
   \lambda^3-3\,\lambda+2\ =\ 
   (\lambda-1)^2\,(\lambda+2)\ =\ 0

daje pierwiastek podwójny :math:`\,\lambda_{1,2}=1\ `
i pierwiastek pojedynczy :math:`\,\lambda_3=-2\,.`

Dla wartości własnej :math:`\,\lambda_{1,2}\ ` układ równań :eq:`hom_set` redukuje się do

.. math::
   
   \beta_1-2\,\beta_2-\beta_3\ =\ 0\,,\qquad\text{skąd}\qquad
   \beta_3\ =\ \beta_1-2\,\beta_2\,,\quad\beta_1,\beta_2\in R\,. 

Krotność geometryczna wartości własnej :math:`\,\lambda_{1,2}\ ` równa się
krotności algebraicznej i wynosi 2, bo należące do niej wektory własne postaci

.. math::
   
   \boldsymbol{v}_{1,2}\ =\ 
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \beta_1-2\,\beta_2 \end{array}\right]\ =\ 
   \beta_1\ \left[\begin{array}{r} 1 \\ 0 \\ 1 \end{array}\right]\ +\ 
   \beta_2\ \left[\begin{array}{r} 0 \\ 1 \\ -2 \end{array}\right]\,,\qquad
   \begin{array}{c} \beta_1,\,\beta_2\in R\,, \\ \beta_1^2+\beta_2^2>0 \end{array}

tworzą (łącznie z wektorem zerowym) podprzestrzeń 2-wymiarową.

Wartości :math:`\,\lambda_{1,2}=1\ ` odpowiadają więc dwa liniowo niezależne rozwiązania szczególne:

.. math::
   :label: sol_12
   
   \boldsymbol{x}^1(t)\ \,=\ \,e^{\,t}\ \left[\begin{array}{r} 1 \\ 0 \\ 1 \end{array}\right]
   \qquad\text{oraz}\qquad
   \boldsymbol{x}^2(t)\ \,=\ \,e^{\,t}\ \left[\begin{array}{r} 0 \\ 1 \\ -2 \end{array}\right]\,.

Wektory własne macierzy :math:`\,\boldsymbol{A}\ ` dla wartości :math:`\,\lambda_3=-2\ `
mają postać

.. math::
   :label: sol_3
   
   \boldsymbol{v}_3\ =\ 
   \beta\ \left[\begin{array}{r} 3 \\ 3 \\ -4 \end{array}\right]\,,\quad
   \beta\in R\!\smallsetminus\!\{0\}\,,
   \qquad\text{skąd}\qquad
   \boldsymbol{x}^3(t)\ \,=\ \,e^{\,-2\,t}\ \left[\begin{array}{r} 3 \\ 3 \\ -4 \end{array}\right]\,.
   
Ogólne rozwiązanie układu jest dowolną kombinacją liniową rozwiązań 
:math:`\,` :eq:`sol_12` :math:`\,` i :math:`\,` :eq:`sol_3`:

.. math::
   
   \begin{array}{l}
   \boldsymbol{x}(t)\ \,=\ \,c_1\ \boldsymbol{x}^1(t)\ +\ 
                             c_2\ \boldsymbol{x}^2(t)\ +\ 
                             c_3\ \boldsymbol{x}^3(t)\,:
   \\ \\
   \begin{cases}\ \ \begin{array}{l}
   x_1(t)\ =\ c_1\ e^{\,t}\,+\,3\ c_3\ e^{\,-2\,t} \\
   x_2(t)\ =\ c_2\ e^{\,t}\,+\,3\ c_3\ e^{\,-2\,t} \\
   x_3(t)\ =\ (c_1-2\,c_2)\ e^{\,t}\,-\,4\ c_3\ e^{\,-2\,t}
   \end{array}\end{cases}\qquad
   c_1,\,c_2,\,c_3\,\in R\,.
   \end{array}

**Przypadek 4.**

Dla niektórych wartości własnych macierzy :math:`\,\boldsymbol{A}\ ` krotność geometryczna 
jest różna (mniejsza) od krotności algebraicznej.

.. Chociaż nie istnieje wtedy baza przestrzeni :math:`\,R^n\ ` złożona z wektorów własnych
   macierzy :math:`\,\boldsymbol{A},\ ` to można skonstruować *bazę Jordana* tej przestrzeni.
   Wykorzystując wektory tej bazy można utworzyć zbiór :math:`\,n\ ` liniowo niezależnych
   rzeczywistych rozwiązań układu :eq:`set_diff`.

Nie istnieje wtedy baza przestrzeni :math:`\,R^n\ ` 
złożona wyłącznie z wektorów własnych macierzy :math:`\,\boldsymbol{A}.\ `
Wykorzystując wektory *bazy Jordana* tej przestrzeni, można jednak utworzyć zbiór :math:`\,n\ ` liniowo niezależnych rzeczywistych rozwiązań układu :eq:`set_diff`.
Bez rozwijania ogólnej teorii pokażemy na przykładzie, że taka konstrukcja jest możliwa.

**Przykład 4.** :math:`\,` 
Rozwiążemy liniowy układ równań różniczkowych

.. math::
   :nowrap:
   
   \begin{alignat*}{4}
   \dot{x}_1 & {\ } = {\ } & 4\ x_1 & {\ } + {\ } &    x_2 & {\ } + {\ } &    x_3 \\
   \dot{x}_1 & {\ } = {\ } & 2\ x_1 & {\ } + {\ } & 4\ x_2 & {\ } + {\ } &    x_3 \\
   \dot{x}_1 & {\ } = {\ } &        &             &    x_2 & {\ } + {\ } & 4\ x_3 
   \end{alignat*}

Równanie charakterystyczne macierzy 
:math:`\ \ \boldsymbol{A}\ =\ \left[\begin{array}{ccc}
4 & 1 & 1 \\ 2 & 4 & 1 \\ 0 & 1 & 4 \end{array}\right]:`

.. math::
   
   \left|\begin{array}{ccc}
   4-\lambda & 1  & 1 \\
   2 &  4-\lambda & 1 \\
   0 &   1 &   4-\lambda
   \end{array}\right|\ =\ 
   \lambda^3-12\,\lambda^2+45\,\lambda-54\ =\ 
   (\lambda-3)^2\,(\lambda-6)\ =\ 0

daje pierwiastek podwójny :math:`\,\lambda_{1,2}=3\ `
i pierwiastek pojedynczy :math:`\,\lambda_3=6\,.` :math:`\\`

Współrzędne :math:`\ \beta_1,\beta_2,\beta_3\ ` 
wektorów własnych dla wartości :math:`\,\lambda_{1,2}\ ` 
wyznaczamy z równania :eq:`hom_set`:

.. math::
   
   \left[\begin{array}{ccc}
   1 & 1 & 1 \\ 2 & 1 & 1 \\ 0 & 1 & 1 
   \end{array}\right]\ 
   \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \beta_3 \end{array}\right]\ =\    
   \left[\begin{array}{c} 0 \\ 0 \\ 0 \end{array}\right]\,,
   \quad\text{skąd}\quad
   \begin{cases}\begin{array}{r}
   \beta_1+\beta_2+\beta_3=0 \\ 2\,\beta_1+\beta_2+\beta_3=0 \\ \beta_2+\beta_3=0
   \end{array}\end{cases}:\quad
   \begin{cases}\begin{array}{l}
   \beta_1=0 \\ \beta_3=-\beta_2
   \end{array}\end{cases}

Rozwiązaniem jest 
:math:`\ \ \beta_1=0\,,\ \  \beta_2=\beta\,,\ \ \beta_3=-\beta\,,\ \ 
\beta\in R\,,\ ` wobec czego wektory własne

.. math::
   :label: v1
   
   \boldsymbol{v}_1\ =\ 
   \beta\ \left[\begin{array}{r} 0 \\ 1 \\ -1 \end{array}\right]\,,\quad
   \beta\in R\!\smallsetminus\!\{0\}

tworzą (łącznie z wektorem zerowym) podprzestrzeń 1-wymiarową:
wartość własna :math:`\,\lambda_{1,2}\ ` jest geometrycznie 1-krotna.
Otrzymujemy stąd rozwiązanie układu równań różniczkowych:

.. math::
   :label: x1
   
   \boldsymbol{x}^1(t)\ \,=\ \,
   e^{\,3\,t}\ \left[\begin{array}{r} 0 \\ 1 \\ -1 \end{array}\right]\,.

Drugie rozwiązanie odpowiadające wartości własnej :math:`\,\lambda_{1,2}\ `
uzyskamy konstruując *bazę Jordana* 
:math:`\,\mathcal{B}_{1,2}=(\boldsymbol{w}_1,\boldsymbol{w}_2)\,.\ `
Wektory :math:`\,\boldsymbol{w}_1,\boldsymbol{w}_2\in R^3\!\smallsetminus\!\{\boldsymbol{0}\}\ ` 
określone są przez warunki

.. math::
   :label: w1_w2
   
   \begin{cases}\ \begin{array}{l}
   (\boldsymbol{A}-\lambda_{1,2}\ \boldsymbol{I}_3)\ \boldsymbol{w}_1\ =\ \boldsymbol{0} \\
   (\boldsymbol{A}-\lambda_{1,2}\ \boldsymbol{I}_3)\ \boldsymbol{w}_2\ =\ \boldsymbol{w}_1
   \end{array}\end{cases}
   \quad\text{czyli}\qquad\ 
   \begin{cases}\ \begin{array}{l}
   \boldsymbol{A}\,\boldsymbol{w}_1\ =\ \lambda_{1,2}\ \boldsymbol{w}_1 \\
   \boldsymbol{A}\,\boldsymbol{w}_2\ =\ \boldsymbol{w}_1+\lambda_{1,2}\ \boldsymbol{w}_2
   \end{array}\end{cases}

Pokażemy, że :math:`\ \,\boldsymbol{w}_1,\,\boldsymbol{w}_2\ \,` są liniowo niezależne.
Rzeczywiście, niech

.. math::
   
   \alpha_1\ \boldsymbol{w}_1\ +\ \alpha_2\ \boldsymbol{w}_2\ \,=\ \,\boldsymbol{0}\,,\qquad
   \alpha_1,\,\alpha_2\in R\,.

Mnożąc obustronnie tę równość z lewej strony przez macierz 
:math:`\,\boldsymbol{A}-\lambda_{1,2}\ \boldsymbol{I}_3\ ` :math:`\\`
i korzystając z warunków :eq:`w1_w2` otrzymujemy

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \alpha_1\ (\boldsymbol{A}-\lambda_{1,2}\ \boldsymbol{I}_3)\ \boldsymbol{w}_1\ +\ 
   \alpha_2\ (\boldsymbol{A}-\lambda_{1,2}\ \boldsymbol{I}_3)\ \boldsymbol{w}_2 & = & \boldsymbol{0}
   \\ 
   \alpha_2\ \boldsymbol{w}_1 & = & \boldsymbol{0}\,,\quad\text{skąd}\quad\alpha_2=0\,,
   \\
   \text{ale wtedy}\quad\alpha_1\ \boldsymbol{w}_1 & = & \boldsymbol{0}\,,
   \quad\text{więc}\quad\alpha_1=0\,.
   \end{eqnarray*}

Sprawdzimy obecnie, że funkcja 

.. math::
   :label: x2_compact
   
   \boldsymbol{x}^2(t)\ \,=\ \,
   \exp{(\lambda_{1,2}\;t)}\,\cdot\,(t\,\boldsymbol{w}_1\,+\,\boldsymbol{w}_2)

jest rozwiązaniem rozważanego układu równań różniczkowych. Istotnie, wobec :eq:`w1_w2` mamy

.. math::
   :nowrap:

   \begin{eqnarray*}   
   \boldsymbol{\dot{x}}^2(t) & = &
   \lambda_{1,2}\ \exp{(\lambda_{1,2}\;t)}\,\cdot\,(t\,\boldsymbol{w}_1\,+\,\boldsymbol{w}_2)\ +\ 
   \exp{(\lambda_{1,2}\;t)}\,\cdot\,\boldsymbol{w}_1\ =
   \\
   & = & \exp{(\lambda_{1,2}\;t)}\,\cdot\, 
   \left[\ \,t\,\cdot\,\lambda_{1,2}\;\boldsymbol{w}_1\,+\,
   (\boldsymbol{w}_1+\lambda_{1,2}\,\boldsymbol{w}_2)\ \right]\ =
   \\
   & = & \exp{(\lambda_{1,2}\;t)}\,\cdot\, 
   (\ t\,\cdot\,\boldsymbol{A}\,\boldsymbol{w}_1\,+\,\boldsymbol{A}\,\boldsymbol{w}_2\ )\ =
   \\
   & = & \boldsymbol{A}\ \,[\ \,\exp{(\lambda_{1,2}\;t)}\,\cdot\, 
   (t\,\boldsymbol{w}_1\,+\,\boldsymbol{w}_2)\ ]\ =
   \\
   & = & \boldsymbol{A}\ \boldsymbol{x}^2(t)\,.
   \end{eqnarray*}

Wyznaczymy teraz wektory :math:`\,\boldsymbol{w}_1\ \ \text{i}\ \ \boldsymbol{w}_2\,.\ `
Ponieważ :math:`\,\boldsymbol{w}_1\ ` jest wektorem własnym 
macierzy :math:`\,\boldsymbol{A}\ ` dla wartości :math:`\,\lambda_{1,2}\,,\ `
można przyjąć :math:`\ \,\boldsymbol{w}_1=\boldsymbol{v}_1\,.\ `
Kładąc :math:`\ \beta=1\ ` w równaniu :eq:`v1`, mamy:

.. math::
   
   \boldsymbol{w}_1\ =\ 
   \left[\begin{array}{r} 0 \\ 1 \\ -1 \end{array}\right]\,.

Wektor :math:`\ \,\boldsymbol{w}_2=[\,\gamma_i\,]_3\ \,` wyliczymy z równania:
:math:`\ \ (\boldsymbol{A}-\lambda_{1,2}\,\boldsymbol{I}_3)\,\boldsymbol{w}_2=\boldsymbol{w}_1\,,\ \ `
czyli

.. math::
   
   \left[\begin{array}{ccc}
   1 & 1 & 1 \\ 2 & 1 & 1 \\ 0 & 1 & 1 
   \end{array}\right]\ 
   \left[\begin{array}{c} \gamma_1 \\ \gamma_2 \\ \gamma_3 \end{array}\right]\ =\    
   \left[\begin{array}{r} 0 \\ 1 \\ -1 \end{array}\right]\,,
   \quad\text{skąd}\quad
   \begin{cases}\begin{array}{r}
   \gamma_1+\gamma_2+\gamma_3\,=\,0 \\ 2\,\gamma_1+\gamma_2+\gamma_3\,=\,1 \\ \gamma_2+\gamma_3\,=\,-1
   \end{array}\end{cases}

Rozwiązaniem jest: 
:math:`\ \ \gamma_1=1,\ \ \gamma_2=\gamma,\ \ \gamma_3=-1-\gamma,\quad\gamma\in R.\ \,`
Dla :math:`\ \gamma=0\ ` otrzymujemy

.. math::
   
   \boldsymbol{w}_2\ =\ \left[\begin{array}{r} 1 \\ 0 \\ -1 \end{array}\right]\,.

Rozwiązanie :eq:`x2_compact` układu równań różniczkowych przyjmuje teraz konkretną postać:

.. math::
   :label: x2
   
   \boldsymbol{x}^2(t)\ \,=\ \,
   e^{\,3\,t}\ \left[\begin{array}{c} 1 \\ t \\ -1-t \end{array}\right]\,.

W ten sposób mamy dwa liniowo niezależne rozwiązania,
:math:`\ \boldsymbol{x}^1(t)\ ` oraz :math:`\ \boldsymbol{x}^2(t)\,,\ `
odpowiadające wartości własnej :math:`\ \lambda_{1,2}=3\ ` macierzy :math:`\,\boldsymbol{A}\,.`

Pozostaje wyznaczyć rozwiązanie związane z (pojedynczą) wartością własną :math:`\ \lambda_3=6.\ `
:math:`\\`
Odpowiednie wektory własne :math:`\,\boldsymbol{v}_3=[\,\beta_i\,]_3\ ` wyliczamy z równania

.. math::
   
   \left[\begin{array}{rrr}
   -2 & 1 & 1 \\ 2 & -2 & 1 \\ 0 & 1 & -2
   \end{array}\right]\ 
   \left[\begin{array}{c}
   \beta_1 \\ \beta_2 \\ \beta_3
   \end{array}\right]\ =\ 
   \left[\begin{array}{c}
   0 \\ 0 \\ 0
   \end{array}\right]\,,
   \quad\text{czyli}\quad
   \begin{cases}\ \begin{array}{r}
   -\,2\,\beta_1\,+\,\beta_2\,+\,\beta_3\,=\,0 \\
   2\,\beta_1\,-\,2\,\beta_2\,+\,\beta_3\,=\,0 \\
   \beta_2\,-\,2\,\beta_3\,=\,0
   \end{array}\end{cases}.

Stąd:
:math:`\quad\beta_1=3\,\beta\,,\ \ \beta_2=4\,\beta\,,\ \ \beta_3=2\,\beta\,,\ \ \beta\in R\,,\quad`
więc 
:math:`\quad\boldsymbol{v}_3\ =\ \beta\ \left[\begin{array}{c} 3 \\ 4 \\ 2 \end{array}\right]\,,
\ \ \beta\in R\!\smallsetminus\!\{0\}\,,`

a rozwiązanie układu równań różniczkowych dla tej wartości własnej dane jest przez

.. math::
   :label: x3
   
   \boldsymbol{x}^3(t)\ \,=\ \,
   e^{\,6\,t}\ \left[\begin{array}{r} 3 \\ 4 \\ 2 \end{array}\right]\,.

Wektor :math:`\,\boldsymbol{v}_3\ ` (np. przy :math:`\,\beta=1`) może być przyjęty 
jako trzeci wektor :math:`\,\boldsymbol{w}_3\ ` bazy Jordana w :math:`\,R^3\,,\ `
odpowiadającej macierzy :math:`\,\boldsymbol{A}:`

.. math::
   
   \mathcal{B}\ =\ (\boldsymbol{w}_1,\boldsymbol{w}_2,\boldsymbol{w}_3)\ \ =\ \ 
   \left(\ \ 
   \left[\begin{array}{r} 0 \\ 1 \\ -1 \end{array}\right]\,,\ 
   \left[\begin{array}{r} 1 \\ 0 \\ -1 \end{array}\right]\,,\ 
   \left[\begin{array}{r} 3 \\ 4 \\ 2 \end{array}\right]
   \ \ \right)\,.


Ogólne rozwiązanie układu równań różniczkowych jest dowolną kombinacją liniową :math:`\\`
rozwiązań szczególnych :math:`\,` :eq:`x1`, :math:`\,` :eq:`x2` :math:`\,` i :math:`\,` :eq:`x3` :

.. math::
   
   \begin{array}{c}
   \boldsymbol{x}(t)\ \,=\ \,c_1\ \boldsymbol{x}^1(t)\ +\ 
                             c_2\ \boldsymbol{x}^2(t)\ +\ 
                             c_3\ \boldsymbol{x}^3(t) :
   \\ \\
   \left[\begin{array}{c} x_1(t) \\ x_2(t) \\ x_3(t) \end{array}\right]\ =\ 
   e^{\,3\,t}\ 
   \left[\begin{array}{c}
   c_2 \\ c_1\,+\,c_2\,t \\ -\,c_1\,-\,c_2\,(1+t)
   \end{array}\right]\ +\ 
   c_3\ e^{\,6\,t}\ 
   \left[\begin{array}{c} 3 \\ 4 \\ 2 \end{array}\right]
   \\ \\
   \qquad\ \ 
   \begin{cases}\ \ \begin{array}{l}
   x_1(t)\ \,=\ \,c_2\ e^{\,3\,t}\ +\ 3\,c_3\ e^{\,6\,t} \\
   x_2(t)\ \,=\ \,(c_1+c_2\;t)\ e^{\,3\,t}\ +\ 4\,c_3\ e^{\,6\,t} \\
   x_3(t)\ \,=\ \,-\ [\,c_1+c_2\,(1+t)\,]\ e^{\,3\,t}\ +\ 2\,c_3\ \ e^{\,6\,t}
   \end{array}\end{cases}
   c_1,\,c_2,\,c_3\in R\,.
   \end{array}
   





    


   

  







   
   





































