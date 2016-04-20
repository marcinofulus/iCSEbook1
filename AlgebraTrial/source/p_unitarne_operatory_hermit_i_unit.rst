
Hermitian and Unitary Operators
-------------------------------

.. Rozważamy skończenie wymiarową przestrzeń unitarną :math:`\,V(C).\ `

Zaczniemy od zapisania dwóch lematów przydatnych w dalszych rozważaniach. :math:`\\`

.. admonition:: Lemat 0.
   
   Niech :math:`\ y\in V\,,\ ` gdzie :math:`\ V\ ` jest przestrzenią unitarną.  
   Wówczas   

   .. math::
      
      \langle x,y\rangle = 0 \quad\text{dla wszystkich}\quad x\in V
      \qquad\Leftrightarrow\qquad y = \theta\,.

**Dowód.**

:math:`\ \Rightarrow\ :\ `
Jeżeli :math:`\ \ \langle x,y\rangle = 0\,,\ \ x\in V\,,\ `
to kładąc :math:`\ x=y\ ` otrzymujemy :math:`\ \langle y,y\rangle = 0\,,\ `
skąd :math:`\ y=\theta.`

:math:`\ \Leftarrow\ :\ `
Jeżeli :math:`\ y = \theta\,,\ ` to z własności iloczynu skalarnego
:math:`\ \langle x,y\rangle = \langle x,\theta\rangle = 0\,.`

.. admonition:: Wniosek.
   
   Jeżeli :math:`\ \,y_1,\,y_2\,\in\,V\,,\ ` gdzie :math:`\ V\ ` jest przestrzenią unitarną, 
   :math:`\,` to

   .. math::
      
      \langle x,y_1\rangle = \langle x,y_2\rangle \quad\text{dla wszystkich}\quad x\in V
      \qquad\Leftrightarrow\qquad y_1 = y_2\,.

Istotnie, warunek 
:math:`\ \langle x,y_1\rangle = \langle x,y_2\rangle\ \ \,\text{dla wszystkich}\quad x\in V\ `
oznacza, że

.. math::
   
   \langle\,x,\,y_1-y_2\,\rangle = 0\,,\quad x\in V
   \qquad\Leftrightarrow\qquad y_1-y_2=\theta \qquad\Leftrightarrow\qquad y_1=y_2\,.
   
   \;

W następnym lemacie występuje
*operator zerowy* :math:`\ \mathcal{O}\,,\ ` 
określony przez: :math:`\ \ \mathcal{O}(v)=\theta\,,\ \ v\in V. \\` 

.. admonition:: Lemat 1.
   
   Niech :math:`\ F\ ` będzie operatorem liniowym 
   określonym na unitarnej przestrzeni :math:`\,V.\ ` 
   Wtedy 
   
   .. math::
      
      \langle\,x,Fy\,\rangle\,=\,0 \quad\text{dla wszystkich}\quad x,y\in V
      \qquad\Leftrightarrow\qquad F=\mathcal{O}\,.

**Dowód.**

:math:`\ \Rightarrow\ :\ ` 
Jeżeli :math:`\ \ \langle x,Fy\rangle = 0 \ \ \,\text{dla wszystkich}\ \ x,y\in V\,,\ `
to kładąc :math:`\ x=Fy\ ` otrzymujemy:
 
 :math:`\ \langle Fy,Fy\rangle = 0\ \,`  
 czyli :math:`\ \,Fy=\theta\ \,` dla każdego :math:`\ y\in V\,,\ \,` 
 a to oznacza, że :math:`\ \,F=\mathcal{O}\,.` 

:math:`\ \Leftarrow\ :\ `
Jeżeli :math:`\ \,F=\mathcal{O}\,,\ ` to dla dowolnych :math:`\ x,y\in V:\ \ 
\langle x,Fy\rangle = \langle x,\mathcal{O}y\rangle = \langle x,\theta\rangle = 0\,.`

.. admonition:: Wniosek.
   
   .. Niech będą dane  operatory liniowe :math:`\ F,\,G\,\in\,\text{End}(V)\,.\ ` Wtedy

   Jeżeli :math:`\ F,\,G\ ` są operatorami liniowymi
   określonymi na unitarnej przestrzeni :math:`\,V,\ \,` to
 
   .. math::
      
      \langle\,x,Fy\,\rangle\,=\,\langle\,x,G\,y\,\rangle
      \quad\text{dla wszystkich}\quad x,y\in V
      \qquad\Leftrightarrow\qquad F=\,G\,.

Rzeczywiście, warunek :math:`\ \langle\,x,Fy\,\rangle\,=\,\langle\,x,Gy\,\rangle
\ \ \text{dla wszystkich}\ \ x,y\in V\ ` oznacza, że

