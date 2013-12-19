
Norma wektora
-------------

.. admonition:: Definicja.
   
   | Niech :math:`\,V\ ` będzie przestrzenią wektorową rzeczywistą albo zespoloną.
   | *Norma* w przestrzeni :math:`\,V\ ` jest funkcją :math:`\,f:\,V\rightarrow R\ ` 
     spełniającą następujące warunki 
   | (z oznaczenia :math:`\,f(x)=\| x\|,\ \ x\in V`) :

   1. :math:`\ \|x\|\,\geq\,0
      \qquad\land\qquad 
      (\ \,\|x\|=0\quad\Leftrightarrow\quad x=\theta\ \,)\,,`
      
   2. :math:`\ \|\alpha\,x\|\ =\ |\alpha|\,\|x\|\,,\qquad
      \alpha\in R\ \ \lor\ \ \alpha\in C\,,`

   3. :math:`\ \|\,x+y\,\|\ \leq\ \|x\|\,+\,\|y\|\,,\qquad x,y\in V\,.`

**Uwagi i komentarze.**

* | Norma wektora jest nieujemną liczbą rzeczywistą, 
  | przy czym jedynym wektorem o zerowej normie jest wektor zerowy.

* | Pomnożenie wektora przez liczbę :math:`\,\alpha\in K\ ` mnoży jego normę przez 
  | wartość bezwzględną :math:`\,\alpha\ ` (gdy :math:`\,K=R`) :math:`\,` 
    albo przez moduł :math:`\,\alpha\ ` (gdy :math:`\,K=C`).

* | Norma sumy dwóch wektorów jest nie większa od sumy ich norm.
  | Warunek ten nazywany jest nierównością trójkąta.
  | Jak widać, norma jest uogólnieniem długości wektora geometrycznego.

Przestrzeń :math:`\,V,\ ` na której jest określona norma, 
nazywa się *przestrzenią unormowaną*.

**Przykłady.**

1. :math:`\ V=R^1\,;\quad\|x\|=|x|\,,\quad x\in R\ \ ` (wartość bezwzględna liczby :math:`\,x`).

2. :math:`\ V=C^1\,;\quad\|z\|=|z|\,,\quad z\in C\ \ ` (moduł liczby :math:`\,z`).

3. :math:`\ V=R^3\,;\quad\text{dla}\ \ 
   x\,=\,\left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \alpha_3 \end{array}\right] :\quad
   \|x\|\,=\,\sqrt{\alpha_1^2+\alpha_2^2+\alpha_3^2}\ .`

4. W przestrzeni wektorów geometrycznych normą jest długość wektora.
   Wprowadzając bazę :math:`\,\mathcal{E}=(\vec{e}_1,\vec{e}_2,\vec{e}_3)\,` w postaci trójki 
   wzajemnie prostopadłych 
   wektorów jednostkowych, normę wektora
   :math:`\ \vec{a}=\alpha_1\,\vec{e}_1+\alpha_2\,\vec{e}_2+\alpha_3\,\vec{e}_3\ `
   można zapisać jako
   
   .. math::
      
      \|\,\vec{a}\,\|\ =\ |\,\vec{a}\,|\ =\ \sqrt{\alpha_1^2+\alpha_2^2+\alpha_3^2}\ \ =\ \ 
      \sqrt{\,\vec{a}\cdot\vec{a}}\ .

   Norma równa się tutaj pierwiastkowi z kwadratu skalarnego wektora.

Ostatni wynik, wyrażający normę przez iloczyn skalarny, można uogólnić i zastosować do dowolnej przestrzeni unitarnej (euklidesowej). 

.. admonition:: Twierdzenie 2.
   
   W przestrzeni unitarnej (euklidesowej) :math:`\ V\ ` jako normę można przyjąć funkcję
   
   .. math::
      :label: norm
      
      f(x)\ =\ \sqrt{\,(x,x)}\ ,\qquad x\in V\,.

**Dowód** polega na sprawdzeniu, że funkcja :eq:`norm` spełnia postulaty w definicji normy. :math:`\\`
W oparciu o definicję iloczynu skalarnego stwierdzamy, że 

