
Ortogonalizacja Grama-Schmidta. Rozkład QR
------------------------------------------

.. admonition:: Twierdzenie 4.
   
   W każdej skończenie wymiarowej przestrzeni unitarnej (euklidesowej) istnieje baza ortonormalna.

**Dowód** twierdzenia, który podaje efektywną metodę konstrukcji takiej bazy,
przebiega w dwóch realizowanych równolegle etapach. Biorąc za punkt wyjścia dowolną bazę, buduje się metodą *ortogonalizacji Grama-Schmidta* bazę ortogonalną, z której po unormowaniu powstaje baza ortonormalna.

Konstrukcja bazy ortonormalnej
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Niech :math:`\,\dim\,V=n.\ ` Dowód przebiega według następującego schematu:

.. math::
   
   \begin{array}{cccccc}
                & \mathcal{B}=(v_1,v_2,\dots,v_n) & \longrightarrow & \mathcal{P}=(y_1,y_2,\dots,y_n) & \longrightarrow & \mathcal{Q}=(u_1,u_2,\dots,u_n) \\
   \text{Baza:} & \text{wyjściowa}                &                 & \text{ortogonalna}              &                 & \text{ortonormalna}
   \end{array}

Kolejne wektory baz :math:`\ \mathcal{P}\ \ \text{i}\ \ \,\mathcal{Q}\ \,`
przyjmujemy w następującej postaci:
   
:math:`\triangleright\quad y_1\,=\,v_1,\quad u_1\,=\,\displaystyle\frac{y_1}{\|y_1\|}\,;`

:math:`\triangleright\quad y_2\,=\,\alpha_1\,y_1+\,v_2\ =\ 
v_2\,-\ \displaystyle\frac{\langle\,y_1,v_2\rangle}{\|y_1\|^2}\ \ y_1\ =\ 
v_2-\,\langle\,u_1,v_2\rangle\ u_1\,,\qquad u_2\,=\,\displaystyle\frac{y_2}{\|y_2\|}\ ,`

gdzie :math:`\ \alpha_1\ ` zostało wyznaczone z warunku :math:`\ \langle\,y_1,y_2\rangle=0\,;`

:math:`\triangleright\quad y_3\,=\,\beta_1\,y_1+\,\beta_2\,y_2+\,v_3\ =\ 
v_3\,-\ \displaystyle\frac{\langle y_1,v_3\rangle}{\|y_1\|^2}\ \ y_1\,-\ 
\displaystyle\frac{\langle y_2,v_3\rangle}{\|y_2\|^2}\ \ y_2\ =\ 
v_3\,-\,\langle u_1,v_3\rangle\ u_1 - \langle u_2,v_3\rangle\ u_2\,,`

gdzie :math:`\ \beta_1,\,\beta_2\ ` zostały wyznaczone z warunków 
:math:`\,\langle\,y_1,y_3\rangle = \langle\,y_2,y_3\rangle = 0\,;\qquad
u_3\,=\,\displaystyle\frac{y_3}{\|y_3\|}\,;`

Przypuśćmy, że zbudowaliśmy w ten sposób układ ortogonalny 
:math:`\ (y_1,y_2,\dots,y_{j-1}),\ ` przy czym, jak wynika z przyjętej metody konstrukcji

.. math::
   :label: y_k
   
   y_k\,\in\,L(v_1,v_2,\dots,v_k)\qquad k=1,2,\dots,j-1\,,

to znaczy, że każdy :math:`\,k`-ty wektor układu :math:`\,(y_1,y_2,\dots,y_{j-1})\ `
jest kombinacją liniową jedynie pierwszych :math:`\,k\ ` wektorów bazy :math:`\,\mathcal{B}.\ `
Następnymi wektorami baz :math:`\ \mathcal{P}\ \ \text{i}\ \ \,\mathcal{Q}\ \,` będą :math:`\\`

