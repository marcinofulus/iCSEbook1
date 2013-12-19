
Iloczyn skalarny
----------------

.. admonition:: Definicja.
   
   | Niech będzie dana zespolona przestrzeń wektorowa :math:`\,V(C).\ `
   | *Iloczyn skalarny* jest odwzorowaniem :math:`\,f:\ V\times V\rightarrow C\ `
     spełniającym warunki 
   | (z oznaczenia :math:`\,f(x,y)=(x,y),\ \ x,y\in V`) :

   1. :math:`\,(y,x)\,=\,(x,y)^*\,,`

   2. :math:`\,(x,y_1+y_2)\,=\,(x,y_1)\,+\,(x,y_2)\,,`

   3. :math:`\,(x,\,\alpha\,y)\,=\,\alpha\,(x,y)\,,\quad\alpha\in C\,,`

   4. :math:`\,(x,x)\geq 0\quad\land\quad [\,(x,x)=0\ \ \Leftrightarrow\ \ x=\theta\,]\,.`

**Uwagi i komentarze.**

* Iloczyn skalarny dwóch wektorów należących do zespolonej przestrzeni :math:`\,V\ `
  jest liczbą zespoloną.

* Warunek 1. stwierdza, że przestawienie czynników jest równoważne
  sprzężeniu zespolonemu iloczynu skalarnego.
  Przyjmując :math:`\ y=x\ ` otrzymujemy: :math:`\ (x,x)=(x,x)^*\,,\ `
  co oznacza, że kwadrat skalarny jest liczbą rzeczywistą. Dzięki temu ma sens warunek 4.,
  w którym dodatkowo żąda się, żeby :math:`\ (x,x)\geq 0.` 

* Warunki 2. i :math:`\,` 3. stwierdzają odpowiednio addytywność i jednorodność 
  iloczynu skalarnego ze względu na *drugi* czynnik wektorowy.

* Warunek 4. postuluje, że kwadrat skalarny jest liczbą nieujemną,
  przy czym jedynym wektorem, którego kwadrat skalarny równa się zeru,
  jest wektor zerowy.

Bezpośrednio z definicji wynikają dalsze własności iloczynu skalarnego:

.. math::
   
   (x_1+x_2,y)\,=\,(y,x_1+x_2)^*=\,[\,(y,x_1)+(y,x_2)\,]^*=\,
   (y,x_1)^*+\,(y,x_2)^*=\,(x_1,y)\,+\,(x_2,y)\,;

   (\alpha\,x,y)\,=\,(y,\alpha\,x)^*=\,[\,\alpha\,(y,x)\,]^*=\,\alpha^*(y,x)^*=\,\alpha^*(x,y)\,.

A zatem iloczyn skalarny jest liniowy względem drugiego czynnika wektorowego
i antyliniowy względem pierwszego:

.. math::
   
   (x,\,\alpha_1\,y_1\,+\,\alpha_2\,y_2)\ =\ \alpha_1\ (x,y_1)\,+\,\alpha_2\ (x,y_2)\,,

   (\alpha_1\,x_1\,+\,\alpha_2\,x_2,y)\ =\ \alpha_1^*\ (x_1,y)\,+\,\alpha_2^*\,(x_2,y)\,,

gdzie :math:`\ \,\alpha_1,\alpha_2\in C,\ \ x,\,x_1,x_2,\ y,\,y_1,y_2\in V\,.`

Definicja iloczynu skalarnego w podręcznikach matematycznych różni się od podanej tutaj 
w punkcie 3., który przyjmuje postać: :math:`\,(\alpha\,x,y)=\alpha\,(x,y)\,,\ \ \alpha\in C.\ `
Wtedy iloczyn skalarny jest liniowy względem pierwszego i antyliniowy względem drugiego czynnika. W zastosowaniach fizycznych, a zwłaszcza w mechanice kwantowej, bardziej odpowiednia jest definicja przyjęta w tym skrypcie.

Łatwo można udowodnić następujące 