.. math::
   
   \langle\,x,(F-G)\,y\,\rangle\,=\,0\,,\quad x,y\in V\qquad\Leftrightarrow\qquad F-G=\mathcal{O}
   \qquad\Leftrightarrow\qquad F=G\,.   

.. :math:`\ \langle\,x,(F-G)\,y\,\rangle\,=\,0\,,\quad x,y\in V\qquad\Leftrightarrow\qquad F-G=0
   \qquad\Leftrightarrow\qquad F=G\,.`


Hermitian Conjugation of a Linear Operator
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   *Sprzężeniem hermitowskim* :math:`\,` operatora liniowego :math:`\ F\in\,\text{End}(V)` :math:`\\`
   jest operator liniowy :math:`\ F^+\in\,\text{End}(V)\ ` spełniający warunek
   
   .. math::
      :label: F_plus_0
      
      \langle\,x,F^+y\,\rangle\,=\,\langle\,Fx,y\,\rangle
      \quad\text{dla wszystkich}\quad x,y\in V\,.

Zauważmy od razu, że jeżeli zachodzi :eq:`F_plus_0`, :math:`\,` to

.. math::
   :label: F_plus_1
   
   \langle\,F^+x,\,\,y\,\rangle\ =\ 
   \langle\,y,\,F^+x\,\rangle^*\ =\ \langle\,Fy,\,x\,\rangle^*\ =\ 
   \langle\,x,\,Fy\,\rangle\,.

Na odwrót, z :eq:`F_plus_1` wynika :eq:`F_plus_0`. Można więc zapisać

.. admonition:: Wniosek.
   
   Operator :math:`\,F^+\ ` sprzężony po hermitowsku do operatora 
   :math:`\,F\in\text{End}(V)\ ` :math:`\\`
   czyni zadość dwóm równoważnym warunkom:
   
   .. math::
      :label: F_plus_2
      
      \begin{array}{l}
      \langle\,x,F^+y\,\rangle\,=\,\langle\,Fx,y\,\rangle\,,
      \\ \\     
      \langle\,F^+x,\,\,y\,\rangle\ =\ \langle\,x,\,Fy\,\rangle
      \end{array}      
      \qquad\text{dla wszystkich}\quad x,y\in V\,.
   
Wyjaśnimy teraz następujące kwestie związane z tak sformułowaną definicją:

1. czy wzory :eq:`F_plus_2` określają operator :math:`\,F^+\ ` w tym sensie, 
   że przy danym operatorze :math:`F\,` można efektywnie wyznaczyć 
   obraz :math:`\,F^+y\ ` dowolnego wektora :math:`\,y\in V\,?`

2. czy faktycznie operator :math:`\,F^+\ ` jest liniowy?

3. czy operator :math:`\,F^+\ ` jest określony jednoznacznie?

Dla odpowiedzi załóżmy, że :math:`\,\dim V=n\ ` oraz że 
:math:`\ \mathcal{B}=(u_1,u_2,\ldots,u_n)\ ` jest bazą ortonormalną.

1. Podstawienie :math:`\ x=u_i\ ` w :eq:`F_plus_0` daje wyrażenie
   dla :math:`\,i`-tej współrzędnej wektora :math:`\,F^+y :`
   
   .. math::
      
      (F^+y)_{\,i}\ =\ \langle u_i,F^+y\rangle\ =\ \langle Fu_i,y\rangle\,,
      \qquad i=1,2,\dots,n.

   W ten sposób wektor :math:`\,F^+y\ ` jest wyznaczony 
   poprzez swoje współrzędne w bazie :math:`\ \mathcal{B}.`

2. Z własności iloczynu skalarnego wynika, że dla dowolnego :math:`\,x\in V:`
   
   .. math::

      \begin{array}{rcl}
      \langle\,x,\,F^+(\alpha_1\,y_1+\alpha_2\,y_2)\,\rangle & = &      
      \langle\,Fx,\,\alpha_1\,y_1\,+\,\alpha_2\,y_2\,\rangle\,= \\ \\
      & = & \alpha_1\,\langle Fx,y_1\rangle\,+\,\alpha_2\:\langle Fx,y_2\,\rangle\,= \\ \\
      & = & \alpha_1\,\langle x,F^+y_1\rangle\,+\,\alpha_2\:\langle x,F^+y_2\,\rangle\,= \\ \\
      & = & \langle\,x,\,\alpha_1\,F^+y_1+\alpha_2\,F^+y_2\,\rangle\,.
      \end{array}

   Korzystając z wniosku do Lematu 0. stwierdzamy liniowość operatora :math:`\,F^+:`
   
   .. math::
      
      F^+(\alpha_1\,y_1+\alpha_2\,y_2)\,=\ \alpha_1\,F^+y_1+\alpha_2\,F^+y_2\,,
      \qquad\alpha_1,\alpha_2\in C,\ \ y_1,y_2\in V\,.

