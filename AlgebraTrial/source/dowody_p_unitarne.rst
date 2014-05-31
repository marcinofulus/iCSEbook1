
Przestrzenie unitarne
---------------------

.. admonition:: Twierdzenie 1.
   
   Nierówność Schwarza w unitarnej przestrzeni :math:`\,V(C):`
   
   .. math::
      
      |\,\langle x,y\rangle\,|^2\ \ \leq\ \ 
      \langle x,x\rangle\,\langle y,y\rangle\,,\qquad x,y\in V\,,
   
   przechodzi w równość wtedy i tylko wtedy, :math:`\,`
   gdy wektory :math:`\,x,y\ ` są liniowo zależne:
   
   .. math::
   
      |\,\langle x,y\rangle\,|^2\ \,=\ \,\langle x,x\rangle\,\langle y,y\rangle
      \qquad\Leftrightarrow\qquad
      (x,y)\ \ -\ \ \text{układ liniowo zależny}\,.

**Dowód.**

:math:`\ \Rightarrow\,:\ ` Załóżmy, że wektory :math:`\,x,y\ ` są liniowo niezależne. 

Wtedy :math:`\ y\neq\theta,\ ` a ponadto (ponieważ każda nietrywialna kombinacja liniowa 
wektorów liniowo niezależnych jest różna od wektora zerowego)  
dla dowolnego :math:`\,\alpha\in C:`

.. math::
   
   x-\alpha\,y\ \,=\ \,1\cdot x\,-\,\alpha\cdot y\ \neq\ \theta\,,

   \langle\,x-\alpha\,y,\,x-\alpha\,y\,\rangle\ >\ 0\,.

.. Korzystając, jak w ogólnym dowodzie nierówności Schwarza, z własności iloczynu skalarnego
   i podstawiając 
   :math:`\ \ \alpha\ =\ \displaystyle\frac{(x,y)^*}{(y,y)}\,,\ `
   dochodzimy do ostrej nierówności

Podstawiając, jak w dowodzie nierówności Schwarza:
:math:`\ \,\alpha\ =\ 
\displaystyle\frac{\langle x,y\rangle^*}{\langle y,y\rangle}\ ,\ ` otrzymujemy

.. math::
   
   \langle x,x\rangle\,\langle y,y\rangle\ \ >\ \ |\,\langle x,y\rangle\,|^2\,.

Pokazaliśmy więc, że

.. math::
   
   x,y\ \ \text{są liniowo niezależne}
   \qquad\Rightarrow\qquad
   |\,\langle x,y\rangle\,|^2\ \ \neq\ \ \langle x,x\rangle\,\langle y,y\rangle\,,

co przez kontrapozycję jest równoważne implikacji

.. math::
   
   |\,\langle x,y\rangle\,|^2\ \ =\ \ \langle x,x\rangle\,\langle y,y\rangle
   \qquad\Rightarrow\qquad
   x,y\ \ \text{są liniowo zależne}\,.

:math:`\ \Leftarrow\,:\ ` Zakładamy, że wektory :math:`\,x,y\ ` są liniowo zależne. 

Wtedy :math:`\ \,y=\alpha\,x\ \ \text{lub}\ \ \,x=\beta\,y\ \,` dla pewnych 
:math:`\ \alpha,\beta\in C.`

W pierwszym przypadku

.. math::
   
   \begin{array}{l}
   |\,\langle x,y\rangle\,|^2\ \,=\ \,|\,\langle x,\,\alpha\,x\rangle\,|^2\ \,=\ \,
   |\,\alpha\,\langle x,x\rangle\,|^2\ \,=\ \,|\alpha|^2\ \langle x,x\rangle^2\,,
   \\
   \langle x,x\rangle\,\langle y,y\rangle\ \,=\ \,
   \langle x,x\rangle\,\langle\alpha\,x,\,\alpha\,x\rangle\ \,=\ \,
   \langle x,x\rangle\ \alpha^*\alpha\,\langle x,x\rangle\ \,=\ \,
   |\alpha|^2\ \langle x,x\rangle^2\,.
   \end{array}

W drugim przypadku

.. math::
   
   \begin{array}{l}
   |\,\langle x,y\rangle\,|^2\ \,=\ \,
   |\,\langle\beta\,y,\,y\rangle\,|^2\ \,=\ \,
   |\,\beta^*\,\langle y,y\rangle\,|^2\ \,=\ \,|\beta|^2\ \langle y,y\rangle^2\,,
   \\
   \langle x,x\rangle\,\langle y,y\rangle\ \,=\ \,
   \langle\beta\,y,\,\beta\,y\rangle\,\langle y,y\rangle\ \,=\ \,
   \beta^*\beta\ \langle y,y\rangle\ \langle y,y\rangle\,=\ \,
   |\beta|^2\ \langle y,y\rangle^2\,.
   \end{array}

