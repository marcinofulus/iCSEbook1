
Linear Transformations
----------------------

.. admonition:: Twierdzenie 1. :math:`\\`
   
   Niech :math:`\,V\ ` i :math:`\,W\ ` będą przestrzeniami wektorowymi 
   nad ciałem :math:`\,K,\ \ F\in\text{Hom}(V,W).` :math:`\\`
   Przekształcenie :math:`\,F\ ` jest odwzorowaniem injektywnym 
   wtedy i tylko wtedy, gdy 
   
   .. math::
      
      \text{Ker}\,F\,=\,\{\,\theta_V\}\,,\qquad\text{czyli}\qquad\text{def}\,F = 0\,.

**Dyskusja i dowód.**

Przekształcenie :math:`\;F\;` jest injekcją, :math:`\,` 
gdy różnym argumentom odpowiadają różne obrazy:

.. math::
   
   v_1\neq v_2\qquad\Rightarrow\qquad F(v_1)\neq F(v_2)\,,\qquad v_1,v_2\in V\,.

.. Można je zobrazować następującym schematem: |Rys_7|

.. .. |Rys_7| image:: /figures/Rys_7.png
   :align: middle
   :scale: 68%

.. image:: /figures/Rys_7.png
   :align: center
   :scale: 70%

.. :math:`\;`

Obraz przestrzeni :math:`\;V\;` przy przekształceniu :math:`\;F\;` może być 
(jak w tym schemacie) właściwym podzbiorem przestrzeni 
:math:`\;W:\ \ \text{Im}\,F\equiv F(V)\subsetneq W\,,\ `
ale każdemu elementowi :math:`\;w\in\text{Im}\,F\ ` odpowiada 
dokładnie jeden element :math:`\;v\in V,\ ` którego :math:`\;w\;` jest obrazem.

.. W szczególności wektor zerowy :math:`\;\theta_W\ ` jest obrazem
   tylko wektora zerowego :math:`\;\theta_V.`

Jądro przekształcenia :math:`\;F\in\text{Hom}(V,W)\ ` jest z definicji zbiorem tych wektorów 
przestrzeni :math:`\;V,\ ` których obrazem jest wektor zerowy przestrzeni :math:`\;W,\ `
a defekt :math:`\;F\ ` jest wymiarem jądra:

.. math::
   
   \text{Ker}\,F\,=\,\{\,v\in V:\ F(v)=\theta_W\}\,,\qquad\text{def}\,F\,=\,\dim\,\text{Ker}\,F\,.

:math:`\;\Rightarrow\,:\ ` Zakładamy, że :math:`\;F\ ` jest injekcją.
Wtedy wektor zerowy :math:`\;\theta_W\ ` przestrzeni :math:`\;W\ ` 
jest obrazem tylko wektora zerowego :math:`\;\theta_V,\ ` co oznacza, 
że :math:`\ \,\text{Ker}\,F=\{\,\theta_V\}\ \ \text{oraz}\ \ \text{def}\,F=0\,.`

:math:`\;\Leftarrow\,:\ ` Załóżmy, że :math:`\;F\ ` nie jest injekcją. :math:`\\`
Wtedy istnieją dwa różne wektory :math:`\;v_1\ \,\text{i}\ \ v_2,\ ` 
które przy odwzorowaniu :math:`\;F\ ` mają ten sam obraz:

.. math::
   
   v_1\neq v_2\quad\land\quad F(v_1)\,=\,F(v_2)\,,

   \qquad\text{czyli}\qquad
   v_1-v_2\neq\theta_V\quad\land\quad F(v_1)-F(v_2)=F(v_1-v_2)=\theta_W.\; 

Wynika stąd, że :math:`\ \,\theta_V\neq v_1-v_2\in\text{Ker}\,F,\ \,` 
wobec czego :math:`\ \,\text{Ker}\,F\neq\{\,\theta_V\}\ \ \text{oraz}\ \ \text{def}\,F\neq 0\,.`

Przez kontrapozycję wnioskujemy stąd, 
że jeśli :math:`\ \text{def}\,F=0,\ ` 
to :math:`\ F\ ` jest injekcją.

.. admonition:: Twierdzenie 2.
   
   Przekształcenie :math:`\,F\in\text{Hom}(V,W)\,` zachowuje liniową niezależność 
   dowolnego układu wektorów przestrzeni :math:`\,V\,` wtedy i tylko wtedy, gdy jest injekcją.

**Dowód** opiera się na :math:`\,` (poprzednim) :math:`\,` twierdzeniu, 
że injektywność przekształcenia :math:`\ F\ ` jest równoważna znikaniu jego defektu.

:math:`\;\Rightarrow\,:\ ` Załóżmy, że :math:`\;F\ ` nie jest injekcją. 