:math:`\begin{array}{rcl} \triangleright\quad y_j & = & 
\lambda_1\,y_1\,+\;\lambda_2\,y_2\,+\;\dots\,+\;\lambda_{j-1}\,y_{j-1}\,+\;v_j\ \ =
\\ \\
& = & v_j\ -\ \,
\displaystyle\frac{\langle\,y_1,v_j\rangle}{\|y_1\|^2}\ \ y_1\ \,-\ \, 
\displaystyle\frac{\langle\,y_2,v_j\rangle}{\|y_2\|^2}\ \ y_2\ \,-\ \, 
\ldots\ -\ \,
\displaystyle\frac{\langle\,y_{j-1},v_j\rangle}{\|y_{j-1}\|^2}\ \ y_{j-1}\ \ =
\\ \\
& = & v_j\,-\,\langle\,u_1,v_j\rangle\ u_1 - \langle\,u_2,v_j\rangle\ u_2
\ -\ \ldots\ -\ \langle\,u_{j-1},v_j\rangle\ u_{j-1}\,,
\qquad u_j\ =\ \displaystyle\frac{y_j}{\|y_j\|}\ ,
\end{array}`

gdzie współczynniki :math:`\ \lambda_1,\,\lambda_2,\,\dots,\,\lambda_{j-1}\ \,`
zostały wyznaczone z warunków ortogonalności

.. math::
   
   \langle\,y_1,y_j\rangle\ \ =\ \ \langle\,y_2,y_j\rangle\ \ =\ \ldots\ \ =\ \ 
   \langle\,y_{j-1},y_j\rangle\ \ =\ \ 0\,.

.. dane są przez 
   :math:`\quad\lambda_k\ =\ -\ \displaystyle\frac{\langle\,y_k,v_j\rangle}{\|y_k\|^2}\ ,
   \qquad k=1,2,\dots,j-1;\qquad j=2,3,\dots,n.`

.. Warunek :eq:`y_k` gwarantuje, że wektor :math:`\,y_j\neq\theta.\ `

Wektor :math:`\,y_j\ ` jest kombinacją liniowo niezależnych wektorów 
:math:`\,v_1,\,v_2,\,\dots,\,v_j.\ `
Z własności :eq:`y_k` wynika, że jest to kombinacja nietrywialna, bo współczynnik przy wektorze
:math:`\,v_j\ ` równa się :math:`\,+1.\ ` Oznacza to, że wszystkie 
wektory :math:`\,y_j\ ` są niezerowe: :math:`\,y_j\neq\theta,\ j=1,2,\dots,n.\ `
Stąd mamy pewność, że :math:`\,\mathcal{P}\ ` jest układem ortogonalnym
oraz że dzieląc każdy kolejny wektor :math:`\,y_j\ ` przez jego normę otrzymamy 
wektor jednostkowy :math:`\,u_j\,.`

Ortogonalizację Grama-Schmidta można zastosować do dowolnego (niekoniecznie liniowo niezależnego)
układu wektorów. W wyniku otrzymamy układ :math:`\,\mathcal{Y},\ ` którego wektory będą parami ortogonalne, ale może to nie być układ ortogonalny, bo wśród jego wektorów mogą wystąpić wektory zerowe.

Po ostatnim kroku procedury, w którym :math:`\,j=n,\ ` otrzymujemy 
ortogonalną bazę :math:`\ \mathcal{P}\ \\`
i ortonormalną bazę :math:`\ \mathcal{Q}\ ` przestrzeni :math:`\,V.`

**Przykład:** konstrukcja wielomianów Legendre'a.

Rozważmy przestrzeń euklidesową :math:`\,P\ ` wielomianów rzeczywistych z iloczynem skalarnym

.. math::
   
   \langle\,p,q\,\rangle\ \,=\ \,\int_{-1}^{+1}\ p(x)\,q(x)\,dx\,,\qquad p,q\in P\,.

Przyjmując za punkt wyjścia bazę :math:`\,\mathcal{B}\,=\,(1,\,x,\,x^2,\,x^3,\,\dots)\ `
zbudujemy bazę ortogonalną :math:`\,\mathcal{P}\,=\,(p_0,\,p_1,\,p_2,\,p_3,\,\dots)\ \,` 
i :math:`\,` bazę ortonormalną :math:`\,\mathcal{Q}\,=\,(q_0,\,q_1,\,q_2,\,q_3,\,\dots)\,.\\`

0. :math:`\ p_0(x)\,=\,1\,;\qquad
   \|\,p_0\|^2\,=\,\langle\,p_0,p_0\,\rangle\ =\ \int_{-1}^{+1}\ 1\cdot 1\ \ dx\ =\ 2\,;\qquad
   \|\,p_0\|\,=\,\sqrt{2}\,.`
   
   :math:`\blacktriangleright\quad q_0(x)\ \,=\ \,
   \displaystyle\frac{1}{\|\,p_0\|}\ \ p_0(x)\ \,=\ \,
   \frac{1}{\sqrt{2}}\ \ .\\`

