
Wartości i wektory własne
-------------------------

*Widmem* operatora liniowego nazywamy zbiór jego wartości własnych.
Udowodnimy, że wektory własne operatora liniowego należące do różnych wartości własnych
są liniowo niezależne.


.. admonition:: Twierdzenie 1.
   
   Niech :math:`\,F\in\text{End}(V)\,,\ \ V=V(K)\,,\ \ \dim V=n\geq 2.\ \,`
   Jeżeli w widmie operatora :math:`\,F\ ` istnieje :math:`\,k\leq n\ ` 
   różnych wartości własnych :math:`\ \lambda_1,\,\lambda_2,\,\ldots,\,\lambda_k\,,\ `
   to odpowiednie wektory własne :math:`\,v_1,\,v_2,\,\ldots,\,v_k\ `
   są liniowo niezależne.

**Dowód** :math:`\,` (indukcja względem :math:`\,k`).

I. :math:`\ k=2.\ \ ` Niech :math:`\quad
   Fv_1=\lambda_1\,v_1\,,\quad Fv_2=\lambda_2\,v_2\,,\quad 
   v_1,v_2\in V\!\smallsetminus\!\{\theta\}\,.`

   Przypuśćmy, że :math:`\ v_1,\,v_2\ ` są liniowo zależne,
   tzn. że istnieje nietrywialna kombinacja liniowa tych wektorów równa wektorowi zerowemu:
   
   .. math::
       
      \alpha_1\,v_1\,+\;\alpha_2\,v_2\ =\ \theta\,,\qquad\alpha_1\neq 0\ \ \lor\ \ \alpha_2\neq 0\,.
   
   Gdyby :math:`\ \alpha_2 = 0\,,\ ` to mielibyśmy :math:`\ \alpha_1\,v_1=\theta\ \,`
   przy :math:`\ \alpha_1\neq 0\,,\ \,` z czego wynikałoby, :math:`\\`
   że :math:`\ v_1=\theta.\ ` A zatem :math:`\ \alpha_2\neq 0\,,\ ` wobec czego można zapisać:
   
   .. math::
      
      v_2\,=\;\beta\,v_1\,,\qquad\beta\ =\ -\ \frac{\alpha_1}{\alpha_2}\ \,\neq\ \,0\,.
   
   Obliczając na dwa sposoby wynik działania operatora :math:`\,F\ ` na wektor :math:`\,v_2\ ` 
   otrzymamy
   
   .. math::
      
      \begin{array}{l}
      Fv_2\ =\ \lambda_2\,v_2\ =\ \lambda_2\,(\beta\,v_1)\ =\ (\beta\,\lambda_2)\ v_1\,, \\
      Fv_2\ =\ F(\beta\,v_1)\ =\ \beta\ Fv_1
          \ =\ \beta\,(\lambda_1\,v_1)\ =\ (\beta\,\lambda_1)\ v_1\,.
      \end{array}
      
      \text{Stąd}\qquad(\beta\,\lambda_2)\ v_1\ =\ (\beta\,\lambda_1)\ v_1\,,\qquad
      \text{czyli}\qquad\beta\,(\lambda_2-\lambda_1)\ v_1\ =\ \theta\,.
   
   Wobec :math:`\ \beta\neq 0\ ` i :math:`\ v_1\neq\theta\ ` oznacza to, 
   że :math:`\,\lambda_1=\lambda_2\,.\ `
   Z liniowej zależności wektorów własnych :math:`\,v_1,\ v_2\ ` 
   wynika więc równość odpowiednich wartości własnych :math:`\,\lambda_1,\,\lambda_2\,.` :math:`\\`
   Przez kontrapozycję wnioskujemy, że jeżeli wartości własne :math:`\,\lambda_1,\,\lambda_2\ `
   są różne, to :math:`\\`
   odpowiadające im wektory własne :math:`\ v_1,\ v_2\ ` są liniowo niezależne, 
   co należało tu pokazać.

