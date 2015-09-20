
Kernel, Image and the Rank-Nullity Theorem
------------------------------------------

Niech :math:`\,V\ \,\text{i}\ \ W\ ` będą przestrzeniami wektorowymi nad ciałem :math:`\,K.`

.. admonition:: Definicja. :math:`\\`
   
   *Jądro* (ang. kernel) przekształcenia liniowego :math:`\,F\in\text{Hom}(V,W)\ ` 
   jest zbiorem tych wektorów przestrzeni :math:`\,V,\ ` których obrazem jest wektor zerowy
   przestrzeni :math:`\,W:`
   
   .. math::
      
      \text{Ker}\,F\ :\,=\ \{\,v\in V:\ F(v)=\theta_W\}\,.

Jądro homomorfizmu :math:`\,F\ ` można też określić jako przeciwobraz 
jednoelementowego zbioru zawierającego wektor zerowy przestrzeni 
:math:`\,W:\ \ \text{Ker}\,F\,=\,F^{\leftarrow}\{\,\theta_W\}.`

.. admonition:: Definicja. :math:`\\`
   
   *Obraz* (ang. image) przekształcenia liniowego :math:`\,F\in\text{Hom}(V,W)\ ` 
   jest obrazem przestrzeni :math:`\,V\ ` przy odwzorowaniu :math:`\,F,\ ` 
   czyli zbiorem wartości odwzorowania :math:`\,F:`
   
   .. math::
      
      \text{Im}\,F\ :\,=\ F(V)\ \equiv\ \{\,F(v):\ v\in V\,\}\,.

Oczywiście :math:`\,\text{Ker}\,F\subset V,\ \text{Im}\,F\subset W.\ ` :math:`\,` Co więcej, zachodzi

.. admonition:: Twierdzenie 6. :math:`\\`
   
   Jądro przekształcenia liniowego :math:`\,F\in\text{Hom}(V,W)\ `
   jest podprzestrzenią przestrzeni :math:`\,V,\ ` a jego obraz :math:`\ ` - :math:`\ `
   podprzestrzenią przestrzeni :math:`\,W:`
   
   .. math::
      
      \text{Ker}\,F < V,\qquad\text{Im}\,F < W.

**Dowód** opiera się na kryterium dla podprzestrzeni: :math:`\,`
podzbiór :math:`\,X\,` przestrzeni wektorowej :math:`\,V\,` nad ciałem :math:`\,K\,`
jest podprzestrzenią wtedy i tylko wtedy, :math:`\,` 
gdy dla dowolnych dwóch wektorów z :math:`\,X\,` każda kombinacja liniowa
tych wektorów też należy do :math:`\,X\,`.

Niech więc :math:`\ \ v_1,\,v_2\in\text{Ker}\,F:\quad F(v_1)=F(v_2)=\theta_W\,.`

Wtedy :math:`\ \ F(a_1\,v_1+a_2\,v_2)\ =\ a_1\,F(v_1)+a_2\,F(v_2)\ =\ \theta_W\,,\\`
co oznacza, że :math:`\ \,a_1\,v_1+a_2\,v_2\in\text{Ker}\,F\ \,` 
dla dowolnych współczynników :math:`\ a_1,a_2\in K.\ \\`
Stwierdziliśmy w ten sposób, że :math:`\ \text{Ker}\,F < V.`

Niech teraz :math:`\ \ w_1,\,w_2\in\text{Im}\,F.\ \ `
Wtedy :math:`\ \ w_1=F(v_1),\ \,w_2=F(v_2)\ \,` dla pewnych :math:`\ \,v_1,v_2\in V.`

Wówczas dla :math:`\ b_1,b_2\in K:\ \ b_1\,w_1+\,b_2\,w_2\ =\ 
b_1\,F(v_1)\,+\,b_2\,F(v_2)\ =\ F(b_1\,v_1+\,b_2\,v_2)\in\text{Im}\,F.\ ` 
Wynika z tego, że :math:`\ \ \text{Im}\,F < W.`