3. Dla wykazania jednoznaczności określenia operatora :math:`\,F^+\ ` przypuśćmy, :math:`\\`
   że oprócz niego jakiś inny operator :math:`\,G\ ` spełnia warunek
   :eq:`F_plus_0`:
   
   .. math::
      
      \langle\,x,F^+y\,\rangle\,=\,\langle\,Fx,y\,\rangle
      \quad\text{oraz}\quad
      \langle\,x,Gy\,\rangle\,=\,\langle\,Fx,y\,\rangle
      \quad\text{dla wszystkich}\quad x,y\in V\,.

   Oznacza to, że :math:`\ \langle\,x,F^+y\,\rangle\,=\,\langle\,x,Gy\,\rangle\ `
   dla wszystkich :math:`\ x,y\in V\,.\ ` Z Lematu 1. wynika, że wtedy :math:`\,G=F^+.\ `
   Warunki :eq:`F_plus_2` określają więc operator :math:`\,F^+\ ` jednoznacznie.

   .. Istnieje więc dokładnie jeden operator liniowy :math:`\,F^+,\ `
      spełniający :eq:`F_plus_2`. :math:`\\`

Kwestię istnienia i jednoznaczności operatora :math:`\,F^+\ ` wyjaśnia niezależnie

.. admonition:: Twierdzenie 8.
   
   Operator liniowy :math:`\,\widetilde{F}\ ` jest sprzężeniem hermitowskim
   operatora liniowego :math:`\,F\ ` :math:`\\`
   wtedy i tylko wtedy, gdy jego macierz w ortonormalnej bazie :math:`\,\mathcal{B}\ ` :math:`\\` 
   jest sprzężeniem hermitowskim macierzy operatora :math:`\,F\ ` w tej bazie:

   .. math::
      
      \widetilde{F}=F^+\quad\Leftrightarrow\quad 
      M_{\mathcal{B}}(\widetilde{F})\,=\,[\,M_{\mathcal{B}}(F)\,]^+\,,
      \qquad F,\,\widetilde{F}\,\in\,\text{End}(V)\,.

**Dowód.** :math:`\,` Niech :math:`\ \ \mathcal{B}=(u_1,u_2,\ldots,u_n),\ \ 
M_{\mathcal{B}}(F)=\boldsymbol{F}=[\,\varphi_{ij}\,]_{n\times n}\,,\ \ 
M_{\mathcal{B}}(\widetilde{F})=\widetilde{\boldsymbol{F}}=
[\,\widetilde{\varphi}_{ij}\,]_{n\times n}\,.`
   
.. .. math::
   
   M_{\mathcal{B}}(F)=\boldsymbol{F}=[\,\varphi_{ij}\,]_{n\times n}\,,\quad
   M_{\mathcal{B}}(F^+)=\widetilde{\boldsymbol{F}}=[\,\widetilde{\varphi}_{ij}\,]_{n\times n}\,.

:math:`\ \Rightarrow\ :\ `
Zakładamy, że :math:`\ \widetilde{F}=F^+,\ ` czyli że dla operatora :math:`\ \widetilde{F}\ `
spełniony jest warunek :eq:`F_plus_0`:

.. math::
   :label: x_Ft_y
      
   \langle\,x,\widetilde{F}y\,\rangle\,=\,\langle\,Fx,y\,\rangle
   \quad\text{dla wszystkich}\quad x,y\in V\,.

Podstawiając tam :math:`\,x=u_i,\,y=u_j\ ` otrzymujemy:

.. math::
   
   \widetilde{\varphi}_{ij}\,=\,
   \langle\,u_i\,,\widetilde{F}u_j\,\rangle\,=\,\langle\,Fu_i,u_j\,\rangle\,=\,
   \langle\,u_j,Fu_i\,\rangle^*\,=\,
   \varphi_{ji}^*\,=\,\varphi_{ij}^+\,,\qquad i,j=1,2,\ldots,n.

Równość odpowiednich elementów macierzowych oznacza równość macierzy:
   
.. math::
      
   \widetilde{\boldsymbol{F}}=\boldsymbol{F}^+
   \qquad\text{czyli}\qquad
   M_{\mathcal{B}}(\widetilde{F})\ =\ \left[\,M_{\mathcal{B}}(F)\,\right]^+.

:math:`\ \Leftarrow\ :\ `
Przyjmujemy, że :math:`\ M_{\mathcal{B}}(\widetilde{F})\ =\ 
\left[\,M_{\mathcal{B}}(F)\,\right]^+,\ \,`
czyli że :math:`\ \widetilde{\boldsymbol{F}}=\boldsymbol{F}^+.`