1. :math:`\ p_1(x)\ =\ \alpha_0\cdot 1+x\,,\ \ ` 
   gdzie :math:`\ \ \alpha_0\ ` wyznacza się z warunku :math:`\ \ \langle\,p_0,p_1\rangle\ =\ 0\,.`
   
   :math:`\ \langle\,p_0,p_1\rangle\ =\ \int_{-1}^{+1}\ 1\cdot(\alpha_0+x)\ dx\ \ =\ \ 
   \int_{-1}^{+1}\ (\alpha_0+x)\,dx\ =\ 2\,\alpha_0\ =\ 0\,:\quad\alpha_0=0\,.`

   :math:`\ p_1(x)\,=\,x\,;\qquad \|p_1\|^2\,=\,\int_{-1}^{+1}\ x^2\;dx\ =\ 
   \left.\frac{1}{3}\ x^3\,\right|_{-1}^{+1}\ =\ \frac{2}{3}\ ;\qquad
   \|\,p_1\|\ =\ \sqrt{\frac{2}{3}}\ .` 

   :math:`\blacktriangleright\quad q_1(x)\ \,=\ \,
   \displaystyle\frac{1}{\|\,p_1\|}\ \ p_1(x)\ \,=\ \,
   \sqrt{\,\frac{3}{2}}\ \ x\ .\\`

2. :math:`\ p_2(x)\ =\ \beta_0\cdot 1+\beta_1\cdot x+x^2\,,\ \ `
   gdzie :math:`\ \ \beta_0,\,\beta_1:\ \  
   \langle\,p_0,p_2\rangle\ =\ \langle\,p_1,p_2\rangle\ =\ 0\,.`

   :math:`\ \langle\,p_0,p_2\rangle\ =\ \int_{-1}^{+1}\ (\beta_0+\beta_1\,x+x^2)\,dx\ =\ 
   2\,\beta_0+\frac{2}{3}\ =\ 0\,:\quad\,\beta_0\,=\ -\ \frac{1}{3}\,;`

   :math:`\ \langle\,p_1,p_2\rangle\ =\ \int_{-1}^{+1}\ x\,(\beta_0+\beta_1\,x+x^2)\,dx\ =\ 
   \frac{2}{3}\,\beta_1\ =\ 0\,:\qquad\beta_1\,=\,0\,.`

   :math:`\ p_2(x)\,=\,x^2-\;\frac{1}{3}\ ;`

   :math:`\ \|\,p_2\|^2\,=\,\int_{-1}^{+1}\ (x^2-\,\frac{1}{3})^2\,dx\ =\ 
   \int_{-1}^{+1}\ (x^4-\frac{2}{3}\,x^2+\frac{1}{9})\,dx\ =\ \frac{8}{45}\ ;\quad
   \|\,p_2\|\ =\ \frac{2}{3}\ \sqrt{\frac{2}{5}}\,.`

   :math:`\blacktriangleright\quad q_2(x)\ \,=\ \,
   \displaystyle\frac{1}{\|\,p_2\|}\ \ p_2(x)\ \ =\ \ 
   \frac{3}{2}\ \ \sqrt{\,\frac{5}{2}}\ \ \left(x^2-\;\frac{1}{3}\right)\ \ =\ \ 
   \frac{1}{2}\ \ \sqrt{\,\frac{5}{2}}\ \ (3\,x^2-\,1)\,.\\`