II. | Zakładamy, że twierdzenie jest prawdziwe dla pewnego :math:`\ k<n.\ `
    | Trzeba udowodnić tezę dla :math:`\ k+1\,.`

    Niech operator liniowy :math:`\,F\ ` ma :math:`\,k+1\ ` różnych wartości własnych
    :math:`\ \lambda_1,\,\ldots,\,\lambda_k,\,\lambda_{k+1}\,,` :math:`\\`
    którym odpowiadają wektory własne :math:`\ v_1,\,\ldots,\,v_k,\,v_{k+1}\,.` :math:`\\` 
    Z założenia indukcyjnego wektory :math:`\ v_1,\ldots,v_k\ ` są liniowo niezależne. :math:`\\` 
    Mamy pokazać, że liniowo niezależny jest cały układ :math:`\ (v_1,\ldots,v_k,v_{k+1})\,.`
    
    Przypuśćmy, że wektory :math:`\ v_1,\ldots,v_k,v_{k+1}\ ` są liniowo zależne,
    to znaczy że :math:`\\` 
    istnieje nietrywialna kombinacja liniowa tych wektorów, równa wektorowi zerowemu:
    
    .. math::
       :label: lin_dep
       
       \alpha_1\,v_1\,+\,\ldots\,+\,\alpha_k\,v_k\,+\,\alpha_{k+1}\,v_{k+1}\ =\ \theta\,,
    
    przy czym nie wszystkie :math:`\ \,\alpha_i\,,\ \ i=1,\ldots,k,\,k+1\,,\ \,` znikają. :math:`\\`
    Gdyby :math:`\,\alpha_{k+1}=0\,,\ \,` 
    to :math:`\,` z :math:`\,` :eq:`lin_dep` :math:`\,` mielibyśmy

    .. math::
       
       \alpha_1\,v_1\,+\,\ldots\,+\,\alpha_k\,v_k\ = \theta
    
    gdzie nie wszystkie :math:`\ \,\alpha_i\,,\ \ i=1,\ldots,k\,,\ \,` znikają. :math:`\\` 
    Byłoby to sprzeczne z założeniem o liniowej niezależności wektorów :math:`\ v_1,\ldots,v_k\,.\ `
    
    Tak więc musi być :math:`\ \alpha_{k+1}\neq 0\,,\ \,` 
    wobec czego związek :eq:`lin_dep` można przepisać jako:
    
    .. math::
          
       v_{k+1}\ =\ \beta_1\,v_1\,+\,\ldots\,+\,\beta_k\,v_k\,,\qquad
       \beta_i\ =\ -\ \frac{\alpha_i}{\alpha_{k+1}}\ ,\quad i=1,\ldots,k\,.

    Ponieważ :math:`\ v_{k+1}\neq\theta,\ \,` to nie wszystkie współczynniki 
    :math:`\ \beta_i\ ` są równe zeru: :math:`\\` 
    istnieje (co najmniej jeden) wskaźnik :math:`\ i_0\in\{\,1,\ldots,k\,\}\,,\ \,` 
    dla którego :math:`\ \beta_{i_0}\neq 0\,.`    

    Obliczymy na dwa sposoby wynik działania operatora :math:`\,F\ ` na wektor :math:`\,v_{k+1}:`
    
    .. math::
       
       \begin{array}{l}
       F\,v_{k+1}\ =\ \lambda_{k+1}\,v_{k+1}\ =\ 
       \lambda_{k+1}\ \displaystyle\sum_{i\,=\,1}^k\ \beta_i\,v_i\ =\ 
       \displaystyle\sum_{i\,=\,1}^k\ (\beta_i\,\lambda_{k+1})\ v_i\ , \\
       F\,v_{k+1}\ =\ F\,\left(\:\displaystyle\sum_{i\,=\,1}^k\ \beta_i\,v_i\right)\ =\ 
       \displaystyle\sum_{i\,=\,1}^k\ \beta_i\ Fv_i\ =\ 
       \displaystyle\sum_{i\,=\,1}^k\ (\beta_i\,\lambda_i)\ v_i\ .
       \end{array}

       \begin{array}{l}       
       \text{Stąd}\qquad
       \displaystyle\sum_{i\,=\,1}^k\ (\beta_i\,\lambda_{k+1})\ v_i\ =\ 
       \displaystyle\sum_{i\,=\,1}^k\ (\beta_i\,\lambda_i)\ v_i\,, \\
       \text{czyli}\qquad
       \displaystyle\sum_{i\,=\,1}^k\ \beta_i\ (\lambda_{k+1}-\lambda_i)\ v_i\ =\ \theta\,.
       \end{array}

    Z liniowej niezależności wektorów :math:`\ v_1,\ldots,v_k\ ` wynika zerowanie się 
    wszystkich współczynników w kombinacji liniowej po lewej stronie równości:
    
    .. math::
       
       \beta_i\ (\lambda_{k+1}-\lambda_i)\ =\ 0\qquad\text{dla}\quad i=1,\ldots,k\,.

    W szczególności, :math:`\,` dla :math:`\,i=i_0\ ` otrzymujemy  
    :math:`\ \beta_{i_0}\ (\lambda_{k+1}-\lambda_{i_0})\ =\ 0\,,\ \,` :math:`\\`
    co, :math:`\,` wobec :math:`\ \beta_{i_0}\neq 0\,,\ \,` oznacza :math:`\,` że 
    :math:`\ \,\lambda_{k+1}=\lambda_{i_0}\,.`
    
    Tak więc przypuszczenie, że wektory :math:`\ v_1,\ldots,v_k,\,v_{k+1}\ ` są liniowo zależne,
    doprowadziło do sprzeczności z założeniem, że wszystkie wartości własne
    :math:`\ \lambda_1,\,\ldots,\,\lambda_k,\,\lambda_{k+1}\ ` są różne. 
    Wynika stąd, że wymienione wektory są liniowo niezależne, co kończy dowód.