W tej sytuacji mają sens następujące definicje:

.. math::
   
   \begin{array}{rclcl}
   \text{def}\,F & :\,= & \dim\,\text{Ker}\,F & \qquad\quad & \text{defekt homomorfizmu}\ F \\
   \text{rz}\,F  & :\,= & \dim\,\text{Im}\,F  & \qquad\quad & \text{rząd homomorfizmu}\ F
   \end{array}

.. admonition:: Twierdzenie 7.

   Jeżeli :math:`\,F\ ` jest przekształceniem liniowym przestrzeni :math:`\,V\ ` 
   w przestrzeń :math:`\,W,\ ` to
   
   .. math::
      :label: def_rz
      
      \text{def}\,F\ +\ \text{rz}\,F\ =\ \dim\,V\,.

**Dowód.** :math:`\,`
Załóżmy, że :math:`\ \text{def}\,F=k,\ ` przy czym :math:`\ \mathcal{U}=(u_1,\,u_2,\,\dots,\,u_k)\ ` jest bazą :math:`\ \text{Ker}\,F.\ `
Ponieważ :math:`\,\text{Ker}\,F < V,\ \,` układ  :math:`\ \mathcal{U}\ ` można uzupełnić
do bazy :math:`\ \mathcal{B}\ ` całej przestrzeni :math:`\,V:`

.. math::
   
   \mathcal{B}\ =\ (\mathcal{U},\,\mathcal{Y})\ =\ 
   (u_1,\,u_2,\,\dots,\,u_k,\,y_1,\,y_2,\,\dots,\,y_r).

Przy tych oznaczeniach :math:`\ \dim\,V=\,k+r.\ \,`
Udowodnimy, że obraz układu :math:`\,\mathcal{Y}:`

.. math::
   :label: set_FY
   
   F(\mathcal{Y})\ :\,=\ (Fy_1,\,Fy_2,\,\dots,\,Fy_r)

jest bazą :math:`\,\text{Im}\,F.\ \,` 
Będzie to oznaczać, że :math:`\ r=\dim\,\text{Im}\,F=\text{rz}\,F,\ \,` 
co doprowadzi do tezy :eq:`def_rz`.

.. skąd wynika teza twierdzenia.

1. Chcemy stwierdzić, że układ :eq:`set_FY` jest liniowo niezależny. Załóżmy że
   
   .. math::
      
      c_1\,Fy_1\,+\;c_2\,Fy_2\,+\;\ldots\;+\;c_r\,Fy_r\ =\ \theta_W\,,\qquad
      c_1,\,c_2,\,\ldots,\,c_r\,\in\,K.

   .. Korzystając z liniowości przekształcenia :math:`\ F,\ ` z definicji jądra 
      homomorfizmu i z liniowej niezależności wektorów bazy :math:`\,\mathcal{B},\ `
      otrzymujemy dalej:

   Na podstawie liniowej niezależności wektorów bazy :math:`\,\mathcal{B}\ ` otrzymujemy:
       
   .. math::
      
      F\left(c_1\,y_1\,+\;c_2\,y_2\,+\;\ldots\;+\;c_r\,y_r\right)\ =\ \theta_W\,,

      c_1\,y_1\,+\;c_2\,y_2\,+\;\ldots\;+\;c_r\,y_r\ \in\ \text{Ker}\,F\,,
      
      c_1\,y_1\,+\;c_2\,y_2\,+\;\ldots\;+\;c_r\,y_r\ =\ 
      -\ b_1\,u_1\,-\;b_2\,u_2\,+\;\ldots\;-\ b_k\,u_k\,,

      b_1\,u_1\,+\;b_2\,u_2\,+\;\ldots\;+\;b_k\,u_k\ +\ 
      c_1\,y_1\,+\;c_2\,y_2\,+\;\ldots\;+\;c_r\,y_r\ =\ \theta_V\,,

      b_1=\,b_2=\;\ldots\;=\;b_k\,=\;c_1=\,c_2=\;\ldots\;=\;c_r\ =\ 0\,.

   W ten sposób została udowodniona implikacja
   
   .. math::

      c_1\,Fy_1\,+\;c_2\,Fy_2\,+\;\ldots\;+\;c_r\,Fy_r\ =\ \theta_W
      \quad\Rightarrow\quad
      c_1\,=\,c_2\,=\,\ldots\,=\,c_r\ =\ 0\,,

   która stwierdza liniową niezależność układu :math:`\ (Fy_1,\,Fy_2,\,\dots,\,Fy_r)`.

