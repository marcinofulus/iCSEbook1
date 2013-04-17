08. Równania obiektów geometrycznych
====================================

Uzasadnić  następującą  interpretację  równań  obiektów  geometrycznych:


a.)

.. math::

   \left| {\begin{array}{*{20}c}
   x & y & 1  \\
   {x_1 } & {y_1 } & 1  \\
   {x_2 } & {y_2 } & 1  \\
   \end{array}} \right| = 0  \quad \text{ – prosta na płaszczyźnie,  przechodząca przez punkty} P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 );


\ 

b.)

.. math::

   \left| {\begin{array}{*{20}c}
   x & y & z & 1  \\
   {x_1 } & {y_1 } & {z_1 } & 1  \\
   {x_2 } & {y_2 } & {z_2 } & 1  \\
   {x_3 } & {y_3 } & {z_3 } & 1  \\
   \end{array}} \right| = 0 \quad  –  
   \begin{array}{l}
   \text{płaszczyzna w przestrzeni, przechodząca przez trzy zadane} \\ 
   \text{niewspółliniowe punkty} P_1 (x_1 ,y_1 ,z_1 ), P_2 (x_2 ,y_2 ,z_2 ), P_3 (x_3 ,y_3 ,z_3 ); \\ 
   \end{array}


\ 

c.)

.. math::

   \left| {\begin{array}{*{20}c}
   {x^2  + y^2 } & x & y & 1  \\
   {x_1^2  + y_1^2 } & {x_1 } & {y_1 } & 1  \\
   {x_2^2  + y_2^2 } & {x_2 } & {y_2 } & 1  \\
   {x_3^2  + y_3^2 } & {x_3 } & {y_3 } & 1  \\
   \end{array}} \right| = 0 \quad  – 
   \begin{array}{l}
   \text{okrąg na płaszczyźnie, przechodzący przez trzy zadane} \\ 
   \text{niewspółliniowe punkty} P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 ), P_3 (x_3 ,y_3 ). \\ 
   \end{array}


___________________________________________________________________________________


a.)  Każdą prostą na płaszczyźnie  :math:`xy`  można opisać równaniem  ogólnym

.. math::
   :label: W08.a1

   Ax + By + C = 0, \quad  \text{gdzie} \quad A^2  + B^2  > 0.


Odwrotnie,  każde  równanie  postaci  :eq:`W08.a1` przedstawia  pewną  prostą  (patrz  M. Stark,  *Geometria Analityczna*,  PWN 1967,  str. 63).  W prostokątnym układzie współrzędnych  współczynniki  są współrzędnymi  wektora prostopadłego do tej prostej.

Po zastosowaniu rozwinięcia Laplace’a względem  1. wiersza  równanie

.. math::
   :label: W08.a2

   \left| {\begin{array}{*{20}c}
   x & y & 1  \\
   {x_1 } & {y_1 } & 1  \\
   {x_2 } & {y_2 } & 1  \\
   \end{array}} \right| = 0


przyjmuje postać  :eq:`W08.a1`,  przy czym

.. math::

   A = \left| {\begin{array}{*{20}c}
   {y_1 } & 1  \\
   {y_2 } & 1  \\
   \end{array}} \right| = y_1  - y_2 , \quad  B =  - \left| {\begin{array}{*{20}c}
   {x_1 } & 1  \\
   {x_2 } & 1  \\
   \end{array}} \right| = x_2  - x_1 , \quad  C =  \left|  {\begin{array}{*{20}c}
   x_1 & y_1 \\
   x_2 & y_2 \\
   \end{array}} \right| = x_1 y_2 - y_1 x_2 .


Wobec tego

.. math::

   A^2  + B^2  = (y_1  - y_2 )^2  + (x_2  - x_1 )^2  = (x_2  - x_1 )^2  + (y_2  - y_1 )^2  = d^2 ,


gdzie  :math:`d` jest odległością pomiędzy punktami  :math:`P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 )`.  Jeżeli więc punkty te są różne,  to  równanie  :eq:`W08.a2`  przedstawia prostą  na  płaszczyźnie  :math:`xy`.