Trzeba pokazać, że operator :math:`\,\widetilde{F}\ ` spełnia warunek :eq:`x_Ft_y`, :math:`\,`
co będzie oznaczać, że :math:`\ \widetilde{F}=F^+.`

Niech :math:`\ \ x\,=\,\displaystyle\sum_{i\,=\,1}^n\ \alpha_i\,u_i\,,\ \ 
y=\displaystyle\sum_{j\,=\,1}^n\ \beta_j\,u_j\,.\ ` Wtedy

.. math::
      
   \begin{array}{rcl}
   \langle\,x,\widetilde{F}y\,\rangle & =\ & 
   \left\langle\ \;\displaystyle\sum_{i\,=\,1}^n\ \alpha_i\,u_i\,,\ \widetilde{F}
   \left(\:\sum_{j\,=\,1}^n\ \beta_j\,u_j\right)\;\right\rangle\ \ =
   \\ \\
   & =\ \ & \displaystyle\sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ 
   \langle\,u_i,\widetilde{F}u_j\,\rangle \ \,=\ \,
   \sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ \widetilde{\varphi}_{ij}\ \ =
   \\
   & =\ \ & \displaystyle\sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ \varphi_{ij}^+\ \,=\ \, 
   \sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ \varphi_{ji}^*\ \,=
   \\
   & =\ \ & \displaystyle\sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ 
   \langle\,u_j,Fu_i\,\rangle^*\ \,=\ \,
   \sum_{i,\,j=1}^n\,\alpha_i^*\,\beta_j\ \langle\,Fu_i,u_j\,\rangle\ \,=
   \\ \\
   & =\ \ & \left\langle\ F\,\left(\,\displaystyle\sum_{i\,=\,1}^n\ \alpha_i\,u_i\right)\,,\ \ 
   \displaystyle\sum_{j\,=\,1}^n\ \beta_j\,u_j\,\right\rangle\ \ =
   \ \ \langle\,Fx,y\,\rangle\,.
   \end{array}

Nazywając sprzężeniem hermitowskim również samą operację sprzężenia, można zapisać

.. Tezę twierdzenia 8. można powtórzyć bardziej konkretnie jako

.. admonition:: Wniosek.
   
   Sprzężenie hermitowskie operatora liniowego :math:`\,F\ ` jest równoważne sprzężeniu :math:`\\` 
   hermitowskiemu macierzy tego operatora w każdej ortonormalnej bazie :math:`\,\mathcal{B}:`

   .. math::
      :label: M_B_F_plus
      
      M_{\mathcal{B}}(F^+)\ =\ \left[\,M_{\mathcal{B}}(F)\,\right]^+\,.

.. .. math::
      
      G=F^+\quad\Leftrightarrow\quad M_{\mathcal{B}}(G)\,=\,[\,M_{\mathcal{B}}(F)\,]^+\,,
      \qquad F,\,G\,\in\,\text{End}(V)\,.

:math:`\;`

**Własności operacji sprzężenia hermitowskiego.** :math:`\\`

1. Sprzężenie sumy operatorów równa się sumie ich sprzężeń :
   
   .. math::
      
      (F+G)^+\,=\;F^++\:G^+\,,\qquad F,\,G\,\in\,\text{End}(V)\,.

2. Pomnożenie operatora przez liczbę zespoloną :math:`\ \alpha\ ` 
   mnoży jego sprzężenie przez :math:`\ \alpha^*:`
   
   .. math:: 
      
      (\alpha\,F)^+\ =\ \;\alpha^*\,F^+\,,\qquad\alpha\in C,\ \ F\in\text{End}(V)\,.

3. Sprzężenie iloczynu (tj. złożenia) operatorów równa się iloczynowi sprzężeń :math:`\\`
   z odwróceniem kolejności czynników :
   
   .. math::
      
      (F\,G)^+\ =\ \;G^+\,F^+\,,\qquad F,\,G\,\in\,\text{End}(V)\,.

4. Dwukrotne sprzężenie przywraca wyjściowy operator :
   
   .. math::
      
      (F^+)^+\,=\ F\,,\qquad F\in\text{End}(V)\,.


**Dowody własności** opierają się na Lemacie 1. poprzedzającym tę sekcję. :math:`\\`