.. admonition:: Twierdzenie 0.

   Jeżeli jeden z czynników jest wektorem zerowym, to iloczyn skalarny znika:
   
   .. math::
      :label: zero
      
      (\,x=\theta\quad\lor\quad y=\theta\,)\qquad\Rightarrow\qquad (x,y)\,=\,0\,.

Rzeczywiście, :math:`\,` jeżeli np. :math:`\ y=\theta,\ \ \text{to}\ \ y=0\cdot y\ \,` 
oraz :math:`\ \,(x,y)=(x,\,0\cdot y)=0\cdot (x,y)\,=\,0.`

.. admonition:: Uwaga:
   
   Twierdzenie odwrotne do :eq:`zero` nie jest prawdziwe: 
   iloczyn dwóch niezerowych wektorów może być równy zeru
   (mówimy wtedy o wektorach *ortogonalnych*).

Iloczyn skalarny określony w rzeczywistej przestrzeni wektorowej :math:`\,V(R)\ `
jest odwzorowaniem :math:`\,f:\ V\times V\rightarrow R,\ ` spełniającym warunki 1.- 4.
Postulat 1. staje się wtedy warunkiem przemienności: :math:`\ (y,x)=(x,y),\ \ x,y\in V,\ `
przez co iloczyn skalarny jest liniowy ze względu na każdy czynnik wektorowy
z osobna (można go wtedy zdefiniować jako istotnie dodatnio określony rzeczywisty symetryczny funkcjonał dwuliniowy).

.. admonition:: Definicja.
   
   *Przestrzeń unitarna* :math:`\,` jest zespoloną przestrzenią wektorową, 
   w której został określony iloczyn skalarny.

   Rzeczywista przestrzeń wektorowa z iloczynem skalarnym nazywa się :math:`\,`
   *przestrzenią euklidesową*.
   
**Przykłady.**

1.) Podstawową realizacją przestrzeni unitarnej jest przestrzeń wektorów kolumnowych

.. math::
   
   C^n\ =\ \,\left\{\ 
   \left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\,:\ \ 
   \alpha_1,\,\alpha_2,\,\dots,\,\alpha_n\in C\ \right\}\,.

Dla wektorów :math:`\quad 
x\,=\,\left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\,,\quad
y\,=\,\left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\quad`
iloczyn skalarny wyraża się wzorem

.. math::
   
   (x,y)\,=\,\sum_{i\,=\,1}^n\ \alpha_i^*\,\beta_i
        \,=\;\alpha_1^*\,\beta_1\,+\;\alpha_2^*\,\beta_2\,+\;\dots\;+\;\alpha_n^*\,\beta_n
        \,=\;[\,\alpha_1^*,\,\alpha_2^*,\,\dots,\,\alpha_n^*\,]\ 
        \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\,.

Na przykład dla :math:`\ \ x\,=\,\left[\begin{array}{c} 1+i \\ -2 \\ 4\,i \end{array}\right]\,,\ \ 
y\,=\,\left[\begin{array}{c} -i \\ -1+2\,i \\ 0 \end{array}\right]\ \in\ C^3\quad` 
iloczyn skalarny wynosi

.. math::
   
   (x,y)\ =\ (1-i)\,(-i)\,+\,(-2)\,(-1+2\,i)\,+\,(-4\,i)\,0\ =\ -i-1+2-4\,i\ =\ 1-5\,i\,.

2.) Przykładem przestrzeni euklidesowej jest zbiór :math:`\,n`-elementowych wektorów kolumnowych

.. math::
   
   R^n\ =\ \,\left\{\ 
   \left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\,:\ \ 
   \alpha_1,\,\alpha_2,\,\dots,\,\alpha_n\in R\ \right\}\,.
             
Dla wektorów :math:`\quad 
x\,=\,\left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\,,\quad
y\,=\,\left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\quad`
iloczyn skalarny dany jest przez

.. math::
   
   (x,y)\,=\,\sum_{i\,=\,1}^n\ \alpha_i\,\beta_i
        \,=\;\alpha_1\,\beta_1\,+\;\alpha_2\,\beta_2\,+\;\dots\;+\;\alpha_n\,\beta_n
        \,=\;[\,\alpha_1,\,\alpha_2,\,\dots,\,\alpha_n\,]\ 
        \left[\begin{array}{c} \beta_1 \\ \beta_2 \\ \dots \\ \beta_n \end{array}\right]\,.

