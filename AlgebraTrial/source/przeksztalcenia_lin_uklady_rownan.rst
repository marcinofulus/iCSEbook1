
Application to Homogeneous Systems of Equations
-----------------------------------------------

Zastosujemy teraz teorię przekształceń liniowych przestrzeni wektorowych do określenia 
zbioru rozwiązań jednorodnego układu równań liniowych nad ciałem :math:`\,K`:

.. math::
   :label: set_eqn_0

   \begin{array}{r}
      a_{11}\,x_1\; + \ \,a_{12}\,x_2\; + \ \,\ldots\  + \ \;a_{1n}\,x_n \ \, = \ \ 0  \\
      a_{21}\,x_1\; + \ \,a_{22}\,x_2\; + \ \,\ldots\  + \ \;a_{2n}\,x_n \ \, = \ \ 0  \\
      \qquad\qquad\,\ldots\qquad\quad\ldots\qquad\quad\ldots\qquad\ldots\qquad\ \ \,\ldots   \\
      a_{m1}\,x_1\; + \ \,a_{m2}\,x_2\; + \ \,\ldots\  + \ \;a_{mn}\,x_n \ \, = \ \ 0
   \end{array}

Układ ma postać macierzową 
:math:`\quad\boldsymbol{A}\boldsymbol{X}\,=\,\boldsymbol{0}\,,\quad` gdzie 

.. math::

   \boldsymbol{A}\ =\ \left[\begin{array}{cccc}
                            a_{11} & a_{12} & \ldots & a_{1n} \\
                            a_{21} & a_{22} & \ldots & a_{2n} \\
                            \ldots & \ldots & \ldots & \ldots \\
                            a_{m1} & a_{m2} & \ldots & a_{mn}
                            \end{array}
                      \right]\,,\quad
   \boldsymbol{X}\ =\ 
   \left[\begin{array}{c} x_1 \\ x_2 \\ \dots \\ x_n \end{array}\right]\,,\quad
   \boldsymbol{0}\ =\ 
   \left[\begin{array}{c} 0 \\ 0 \\ \dots \\ 0 \end{array}\right]\in K^m\,.

Zbiór rozwiązań układu :eq:`set_eqn_0` definiujemy jako
 
.. math::
   
   S_0\ :\,=\ \{\,\boldsymbol{X}\in K^n:\ \boldsymbol{A}\boldsymbol{X}=\boldsymbol{0}\,\}\,.

Oczywiście :math:`\ \,S_0\subset K^n.\ \,` Własności zbioru :math:`\ S_0\ ` opisuje dokładniej

.. admonition:: Twierdzenie 9. :math:`\\`

   Zbiór rozwiązań jednorodnego układu równań :eq:`set_eqn_0` 
   jest przestrzenią wektorową nad ciałem :math:`\,K\ ` 
   (podprzestrzenią przestrzeni :math:`\,K^n`), :math:`\,` której wymiar 
   równa się różnicy liczby niewiadomych i rzędu macierzy współczynników :math:`\boldsymbol{A}:`
   
   .. math::
      :label: sol_0
      
      S_0\,<\,K^n,\qquad\dim\,S_0\,=\,n-\text{rz}\,\boldsymbol{A}\,.
   
.. gdzie :math:`\,r\ ` jest rzędem macierzy :math:`\,\boldsymbol{A}.`

**Dowód.**

Podzbiór :math:`\ S_0\ ` przestrzeni :math:`\,K^n\ ` jest podprzestrzenią,
bo jest domknięty ze względu na dodawanie wektorów i mnożenie ich przez liczby z ciała :math:`\,K.\ `
Rzeczywiście,

jeżeli :math:`\qquad\boldsymbol{X}_1,\,\boldsymbol{X}_2\,\in\,S_0:
\qquad\boldsymbol{A}\boldsymbol{X}_1=\,\boldsymbol{0}\,, 
\quad\boldsymbol{A}\boldsymbol{X}_2=\,\boldsymbol{0}\,,`

to
:math:`\qquad
\boldsymbol{A}\,(\boldsymbol{X}_1+\boldsymbol{X}_2)\ =\ 
\boldsymbol{A}\boldsymbol{X}_1+\boldsymbol{A}\boldsymbol{X}_2\ =\ 
\boldsymbol{0}\,,
\qquad
\boldsymbol{A}\,(c\,\boldsymbol{X}_1)\ =\ c\,(\boldsymbol{A}\boldsymbol{X}_1)\ =\ 
\boldsymbol{0}\,,`

czyli :math:`\qquad 
\boldsymbol{X}_1+\boldsymbol{X}_2\,\in\,S_0\,,\qquad 
c\,\boldsymbol{X}_1\in S_0\,,\quad c\in K\,.`

.. Podzbiór :math:`\,S_0\ ` przestrzeni :math:`\,K^n\ ` jest domknięty ze względu na dodawanie
   wektorów i mnożenie ich przez liczby z ciała :math:`\,K\ `

W dowodzie drugiej części tezy oznaczamy :math:`\ r\,:\,=\,\text{rz}\,\boldsymbol{A}\,.\ `
Oczywiście :math:`\ r\le m,n\,.`

W macierzy :math:`\boldsymbol{A}\ ` jest :math:`\ r\ ` liniowo niezależnych wierszy
i tyle samo liniowo niezależnych kolumn. Nie zmniejszając ogólności rozważań można przyjąć, 
że liniowo niezależny jest układ pierwszych :math:`\ r\ ` wierszy, :math:`\,` 
a także układ :math:`\ r\ ` pierwszych kolumn.