1. Wykorzystując definicję sumy dwóch operatorów liniowych otrzymujemy równości:
   
   .. math::
      
      \begin{array}{lcl}
      \langle\,x,\,(F+G)^+\,y\,\rangle & \ = & \ \langle\,(F+G)\,x,\,y\,\rangle\ \ =
      \\ \\     
      & \ = & \ \langle\,Fx+Gx,\,y\,\rangle\ \ =
      \\ \\
      & \ = & \ \langle\,Fx,y\,\rangle + \langle\,Gx,\,y\,\rangle\ \ =
      \\ \\
      & \ = & \ \langle\,x,F^+y\,\rangle + \langle\,x,G^+y\,\rangle\ \ =
      \\ \\
      & \ = & \ \langle\,x,F^+y+G^+y\,\rangle\quad=\quad\langle\,x,(F^+\!+G^+)\,y\,\rangle\,;
      \\ & &
      \end{array}

      \langle\,x,\,(F+G)^+\,y\,\rangle = \langle\,x,(F^+\!+G^+)\,y\,\rangle, \ \ x,y\in V
      \quad\Rightarrow\quad (F+G)^+\ =\ F^++\,G^+ .

2. Dowód w tym przypadku przebiega podobnie jak w punkcie 1.

3. Z definicji złożenia dwóch operatorów liniowych wynikają równości:
   
   .. math::
      
      \begin{array}{rclcl}
      \langle\,x,\,(F\,G)^+\,y\,\rangle & = & 
      \langle\,(F\,G)\,x,\,y\,\rangle\ \ =\ \ \langle\,F(Gx),\,y\,\rangle & = &
      \\ \\
      & = & \langle\,Gx,F^+y\,\rangle\ \ =\ \ \langle\,x,G^+(F^+y)\,\rangle & = &
      \langle\,x,(G^+F^+)\,y\,\rangle\,;
      \\ & & & &
      \end{array}

      \langle\,x,\,(F\,G)^+\,y\,\rangle = \langle\,x,(G^+F^+)\,y\,\rangle,\ \ x,y\in V
      \qquad\Rightarrow\qquad
      (F\,G)^+\ =\ G^+F^+\,.

4. Odwołując się do wzorów :eq:`F_plus_2` otrzymujemy:
   
   .. math::
      
      \begin{array}{c}
      \langle\,x,\,(F^+)^+\,y\,\rangle\ =\ \langle\,F^+x,\,\,y\,\rangle\ =\ 
      \langle\,x,\,Fy\,\rangle\,; 
      \\ \\
      \langle\,x,\,(F^+)^+\,y\,\rangle\ =\ \langle\,x,\,Fy\,\rangle\,,\quad x,y\in V
      \qquad\Rightarrow\qquad 
      (F^+)^+\ =\ F\,.
      \end{array}

.. admonition:: Wniosek.
   
   Sprzężenie hermitowskie jest operacją antyliniową:
   
   .. math::
      
      (\alpha\,F+\beta\,G)^+\ =\ \,
      \alpha^*\,F^+\,+\,\beta^*\,G^+\,,\qquad
      \alpha,\beta\in C\,,\quad F,\,G\in\,\text{End}(V)\,.

W świetle Twierdzenia 8. i wynikającego z niego wniosku analogia między własnościami
operacji sprzężenia hermitowskiego macierzy i operatorów liniowych jest nieprzypadkowa. :math:`\\`


Hermitian Operators
~~~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Operator liniowy :math:`\,F\in\text{End}(V)\ ` jest :math:`\,` 
   *operatorem hermitowskim*, :math:`\\`
   gdy równa się swojemu sprzężeniu hermitowskiemu :
   
   .. math::
      
      F=F^+\qquad\text{czyli}\qquad\langle\,x,Fy\,\rangle\ =\ \langle\,Fx,y\,\rangle\quad
      \text{dla wszystkich}\quad x,y\in V\,.

W szczególności, dla hermitowskiego operatora :math:`\,F\,:`

.. math::
   :label: x_F_x
   
   \langle\,x,Fx\,\rangle\ =\ \langle\,Fx,x\,\rangle\quad
   \text{dla wszystkich}\quad x\in V\,.

Z wniosku do Twierdzenia 8. wynika bezpośrednio

.. admonition:: Twierdzenie 9.
   
   Operator liniowy :math:`\,F\in\text{End}(V)\ ` jest hermitowski 
   wtedy i tylko wtedy, 
   gdy jego macierz w każdej ortonormalnej bazie :math:`\,\mathcal{B}\ ` przestrzeni :math:`\ V\ `
   jest hermitowska:

   .. math::
      
      F=F^+\quad\Leftrightarrow\quad M_{\mathcal{B}}(F)\,=\,[\,M_{\mathcal{B}}(F)\,]^+\,,
      \qquad F\in\text{End}(V)\,.

W dalszym ciągu będziemy się odwoływać do kryterium rzeczywistości liczby zespolonej :math:`\,z:`

.. math::
   
   z\in R\quad\Leftrightarrow\quad z^*=\,z\,,\qquad z\in C\,.