3.) W mechanice kwantowej ma zastosowanie unitarna przestrzeń :math:`\,L^2\ `
złożona z funkcji zespolonych określonych na osi rzeczywistej, całkowalnych w kwadracie modułu:

.. math::
   
   L^2\ \,=\ \,\left\{\ \varphi : R\rightarrow C\ \ :\ \ 
   \int_{-\infty}^{+\infty}\ |\,\varphi(x)\,|^2\,<\,\infty\ \right\}\,.

Dla :math:`\quad\varphi,\,\psi\in L^2\quad` iloczyn skalarny ma postać 
:math:`\quad (\varphi,\psi)\ =\ 
\displaystyle\int_{-\infty}^{+\infty}\ [\,\varphi(x)\,]^*\,\psi(x)\ dx\,.`

4.) Przestrzenią euklidesową jest (dwu- albo trójwymiarowa) przestrzeń wektorów geometrycznych
z iloczynem skalarnym danym przez 
:math:`\ \ \vec{a}\cdot\vec{b}\,=\,|\vec{a}|\,|\vec{b}|\,\cos\phi\,,
\ \ \text{gdzie}\ \ \phi=\angle(\vec{a},\vec{b})\,.`

Biorąc pod uwagę zastosowania, będziemy rozważać przede wszystkim przestrzenie unitarne (czyli zespolone). Wprowadzone pojęcia, własności i twierdzenia (po odpowiednich uproszczeniach) 
są jednak ważne również w przestrzeniach euklidesowych.

.. Podstawową własność iloczynu skalarnego przedstawia

.. odnoszą się jednak również do przestrzeni euklidesowych (rzeczywistych).

.. admonition:: Twierdzenie 1. :math:`\,` (nierówność Schwarza)
   
   Dla dowolnych wektorów :math:`\,x,y\ ` unitarnej przestrzeni :math:`\,V(C)\ `
   kwadrat modułu iloczynu skalarnego jest nie większy od iloczynu kwadratów skalarnych
   tych wektorów:
   
   .. math::
      :label: Schwarz
      
      |\,(x,y)\,|^2\ \ \leq\ \ (x,x)\,(y,y)\,,\qquad x,y\in V(C)\,.

**Dowód.** :math:`\,` Gdy :math:`\,y=\theta,\ \,` słaba nierówność :eq:`Schwarz` realizuje się jako równość: :math:`\,0\,\leq 0\,.`

Załóżmy więc, że :math:`\ \,y\neq\theta\,.\ \,` 
Wtedy, :math:`\,` dla dowolnego :math:`\,\alpha\in C:`

.. math::
   
   (x-\alpha\,y,\;x-\alpha\,y)\ \ \geq\ \ 0\,,

   (x,x)\ -\ (x,\,\alpha\,y)\ -\ (\alpha\,y,\,x)\ +\ (\alpha\,y,\,\alpha\,y)\ \ \geq\ \ 0\,,

   (x,x)\ -\ \alpha\,(x,y)\ -\ \alpha^*\,(x,y)^*\ +\ \alpha^*\alpha\ (y,y)\ \ \geq\ \ 0\,.

Podstawiamy teraz :math:`\ \ \alpha\ =\ \displaystyle\frac{(x,y)^*}{(y,y)}\,:`

.. math::
   
   (x,x)\ -\ \frac{(x,y)^*}{(y,y)}\ (x,y)\ -\ \frac{(x,y)}{(y,y)}\ (x,y)^*\ +\ \,
   \frac{(x,y)}{(y,y)}\ \frac{(x,y)^*}{(y,y)}\ (y,y)\ \ \geq\ \ 0\,.

Mnożąc obie strony nierówności przez :math:`\ \;(y,y)>0\ \;` otrzymujemy

