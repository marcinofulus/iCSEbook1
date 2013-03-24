Przykłady przestrzeni wektorowych.
----------------------------------

.. sidebar:: Wektory zaczepione

  Wektory w fizyce z reguły są wektorami zaczepionymi, których
  intuicja pochodzi z np. wektora siły danego przez punkt
  zaczepienia, wartość i zwrot. W algebrze liniowej wszystkie wektory
  są "zaczepione" w początku układu współrzędnych.

1.)	Prototypem  p.w.  jest  zbiór  wektorów  geometrycznych  (zaczepionych bądź swobodnych)
na  płaszczyźnie  albo  w  przestrzeni.  Wektory  te  można  dodawać  i  mnożyć  przez  liczby  rzeczywiste,  przy  czym  spełnione  są  postulaty  PW1. –  PW5.  Jest  to  więc  p.w.  rzeczywista.



2.)	Ważnym  przykładem  p.w.  nad  ciałem  K,  występującym  w  wielu  zagadnieniach  algebry
liniowej  i  jej  zastosowaniach,  jest  zbiór    (n-ta  potęga  kartezjańska  zbioru  K)  wszystkich
n-wyrazowych  ciągów  elementów  ciała  K:

.. math:: 

 K^n : = \underbrace {K \times K \times  \ldots  \times K}_n = \\
 \left\{ {(\alpha _{ 1} ,\alpha _{ 2} , \ldots ,\alpha _{ n} ):  \alpha_i \in K,\quad i = 1,2, \ldots ,n} \right\}


z działaniami:

.. math:: 

  (\alpha_1 ,\alpha_2,\ldots,\alpha_n) \oplus (\beta_1 ,\beta_2 , \ldots ,\beta _n) = (\alpha _{1} + \beta _{1} ,\alpha _{ 2} + \beta _{ 2} , \ldots ,\alpha _{ n} + \beta _{ n} ),\\
 
 \lambda \boxdot (\alpha_1 ,\alpha_2,\ldots,\alpha_n) :=  (\lambda\alpha_1 ,\lambda\alpha_2,\ldots,\lambda\alpha_n). 


Wektory przestrzeni można zapisać też w postaci kolumnowej.  Definicje
działań przyjmują wtedy postać: 

.. math::

  \left( {\begin{array}{*{20}c} {\alpha_{ 1} } \\ {\alpha _{ 2} } \\
  \ldots \\ {\alpha _{ n} } \\ \end{array}} \right) \oplus \left(
  {\begin{array}{*{20}c} {\beta _{ 1} } \\ {\beta _{ 2} } \\ \ldots \\
  {\beta _{ n} } \\ \end{array}} \right): = \left(
  {\begin{array}{*{20}c} {\alpha _{ 1} + \beta _{ 1} } \\ {\alpha _{
  2} + \beta _{ 2} } \\ \ldots \\ {\alpha _{ n} + \beta _{ n} } \\
  \end{array}} \right), \lambda \left( {\begin{array}{*{20}c}
  {\alpha _{ 1} } \\ {\alpha _{{\kern 1pt} 2} } \\ \ldots \\ {\alpha
  _{ n} } \\ \end{array}} \right): = \left( {\begin{array}{*{20}c}
  {\lambda \alpha _{ 1} } \\ {\lambda \alpha _{ 2} } \\ \ldots \\
  {\lambda \alpha _{ n} } \\ \end{array}} \right),{\rm{ }}\lambda
  \in K.


Kładąc stwierdzamy, że ciało :math:`K\equiv K^1` jest
przestrzenią wektorową nad sobą samym.

3.) Zbiór :math:`F_{ [0,1]} = \left\{ {f:[0,1] \to R}\right\}`
wszystkich funkcji przekształcających przedział w zbiór liczb
rzeczywistych z działaniami :math:`\left( {f_{ 1} \oplus f_{ 2} }
\right)(x): = f_{ 1} (x) + f_{ 2} (x)`, :math:`\left( {\lambda f}
\right)(x): = \lambda \cdot f(x),{\rm{ gdzie }}f_{ 1} ,f_{ 2} ,f \in
F_{[0,1]} ,{\rm{ }}\lambda \in R, x \in [0,1]`,
jest przestrzenią rzeczywistą.

4.) Uogólniając poprzedni przykład można stwierdzić, że zbiór
:math:`{\mathop{\rm Map}\nolimits} (X,V)` wszystkich odwzorowań
(dowolnego ustalonego) zbioru X w p.w.  :math:`V(K)`, z działaniami
:math:`(\varphi \oplus \psi )(x): = \varphi (x) + \psi (x)`,

:math:`(\lambda \varphi )(x): = \lambda  \cdot \varphi (x),{\rm{     gdzie     }}\varphi ,\psi  \in {\mathop{\rm Map}\nolimits} (X,V){\rm{   }}x \in X,{\rm{   }}\lambda  \in K`,

(działania :math:`+` i :math:`\cdot` po prawej stronie odnoszą się do
przestrzeni V) jest p.w.  nad ciałem K.