3. :math:`\ p_3(x)\ =\ 
   \widetilde{\gamma_0}\cdot 1+\gamma_1\cdot x+\gamma_2\cdot(x^2-\;\frac{1}{3})+x^3\ =\ 
   \gamma_0+\,\gamma_1\,x\,+\,\gamma_2\,x^2\,+\,x^3\,,`

   :math:`\ \text{gdzie}\quad\gamma_0,\,\gamma_1,\,\gamma_2:\quad
   \langle\,p_0,p_3\rangle\,=\,\langle\,p_1,p_3\rangle\,=\,\langle\,p_2,p_3\rangle\,=\,0\,.`
   
   :math:`\ \langle\,p_0,p_3\rangle\,=\,2\,\gamma_0+\frac{2}{3}\,\gamma_2\,=\,0\,;\quad
   \langle\,p_1,p_3\rangle\,=\,\frac{2}{3}\,\gamma_1+\frac{2}{5}\,=\,0\,;\quad
   \langle\,p_2,p_3\rangle\,=\,\frac{8}{45}\,\gamma_2\,=\,0\,;`
   
   :math:`\ \text{skąd}\quad\gamma_0=\gamma_2=0\,,\quad\gamma_1=-\ \frac{3}{5}\,.`

   :math:`\ p_3(x)\,=\,x^3-\,\frac{3}{5}\,x\,;\qquad\|\,p_3\|\ =\ \frac{2}{5}\ \sqrt{\frac{2}{7}}\,.`

   :math:`\blacktriangleright\quad q_3(x)\ \,=\ \,
   \displaystyle\frac{1}{\|\,p_3\|}\ \ p_3(x)\ \ =\ \ 
   \frac{5}{2}\ \ \sqrt{\,\frac{7}{2}}\ \ \left(x^3-\,\frac{3}{5}\,x\right)\ =\ 
   \frac{1}{2}\ \ \sqrt{\,\frac{7}{2}}\ \ (5\,x^3-3\,x)\,.`

.. math::
   
   \mathcal{Q}\ \ =\ \ \left(\ \ \frac{1}{\sqrt{2}}\ ,\quad
                               \sqrt{\,\frac{3}{2}}\ \ x\ ,\quad
                               \frac{1}{2}\ \ \sqrt{\,\frac{5}{2}}\ \ (3\,x^2-\,1)\ ,\quad
                               \frac{1}{2}\ \ \sqrt{\,\frac{7}{2}}\ \ (5\,x^3-3\,x)\ ,\ \ 
                               \dots\ 
                       \right)

Macierze ortogonalne i rozkład QR
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważania w tej sekcji dotyczą dziedziny rzeczywistej, 
a więc macierzy rzeczywistych :math:`\\` i :math:`\,` przestrzeni euklidesowych.
Później wprowadzone tu pojęcia i twierdzenia będą przeniesione do dziedziny zespolonej.

.. Przeniesienie wprowadzonych tu pojęć i twierdzeń 
   do dziedziny zespolonej będzie dokonane później.

.. admonition:: Definicja.
   
   Macierz :math:`\ \boldsymbol{B}\,=\,[\,\boldsymbol{b}_1\,|\,\boldsymbol{b}_2\,|\,\dots\,|\,
   \boldsymbol{b}_n\,]\,=\,[\,\beta_{ij}\,]_{n\times n}\in M_n(R)\ \,` jest :math:`\,`  
   *ortogonalna*, :math:`\,` gdy 
   
   .. math::
      :label: orthogonal
      
      \boldsymbol{B}^T\boldsymbol{B}\,=\,\boldsymbol{I}_n\,.
   
**Własności** macierzy ortogonalnych.

1. Przyrównując do siebie wyznaczniki obu stron równania :eq:`orthogonal` otrzymujemy
   
   .. math::
      
      \det\,(\boldsymbol{B}^T\boldsymbol{B})=\det\boldsymbol{B}^T\cdot\,\det\boldsymbol{B}=
      (\det\boldsymbol{B})^2\quad=\quad\det\boldsymbol{I}_n=1\,,

   skąd :math:`\,\det\boldsymbol{B}=\pm 1.\ ` Macierz ortogonalna jest zatem nieosobliwa,
   a więc odwracalna: :math:`\ \boldsymbol{B}^{-1}=\,\boldsymbol{B}^T\,.\ `
   Mnożąc tę równość z lewej strony przez :math:`\ \boldsymbol{B}\ ` otrzymamy
   :math:`\ \boldsymbol{B}\boldsymbol{B}^T=\boldsymbol{I}_n\,.\ ` Macierze ortogonalne
   spełniają więc równości :math:`\ \ \boldsymbol{B}^T\boldsymbol{B}\,=\,
   \boldsymbol{B}\boldsymbol{B}^T=\boldsymbol{I}_n\,.`