Jak wiadomo, w :math:`\,n`-wymiarowej przestrzeni wektorowej 
każdy liniowo niezależny układ :math:`\,n\ ` wektorów jest bazą.
Jeżeli więc operator liniowy :math:`\,F\in\text{End}(V),\ ` gdzie :math:`\,\dim V=n,\ \,`
ma :math:`\,n\ ` różnych wartości własnych, to istnieje baza przestrzeni :math:`\,V,\ `
złożona z jego wektorów własnych. Dokładniej przedstawia to  

.. admonition:: Wniosek.
   
   Jeżeli operator liniowy :math:`\,F,\ ` określony na :math:`\,n`-wymiarowej
   przestrzeni wektorowej :math:`\,V(K),\ \,` ma :math:`\ \,n\ \,` różnych wartości własnych
   :math:`\ \,\lambda_1,\,\lambda_2,\,\ldots,\,\lambda_n\,,\ \,` 
   którym odpowiadają wektory własne :math:`\ v_1,\,v_2,\,\ldots,\,v_n\,:`
   
   .. math::
      
      Fv_i\ =\ \lambda_i\,v_i\,,\quad v_i\neq\theta\,,\qquad i=1,2,\ldots,n\,,
   
   to :math:`\,` układ :math:`\ \,\mathcal{B}=(v_1,v_2,\ldots,v_n)\ \,` 
   jest bazą przestrzeni :math:`\,V.`

Gdy :math:`\,V\ ` jest przestrzenią unitarną albo euklidesową, 
a :math:`\ \,F\ ` jest operatorem normalnym :math:`\\`
(np. hermitowskim bądź unitarnym), :math:`\,`
to wektory własne dla różnych wartości własnych są ortogonalne, wobec czego 
układ :math:`\,\mathcal{B}\ \,` jest wtedy bazą ortogonalną.

Wniosek można też udowodnić jako niezależne

.. admonition:: Twierdzenie 2.
   
   Jeżeli operator liniowy :math:`\,F,\ \,` określony na :math:`\,n`-wymiarowej
   przestrzeni wektorowej :math:`\ V,\ ` ma :math:`\,n\,` różnych wartości własnych,
   to odpowiednie wektory własne są liniowo niezależne, a więc tworzą bazę przestrzeni :math:`\ V.`

**Dowód.** :math:`\,` Zakładamy, że :math:`\ \ F\in\text{End}(V)\,,\ \ ` 
gdzie :math:`\ \ V=V(K)\,,\ \ \dim V=n\,,\ \ ` oraz :math:`\,` że
 