Przy podstawieniach  :math:`x = x_1 , y = y_1`  oraz  :math:`x = x_2 , y = y_2`  warunek  :eq:`W08.a2`  jest  spełniony  (wyznacznik z  dwoma  identycznymi wierszami znika),  co oznacza,  że  punkty  :math:`P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 )`  leżą  na  tej  prostej.  Równanie  :eq:`W08.a2`  przedstawia  więc  prostą,  poprowadzoną  przez  punkty  :math:`P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 )`.

**Wniosek:**  trzy punkty na płaszczyźnie, :math:`P_{ 0} (x_0 ,y_0 ), P_{ 1} (x_{ 1} ,y_{ 1} ), P_2 (x_2 ,y_2 )`,  są współliniowe  wtedy  i  tylko  wtedy,  gdy

.. math::

   \left| {\begin{array}{*{20}c}
   {x_0 } & {y_0 } & 1  \\
   {x_1 } & {y_1 } & 1  \\
   {x_2 } & {y_2 } & 1  \\
   \end{array}} \right| = 0.


b.)  Każde równanie

.. math::

   Ax + By + Cz + D = 0, \quad  \text{gdzie} \quad A^2  + B^2  + C^2  > 0,

	
przedstawia płaszczyznę  (patrz  M. Stark,  *Geometria Analityczna*,  PWN 1967,  str. 79).

W prostokątnym układzie współrzędnych  współczynniki  :math:`A,B,C` są współrzędnymi  wektora prostopadłego do tej płaszczyzny.

Rozwinięcie Laplace’a  względem  1. wiersza  przeprowadza  warunek

.. math::
   :label: W08.b1

   \left| {\begin{array}{*{20}c}
   x & y & z & 1  \\
   {x_1 } & {y_1 } & {z_1 } & 1  \\
   {x_2 } & {y_2 } & {z_2 } & 1  \\
   {x_3 } & {y_3 } & {z_3 } & 1  \\
   \end{array}} \right| = 0


w  równanie  :math:`Ax + By + Cz + D = 0`,  gdzie

.. math

   A = \left| {\begin{array}{*{20}c}
   {y_1 } & {z_1 } & 1  \\
   {y_2 } & {z_2 } & 1  \\
   {y_3 } & {z_3 } & 1  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {y_1 } & {z_1 } & 1  \\
   {y_2  - y_1 } & {z_2  - z_1 } & 0  \\
   {y_3  - y_1 } & {z_3  - z_1 } & 0  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {y_2  - y_1 } & {z_2  - z_1 }  \\
   {y_3  - y_1 } & {z_3  - z_1 }  \\
   \end{array}} \right| , \\
   B =  - \left| {\begin{array}{*{20}c}
   {x_1 } & {z_1 } & 1  \\
   {x_2 } & {z_2 } & 1  \\
   {x_3 } & {z_3 } & 1  \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
   {x_1 } & {z_1 } & 1  \\
   {x_2  - x_1 } & {z_2  - z_1 } & 0  \\
   {x_3  - x_1 } & {z_3  - z_1 } & 0  \\
   \end{array}} \right| =  - \left| {\begin{array}{*{20}c}
   {x_2  - x_1 } & {z_2  - z_1 }  \\
   {x_3  - x_1 } & {z_3  - z_1 }  \\
   \end{array}} \right| , \\
   C = \left| {\begin{array}{*{20}c}
   {x_1 } & {y_1 } & 1  \\
   {x_2 } & {y_2 } & 1  \\
   {x_3 } & {y_3 } & 1  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {x_1 } & {y_1 } & 1  \\
   {x_2  - x_1 } & {y_2  - y_1 } & 0  \\
   {x_3  - x_1 } & {y_3  - y_1 } & 0  \\
   \end{array}} \right| = \left| {\begin{array}{*{20}c}
   {x_2  - x_1 } & {y_2  - y_1 }  \\
   {x_3  - x_1 } & {y_3  - y_1 }  \\
   \end{array}} \right| .