W obydwu sytuacjach 
:math:`\ \ |\,\langle x,y\rangle\,|^2\ \,=\ \,\langle x,x\rangle\,\langle y,y\rangle\,.`

W ten sposób stwierdziliśmy, że

.. math::
   
   x,y\ \ \text{są liniowo zależne}
   \qquad\Rightarrow\qquad
   |\,\langle x,y\rangle\,|^2\ \ =\ \ \langle x,x\rangle\,\langle y,y\rangle\,.
   
   \;

Lemat 1. przedstawia warunki konieczne i wystarczające 
dla *operatora zerowego* :math:`\,\mathcal{O},` :math:`\\` 
zdefiniowanego przez warunek :math:`\ \mathcal{O}\,x=\theta.`

.. .. math::
   
   F\ =\ \mathcal{O}\qquad\Leftrightarrow\qquad Fx=\theta\quad\text{dla wszystkich}\ \ x\in V . 
   
.. admonition:: Lemat 1. :math:`\\`
   
   Dany operator liniowy  :math:`\ F\in\text{End}(V)\,,\ V=V(K)\,,\ K\in\{R,C\}\,.\ ` :math:`\\`
   
   0. Jeżeli :math:`\ F\ ` jest określony na przestrzeni unitarnej :math:`\,V(C)\ ` :math:`\\`
      albo euklidesowej :math:`\,V(R)\,,\ ` to
      
      .. math::
         
         F\ =\ \mathcal{O}\qquad\Leftrightarrow\qquad
         \langle\,x,Fy\,\rangle\,=\,0\quad\text{dla wszystkich}\ \ x,y\in V\,.

   1. Jeżeli :math:`\ F\ ` jest operatorem samosprzężonym: :math:`\ F^+=\,F\,,\ ` :math:`\\`
      określonym na przestrzeni euklidesowej :math:`\,V(R),\ `  to
      
      .. math::
         
         F\ =\ \mathcal{O}\qquad\Leftrightarrow\qquad
         \langle\,x,Fx\,\rangle\,=\,0\quad\text{dla wszystkich}\ \ x\in V\,.

   2. Jeżeli :math:`\ F\ ` jest określony na przestrzeni unitarnej :math:`\,V(C)\,,\ ` to
      
      .. math::
         
         F\ =\ \mathcal{O}\qquad\Leftrightarrow\qquad
         \langle\,x,Fx\,\rangle\,=\,0\quad\text{dla wszystkich}\ \ x\in V\,.

**Dowód.**

0. :math:`\Rightarrow\ :\ ` Jeżeli :math:`\ F=\mathcal{O}\,,\ \,` to
   :math:`\ \,\langle\,x,Fy\,\rangle\,=\,
   \langle\,x,\mathcal{O}\,y\,\rangle\,=\,
   \langle\,x,\theta\,\rangle\,=\,0\,.`
   
   :math:`\Leftarrow\ :\ ` 
   Zakładamy, że :math:`\,\langle\,x,Fy\,\rangle\,=\,0\quad\text{dla wszystkich}\ \ x,y\in V\,.`

   Kładąc :math:`\ x=Fy\ ` mamy :math:`\ \langle\,Fy,Fy\,\rangle=0\,,\ `
   czyli :math:`\ Fy=\theta\quad\text{dla wszystkich}\ \ y\in V,\ \\` 
   co oznacza, że :math:`\ F=\mathcal{O}\,.`

1. :math:`\Rightarrow\ :\ ` Dowód jak w punkcie 0.

   :math:`\Leftarrow\ :\ ` 
   Zakładamy, że :math:`\ \langle x,Fx\rangle\,=\,0\quad\text{dla wszystkich}\ \ x\in V(R).`
   
   Podstawiając :math:`\ \,x\rightarrow x+y\ \,` otrzymamy 
   :math:`\ \,\langle\,x+y,F(x+y)\,\rangle\,=\,0\,,\ \ x,y\in V\,,\ \ ` czyli
   
   .. math::
      :label: x_F_y
      
      \langle\,x+y,F(x+y)\,\rangle\,=\,\langle\,x+y,Fx+Fy\,\rangle\,=

      =\       
      \langle\,x,Fx\,\rangle\,+\,\langle\,x,Fy\,\rangle\,+\,
      \langle\,y,Fx\,\rangle\,+\,\langle\,y,Fy\,\rangle\,=
      
      =\ 
      \langle\,x,Fy\,\rangle\,+\,\langle\,y,Fx\,\rangle\,=\,0\,,\quad x,y\in V\,.

   Skoro :math:`\,F\ ` jest operatorem samosprzężonym w przestrzeni rzeczywistej, :math:`\,` to
   
   .. math::
      :label: y_F_x
      
      \langle\,y,Fx\,\rangle\ =\ \langle\,Fy,x\,\rangle\ =\ \langle\,x,Fy\,\rangle\,.

   Podstawienie :eq:`y_F_x` do :eq:`x_F_y` daje równości
   :math:`\ \langle\,x,Fy\,\rangle=0\,,\ \ x,y\in V\,,\\`
   które, :math:`\,` na podstawie punktu 0., :math:`\,` są równoważne warunkowi 
   :math:`\ F=\mathcal{O}.\\`

