Kombinacja liniowa wektorów
---------------------------


Niech  będzie  dana  przestrzeń  wektorowa  :math:`V(K)`  oraz  wektor  :math:`x  \in  V`.
Jeżeli   :math:`x = \alpha_1 x_1  + \alpha_2 x_2  +  \ldots  + \alpha_m x_m`,
gdzie  :math:`\alpha_1 ,\alpha_2 , \ldots ,\alpha_m  \in K`,   :math:`x_1 ,x_2 , \ldots ,x_m \in V`,
to  wektor  x  jest  kombinacją  liniową  wektorów  :math:`x_1 ,x_2 , \ldots ,x_m`.

Skalary  :math:`\alpha_1 ,\alpha_2 , \ldots ,\alpha_m`  są  współczynnikami  tej  kombinacji  liniowej.

Mówimy  też,  że  wektor  x  wyraża  się  liniowo  przez  wektory  :math:`x_1 ,x_2 , \ldots ,x_m`.

Gdy  wszystkie  współczynniki  są  równe  zeru:

.. math::

 \alpha_1  = \alpha_2  =  \ldots  = \alpha_m  = 0,

to  kombinację  liniową  nazywamy  trywialną. 

Oczywiście trywialna kombinacja liniowa jakichkolwiek wektorów równa
się wektorowi zerowemu: :math:`0x_1 + 0x_2 + \ldots + 0x_m ={\rm{\theta }}`.

Zapis  skrócony:

:math:`\left({\alpha_i}\right)_{1}^m : = (\alpha_1 ,\alpha_2 , \ldots ,\alpha_m  )` - układ  (ciąg)  skalarów,

:math:`\left( { x_{ i} } \right)_{1}^m : = (x_1 ,x_2 , \ldots ,x_m )`	–	układ  (ciąg)  wektorów,

:math:`\sum\limits_{i = 1}^m {\alpha_i x_i }  = \alpha_1 x_1  + \alpha_2 x_2  +  \ldots  + \alpha_m x_m` - kombinacja  liniowa.


Znikanie  trywialnej  kombinacji  liniowej  wektorów  można  więc zapisać  w  postaci  implikacji

.. math::

  \mathop  \wedge \limits_{(\alpha_i )_1^m } \mathop  \wedge \limits_{(x_i )_1^m } \left[ {\left( {\mathop  \wedge \limits_{1 \le i \le m} \alpha_{ i}  = 0} \right){\rm{     }} \Rightarrow {\rm{     }}\sum\limits_{i = 1}^m {\alpha_{ i} x_{ i}  = {\rm{\theta }}} } \right].

Def.:  Niech  :math:`M = (x_1 ,x_2 , \ldots ,x_m )`  będzie  skończonym  układem  wektorów  p.w. :math:`V(K)`.

Zbiór  wszystkich  kombinacji  liniowych  wektorów  tego  układu  nazywamy  powłoką  liniową
(domknięciem liniowym)  układu  :MATH:`M`  i  oznaczamy  :MATH:`L(M)`:

.. math:: 

  L(M) \equiv L(x_1 ,x_2 , \ldots ,x_m ): = \left\{ {\alpha_1 x_1  + \alpha_2 x_2  +  \ldots  + \alpha_m x_m :{\rm{   }}\alpha_1 ,\alpha_2 , \ldots ,\alpha_m  \in K} \right\}.

W  oparciu  o  WKW  dla  podprzestrzeni  można  łatwo  pokazać,  że   :MATH:`L(M) <  V`.
W  tej  sytuacji  mówimy,  że:

 - układ  :MATH:`M`  generuje  (rozpina)  podprzestrzeń  :MATH:`L(M)`;
 - podprzestrzeń  :MATH:`L(M)`  jest  generowana  przez  układ  :MATH:`M`   (rozpięta  na  układzie  :MATH:`M`);
 - :MATH:`M`  jest  układem  generatorów  podprzestrzeni  :MATH:`L(M)`.


Jeżeli  :MATH:`L(M) = V`,  to  układ  :MATH:`M`  generuje  przestrzeń  V  (jest  układem generatorów  przestrzeni V).

Przykład.  

Niech :math:`\vec v_1 ,\vec v_2 ,\vec v_{ 3}` będą trzema
niekomplanarnymi (nie leżącymi w jednej płaszczyżnie) wektorami
geometrycznymi, zaczepionymi w ustalonym punkcie O. Wtedy:

.. math::

  L(\vec v_1 ) = \left\{ {\alpha \vec v_1 :\alpha \in R} \right\}: 

zbiór wektorów leżących na prostej przechodzącej przez punkt O, wyznaczonej przez wektor :math:`\vec v_1` 


.. math:: 

  L(\vec v_1 ,\vec v_2 ) = \left\{ \alpha_1 \vec v_1 + \alpha_2 \vec v_2 :\alpha_1, \alpha_2 \in R \right\} 

zbiór wektorów leżących na płaszczyźnie przechodzącej przez punkt O,
wyznaczonej przez: 


.. math:: 

  L(\vec v_1 ,\vec v_2 ,\vec v_{ 3} ) = \left\{ \alpha_1 \vec v_1 + \alpha_2 \vec v_2 + \alpha_{ 3} \vec v_{ 3} : \alpha_1 ,\alpha_2 ,\alpha_{ 3} \in R \right\}:

cała przestrzeń wszystkich wektorów zaczepionych w punkcie O.