Punkty  :math:`P_1 (x_1 ,y_1 ,z_1 ), P_2 (x_2 ,y_2 ,z_2 ), P_3 (x_3 ,y_3 ,z_3 )` są  współliniowe  wtedy  i  tylko  wtedy,  gdy  wektory  :math:`\vec r_2  - \vec r_1` oraz  :math:`\vec r_3  - \vec r_1`  są  proporcjonalne:  :math:`\vec r_3  - \vec r_1  = \lambda (\vec r_2  - \vec r_1 ), \lambda  \in \boldsymbol{R}`,   czyli  gdy

.. math::
   :label: W08.b2

   x_3  - x_1  = \lambda (x_2  - x_1 ), \quad y_3  - y_1  = \lambda (y_2  - y_1 ), \quad z_3  - z_1  = \lambda (z_2  - z_1 ).


Wówczas

.. math::

   A = \left| {\begin{array}{*{20}c}
   {y_2  - y_1 } & {z_2  - z_1 }  \\
   {\lambda (y_2  - y_1 )} & {\lambda (z_2  - z_1 )}  \\
   \end{array}} \right| = 0, \\
   B =  - \left| {\begin{array}{*{20}c}
   {x_2  - x_1 } & {z_2  - z_1 }  \\
   {\lambda (x_2  - x_1 )} & {\lambda (z_2  - z_1 )}  \\
   \end{array}} \right| = 0, \\
   C = \left| {\begin{array}{*{20}c}
   {x_2  - x_1 } & {y_2  - y_1 }  \\
   {\lambda (x_2  - x_1 )} & {\lambda (y_2  - y_1 )}  \\
   \end{array}} \right| = 0.


Przeciwnie,  gdy warunki współliniowości  :eq:`W08.b2`  nie  są spełnione,  to  :math:`A,B,C` nie  znikają  jednocześnie:

.. math::

   A^2  + B^2  + C^2  > 0.


A zatem  gdy  punkty :math:`P_1 (x_1 ,y_1 ,z_1 ), P_2 (x_2 ,y_2 ,z_2 ), P_3 (x_3 ,y_3 ,z_3 )` nie  są  współliniowe,  równanie  :eq:`W08.b1`  przedstawia  płaszczyznę  przechodzącą  przez  te punkty.

Wynika  stąd,  że  dane  cztery  punkty: :math:`P_{ 0} (x_0 ,y_0 ,z_0 ), P_{ 1} (x_{ 1} ,y_{ 1} ,z_{ 1} ), P_{ 2} (x_2 ,y_2 ,z_2 ), P_{ 3} (x_3 ,y_3 ,z_3 )`  leżą  na  jednej płaszczyźnie  wtedy  i  tylko  wtedy,  gdy

.. math::

   \left| {\begin{array}{*{20}c}
   {x_0 } & {y_0 } & {z_0 } & 1  \\
   {x_1 } & {y_1 } & {z_1 } & 1  \\
   {x_2 } & {y_2 } & {z_2 } & 1  \\
   {x_3 } & {y_3 } & {z_3 } & 1  \\
   \end{array}} \right| = 0.


c.)  Równanie  okręgu  o  środku  w  punkcie  o  współrzędnych  :math:`a,b`  i   promieniu   :math:`r`   ma  postać

.. math::

   (x - a)^2  +  (y - b)^2  = r^2


czyli

.. math::
   :label: W08.c1

   (x^2  + y^2 ) - 2ax - 2by + (a^2  +  b^2  -  r^2 ) = 0.


Po  rozwinięciu  wyznacznika  względem  1.  wiersza  warunek

.. math::

   \left| {\begin{array}{*{20}c}
   {x^2  + y^2 } & x & y & 1  \\
   {x_1^2  + y_1^2 } & {x_1 } & {y_1 } & 1  \\
   {x_2^2  + y_2^2 } & {x_2 } & {y_2 } & 1  \\
   {x_3^2  + y_3^2 } & {x_3 } & {y_3 } & 1  \\
   \end{array}} \right| = 0


można  zapisać  jako