**Własności operatorów hermitowskich.** :math:`\\`

Niech będzie dany operator hermitowski :math:`\,F\in\text{End}(V).\ ` Wtedy: :math:`\\`

1. Wyrażenie :math:`\,\langle x,Fx\rangle\ ` jest liczbą rzeczywistą 
   dla każdego :math:`\,x\in V.`
   
   Istotnie, na podstawie definicji iloczynu skalarnego i wzoru :eq:`x_F_x` mamy
 
   .. math::
      
      \langle\,x,Fx\,\rangle^*\ =\ \langle\,Fx,x\,\rangle\ =\ \langle\,x,Fx\,\rangle
      \qquad\Rightarrow\qquad\langle\,x,Fx\,\rangle\in R.

   Można udowodnić, że warunek rzeczywistości wyrażenia :math:`\,\langle x,Fx\rangle\ `
   dla każdego :math:`\,x\in V\ ` jest nie tylko konieczny, ale i wystarczający 
   dla hermitowskości operatora :math:`\,F.\ ` Stąd

   .. admonition:: Wniosek.
      
      Jeżeli :math:`\,F\in\text{End}(V)\,,\ ` to
      :math:`\qquad F\ =\ F^+\quad\Leftrightarrow\quad
      \langle\,x,Fx\,\rangle\in R\,,\quad x\in V\,.`

:math:`\;`

2. Wartości własne operatora :math:`\,F\ ` są rzeczywiste.
   
   **Dowód.** :math:`\,` 
   Niech :math:`\quad Fv\,=\,\lambda\,v\,,\quad v\in V\!\smallsetminus\!\{\theta\},\quad
   \lambda\in C\,.\ \ ` 
   Wzór :eq:`x_F_x` daje:
   
   .. math::
      :nowrap:

      \begin{eqnarray*}
      \langle\,v,Fv\,\rangle & \! = \! & \langle\,Fv,v\,\rangle\,,                   \\
      \langle\,v,\,\lambda\,v\,\rangle & \! = \! & \langle\,\lambda\,v,v\,\rangle\,, \\
      \lambda\ \langle v,v\rangle & \! = \! & \lambda^*\;\langle v,v\rangle\,,       
      \quad\text{gdzie}\quad\langle v,v\rangle>0\,;                                  \\
      \lambda & \! = \! & \lambda^* \quad\ \ \Leftrightarrow\quad\ \ \,\lambda\in R\,.
      \end{eqnarray*}

3. Wektory własne operatora :math:`\,F,\ ` należące do różnych wartości własnych, są ortogonalne.

   **Dowód.** :math:`\,` 
   Niech :math:`\quad Fv_1\,=\,\lambda_1\,v_1\,,\ \ Fv_2\,=\,\lambda_2\,v_2\,,\quad
   v_1,v_2\in V\!\smallsetminus\!\{\theta\}\,,\quad\lambda_1\neq\lambda_2\,.`
   
   Biorąc za punkt wyjścia definicję operatora hermitowskiego, otrzymujemy
   
   .. math::
      :nowrap:

      \begin{eqnarray*}      
      \langle\,v_1,Fv_2\,\rangle & = & \langle\,Fv_1,v_2\,\rangle \\
      \langle\,v_1,\lambda_2\,v_2\,\rangle & = & \langle\,\lambda_1\,v_1,v_2\,\rangle \\
      \lambda_2\ \langle v_1,v_2\rangle & = & \lambda_1^*\ \langle v_1,v_2\rangle \\      
      \lambda_2\ \langle v_1,v_2\rangle & = & \lambda_1\ \langle v_1,v_2\rangle \\
      (\lambda_2-\lambda_1)\ \langle v_1,v_2\rangle & = & 0\,.
      \end{eqnarray*}
   
   Skoro z założenia :math:`\ \lambda_1\neq\lambda_2\,,\ ` 
   to musi być :math:`\ \langle v_1,v_2\rangle=0\,,\ ` co należało wykazać. :math:`\\`

Wektory własne hermitowskiego operatora :math:`\,F\ ` należące do różnych wartości własnych
tworzą więc układ ortogonalny.
Z każdego ortogonalnego układu wektorów można otrzymać, poprzez unormowanie jego elementów, 
układ ortonormalny. Wynika stąd

.. admonition:: Wniosek.
      
   Jeżeli operator hermitowski :math:`\,F,\ ` określony na :math:`\,n`-wymiarowej
   przestrzeni unitarnej :math:`\,V,\ ` ma :math:`\,n\,` różnych wartości własnych,
   to istnieje ortonormalna baza przestrzeni :math:`\,V,\ ` 
   złożona z wektorów własnych tego operatora.