2. :math:`\Rightarrow\ :\ ` Dowód jak w punkcie 0.

   :math:`\Leftarrow\ :\ ` 
   Zakładamy, że :math:`\ \langle x,Fx\rangle\,=\,0\quad\text{dla wszystkich}\ \ x\in V(C).`

   Podstawiając jak w punkcie 1. kolejno 
   :math:`\ x\rightarrow x+y\ \,` oraz :math:`\ \,x\rightarrow x+i\,y\,,\ `
   otrzymujemy
   
   .. math::
      
      \begin{array}{lcr}
      & \left\{\ \begin{array}{r}
      \langle\,x,Fy\,\rangle\,+\,\langle\,y,Fx\,\rangle\,=\,0 \\
      \langle\,x,F(iy)\,\rangle\,+\,\langle\,iy,Fx\,\rangle\,=\,0
      \end{array}\right. & \quad x,y\in V\,,
      \\ \\
      \text{czyli} & \left\{\ \begin{array}{r}
      \langle\,x,Fy\,\rangle\,+\,\langle\,y,Fx\,\rangle\,=\,0 \\
      \langle\,x,Fy\,\rangle\,-\,\langle\,y,Fx\,\rangle\,=\,0
      \end{array}\right. & \quad x,y\in V\,.
      \end{array}
   
   Dodając stronami dwie ostatnie równości stwierdzamy, że
   :math:`\ \langle\,x,Fy\,\rangle=0\,,\ \ x,y\in V\,,\ ` 
   skąd :math:`\,F=\mathcal{O}.\,` 
   W zespolonej przestrzeni :math:`V\,` założenie samosprzężoności (hermitowskości)
   operatora :math:`\ F\ ` nie było potrzebne. :math:`\\`

.. admonition:: Wniosek. :math:`\\`
   
   Jeżeli jest spełniony jeden z dwóch warunków: :math:`\\`
   
   1. :math:`\ F\ \ \text{i}\ \ G\ ` są samosprzężonymi operatorami liniowymi:
      :math:`\ F^+=\,F\,,\ \ G^+=\,G\,,` :math:`\\`
      określonymi na euklidesowej przestrzeni :math:`\,V(R)\,,` :math:`\\`
   
   2. :math:`\ F\ \ \text{i}\ \ G\ ` są operatorami liniowymi
      określonymi na unitarnej przestrzeni :math:`\,V(C)\,,` :math:`\\`

   to :math:`\qquad\quad F\ =\ G\quad\Leftrightarrow\quad
   \langle\,x,Fx\,\rangle\,=\,\langle\,x,G\,x\,\rangle
   \quad\text{dla wszystkich}\ \ x\in V\,.`

Rzeczywiście, z warunku :math:`\ \ \langle\,x,Fx\,\rangle=\langle\,x,G\,x\,\rangle
\ \ \text{dla wszystkich}\ \ x\in V\ \ ` wynika, że :math:`\\ \\` 
:math:`\ \ \langle\,x,(F-G)\,x\,\rangle\,=\,0\,,\ \ x\in V\,,\ ` przy czym, w przypadku 1.:
:math:`\ \ (F-G)^+=F^+-G^+=F-G\,.\\ \\` 
Stąd :math:`\ \ F-G=\mathcal{O}\,,\ \ ` czyli :math:`\ \ F=G.`

Zapiszemy teraz i udowodnimy ważne kryterium hermitowskości operatora liniowego:

.. admonition:: Twierdzenie 2. 
   
   Jeżeli :math:`\,F\ ` jest operatorem liniowym 
   określonym na unitarnej przestrzeni :math:`\,V(C)\,,\ \,` to
   
   .. math::
      
      F=F^+\qquad\Leftrightarrow\qquad
      \langle\,x,Fx\,\rangle\in R\quad\text{dla wszystkich}\ \ x\in V\,.

**Dowód.** :math:`\,`
Ponieważ :math:`\ \ \langle\,x,F^+x\,\rangle\ =\ 
\langle\,Fx,x\,\rangle\ =\ \langle\,x,Fx\,\rangle^*\,,\ \ x\in V\,,\ \\`
to z wniosku do Lematu 1. wynika równoważność następujących warunków: 

.. math::
   
   F\ =\ F^+
   
   \langle\,x,Fx\,\rangle\ =\ \langle\,x,F^+x\,\rangle\,,\ \ x\in V\,,

   \langle\,x,Fx\,\rangle\ =\ \langle\,x,Fx\,\rangle^*\,,

   \langle\,x,Fx\,\rangle\in R\,,\ \ x\in V\,.

W mechanice kwantowej stany układu kwantowego są reprezentowane przez wektory pewnej
unitarnej przestrzeni stanów :math:`\,V(C)\,,\ ` natomiast wielkościom fizycznym 
mierzalnym w układzie odpowiadają operatory liniowe określone na tej przestrzeni.
Przyjmuje się, że jeżeli :math:`\,\|x\|=1\,,\ ` to wyrażenie :math:`\,\langle\,x,Fx\,\rangle\ `
przedstawia *wartość średnią* wielkości :math:`\,F\ ` w stanie :math:`\,x.\ `
Postulat ten ma sens tylko wtedy, gdy to wyrażenie jest rzeczywiste dla każdego
:math:`\,x\in V.\ ` Warunek taki spełniają tylko operatory hermitowskie,
tylko one mogą więc reprezentować wielkości fizyczne. :math:`\\`

.. admonition:: Twierdzenie 3.
   
   Niech :math:`\,U\,` będzie operatorem liniowym określonym na euklidesowej albo unitarnej 
   przestrzeni :math:`\,V(K),\ K\in\{R,C\}.\ \,`
   Wtedy następujące trzy warunki są równoważne:
   
   1. :math:`\ U^+U=I\,,\quad\text{gdzie}\ \,I\ \,
      \text{jest operatorem jednostkowym:}\ \,Ix=x,\ x\in V\,;`
   
   2. :math:`\ \langle\,Ux,Uy\,\rangle\,=\,\langle x,y\rangle\quad
      \text{dla dowolnych}\ \,x,y\in V\,;`
   
   3. :math:`\ \|\,Ux\,\|\,=\,\|x\|\quad\text{dla każdego}\ \,x\in V\,.`

**Dowód.**

.. math::
   
   \begin{array}{l}
   U^+U=I\quad\Rightarrow\quad\langle\,Ux,Uy\,\rangle\,=\,
   \langle\,U^+U\,x,y\,\rangle\,=\,\langle\,Ix,y\,\rangle\,=\,
   \langle x,y\rangle\,,\quad x,y\in V\,;
   \\ \\
   \begin{array}{lcl}
   \langle\,Ux,Uy\,\rangle\,=\,\langle x,y\rangle & \quad\Rightarrow & \quad
   \|\,Ux\,\|^{\,2}\,=\,\langle\,Ux,Ux\,\rangle\,=\,\langle x,x\rangle\,=\,\|x\|^2 
   \\ \\
   & \quad\Rightarrow & \quad\|\,Ux\,\|\,=\,\|x\|\,,\quad x\in V\,.
   \end{array}
   \end{array}

Pokazaliśmy, że :math:`\ \,\text{1.}\,\Rightarrow\,\text{2.}\ \,` 
oraz że :math:`\ \,\text{2.}\,\Rightarrow\,\text{3.}\ \,`
Wystarczy teraz stwierdzić, że :math:`\ \,\text{3.}\,\Rightarrow\,\text{1.}`

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \|\,Ux\,\| & = & \|x\| \\
   \|\,Ux\,\|^{\,2} & = & \|x\|^2 \\
   \langle\,Ux,Ux\,\rangle & = & \langle x,x\rangle \\
   \langle\,x,\,U^+U\,x\,\rangle & = & \langle x,Ix\rangle
   \end{eqnarray*}

Operatory :math:`\ U^+U\ \ \text{i}\ \ I\ ` są samosprzężone: 
:math:`\ (U^+U)^+=U^+U,\ \ I^+=I.\ ` W tej sytuacji z wniosku do Lematu 1. wynika, 
że zarówno w euklidesowej (rzeczywistej), jak i w unitarnej (zespolonej)
przestrzeni :math:`\,V\ ` zachodzi równość :math:`\,U^+U=I,\ ` co należało wykazać.

   
   
   

    





