.. math::
   
   (x,x)\,(y,y)\ -\ |\,(x,y)\,|^2\ -\ |\,(x,y)\,|^2\ +\ \,|\,(x,y)\,|^2\ \ \geq\ \ 0\,,

   (x,x)\,(y,y)\ \ \geq\ \ |\,(x,y)\,|^2\,.

Można udowodnić, że nierówność :eq:`Schwarz` przechodzi w równość wtedy i tylko wtedy,
gdy wektory :math:`\,x,y\ ` są liniowo zależne. W przestrzeni euklidesowej nierówność 
redukuje się do

.. math::
   :label: Schwarz_real
   
   (x,y)^2\ \ \leq\ \ (x,x)\,(y,y)\,,\qquad x,y\in V(R)\,.   

**Przykłady.**

1.) Nierówność Schwarza zastosowana do przestrzeni unitarnej :math:`\,C^n\ ` stwierdza, że dla
:math:`\\` dowolnych dwóch ciągów liczb zespolonych 
:math:`\ \,(\alpha_1,\,\alpha_2,\,\dots,\,\alpha_n)\,,\ \ (\beta_1,\,\beta_2,\,\dots,\,\beta_n) :`

.. math::
   
   \left|\ \ \sum_{i\,=\,1}^n\ \alpha_i^*\ \beta_i\ \,\right|^{\ 2}
   \ \ \,\leq\quad
   \left(\ \sum_{i\,=\,1}^n\ |\,\alpha_i|^2\,\right)\ 
   \left(\ \sum_{i\,=\,1}^n\ |\,\beta_i\,|^2\,\right)\,.

2.) Odnosząc nierówność :eq:`Schwarz_real` do przestrzeni euklidesowej :math:`\,R^n\ `
otrzymujemy dla dowolnych dwóch ciągów liczb rzeczywistych 
:math:`\ \,(\alpha_1,\,\alpha_2,\,\dots,\,\alpha_n)\,,\ \ (\beta_1,\,\beta_2,\,\dots,\,\beta_n)\ `
warunek:

.. math::
   
   \left(\ \ \sum_{i\,=\,1}^n\ \alpha_i\ \beta_i\ \right)^2
   \ \ \,\leq\quad
   \left(\ \sum_{i\,=\,1}^n\ \alpha_i^2\,\right)\ 
   \left(\ \sum_{i\,=\,1}^n\ \beta_i^2\,\right)\,,

3.) W przestrzeni :math:`\,L^2\ ` funkcji całkowalnych w kwadracie modułu 
dla dowolnych funkcji :math:`\,\varphi,\psi\ ` spełniona jest nierówność

.. math::
   
   \left|\ \ \int_{-\infty}^{+\infty}\ [\,\varphi(x)\,]^*\,\psi(x)\ dx\ \ \right|^{\,2}
   \ \ \ \leq\ \ \ 
   \int_{-\infty}^{+\infty}\ |\,\varphi(x)\,|^2\ dx\ \ \cdot\  
   \int_{-\infty}^{+\infty}\ |\,\psi(x)\,|^2\ dx\,.

4.) W euklidesowej przestrzeni wektorów geometrycznych z iloczynem skalarnym

.. math::
   
   \vec{a}\cdot\vec{b}\,=\,|\vec{a}|\,|\vec{b}|\,\cos\phi\,,

nierówność Schwarza daje: :math:`\quad (\vec{a}\cdot\vec{b})^2\ \,\leq\ \,|\vec{a}|^2\ |\vec{b}|^2\,,
\quad\text{czyli}\quad |\,\vec{a}\cdot\vec{b}\,|\ \,\leq\ \,|\vec{a}|\ |\vec{b}|\,.`

.. (\vec{a}\cdot\vec{b})^2\ \,\leq\ \,|\vec{a}|^2\ |\vec{b}|^2\,,
   \qquad\text{czyli}\qquad
   |\,\vec{a}\cdot\vec{b}\,|\ \,\leq\ \,|\vec{a}|\ |\vec{b}|\,,

Warunek ten jest skądinąd oczywisty, :math:`\,` bo :math:`\ \,|\cos\phi\,|\,\leq\,1\,.`






