.. math::

   Fv_i=\lambda_i\,v_i\,,\ \ v_i\in V\!\smallsetminus\!\{\theta\}\,,\ \ \lambda_i\in K\,,\ \  
   \text{przy czym}\ \ \lambda_i\neq\lambda_j\ \ \text{dla}\ \ i\neq j,\quad i,j=1,2,\ldots,n.

Aby udowodnić liniową niezależność układu wektorów :math:`\ (v_1,v_2,\ldots,v_n)\ `
stwierdzimy, że każda kombinacja liniowa tych wektorów, równa wektorowi zerowemu,
jest kombinacją trywialną.

Przypuśćmy więc, :math:`\,` że 
:math:`\quad\alpha_1\,v_1+\alpha_2\,v_2+\ldots+\alpha_n\,v_n=\theta\,,\quad
\alpha_i\in K\,,\ \ i=1,2,\ldots,n\,.`

Działając na obie strony równości kolejno :math:`\,n-1\ ` razy :math:`\,` 
operatorem :math:`\,F,\ ` otrzymujemy:

.. .. math::
   :nowrap:
   
   \begin{alignat*}{5}
   1\ \,(\alpha_1\,v_1)               & {\ \,} + {\ } & 1\ \,(\alpha_2\,v_2)               & {\ \,} + {\ \,} & \ldots & {\ \,} + {\ } & 1\ \,(\alpha_n\,v_n)               & {\ \ } = {\ } & \ \theta \\
   \lambda_1\ \,(\alpha_1\,v_1)       & {\ \,} + {\ } & \lambda_2\ \,(\alpha_2\,v_2)       & {\ \,} + {\ \,} & \ldots & {\ \,} + {\ } & \lambda_n\ \,(\alpha_n\,v_n)       & {\ \ } = {\ } & \ \theta \\
   \lambda_1^2\ \,(\alpha_1\,v_1)     & {\ \,} + {\ } & \lambda_2^2\ \,(\alpha_2\,v_2)     & {\ \,} + {\ \,} & \ldots & {\ \,} + {\ } & \lambda_n^2\ \,(\alpha_n\,v_n)     & {\ \ } = {\ } & \ \theta \\
   \ldots\quad                        & {\ \,}   {\ } & \ldots\quad                        & {\ \,}   {\ \,} & \ldots & {\ \,}   {\ } & \ldots\quad                        & {\ \ }   {\ } & \        \\
   \lambda_1^{n-1}\ \,(\alpha_1\,v_1) & {\ \,} + {\ } & \lambda_2^{n-1}\ \,(\alpha_2\,v_2) & {\ \,} + {\ \,} & \ldots & {\ \,} + {\ } & \lambda_n^{n-1}\ \,(\alpha_n\,v_n) & {\ \ } = {\ } & \ \theta
   \end{alignat*} 

.. math::
   :nowrap:
   
   \begin{alignat*}{5}
   1\ \,(\alpha_1\,v_1) & {\ \,} + {\ }   & 
   1\ \,(\alpha_2\,v_2) & {\ \,} + {\ \,} & 
   \ldots               & {\ \,} + {\ }   & 
   1\ \,(\alpha_n\,v_n) & {\ \ } = {\ }   & \ \theta\,, \\
   \lambda_1\ \,(\alpha_1\,v_1) & {\ \,} + {\ }   & 
   \lambda_2\ \,(\alpha_2\,v_2) & {\ \,} + {\ \,} & 
   \ldots                       & {\ \,} + {\ }   & 
   \lambda_n\ \,(\alpha_n\,v_n) & {\ \ } = {\ }   & \ \theta\,, \\
   \lambda_1^2\ \,(\alpha_1\,v_1) & {\ \,} + {\ }   & 
   \lambda_2^2\ \,(\alpha_2\,v_2) & {\ \,} + {\ \,} & 
   \ldots                         & {\ \,} + {\ }   & 
   \lambda_n^2\ \,(\alpha_n\,v_n) & {\ \ } = {\ }   & \ \theta\,, \\
   \ldots\quad & {\ \,}   {\ }   & 
   \ldots\quad & {\ \,}   {\ \,} & 
   \ldots      & {\ \,}   {\ }   & 
   \ldots\quad & {\ \ }   {\ }   & \ \\
   \lambda_1^{n-1}\ \,(\alpha_1\,v_1) & {\ \,} + {\ }   & 
   \lambda_2^{n-1}\ \,(\alpha_2\,v_2) & {\ \,} + {\ \,} & 
   \ldots                             & {\ \,} + {\ }   & 
   \lambda_n^{n-1}\ \,(\alpha_n\,v_n) & {\ \ } = {\ }   & \ \theta\,.
   \end{alignat*}