Wtedy :math:`\ \text{def}\,F=\dim\,\text{Ker}\,F=k>0.\ `
Niech :math:`\,\mathcal{U}=(\,u_1,\,u_2,\,\dots,\,u_k)\ ` będzie bazą :math:`\,\text{Ker}\,F.\ `
Układ :math:`\,\mathcal{U}\ ` jest liniowo niezależny, 
ale jego obraz przy przekształceniu :math:`\,F:`

.. math::
   
   F(\mathcal{U})\,=\,(\,Fu_1,\,Fu_2,\,\dots,\,Fu_k\,)\,=\,
                    (\,\theta_W,\,\theta_W,\,\dots,\,\theta_W)

jest oczywiście liniowo zależny (mówiąc obrazowo - jest maksymalnie liniowo zależny).

Jeżeli zatem :math:`\,F\ ` nie jest injekcją, to istnieją układy wektorów, których liniowa niezależność przy przekształceniu :math:`\,F\,` nie jest zachowana. 
Przeciwstawnie, jeżeli przekształcenie :math:`\,F\,` zachowuje liniową niezależność 
dowolnego układu wektorów, to jest injekcją.

:math:`\;\Leftarrow\,:\ ` Zakładamy, że :math:`\;F\ ` jest injekcją, :math:`\,` 
czyli że :math:`\;\text{Ker}\,F=\{\,\theta_V\}\,.`

Niech układ :math:`\;(x_1,\,x_2,\,\dots,\,x_r)\ ` wektorów przestrzeni :math:`\,V\,` 
będzie liniowo niezależny. :math:`\\`
Wtedy, :math:`\,` dla :math:`\,a_1,\,a_2,\,\dots,\,a_r\in K:`

.. math::
   
   \begin{array}{rcc}
   \text{jeżeli} & \qquad & a_1\,Fx_1\,+\,a_2\,Fx_2\,+\,\ldots\,+\,a_r\,Fx_r\,=\,\theta_W\,,
   \\ \\
   \text{to:}    & \qquad & F(a_1\,x_1+\,a_2\,x_2+\ldots+\,a_r\,x_r)\,=\,\theta_W\,,
   \\             
                 & \qquad & a_1\,x_1+a_2\,x_2+\ldots+a_r\,x_r\in\text{Ker}\,F\,,
   \\
                 & \qquad & a_1\,x_1\,+a_2\,x_2\,+\ldots+\,a_r\,x_r\,=\,\theta_V\,,
   \\   
                 & \qquad & a_1=\,a_2=\,\dots\,=\,a_r=0\,.
   \end{array}

A zatem wektory :math:`\ Fx_1,\,Fx_2,\,\dots,\,Fx_r\ ` są również liniowo niezależne.

Udowodniliśmy więc, że dla dowolnych wektorów :math:`\ \,x_1,\,x_2,\,\dots,\,x_r\,\in V\ `
zachodzi implikacja (l.n. = liniowo niezależny):

.. math::
   
   (\,x_1,\,x_2,\,\dots,\,x_r)\ \ -\ \ \text{l.n.}
   \qquad\Rightarrow\qquad
   (\,Fx_1,\,Fx_2,\,\dots,\,Fx_r)\ \ -\ \ \text{l.n.}

która właśnie oznacza, że :math:`\,F\ ` zachowuje liniową niezależność dowolnego układu wektorów.

**Dyskusja i wnioski.** :math:`\,`
Niech będzie dana :math:`\,n`-wymiarowa przestrzeń wektorowa :math:`\,V(K)\ `
z bazą :math:`\,\mathcal{B}=(v_1,\,v_2,\,\dots,\,v_n).\ ` Odwzorowanie

.. math::
   
   I_{\mathcal{B}}:\quad V\,\ni\, x\,=\,\sum_{i\,=\,1}^n\ a_i\,v_i
   \quad\rightarrow\quad
   I_{\mathcal{B}}(x)\,:\,=\,
   \left[\begin{array}{c} a_1 \\ a_2 \\ \dots \\ a_n \end{array}\right]
   \,\in\,K^n

które przekształca wektor :math:`\,x\ ` w kolumnę współrzędnych 
tego wektora w bazie :math:`\,\mathcal{B},\ `
jest izomorfizmem przestrzeni :math:`\,V\ ` na przestrzeń :math:`\,K^n,\ ` a więc injekcją. 
:math:`\,I_{\mathcal{B}}\ ` zachowuje zatem liniową niezależność wektorów.
Tę samą własność ma odwzorowanie odwrotne do :math:`\,I_{\mathcal{B}},\ `
które również jest izomorfizmem.

Rozważmy układ wektorów :math:`\,(x_1,\,x_2,\,\dots,\,x_r),\ ` przy czym niech

.. math::
   
   x_j\,=\;\sum_{i\,=\,1}^n\ a_{ij}\,v_i\,,
   \qquad\text{czyli}\qquad 
   I_{\mathcal{B}}(x_j)\,=\,
   \left[\begin{array}{c} a_{1j} \\ a_{2j} \\ \dots \\ a_{nj} \end{array}\right]
   \,,\quad j=1,2,\dots,r.

