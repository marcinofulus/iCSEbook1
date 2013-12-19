
Przestrzenie unitarne
---------------------

.. admonition:: Twierdzenie.
   
   Nierówność Schwarza w unitarnej przestrzeni :math:`\,V(C):`
   
   .. math::
      
      |\,(x,y)\,|^2\ \ \leq\ \ (x,x)\,(y,y)\,,\qquad x,y\in V(C)\,,
   
   przechodzi w równość wtedy i tylko wtedy, :math:`\,`
   gdy wektory :math:`\,x,y\ ` są liniowo zależne:
   
   .. math::
   
      |\,(x,y)\,|^2\ \,=\ \,(x,x)\,(y,y)
      \qquad\Leftrightarrow\qquad
      (x,y)\ \ -\ \ \text{układ liniowo zależny}\,.

**Dowód.**

:math:`\ \Rightarrow\,:\ ` Załóżmy, że wektory :math:`\,x,y\ ` są liniowo niezależne. 

Wtedy :math:`\ y\neq\theta,\ ` a ponadto (ponieważ każda nietrywialna kombinacja liniowa 
wektorów liniowo niezależnych jest różna od wektora zerowego)  
dla dowolnego :math:`\,\alpha\in C:`

.. math::
   
   x-\alpha\,y\ \,=\ \,1\cdot x\,-\,\alpha\cdot y\ \neq\ \theta\,,

   (x-\alpha\,y,\,x-\alpha\,y)\ >\ 0\,.

.. Korzystając, jak w ogólnym dowodzie nierówności Schwarza, z własności iloczynu skalarnego
   i podstawiając :math:`\ \ \alpha\ =\ \displaystyle\frac{(x,y)^*}{(y,y)}\,,\ `
   dochodzimy do ostrej nierówności

Podstawiając, jak w dowodzie nierówności Schwarza,
:math:`\ \,\alpha\ =\ \displaystyle\frac{(x,y)^*}{(y,y)}\ ,\ ` otrzymujemy

.. math::
   
   (x,x)\,(y,y)\ \ >\ \ |\,(x,y)\,|^2\,.

Pokazaliśmy więc, że

.. math::
   
   x,y\ \ \text{są liniowo niezależne}
   \qquad\Rightarrow\qquad
   |\,(x,y)\,|^2\ \ \neq\ \ (x,x)\,(y,y)\,,

co przez kontrapozycję jest równoważne implikacji

.. math::
   
   |\,(x,y)\,|^2\ \ =\ \ (x,x)\,(y,y)
   \qquad\Rightarrow\qquad
   x,y\ \ \text{są liniowo zależne}\,.

:math:`\ \Leftarrow\,:\ ` Zakładamy, że wektory :math:`\,x,y\ ` są liniowo zależne. 

Wtedy :math:`\ \,y=\alpha\,x\ \ \text{lub}\ \ \,x=\alpha\,y\ \,` dla pewnego :math:`\ \alpha\in C.`

W pierwszym przypadku

.. math::
   
   \begin{array}{l}
   |\,(x,y)\,|^2\ \,=\ \,|\,(x,\,\alpha\,x)\,|^2\ \,=\ \,
   |\,\alpha\,(x,x)\,|^2\ \,=\ \,|\alpha|^2\ (x,x)^2\,,
   \\
   (x,x)\,(y,y)\ \,=\ \,(x,x)\,(\alpha\,x,\,\alpha\,x)\ \,=\ \,
   (x,x)\ \alpha^*\alpha\,(x,x)\ \,=\ \,|\alpha|^2\ (x,x)^2\,.
   \end{array}

W drugim przypadku

.. math::
   
   \begin{array}{l}
   |\,(x,y)\,|^2\ \,=\ \,|\,(\alpha\,y,\,y)\,|^2\ \,=\ \,
   |\,\alpha^*\,(y,y)\,|^2\ \,=\ \,|\alpha|^2\ (y,y)^2\,,
   \\
   (x,x)\,(y,y)\ \,=\ \,(\alpha\,y,\,\alpha\,y)\,(y,y)\ \,=\ \,
   \alpha^*\alpha\ (y,y)\ (y,y)\,=\ \,|\alpha|^2\ (y,y)^2\,.
   \end{array}

W obydwu sytuacjach :math:`\ \ |\,(x,y)\,|^2\ \,=\ \,(x,x)\,(y,y)\,.`

W ten sposób stwierdziliśmy, że

.. math::
   
   x,y\ \ \text{są liniowo zależne}
   \qquad\Rightarrow\qquad
   |\,(x,y)\,|^2\ \ =\ \ (x,x)\,(y,y)\,.
   