.. (faktycznie, warunek :math:`\,n\,` różnych wartości własnych 
   nie jest konieczny do istnienia takiej bazy)

Unitary Operators
~~~~~~~~~~~~~~~~~

.. admonition:: Definicja.
   
   Operator liniowy :math:`\,U\ ` określony na przestrzeni unitarnej :math:`\,V\ `
   jest *unitarny*, :math:`\,` gdy
   
   .. math::
      
      U^+U\ =\ I\,,
      
   gdzie :math:`\,I\ ` jest operatorem jednostkowym 
   określonym przez warunek: :math:`\,I(v)=v\,,\ v\in V.`

Operatory unitarne są ściśle związane z macierzami unitarnymi. Zachodzi mianowicie

.. admonition:: Twierdzenie 10.
   
   Operator liniowy :math:`\ U\ ` określony na :math:`\,n`-wymiarowej 
   przestrzeni unitarnej :math:`\,V\ ` jest unitarny wtedy i tylko wtedy, 
   gdy jego macierz w każdej ortonormalnej bazie :math:`\ \mathcal{B}\ ` jest unitarna:
   
   .. math::
      
      U^+U\ =\ I\qquad\Leftrightarrow\qquad
      \boldsymbol{B}^+\boldsymbol{B}\ =\ \boldsymbol{I}_n\,,
   
   gdzie :math:`\ \ \boldsymbol{B}\,=\,M_{\mathcal{B}}(U)\,,\ \ \boldsymbol{I}_n\ ` 
   - :math:`\,` macierz jednostkowa stopnia :math:`\,n.`

**Dowód.**

Odwzorowanie :math:`\,M_{\mathcal{B}}:\,\text{End}(V)\rightarrow M_n(C)\,,\,`
które przypisuje operatorom liniowym macierze, jako izomorfizm algebr jest wzajemnie jednoznaczne 
i multiplikatywne. :math:`\\`
Stąd, a także z równania :eq:`M_B_F_plus` wynika ciąg równoważnych związków:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   U^+U & = & I\,, \\
   M_{\mathcal{B}}(U^+U) & = & M_{\mathcal{B}}(I)\,, \\
   M_{\mathcal{B}}(U^+)\,M_{\mathcal{B}}(U) & = & M_{\mathcal{B}}(I)\,, \\ 
   \left[\,M_{\mathcal{B}}(U)\,\right]^+M_{\mathcal{B}}(U) & = & M_{\mathcal{B}}(I)\,, \\
   \boldsymbol{B}^+\boldsymbol{B} & = & \boldsymbol{I}_n\,.
   \end{eqnarray*} 

**Własności operatorów unitarnych.**

Niech :math:`\ U\ ` będzie operatorem unitarnym, określonym na unitarnej przestrzeni :math:`\,V:`

.. math::
   :label: U0

   U^+U\ =\ I\,.

0. Z warunku :eq:`U0` wynika istnienie operatora odwrotnego :math:`\ U^{-1}=U^+\ ` oraz zależność
   
   .. math::
      
      UU^+\ =\ \left(U^+\right)^+\,U^+\ =\ I\,,

   która oznacza, że jeśli :math:`\ U\ ` jest operatorem unitarnym, 
   to unitarny jest również :math:`\\`
   operator sprzężony :math:`\ U^+\ ` 
   i :math:`\,` operator odwrotny :math:`\ U^{-1}\,.`

1. Iloczyn (tj. złożenie) dwóch operatorów unitarnych jest operatorem unitarnym.
   
   Rzeczywiście, jeżeli :math:`\,U_1^+U_1=U_2^+U_2=I\,,\ \ ` to
   korzystając z własności sprzężenia :math:`\\` 
   hermitowskiego operatorów i z łączności składania operatorów, otrzymujemy
   
   .. math::
      
      (U_1\,U_2)^+(U_1\,U_2)\ =\ 
      (U_2^+\,U_1^+)(U_1\,U_2)\ =\ 
      U_2^+\,(U_1^+U_1)\,U_2\ =\ 
      U_2^+\,I\ U_2\ =\ 
      U_2^+\,U_2\ =\ I\,.
   
   Składanie jest więc działaniem w zbiorze operatorów unitarnych. :math:`\\`
   Ponieważ operator jednostkowy :math:`\,I\,` jest unitarny oraz odwrotność
   operatora unitarnego jest operatorem unitarnym, można zapisać
   
   .. admonition:: Wniosek.
      
      Operatory unitarne określone na przestrzeni :math:`\,V\ ` tworzą (nieprzemienną) grupę 
      ze względu na składanie operatorów.

   :math:`\,`