2. Warunek :math:`\ \boldsymbol{B}\boldsymbol{B}^T=\boldsymbol{I}_n\ ` można przepisać jako
   :math:`\ (\boldsymbol{B}^T)^T\boldsymbol{B}^T=\boldsymbol{I}_n\,,\ ` z czego wynika,
   że jeśli :math:`\ \boldsymbol{B}\in M_n(R)\ ` jest macierzą ortogonalną, to ortogonalna
   jest również macierz transponowana :math:`\ \boldsymbol{B}^T\ ` oraz macierz odwrotna
   :math:`\ \boldsymbol{B}^{-1}\,.`

3. Niech :math:`\ \boldsymbol{B}_1,\boldsymbol{B}_2\in M_n(R)\ ` będą macierzami ortogonalnymi:
   :math:`\ \ \boldsymbol{B}_1^T\,\boldsymbol{B}_1=\boldsymbol{B}_2^T\,\boldsymbol{B}_2=
   \boldsymbol{I}_n\,.\ ` 
   Wtedy, korzystając z własności operacji transponowania macierzy, otrzymujemy
   
   .. math::
      
      (\boldsymbol{B}_1\boldsymbol{B}_2)^T(\boldsymbol{B}_1\boldsymbol{B}_2)\ =\ 
      \boldsymbol{B}_2^T\,(\boldsymbol{B}_1^T\boldsymbol{B}_1)\,\boldsymbol{B}_2\ =\ 
      \boldsymbol{B}_2^T\,\boldsymbol{I}_n\,\boldsymbol{B}_2\ =\ 
      \boldsymbol{B}_2^T\,\boldsymbol{B}_2\ =\ \boldsymbol{I}_n\,.
   
   Tak więc iloczyn macierzy ortogonalnych jest macierzą ortogonalną. 
   Ponieważ macierz jednostkowa :math:`\ \boldsymbol{I}_n\ ` jest ortogonalna,
   można zapisać
   
   .. admonition:: Wniosek 1.
      
      Macierze ortogonalne stopnia :math:`\,n\ ` tworzą (nieprzemienną) grupę 
      ze względu na mnożenie  macierzowe.

4. Przechodząc do elementów macierzowych, warunek :eq:`orthogonal` można przepisać jako
   
   .. math::
      
      \sum_{k\,=\,1}^n\ \beta_{ik}^T\;\beta_{kj}\,=\ \sum_{k\,=\,1}^n\ \beta_{ki}\;\beta_{kj}\,=\ 
      \langle\,\boldsymbol{b}_i,\boldsymbol{b}_j\rangle\ =\ \delta_{ij}\,,\qquad
      i,j=1,2,\dots,n\,.
   
   Oznacza to, że kolumny macierzy :math:`\,\boldsymbol{B},\,` interpretowane jako wektory
   przestrzeni :math:`\,R^n\,,\ \,` tworzą układ ortonormalny. 
   Ponieważ macierz :math:`\ \boldsymbol{B}^T\ ` jest również ortogonalna, 
   to samo można powiedzieć o wierszach macierzy :math:`\ \boldsymbol{B}.`
   
   .. admonition:: Wniosek 2.
      
      Macierz :math:`\ \boldsymbol{B}\in M_n(R)\ ` jest ortogonalna 
      wtedy :math:`\,` i :math:`\,` tylko wtedy,
      gdy jej kolumny :math:`\,` (a także wiersze) :math:`\,` 
      tworzą w przestrzeni :math:`\,R^n\ ` układ ortonormalny.

Niech będzie dana nieosobliwa macierz :math:`\ \boldsymbol{A}\,=\,
[\,\boldsymbol{a}_1\,|\,\boldsymbol{a}_2\,|\,\dots\,|\,\boldsymbol{a}_n\,]\in M_n(R).\ `
Jej kolumny są liniowo niezależne i tworzą w przestrzeni :math:`\,R^n\ ` bazę 
:math:`\,\mathcal{B}=(\boldsymbol{a}_1\,,\,\boldsymbol{a}_2\,,\,\dots,\,\boldsymbol{a}_n)\,.`
Zastosujemy do niej ortogonalizację Grama-Schmidta otrzymując ortogonalną bazę
:math:`\,\mathcal{P}=(\boldsymbol{y}_1\,,\,\boldsymbol{y}_2\,,\,\dots,\,\boldsymbol{y}_n)\ \ `
i :math:`\,` ortonormalną bazę 
:math:`\,\mathcal{Q}=(\boldsymbol{u}_1\,,\,\boldsymbol{u}_2\,,\,\dots,\,\boldsymbol{u}_n).\ `
Wektory baz :math:`\,\mathcal{P}\ \,\text{i}\ \ \mathcal{Q}\ ` są związane relacjami