Otrzymany układ równości można zapisać w postaci równania macierzowego:

.. math::
   
   \left[\begin{array}{cccc} 1               & 1               & \dots & 1               \\
                             \lambda_1       & \lambda_2       & \dots & \lambda_n       \\
                             \lambda_1^2     & \lambda_2^2     & \dots & \lambda_n^2     \\
                             \cdots          & \cdots          &\cdots & \cdots          \\ 
                             \lambda_1^{n-1} & \lambda_2^{n-1} & \dots & \lambda_n^{n-1}
   \end{array}\right]
   \left[\begin{array}{c} 
   \alpha_1\,v_1 \\ \alpha_2\,v_2 \\ \alpha_3\,v_3 \\ \cdots \\ \alpha_n\,v_n
   \end{array}\right]
   \ \ =\ \ 
   \left[\begin{array}{c} 
   \theta \\ \theta \\ \theta \\ \cdots \\ \theta
   \end{array}\right]\,.

Gdy wartości własne :math:`\ \lambda_1,\,\lambda_2,\,\dots,\lambda_n\ ` są wszystkie różne,
to macierz kwadratowa po lewej stronie równania jest nieosobliwa, co wynika ze wzoru
dla wyznacznika Vandermonde'a:

.. math::
   
   \left|\begin{array}{cccc} 1               & 1               & \dots & 1               \\
                             \lambda_1       & \lambda_2       & \dots & \lambda_n       \\
                             \lambda_1^2     & \lambda_2^2     & \dots & \lambda_n^2     \\
                             \cdots          & \cdots          &\cdots & \cdots          \\ 
                             \lambda_1^{n-1} & \lambda_2^{n-1} & \dots & \lambda_n^{n-1}
   \end{array}\right|
   \quad =\ \ 
   \prod_{1\,\leq\,l\,<\,k\,\leq\,n}^n\ (\lambda_k-\lambda_l)\quad\neq\quad0\,.

Wykorzystując istnienie macierzy odwrotnej, otrzymujemy

.. math::
   
   \left[\begin{array}{c} 
   \alpha_1\,v_1 \\ \alpha_2\,v_2 \\ \alpha_3\,v_3 \\ \cdots \\ \alpha_n\,v_n
   \end{array}\right]
   \ \ =\ \ 
   \left[\begin{array}{cccc} 1               & 1               & \dots & 1               \\
                             \lambda_1       & \lambda_2       & \dots & \lambda_n       \\
                             \lambda_1^2     & \lambda_2^2     & \dots & \lambda_n^2     \\
                             \cdots          & \cdots          &\cdots & \cdots          \\ 
                             \lambda_1^{n-1} & \lambda_2^{n-1} & \dots & \lambda_n^{n-1}
   \end{array}\right]^{-1}\ 
   \left[\begin{array}{c} 
   \theta \\ \theta \\ \theta \\ \cdots \\ \theta
   \end{array}\right]\  =\  
   \left[\begin{array}{c} 
   \theta \\ \theta \\ \theta \\ \cdots \\ \theta
   \end{array}\right]\,.

Tak więc :math:`\ \ \alpha_i\,v_i=\theta\,,\ \ `
skąd, :math:`\ ` wobec :math:`\ \ v_i\neq\theta\,,\ \ `
wynika, że :math:`\ \ \alpha_i=0\,,\quad i=1,2,\dots,n\,.\ \,`
Zachodzi więc implikacja

.. math::
   
   \alpha_1\,v_1+\,\alpha_2\,v_2+\,\ldots\,+\,\alpha_n\,v_n\,=\,\theta
   \qquad\Rightarrow\qquad
   \alpha_1\,=\;\alpha_2\,=\;\ldots\;=\;\alpha_n\,=\;0

która stwierdza liniową niezależność wektorów :math:`\ v_1,\,v_2,\,\ldots,\,v_n\,.` 

   
    