2. Operator :math:`\ U\ ` zachowuje iloczyn skalarny wektorów:
   
   .. math::
      :label: U1
      
      \langle\,Ux,\,Uy\,\rangle\ =\ \langle x,y\rangle\,,\qquad x,y\in V\,,
   
   bo :math:`\quad\langle\,Ux,\,Uy\,\rangle\ =\ \langle\,U^+U\,x,\,y\,\rangle\ =\ 
   \langle\,Ix,y\,\rangle\ =\ \langle x,y\rangle\,.`
   
   W szczególności, :math:`\ U\ ` zachowuje kwadrat skalarny,  a więc i normę wektora:
   
   .. math::
      :label: U2
      
      \|\,Ux\,\|\ =\ \|x\|\,,\qquad x\in V\,,

   bo :math:`\quad\|\,Ux\,\|^{\,2}\ =\ \langle\,Ux,Ux\,\rangle\ =\ \langle\,U^+U\,x,\,x\,\rangle\ =\ 
   \langle x,x\rangle\,.`

   Zachowanie normy (uogólnionej długości) wektora przy działaniu operatora :math:`\ U\ ` 
   pozwala interpretować to działanie jako operację uogólnionego obrotu
   wektora w przestrzeni :math:`\ V.`
   
   Można udowodnić, że warunki :math:`\,` :eq:`U0`, :math:`\,` :eq:`U1` :math:`\,` 
   i :math:`\,` :eq:`U2` :math:`\,` są sobie równoważne, :math:`\\`
   wobec czego każdy z nich może stanowić definicję operatora unitarnego. :math:`\\`

3. Wartości własne operatora :math:`\ U\ ` są liczbami zespolonymi o module :math:`\,1.`
   
   **Dowód.** :math:`\,`

   Załóżmy, że :math:`\ v\ ` jest wektorem własnym operatora :math:`\ U\ ` 
   dla wartości :math:`\ \lambda\in C.\ ` Wtedy

   .. Niech :math:`\quad Uv=\lambda\,v\,,\quad\theta\neq v\in V\,,\quad\lambda\in C.\ ` Wtedy
   
   .. math::
      :nowrap:
      
      \begin{eqnarray*}
      Uv & = & \lambda\,v\,,\quad v\neq\theta\,, \\
      \|\,Uv\,\| & = & \|\,\lambda\,v\,\|\,, \\
      \|v\| & = & |\lambda|\ \|v\|\,, \\
      (|\lambda|-1)\ \|v\| & = & 0\,,\quad\|v\|\neq 0\,, \\
      |\lambda|-1 & = & 0\,, \\
      |\lambda| & = & 1\,.
      \end{eqnarray*}

4. Wektory własne operatora :math:`\ U\ ` należące do różnych wartości są ortogonalne.

   **Dowód.** :math:`\,` 
   Niech :math:`\quad Uv_1\,=\,\lambda_1\,v_1\,,\ \ Uv_2\,=\,\lambda_2\,v_2\,,\quad
   v_1,v_2\in V\!\smallsetminus\!\{\theta\}\,,\quad\lambda_1\neq\lambda_2\,.`

   Wiemy już, że :math:`\quad|\lambda_1|=|\lambda_2|=1\,,\quad`
   skąd :math:`\quad|\lambda_1|^2=\lambda_1^*\,\lambda_1=1\,,\quad\lambda_1^*=1/\lambda_1\,.\ `
   Stąd

   .. .. math::
      
      \begin{array}{rcccl}
      \langle v_1,v_2\rangle & = & \langle\,Uv_1,\,Uv_2\,\rangle & = & \\ 
      & = & \langle\,\lambda_1\,v_1,\,\lambda_2\,v_2\,\rangle & = & \\
      & = & \lambda_1^*\,\lambda_2\,\langle v_1,v_2\rangle & = & 
      \displaystyle\frac{\lambda_2}{\lambda_1}\ \ \langle v_1,v_2\rangle\,.
      \end{array}
   
   :math:`\langle v_1,v_2\rangle\ =\ \langle\,Uv_1,\,Uv_2\,\rangle\ =\ 
   \langle\,\lambda_1\,v_1,\,\lambda_2\,v_2\,\rangle\ =\ 
   \lambda_1^*\;\lambda_2\ \langle v_1,v_2\rangle\ =\ 
   \displaystyle\frac{\lambda_2}{\lambda_1}\ \ \langle v_1,v_2\rangle\,,`

   :math:`\left(\,1\ -\ \displaystyle\frac{\lambda_2}{\lambda_1}\;\right)\ 
   \langle v_1,v_2\rangle\ =\ 0\,,\quad\text{więc}\ \ \text{jeśli}\quad\lambda_1\neq\lambda_2\,,
   \quad\text{to}\quad\langle v_1,v_2\rangle\ =\ 0\,.`


   

