2. Aby wykazać, że układ :eq:`set_FY` generuje :math:`\,\text{Im}\,F,\ `
   rozważmy dowolny wektor :math:`\,w\in \text{Im}\,F:`

   .. math::
      
      w\ =\ F(v),\quad v=b_1\,u_1+\;\ldots\;+\;b_k\,u_k\;+\ c_1\,y_1+\;\ldots\;+\;c_r\,y_r\,.

   Biorąc pod uwagę to, że :math:`\ \,Fu_i=\theta_W,\ \,i=1,2,\dots,k,\ \,` mamy

   .. math::
      :nowrap:
      
      \begin{eqnarray*}
      w & = & F\,(b_1\,u_1+\;\ldots\;+\;b_k\,u_k\;+\ c_1\,y_1+\;\ldots\;+\;c_r\,y_r)  \\
        & = & b_1\,Fu_1+\;\ldots\;+\;b_k\,Fu_k\;+\ c_1\,Fy_1+\;\ldots\;+\;c_r\,Fy_r \\
        & = & c_1\,Fy_1+\;\ldots\;+\;c_r\,Fy_r\,\in\,L(Fy_1,\dots,Fy_r)\,.
      \end{eqnarray*}

   A zatem :math:`\ \text{Im}\,F\subset L(Fy_1,\dots,Fy_r).\ `
   Ale jednocześnie :math:`\ \text{Im}\,F\supset L(Fy_1,\dots,Fy_r),\ `
   więc :math:`\ \text{Im}\,F=L(Fy_1,\dots,Fy_r),\ ` co należało tutaj wykazać.
   
Jako liniowo niezależny układ generatorów, 
układ :math:`\ (Fy_1,\dots,Fy_r)\ ` jest więc bazą :math:`\ \text{Im}\,F.\ ` 

Wobec tego :math:`\ \,r=\dim\,\text{Im}\,F=\text{rz}\,F.\ \,` 
Ponieważ z oznaczenia :math:`\ \,k=\text{def}\,F,\ \,` to

.. math::
   
   \dim\,V\,=\,k+r\ =\ \text{def}\,F\,+\,\text{rz}\,F. 

.. oraz :math:`\ \,\dim\,V=\,k+r\,=\,\text{def}\,F\,+\,\text{rz}\,F.`

Udowodnione właśnie Twierdzenie 7. wykorzystamy w dowodzie kryterium dla izomorfizmu 
przestrzeni wektorowych o wymiarach skończonych.

.. admonition:: Twierdzenie 8. :math:`\\`
   
   Dwie skończenie wymiarowe przestrzenie wektorowe nad ciałem :math:`\,K\ `
   są izomorficzne wtedy i tylko wtedy, gdy są tego samego wymiaru:
   
   .. math::
      
      V\,\simeq\,W\qquad\Leftrightarrow\qquad\dim\,V\,=\,\dim\,W\,.

**Dowód.**

:math:`\Rightarrow\ :\ ` Zakładamy, że przestrzenie :math:`\ V\ \,\text{i}\ \ W\ `
są izomorficzne: :math:`\ V\simeq W,\ \,\text{czyli}\ \ \text{Izo}(V,W)\neq\emptyset.`