.. math::
   
   \boldsymbol{u}_i\ =\ \,\frac{1}{\|\,\boldsymbol{y}_i\|}\ \ \boldsymbol{y}_i\,,
   \qquad i=1,2,\dots,n.

Celem będzie przedstawienie macierzy :math:`\ \boldsymbol{A}\ `  
w postaci iloczynu ortogonalnej macierzy :math:`\\ \boldsymbol{Q}\,=\,
[\,\boldsymbol{u}_1\,|\,\boldsymbol{u}_2\,|\,\dots\,|\,\boldsymbol{u}_n\,]\ \,`
i :math:`\,` pewnej górnej (czyli prawej) macierzy trójkątnej :math:`\ \boldsymbol{R} :
\ \boldsymbol{A}=\boldsymbol{Q}\boldsymbol{R}\,.`

.. W :math:`\,j`-tym kroku procedury Grama-Schmidta zastosowanej do bazy :math:`\,\mathcal{B}\ \,`
   (:math:`j=2,\dots,n`) :

Procedura Grama-Schmidta zastosowana do bazy :math:`\,\mathcal{B}\ \,` daje (:math:`j=2,\dots,n`) :

.. math::
   
   \begin{array}{rcl}
   \boldsymbol{y}_1 & = & \boldsymbol{a}_1\,, \\
   \boldsymbol{y}_j & = &
   \lambda_1\,\boldsymbol{y}_1\;+\ \lambda_2\,\boldsymbol{y}_2\;+\ \ldots\ +\ 
   \lambda_{j-1}\,\boldsymbol{y}_{j-1}\;+\ \boldsymbol{a}_j\;\ = \\
   & = & \boldsymbol{a}_j
                   \;-\ \langle\,\boldsymbol{u}_1,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_1
                   \;-\ \langle\,\boldsymbol{u}_2,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_2
                   \;-\ \ldots
                   \;-\ \langle\,\boldsymbol{u}_{j-1},\boldsymbol{a}_j\rangle\ \,
                   \boldsymbol{u}_{j-1}\,;
   \end{array}

(:math:`\,\lambda_i\ ` zostały wyznaczone z warunków ortogonalności
:math:`\,\langle\,\boldsymbol{y}_i,\boldsymbol{y}_j\rangle=0\,,\ \ i=1,2,\dots,j-1.`) 

Przedstawienie wektorów wyjściowej bazy :math:`\,\mathcal{B}\,`
w ortonormalnej bazie :math:`\,\mathcal{Q}\,` jest więc następujące:

.. math::
   
   \begin{array}{rcl}
   \boldsymbol{a}_j & = & \langle\,\boldsymbol{u}_1,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_1
                     \;+\ \langle\,\boldsymbol{u}_2,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_2
                     \;+\ \ldots
                     \;+\ \langle\,\boldsymbol{u}_{j-1},\boldsymbol{a}_j\rangle\ \,
                                                        \boldsymbol{u}_{j-1}
                     \;+\ \,\boldsymbol{y}_j\ \,= \\
                    & = & \langle\,\boldsymbol{u}_1,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_1
                     \;+\ \langle\,\boldsymbol{u}_2,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_2
                     \;+\ \ldots
                     \;+\ \langle\,\boldsymbol{u}_{j-1},\boldsymbol{a}_j\rangle\ \,
                                                        \boldsymbol{u}_{j-1}
                     \;+\ \,\|\,y_j\|\ \,\boldsymbol{u}_j\ \,= \\
                    & = & \langle\,\boldsymbol{u}_1,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_1
                     \;+\ \langle\,\boldsymbol{u}_2,\boldsymbol{a}_j\rangle\ \,\boldsymbol{u}_2
                     \;+\ \ldots
                     \;+\ \langle\,\boldsymbol{u}_{j-1},\boldsymbol{a}_j\rangle\ \,
                                                        \boldsymbol{u}_{j-1}
                     \;+\ \langle\,\boldsymbol{u}_j,\boldsymbol{a}_j\rangle\ \,
                                                    \boldsymbol{u}_j\,.
   \end{array}     

.. Definiujemy (górną trójkątną) macierz 
   :math:`\ \boldsymbol{R}\,=\,[\,\rho_{ij}\,]_{n\times n}\ ` następująco:

Związki te można zapisać przy użyciu (górnej trójkątnej) macierzy 
:math:`\ \boldsymbol{R}\,=\,[\,\rho_{ij}\,]_{n\times n}\,:`

.. math::
   
   \rho_{ij}\ \ :\,=\ \ 
   \left\{\ 
   \begin{array}{ccc}
   \langle\,\boldsymbol{u}_i,\boldsymbol{a}_j\rangle & \text{dla} & i\leq j \\
                            0                        & \text{dla} &  i > j 
   \end{array}
   \right.,\quad i,j=1,2,\dots,n\,.

   \boldsymbol{a}_j\ \;=\ \ 
   \sum_{i\,=\,1}^j\ \langle\,\boldsymbol{u}_i,\boldsymbol{a}_j\rangle\ \boldsymbol{u}_i\ \ =\ \ 
   \sum_{i\,=\,1}^n\ \rho_{ij}\;\boldsymbol{u}_i\,,\qquad j=1,2,\dots,n.

Ostatnia równość stwierdza, że :math:`\,j`-ta kolumna macierzy :math:`\,\boldsymbol{A}\ `
jest kombinacją liniową kolumn macierzy :math:`\,\boldsymbol{Q},\ ` o współczynnikach 
z :math:`\,j`-tej kolumny macierzy :math:`\,\boldsymbol{R}.\ `
Według kolumnowej reguły mnożenia macierzowego oznacza to zależność
:math:`\ \boldsymbol{A}=\boldsymbol{Q}\boldsymbol{R}\,,\ ` jaką właśnie należało wyprowadzić.

.. W całej okazałości macierz :math:`\ \boldsymbol{R}\ ` przedstawia się następująco:

   .. math::
   
   \boldsymbol{R}\ \ =\ \ 
   \left[
   \begin{array}{ccccc}
   \langle\,\boldsymbol{u}_1,\boldsymbol{a}_1\rangle &
   \langle\,\boldsymbol{u}_1,\boldsymbol{a}_2\rangle &
   \langle\,\boldsymbol{u}_1,\boldsymbol{a}_3\rangle &
   \dots &
   \langle\,\boldsymbol{u}_1,\boldsymbol{a}_n\rangle 
   \\   
    0                                                &
   \langle\,\boldsymbol{u}_2,\boldsymbol{a}_2\rangle &
   \langle\,\boldsymbol{u}_2,\boldsymbol{a}_3\rangle &
   \dots &
   \langle\,\boldsymbol{u}_2,\boldsymbol{a}_n\rangle 
   \\   
    0                                                &
    0                                                &
   \langle\,\boldsymbol{u}_3,\boldsymbol{a}_3\rangle &
   \dots &
   \langle\,\boldsymbol{u}_3,\boldsymbol{a}_n\rangle 
   \\
   \dots & \dots & \dots & \dots & \dots
   \\
   0 & 0 & 0 & \dots & \langle\,\boldsymbol{u}_n,\boldsymbol{a}_n\rangle
   \end{array}
   \right]\,.

**Zastosowanie rozkładu QR.** :math:`\ `

Niech będzie dany kramerowski układ równań nad ciałem :math:`\,R\ ` z macierzą współczynników
:math:`\,\boldsymbol{A}\in M_n(R)\ ` 
i kolumną wolnych wyrazów :math:`\,\boldsymbol{b}\in R^n\,.\ `
Dysponując rozkładem :math:`\ \boldsymbol{A}=\boldsymbol{Q}\boldsymbol{R}\ `
można ten układ przekształcić następująco:

.. math::
   :nowrap:
   
   \begin{eqnarray*}
   \boldsymbol{A}\,\boldsymbol{x}                 & \!\! = \!\! & \boldsymbol{b}\,, \\
   (\boldsymbol{Q}\boldsymbol{R})\,\boldsymbol{x} & \!\! = \!\! & \boldsymbol{b}\,, \\   
   \boldsymbol{Q}(\boldsymbol{R}\boldsymbol{x})   & \!\! = \!\! & \boldsymbol{b}\,.
   \end{eqnarray*}

Ortogonalność macierzy :math:`\,\boldsymbol{Q}\,` pozwala zastąpić kosztowną operację wyliczenia odwrotności przez transpozycję: :math:`\ \ \boldsymbol{Q}^{-1}=\;\boldsymbol{Q}^T,\ \ `
wobec czego

.. math::
   
   \boldsymbol{R}\,\boldsymbol{x}\ =\ \boldsymbol{Q}^T\,\boldsymbol{b}\,.

Układ równań z trójkątną macierzą :math:`\,\boldsymbol{R}\ ` rozwiązuje się 
szybko metodą podstawiania "wstecz".

Dla przykładu przeprowadzimy rozkład QR dla macierzy

.. math::
   
   \boldsymbol{A}\ =\ 
   \left[\begin{array}{rrr}
   -2 &  8 &  19 \\
   -2 & 11 & -14 \\
    1 & -7 &  -8
   \end{array}\right]\,.

Ortogonalizacja Grama-Schmidta zastosowana do układu kolumn macierzy :math:`\,\boldsymbol{A}\ `
da macierz :math:`\,\boldsymbol{P}\ ` o kolumnach tworzących układ ortogonalny oraz docelową
ortogonalną macierz :math:`\,\boldsymbol{Q}.\ \\`
Znając :math:`\,\boldsymbol{Q},\ ` macierz :math:`\,\boldsymbol{R}\ `
można łatwo wyliczyć jako :math:`\ \boldsymbol{R}=\boldsymbol{Q}^T\boldsymbol{A}\,.`


.. code-block:: python

   sage: A = matrix(QQ,[[-2,  8,  19],
   ...                  [-2, 11, -14],
   ...                  [ 1, -7,  -8]])
   
   sage: P,Q = copy(A),copy(A)
   
   sage: P[:,0] = A[:,0]
   sage: Q[:,0] = P[:,0]/P[:,0].norm()
   
   sage: P[:,1] = A[:,1] - Q.column(0)*A.column(1)*Q[:,0]
   sage: Q[:,1] = P[:,1]/P[:,1].norm()
   
   sage: P[:,2] = A[:,2] - Q.column(0)*A.column(2)*Q[:,0]\
   ...                   - Q.column(1)*A.column(2)*Q[:,1]
   
   sage: Q[:,2] = P[:,2]/P[:,2].norm()
   
   sage: R = Q.T*A
   
   sage: html.table([['$A$','','$Q$','','$R$'],[A,'=',Q,'*',R]])

.. math::
   
   \begin{array}{ccccc}
   A & & Q & & R \\ \\
   \left(\begin{array}{rrr} -2 & 8 & 19 \\ -2 & 11 & -14 \\ 1 & -7 & -8 \end{array}\right) & = &
   \left(\begin{array}{rrr}
   -\textstyle\frac{2}{3} & -\textstyle\frac{2}{3} & \textstyle\frac{1}{3} \\
   -\textstyle\frac{2}{3} & \textstyle\frac{1}{3} & -\textstyle\frac{2}{3} \\
    \textstyle\frac{1}{3} & -\textstyle\frac{2}{3} & -\textstyle\frac{2}{3} \end{array}\right) & * &
   \left(\begin{array}{rrr} 3 & -15 & -6 \\ 0 & 3 & -12 \\ 0 & 0 & 21 \end{array}\right)
   \end{array}

W systemie Sage istnieje funkcja (metoda) ``QR()``, która wykonuje rozkład QR dla zadanej macierzy
:math:`\,\boldsymbol{A}\ ` i zwraca parę macierzy :math:`\,(\boldsymbol{Q},\boldsymbol{R})\,.\ `
Wymagany jest dokładny pierścień, zawierający liczby wymierne i pierwiastki kwadratowe (np. ciało liczb algebraicznych ``QQbar``). Obliczenia numeryczne powinny być wykonane w ciele ``RDF`` liczb podwójnej precyzji.

.. code-block:: python 

   sage: B = A.change_ring(RDF)
   sage: (Q,R) = B.QR()
   sage: show((Q.round(2),R))

.. math::
   
   \left(\left( 
   \begin{array}{rrr}
   -0.67 & 0.67 & -0.33 \\
   -0.67 & -0.33 & 0.67 \\
    0.33 & 0.67 & 0.67
   \end{array}\right), 
   \left(\begin{array}{rrr}
    3.0 & -15.0 & -6.0 \\
    0.0 & -3.0 & 12.0 \\
   -0.0 & -0.0 & -21.0
   \end{array}\right)\right)
























