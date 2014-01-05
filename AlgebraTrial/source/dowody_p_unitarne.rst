
Przestrzenie unitarne
---------------------

.. admonition:: Twierdzenie.
   
   Nierówność Schwarza w unitarnej przestrzeni :math:`\,V(C):`
   
   .. math::
      
      |\,\langle x,y\rangle\,|^2\ \ \leq\ \ 
      \langle x,x\rangle\,\langle y,y\rangle\,,\qquad x,y\in V(C)\,,
   
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

Wtedy :math:`\ \,y=\alpha\,x\ \ \text{lub}\ \ \,x=\alpha\,y\ \,` dla pewnego :math:`\ \alpha\in C.`

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
   |\,\langle\alpha\,y,\,y\rangle\,|^2\ \,=\ \,
   |\,\alpha^*\,\langle y,y\rangle\,|^2\ \,=\ \,|\alpha|^2\ \langle y,y\rangle^2\,,
   \\
   \langle x,x\rangle\,\langle y,y\rangle\ \,=\ \,
   \langle\alpha\,y,\,\alpha\,y\rangle\,\langle y,y\rangle\ \,=\ \,
   \alpha^*\alpha\ \langle y,y\rangle\ \langle y,y\rangle\,=\ \,
   |\alpha|^2\ \langle y,y\rangle^2\,.
   \end{array}

W obydwu sytuacjach 
:math:`\ \ |\,\langle x,y\rangle\,|^2\ \,=\ \,\langle x,x\rangle\,\langle y,y\rangle\,.`

W ten sposób stwierdziliśmy, że

.. math::
   
   x,y\ \ \text{są liniowo zależne}
   \qquad\Rightarrow\qquad
   |\,\langle x,y\rangle\,|^2\ \ =\ \ \langle x,x\rangle\,\langle y,y\rangle\,.
   