Z wymienionej własności izomorfizmów 
:math:`\ I_{\mathcal{B}}\ \ \text{i}\ \ I_{\mathcal{B}}^{-1}\ ` 
wynika, że :math:`\,` (l.n. = liniowo niezależny):

.. math::
   
   (\,x_1,\,x_2,\,\dots,\,x_r)\ \ -\ \ \text{l.n.}
   \qquad\Leftrightarrow\qquad
   \left(\;
   I_{\mathcal{B}}(x_1),\,I_{\mathcal{B}}(x_2),\,\dots,\,I_{\mathcal{B}}(x_r)\;
   \right) 
   \ \ -\ \ \text{l.n.}


.. .. math::
   
   (\,x_1,\,x_2,\,\dots,\,x_r)\ \ -\ \ \text{l.n.}
   \qquad\Leftrightarrow\qquad
   \left(\ \  
   \left[\begin{array}{c} a_{11} \\ a_{21} \\ \dots \\ a_{n1} \end{array}\right],\ 
   \left[\begin{array}{c} a_{12} \\ a_{22} \\ \dots \\ a_{n2} \end{array}\right],\ 
   \dots,\ 
   \left[\begin{array}{c} a_{1r} \\ a_{2r} \\ \dots \\ a_{nr} \end{array}\right]\ \ 
   \right) 
   \ \ -\ \ \text{l.n.}

.. Można to zapisać jako

.. admonition:: Wniosek 1a.
   
   W :math:`\,n`-wymiarowej przestrzeni wektorowej :math:`\,V(K)\ ` wektory są 
   liniowo niezależne wtedy i tylko wtedy, gdy kolumny ich współrzędnych :math:`\,`
   (jako wektory przestrzeni :math:`\,K^n`) :math:`\,` w dowolnej bazie przestrzeni 
   :math:`\,V\ ` są liniowo niezależne.

Ponieważ liniowa zależność jest zaprzeczeniem liniowej niezależności, 
można również zapisać :math:`\,` (l.z. = liniowo zależny):

.. math::
   
   (\,x_1,\,x_2,\,\dots,\,x_r)\ \ -\ \ \text{l.z.}
   \qquad\Leftrightarrow\qquad
   \left(\;
   I_{\mathcal{B}}(x_1),\,I_{\mathcal{B}}(x_2),\,\dots,\,I_{\mathcal{B}}(x_r)\;
   \right) 
   \ \ -\ \ \text{l.z.}

.. admonition:: Wniosek 1b.
   
   W :math:`\,n`-wymiarowej przestrzeni wektorowej :math:`\,V(K)\ ` wektory są 
   liniowo zależne wtedy i tylko wtedy, gdy kolumny ich współrzędnych 
   (jako wektory przestrzeni :math:`\,K^n`) w dowolnej bazie przestrzeni :math:`\,V\ `
   są liniowo zależne.

Jeżeli :math:`\,r=n,\ ` to kolumny współrzędnych tworzą kwadratową macierz

.. math::
   
   \boldsymbol{A}\ =\ [\,a_{ij}\,]_{n\times n}\ =\ 
   [\,I_{\mathcal{B}}(x_1)\,|\,I_{\mathcal{B}}(x_2)\,|\,\dots\,|\,I_{\mathcal{B}}(x_n)\,]\,.

Element :math:`\,a_{ij}\ ` tej macierzy jest :math:`\,i`-tą współrzędną :math:`\,j`-tego 
wektora układu :math:`\,(x_1,\,x_2,\,\dots,\,x_n).\ \\` 
Z własności wyznaczników wynika, że

.. math::
   
   (\,x_1,\,x_2,\,\dots,\,x_n)\ \ -\ \ \text{l.n.}
   \qquad\Leftrightarrow\qquad
   \det\,\boldsymbol{A}\neq 0\,.

.. Biorąc pod uwagę fakt, że w :math:`\,n`-wymiarowej przestrzeni wektorowej
   każdy liniowo niezależny układ :math:`\,n\ ` wektorów jest bazą, 
   można sformułować

.. admonition:: Wniosek 2.
   
   W :math:`\,n`-wymiarowej przestrzeni :math:`\,V(K)\ ` 
   układ :math:`\,n\ ` wektorów jest liniowo niezależny
   wtedy i tylko wtedy,
   gdy wyznacznik macierzy złożonej ze współrzędnych tych wektorów
   jest różny od zera.   

Biorąc pod uwagę fakt, że w :math:`\,n`-wymiarowej przestrzeni wektorowej
każdy liniowo niezależny układ :math:`\,n\ ` wektorów jest bazą, :math:`\,` 
można sformułować

.. admonition:: Wniosek 3.
   
   W :math:`\,n`-wymiarowej przestrzeni :math:`\,V(K)\ ` układ :math:`\,n\ ` wektorów jest bazą
   tej przestrzeni wtedy i tylko wtedy, 
   gdy wyznacznik macierzy złożonej ze współrzędnych tych wektorów jest różny od zera.   