1. :math:`\ f(x)\ \geq 0\qquad\land\qquad[\,f(x)\,=\,0\quad\Leftrightarrow\quad x=\theta\,]\,;`
 
2. :math:`\ f(\alpha\,x)\ \,=\ \,\sqrt{\,(\alpha\,x,\,\alpha\,x)}\ \,=\ \,
   \sqrt{\,\alpha^*\,\alpha\,(x,x)}\ \,=\ \,\sqrt{\,|\alpha|^2\,(x,x)}\ \ =\ \  
   |\alpha|\ \,f(x)\,;`
   
3. | :math:`\ [\,f(x+y)\,]^2\ \ =\ \ (x+y,\,x+y)\ \ =`
   |  :math:`=\ \ (x,x)\,+\,(x,y)\,+\,(y,x)\,+\,(y,y)\ \ =\ \ 
      (x,x)\,+\,(x,y)\,+\,(x,y)^*+\,(y,y)\ \ =`
   |  :math:`=\ \ (x,x)\,+\,2\;\text{re}\,(x,y)\,+\,(y,y)\ \ \leq\ \ 
      (x,x)\,+\,2\ |(x,y)|\,+\,(y,y)\ \ \leq`
   |  :math:`\leq\ \ (x,x)\,+\,2\,\sqrt{(x,x)\,(y,y)}\,+\,(y,y)\ \ =\ \ 
      [\,f(x)\,]^2\,+\,2\,f(x)\,f(y)\,+\,[\,f(y)\,]^2\ \ =`
   | :math:`\ =\ \ [\,f(x)+f(y)\,]^2\,;`
   |
   | :math:`\ [\,f(x+y)\,]^2\ \leq\ [\,f(x)+f(y)\,]^2\qquad\Rightarrow\qquad
     f(x+y)\ \leq\ f(x)+f(y)\,.`
   |

W punkcie 3. zostały wykorzystane związki

.. math::
   
   z+z^*=\,2\ \text{re}\,z\,,\quad \text{re}\,z\,\leq |z|\,,\qquad z\in C
    
oraz nierówność Schwarza :math:`\ \ |(x,y)|\ \leq\ \sqrt{(x,x)(y,y)}\,.`

Na podstawie Twierdzenia 2. każdą przestrzeń unitarną (euklidesową) :math:`\,V\,` 
można unormować przyjmując :math:`\ \|x\|\,=\,\sqrt{(x,x)}\,,\ \ x\in V.\ `
Wtedy nierówność Schwarza zapiszemy jako

.. math::
   
   |(x,y)|\ \ \leq\ \ \|x\|\,\|y\|\,,\qquad x,y\in V\,.

W przestrzeni :math:`\,V\,` mogą jednak istnieć też inne normy, 
np. w przestrzeni :math:`\,C^n\ ` normą wektora 

:math:`\ x\ =\ 
\left[\begin{array}{c} \alpha_1 \\ \alpha_2 \\ \dots \\ \alpha_n \end{array}\right]\quad`
może być 
:math:`\quad\|x\|\ =\ \sqrt{(x,x)}\ =\ \sqrt{\,|\alpha_1|^2+|\alpha_2|^2+\ldots+|\alpha_n|^2\,}\,,`

ale również :math:`\quad\|x\|\ =\ |\alpha_1|+|\alpha_2|+\ldots+|\alpha_n|\,.`

.. .. math::

   \|x\|\ =\ \sqrt{(x,x)}\ =\ \sqrt{\,|\alpha_1|^2+|\alpha_2|^2+\ldots+|\alpha_n|^2\,}
   \quad\text{albo}\quad
   \|x\|\ =\ |\alpha_1|+|\alpha_2|+\ldots+|\alpha_n|\,.

.. \begin{array}{rcl}
   & \quad & \|x\|\ =\ \sqrt{\,|\alpha_1|^2+|\alpha_2|^2+\ldots+|\alpha_n|^2\,}\,, 
   \\ \\
   \text{albo}     & \quad & \|x\|\ =\ |\alpha_1|+|\alpha_2|+\ldots+|\alpha_n|\,.
   \end{array}
   

