.. math::
   :label: W08.c2

   A(x^2  +  y^2 ) + Bx + Cy + D = 0.


gdzie

.. math::
   :label: W08.c3

   A = \left| {\begin{array}{*{20}c}
   {x_1 } & {y_1 } & 1  \\
   {x_2 } & {y_2 } & 1  \\
   {x_3 } & {y_3 } & 1  \\
   \end{array}} \right| ,  \quad B =  - \left| {\begin{array}{*{20}c}
   {x_1^2  + y_1^2 } & {y_1 } & 1  \\
   {x_2^2  + y_2^2 } & {y_2 } & 1  \\
   {x_3^2  + y_3^2 } & {y_3 } & 1  \\
   \end{array}} \right| , \\
   C = \left| {\begin{array}{*{20}c}
   {x_1^2  + y_1^2 } & {x_1 } & 1  \\
   {x_2^2  + y_2^2 } & {x_2 } & 1  \\
   {x_3^2  + y_3^2 } & {x_3 } & 1  \\
   \end{array}} \right| , \quad D =  - \left| {\begin{array}{*{20}c}
   {x_1^2  + y_1^2 } & {x_1 } & {y_1 }  \\
   {x_2^2  + y_2^2 } & {x_2 } & {y_2 }  \\
   {x_3^2  + y_3^2 } & {x_3 } & {y_3 }  \\
   \end{array}} \right| .


Jeżeli  punkty  :math:`P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 ), P_3 (x_3 ,y_3 )` są  niewspółliniowe,  to  :math:`A \ne 0`  (patrz  podpunkt  a.).
  
Z  porównania  :eq:`W08.c1`  i  :eq:`W08.c2`  otrzymujemy

.. math::

   - 2a = \frac{B}{A}, \quad - 2b = \frac{C}{A}, \quad a^2  + b^2  - r^2  = \frac{D}{A},


czyli

.. math::
   :label: W08.c4

   a =  - \frac{B}{{2A}}, \quad b =  - \frac{C}{{2A}}, \quad r^2  = \frac{1}{{4A^{2} }}(B^2  + C^2 ) - \frac{D}{A} = \frac{1}{{4A^{2} }}(B^2  + C^2  - 4AD).


Jeżeli  więc

.. math::
   :label: W08.c5

   B^2  +  C^2  > 4AD,


to  równanie  :eq:`W08.c2`  przedstawia  okrąg,  dla  którego  współrzędne  środka  :math:`a,  b`  oraz  promień  :math:`r`  dane  są  przez  wzory :eq:`W08.c4`.  Okrąg  ten  przechodzi  przez  punkty  :math:`P_1 (x_1 ,y_1 ), P_2 (x_2 ,y_2 ), P_3 (x_3 ,y_3 )`.

Intuicja geometryczna sugeruje,  że  przez  dowolne  trzy  niewspółliniowe  punkty  można  poprowadzić  dokładnie  jeden  okrąg.  Można  więc  spodziewać  się,  że  warunek  :eq:`W08.c5`  będzie  spełniony  przy  dowolnych  :math:`A,B,C,D`  określonych  przez  :eq:`W08.c3`,  jeżeli  tylko  :math:`A \ne 0`.

Powyższe  rozważania  prowadzą  do  wniosku,  że  cztery  punkty na płaszczyźnie,  :math:`P_{ 0} (x_0 ,y_0 ), P_{ 1} (x_1 ,y_1 ), P_2 (x_2 ,y_2 ), P_3 (x_3 ,y_3 )`,  leżą  na  jednym okręgu  wtedy  i  tylko  wtedy,  gdy

.. math::

   \left| {\begin{array}{*{20}c}
   {x_0^2  + y_0^2 } & {x_0 } & {y_0 } & 1  \\
   {x_1^2  + y_1^2 } & {x_1 } & {y_1 } & 1  \\
   {x_2^2  + y_2^2 } & {x_2 } & {y_2 } & 1  \\
   {x_3^2  + y_3^2 } & {x_3 } & {y_3 } & 1  \\
   \end{array}} \right| = 0.