Niech :math:`\ F\ ` będzie izomorfizmem przestrzeni :math:`\ V\ ` na :math:`\ W.\ \,`
Ponieważ izomorfizm jest bijekcją, to każdemu wektorowi :math:`\,w\in W\,` odpowiada
dokładnie jeden wektor :math:`\,v\in V,\ ` którego :math:`\,w\ ` jest obrazem.
W szczególności, wektor zerowy :math:`\ \theta_W\ `
jest obrazem tylko wektora zerowego :math:`\ \theta_V.\\` 
To oznacza, że :math:`\ \text{Ker}\,F=\{\,\theta_V\},\ `
wobec czego :math:`\ \text{def}\,F=\,\dim\,\text{Ker}\,F=0.`

Z drugiej strony, :math:`\ F\ ` jest surjekcją: :math:`\ F(V)=\text{Im}\,F=W,\ \,`
skąd :math:`\ \text{rz}\,F=\dim\,\text{Im}\,F=\,\dim\,W.\ `

Stosując Twierdzenie 7. otrzymujemy:

.. math::
   
   \dim\,V=\,\text{def}\,F+\,\text{rz}\,F\,=\,0+\dim\,W\,=\,\dim\,W.

:math:`\Leftarrow\ :\ ` Niech :math:`\ \,\dim\,V=\,\dim\,W=n.`

Oznacza to, że każda baza przestrzeni :math:`\,V\ \,\text{i}\ \ W\ ` liczy :math:`\,n\ ` elementów.
Załóżmy, że układ :math:`\ \mathcal{B}=(v_1,v_2,\,\dots,\,v_n)\ ` jest bazą przestrzeni :math:`\,V,\ `
a :math:`\ \ \mathcal{C}=(w_1,w_2,\,\dots,\,w_n)\ ` :math:`\,` - :math:`\,` 
bazą przestrzeni :math:`\,W.\ ` 
Wykorzystując wniosek z Twierdzenia 5. 
definiujemy przekształcenie liniowe :math:`\,F:\,V\rightarrow W\ ` 
określając obrazy wektorów bazy :math:`\ \mathcal{B}:`

.. math::
   
   F(v_i)\ :\,=\ w_i\,,\qquad i=1,2,\dots,n.

Wtedy obraz dowolnego wektora :math:`\ \,v = \displaystyle\sum_{i\,=\,1}^n\ a_i\,v_i \in V\ \,` 
dany jest przez 

.. math::

   F\left(\,\sum_{i\,=\,1}^n\ a_i\,v_i\right)\ \ =\ \ 
   \sum_{i\,=\,1}^n\ a_i\,Fv_i\ \ =\ \ 
   \sum_{i\,=\,1}^n\ a_i\,w_i\,.

Przy przekształceniu :math:`F\,` obrazem wektora przestrzeni :math:`V\,`
o współrzędnych (w bazie :math:`\mathcal{B}`) :math:`\,a_1,\,a_2,\,\dots,\,a_n\,,\ \,`
jest więc wektor przestrzeni :math:`\,W\ ` o tych samych współrzędnych 
w bazie :math:`\,\mathcal{C}.`

Ponieważ przy ustalonej bazie odpowiedniość pomiędzy wektorami i układami ich współrzędnych jest 
wzajemnie jednoznaczna, to :math:`\,F\ ` jest bijekcją, a więc izomorfizmem: 
:math:`\,F\in\text{Izo}\,(V,W).\ ` 
Skoro zaś :math:`\,\text{Izo}(V,W)\neq\emptyset,\ \ \text{to}\ \ V\simeq W.`

Izomorficzne przestrzenie mogą składać się z różnych obiektów, ale mają tę samą strukturę, są więc matematycznie równoważne.

.. admonition:: Wniosek.

   Wszystkie :math:`\,n`-wymiarowe przestrzenie wektorowe nad ciałem :math:`\,K\ `
   są izomorficzne z przestrzenią :math:`\,K^n.`


