Jeżeli :math:`\ m>r,\ ` to odrzucamy :math:`\ m-r\ ` ostatnich równań, bo każde z nich jest kombinacją liniową pierwszych :math:`\ r\ ` równań.

.. Mamy więc do czynienia z układem :math:`\ r\ ` liniowo niezależnych równań o :math:`\,n\ `
   niewiadomych.

Jako punkt wyjścia do dalszej dyskusji można więc przyjąć układ :math:`\ r\ ` równań 
o :math:`\ n\ ` niewiadomych, :math:`\,` przy czym :math:`\ r\le n.\ `
W tej sytuacji mogą wystąpić dwa przypadki.

I.) :math:`\,` Jeżeli :math:`\ r=n,\ ` mamy układ równań o kwadratowej nieosobliwej macierzy 
:math:`\boldsymbol{A}.\ ` Jest to układ kramerowski, który ma jedynie rozwiązanie zerowe:
:math:`\ S_0=\{\boldsymbol{0}\}.\ ` W tym przypadku równanie :eq:`sol_0` jest spełnione:
:math:`\ 0=\dim\,S_0=n-r.`

II.) :math:`\,` Niech :math:`\ r<n.\ ` Niewiadome o numerach większych od :math:`\ r\ `
przyjmujemy za dowolne parametry: :math:`\ x_k\rightarrow s_k,\ k=r+1,\dots,n,\ \,` 
po czym rozwiązujemy kramerowski układ równań o niewiadomych :math:`\ \,x_1,\,\dots,\,x_r:`

.. .. math::
   :label: set_eqn_r
   
   \begin{array}{c}
      a_{11}\,x_1\; + \ \,a_{12}\,x_2\; + \ \,\ldots\ \, + \ \;a_{1r}\,x_r \ \, = \ \ 
      -\ a_{1,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{1n}\,s_n   \\
      a_{21}\,x_1\; + \ \,a_{22}\,x_2\; + \ \,\ldots\ \, + \ \;a_{2r}\,x_r \ \, = \ \ 
      -\ a_{2,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{2n}\,s_n   \\
      \ldots\qquad\quad\ldots\qquad\,\ldots\qquad\ \ \ldots\qquad\ \ \,
      \qquad\,\ldots\qquad\qquad\ldots\qquad\,\ldots           \\
      a_{r1}\,x_1\; + \ \,a_{r2}\,x_2\; + \ \,\ldots\ \, + \ \;a_{rr}\,x_r \ \, = \ \ 
      -\ a_{r,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{rn}\,s_n
   \end{array}

.. math::
   :label: set_eqn_r
   
   \begin{array}{c}
      a_{11}\,x_1\; + \ \,\ldots\ \, + \ \;a_{1r}\,x_r \ \, = \ \ 
      -\ a_{1,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{1n}\,s_n   \\
      a_{21}\,x_1\; + \ \,\ldots\ \, + \ \;a_{2r}\,x_r \ \, = \ \ 
      -\ a_{2,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{2n}\,s_n   \\
      \qquad
      \ldots\qquad\quad\ldots\qquad\quad\ldots\qquad\quad
      \ldots\qquad\quad\ldots\qquad\quad\ldots\qquad\quad           \\
      a_{r1}\,x_1\; + \ \,\ldots\ \, + \ \;a_{rr}\,x_r \ \, = \ \ 
      -\ a_{r,r+1}\,s_{r+1}\; - \ \,\ldots\ \, -\ a_{rn}\,s_n
   \end{array}


Niech :math:`\ (c_1,\dots,c_r)\ ` będzie układem wartości niewiadomych 
:math:`\ x_1,\,\dots,\,x_r\,,\ ` 
odpowiadającym zadanym wartościom parametrów :math:`\ s_{r+1},\,\dots,\,s_n.\\` 
Wtedy układ :math:`\ (c_1,\dots,c_r,\,s_{r+1},\dots,\,s_n)\ `
jest jednym z rozwiązań układu równań :eq:`set_eqn_0`.

Definiujemy odwzorowanie :math:`\ \Phi:\ S_0\rightarrow K^{n-r}\ ` następująco:

.. math::
   
   \Phi:\qquad S_0\,\ni\,
   \left[
   \begin{array}{c} c_1 \\ \dots \\ c_r \\ s_{r+1} \\ \dots \\ s_n \end{array}
   \right]
   \quad\rightarrow\quad
   \Phi
   \left[
   \begin{array}{c} c_1 \\ \dots \\ c_r \\ s_{r+1} \\ \dots \\ s_n \end{array}
   \right]
   \ :\,=\ 
   \left[
   \begin{array}{c} s_{r+1} \\ \dots \\ s_n \end{array}
   \right]
   \,\in\,K^{n-r}\,.

Łatwo sprawdzić, że :math:`\ \Phi\ ` jest przekształceniem liniowym.
Ponieważ każdemu układowi wartości parametrów :math:`\ s_{r+1},\,\dots,\,s_n\ `
odpowiada dokładnie jedno rozwiązanie :math:`\ (c_1,\dots,c_r)\ ` kramerowskiego 
układu równań :eq:`set_eqn_r`, :math:`\ \Phi\ ` jest również bijekcją.

Tak więc odwzorowanie :math:`\ \Phi,\ ` jako bijektywny homomorfizm, jest izomorfizmem
przestrzeni rozwiązań :math:`\ S_0\ ` na przestrzeń :math:`\ K^{n-r}.\ ` 
Korzystając z Twierdzenia 8. dochodzimy do tezy :eq:`sol_0`:

.. math::
   
   \dim\,S_0\,=\,\dim\,K^{n-r}\,=\,n-r\,.
























