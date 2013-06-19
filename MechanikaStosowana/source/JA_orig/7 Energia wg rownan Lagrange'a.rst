Energia wg. równań Lagrange'a
=============================


﻿I. **Definicje.**


1.)  *Forma  liniowa*  zmiennych  :math:`\xi _1 ,\xi _2 , \ldots ,\xi _n`:

.. math::

   f(\xi ) = \alpha _1 \xi _1  + \alpha _2 \xi _2  +  \ldots  + \alpha _n \xi _n  = \sum\limits_{i = 1}^n {\alpha _i \xi _i }.


2.)  *Forma  kwadratowa*  zmiennych  :math:`\xi _1 ,\xi _2 , \ldots ,\xi _n`:

.. math::

   F(\xi ) = \alpha _{11} \xi _1^2  + \alpha _{12} \xi _1 \xi _2  + \alpha _{21} \xi _2 \xi _1  +  \ldots  + \alpha _{nn} \xi _n^2  = \sum\limits_{i,j = 1}^n {\alpha _{ij} \xi _i \xi _j }.


W takim razie

.. math::

   \left[ {f(\xi )} \right]^2  = \left( {\sum\limits_{i = 1}^n {\alpha _i \xi _i } } \right)^2  = \left( {\sum\limits_{i = 1}^n {\alpha _i \xi _i } } \right)\left( {\sum\limits_{j = 1}^n {\alpha _j \xi _j } } \right) = \sum\limits_{i,j = 1}^n {\alpha _i \alpha _j \xi _i \xi _j }:


Kwadrat  formy  liniowej  zmiennych  :math:`\xi _1 ,\xi _2 , \ldots ,\xi _n`   o  współczynnikach  :math:`\alpha _1 ,\alpha _2 , \ldots ,\alpha _n`   jest  formą  kwadratową  tych  zmiennych  o  współczynnikach  :math:`\alpha _{ij}  = \alpha _i \alpha _j , \quad i,j = 1,2, \ldots ,n`.


3.)   Funkcja  :math:`F(x,y,z)`  jest  funkcją  jednorodną  n-tego  rzędu,  gdy

.. math::
   :label: EL7.X

   F(\lambda x,\lambda y,\lambda z) = \lambda ^n F(x,y,z).


**Przykłady.**  :math:`F(x,y,z) = x^3  - 3x^2 y + 4z^3`    –   funkcja jednorodna  3.  rzędu;

Forma kwadratowa  :math:`F(x) = \sum\limits_{i,j = 1}^n {a_{ij} x_i x_j }`    –   funkcja jednorodna  2.  rzędu.

**Twierdzenie.**  Jeżeli  :math:`F(x,y,z)`  jest  funkcją jednorodną  n-tego  rzędu,  to

.. math::

   x\frac{{\partial F}}{{\partial x}} + y\frac{{\partial F}}{{\partial y}} + z\frac{{\partial F}}{{\partial z}} = nF.


**Dowód.**  Wprowadźmy oznaczenia:

.. math::

   \begin{array}{l}
   & F'_x (x,y,z): = \frac{\partial }{{\partial x}}F(x,y,z), \\ 
   & F'_y (x,y,z): = \frac{\partial }{{\partial y}}F(x,y,z), \\ 
   & F'_z (x,y,z): = \frac{\partial }{{\partial z}}F(x,y,z). \\ 
   \end{array}


Różniczkując  :eq:`EL7.X`  względem  :math:`\lambda`   otrzymujemy  tożsamość

.. math::

   xF'_x (\lambda x,\lambda y,\lambda z) + yF'_y (\lambda x,\lambda y,\lambda z) + zF'_z (\lambda x,\lambda y,\lambda z) = n\lambda ^{n - 1} F(x,y,z).


Kładąc  :math:`\lambda  = 1`  dochodzimy  do  tezy.


II. **Lemat:**

Jeżeli  równania,  wyrażające  współrzędne  kartezjańskie  :math:`x_j`   w  układzie  inercjalnym  poprzez  współrzędne  uogólnione  :math:`q_l`

.. math::
   :label: EL7.0

   x_j  =  x_j (q_{ 1} ,q_{ 2} , \ldots ,q_{ f} ;t), \quad  j  =  1,2, \ldots ,3N


nie  zawierają  czasu  *explicite*,  to  energia  kinetyczna
		
.. math::
   :label: EL7.1

   T = {\textstyle{1 \over 2}}\sum\limits_{i = 1}^N {m_i \dot {\vec r}_i ^2 }  = {\textstyle{1 \over 2}}\sum\limits_{j = 1}^{3N} {m_j \dot x_j^2 }


jest  formą  kwadratową  prędkości  uogólnionych  :math:`\dot q_l`,  wobec  czego

.. math::

   \sum\limits_{l = 1}^f {\frac{{\partial T}}{{\partial  \dot q_{ l} }} \dot q_{ l} }  = 2T.


**Dowód.**   Różniczkując  :eq:`EL7.0`  względem  czasu  otrzymujemy

.. math::

   \dot x_j  = \sum\limits_{r = 1}^f {\frac{{\partial x_j }}{{\partial q_r }}\dot q_r  + \frac{{\partial x_j }}{{\partial t}}}, \quad  j  =  1,2, \ldots ,3N.


Stąd

.. math::
   :label: EL7.2

   \begin{array}{l}
   & \dot x_j^2  = \left( {\sum\limits_{r = 1}^f {\frac{{\partial x_j }}{{\partial q_r }}\dot q_r } } \right)^2  + 2\left( {\sum\limits_{r = 1}^f {\frac{{\partial x_j }}{{\partial q_r }}\dot q_r } } \right)\frac{{\partial x_j }}{{\partial t}} + \left( {\frac{{\partial x_j }}{{\partial t}}} \right)^2  =  \\ 
   &  = \sum\limits_{r,s = 1}^f {\frac{{\partial x_j }}{{\partial q_r }}} \frac{{\partial x_j }}{{\partial q_s }}\dot q_r \dot q_s  + \sum\limits_{r = 1}^f {2\frac{{\partial x_j }}{{\partial q_r }}} \frac{{\partial x_j }}{{\partial t}}\dot q_r  + \left( {\frac{{\partial x_j }}{{\partial t}}} \right)^2 . \\ 
   \end{array}


Podstawiając  :eq:`EL7.2` do  :eq:`EL7.1` otrzymujemy

.. math::

   T = \sum\limits_{r,s = 1}^f {a_{rs} \dot q_r \dot q_s  + } \sum\limits_{r = 1}^f {a_r \dot q_r  + a_0 }


   \begin{array}{l}
   & a_{rs}  = a_{rs} (q,t) = {\textstyle{1 \over 2}}\sum\limits_{j = 1}^{3N} {m_j \frac{{\partial x_j }}{{\partial q_r }}\frac{{\partial x_j }}{{\partial q_s }}}, \quad  r,s = 1,2, \ldots ,f, \\ 
   & a_r  = a_r (q,t) = \sum\limits_{j = 1}^{3N} {m_j \frac{{\partial x_j }}{{\partial q_r }}\frac{{\partial x_j }}{{\partial t}}}, \quad  r = 1,2, \ldots ,f, \\ 
   & a_0  = a_0 (q,t) = {\textstyle{1 \over 2}}\sum\limits_{j = 1}^{3N} {m_j \left( {\frac{{\partial x_j }}{{\partial t}}} \right)} ^2 . \\ 
   \end{array}


Jeżeli   :math:`x_j  = x_j (q_1 ,q_2 , \ldots ,q_f )`,   czyli   :math:`\frac{{\partial x_j }}{{\partial t}} = 0, \quad  j = 1,2, \ldots ,3N`,   to  energia  kinetyczna  jest  formą  kwadratową  (jednorodną  funkcją  drugiego  rzędu)  prędkości  uogólnionych:

.. math::

   T = T(q,\dot q) = \sum\limits_{r,s = 1}^f {a_{rs} (q)\dot q_r \dot q_s },


co  należało  wykazać.  Warunek  ten  jest  spełniony  przy  więzach  skleronomicznych,  gdy  nie  dokonujemy  transformacji  do układów poruszających  się  względem  wyjściowego  inercjalnego  układu   odniesienia.


III. **Energia  według  równań  Lagrange’a.**


Dla  układu  :math:`N`  punktów  materialnych  o  :math:`f`  stopniach  swobody  z  funkcją   Lagrange’a  :math:`L(q,\dot q,t)`  definiujemy  funkcję

.. math::

   G(q,\dot q,t): = \sum\limits_{l = 1}^f {\frac{{\partial L}}{{\partial \dot q_l }}\dot q_l }  - L(q,\dot q,t).


Rozważmy  zupełną  pochodną  po  czasie  funkcji  :math:`G`:

.. math::

   \begin{array}{l}
   & \frac{d}{{dt}}G(q,\dot q,t) = \frac{d}{{dt}}\left[ {\sum\limits_{l = 1}^f {\frac{{\partial L}}{{\partial \dot q_l }} \dot q_l }  - L(q,\dot q,t)} \right] =  \\ 
   &  = \sum\limits_{l = 1}^f {\left[ {\frac{d}{{dt}}\left( {\frac{{\partial L}}{{\partial \dot q_l }}} \right) \cdot \dot q_l  + \frac{{\partial L}}{{\partial \dot q_l }} \cdot \ddot q_l } \right]}  - \sum\limits_{l = 1}^f {\left[ {\frac{{\partial L}}{{\partial q_l }}\dot q_l  + \frac{{\partial L}}{{\partial \dot q_l }}\ddot q_l } \right]}  - \frac{{\partial L}}{{\partial t}} =  \\ 
   &  = \sum\limits_{l = 1}^f {\left[ {\frac{d}{{dt}}\left( {\frac{{\partial L}}{{\partial \dot q_l }}} \right) - \frac{{\partial L}}{{\partial q_l }}} \right]} \dot q_l  - \frac{{\partial L}}{{\partial t}} =  - \frac{{\partial L}}{{\partial t}} \\ 
   \end{array}


**Wniosek:**  Jeżeli  funkcja  Lagrange’a  nie  zależy  od czasu  *explicite*:  :math:`\frac{{\partial L}}{{\partial t}} = 0`, to  również  :math:`\frac{{\partial G}}{{\partial t}} = 0`,  przy  czym  funkcja  :math:`G`  jest  całką  ruchu:   :math:`\frac{{dG}}{{dt}} = 0`,  czyli  :math:`G(q,\dot q) = {\mathop{\rm cst}\nolimits}`.


**Twierdzenie:**  Jeżeli

1º	równania,  wiążące współrzędne  kartezjańskie  :math:`x_j \quad (j = 1,2, \ldots ,3N)`  w  układzie  inercjalnym  ze  współrzędnymi  uogólnionymi  :math:`q_l \quad (l = 1,2, \ldots ,f)`,  nie  zawierają  czasu  *explicite*,  oraz

2º	siły,  działające  na  układ  mają  (zwykły,  tj.  niezależny od prędkości)  potencjał  :math:`V(q,t)`,
	to  funkcja  :math:`G`   jest  równa  sumie  energii  kinetycznej  :math:`T`  i  potencjału  :math:`V`:

.. math::

   G(q,\dot q,t) = T(q,\dot q) + V(q,t), \quad \text{przy czym} \quad \frac{{dG}}{{dt}} = \frac{{\partial V}}{{\partial t}}.


**Dowód:**

Z założenia  1º:

.. math::

   T(q,\dot q) = {\textstyle{1 \over 2}}\sum\limits_{r,s = 1}^f {a_{rs} (q)\dot q_r \dot q_s }


(energia kinetyczna jest formą kwadratową prędkości uogólnionych).

Z  założenia  2º:

.. math::

   \frac{{\partial  L}}{{\partial  \dot q_l }} = \frac{\partial }{{\partial  \dot q_l }}\left[ {T(q,\dot q) - V(q,t)} \right] = \frac{{\partial T}}{{\partial  \dot q_l }}, \quad l = 1,2, \ldots ,f.


Wobec tego

.. math::

   \sum\limits_{l = 1}^f {\frac{{\partial  L}}{{\partial  \dot q_l }}\dot q_l  = } \sum\limits_{l = 1}^f {\frac{{\partial T}}{{\partial  \dot q_l }}\dot q_l  = 2T},

	G = 2T - (T - V) = T + V.


Ponadto

.. math::

   \frac{{\partial  L}}{{\partial  t}} = \frac{\partial }{{\partial  t}}\left[ {T(q,\dot q) - V(q,t)} \right] =  - \frac{{\partial V}}{{\partial  t}},


skąd

.. math::

   \frac{{d G}}{{d t}} =  - \frac{{\partial L}}{{\partial t}} = \frac{{\partial V}}{{\partial  t}}.


Podsumowanie:


A.)	Jeżeli   :math:`\frac{{\partial  L}}{{\partial  t}} = 0`, to  :math:`\frac{{\partial  G}}{{\partial  t}} = 0`  oraz  :math:`\frac{{dG}}{{dt}} = 0`,  czyli  :math:`G = \rm{cst}`.

	tzn.  :math:`G`  jest  stałą  ruchu,  ale  niekoniecznie  energią  mechaniczną  układu.

B.)	Jeżeli

1º	równania,  wiążące współrzędne  kartezjańskie  :math:`x_j \quad (j = 1,2, \ldots ,3N)`  w  układzie  inercjalnym  ze  współrzędnymi  uogólnionymi  :math:`q_l \quad (l = 1,2, \ldots ,f)`,  nie  zawierają  czasu  *explicite*,  oraz

2º	siły,  działające  na  układ  mają  (zwykły,  tj.  niezależny od prędkości)  potencjał  :math:`V(q,t)`,
	to  :math:`G  =  T + V`,  przy czym  :math:`\frac{{d G}}{{d t}} = \frac{{\partial V}}{{\partial  t}}`,

	tzn.  funkcja  :math:`G`  przedstawia  (niekoniecznie stałą)  energię  mechaniczną  układu.

C.)	Jeżeli

1º	równania,  wiążące współrzędne  kartezjańskie  :math:`x_j \quad (j = 1,2, \ldots ,3N)`  w  układzie  inercjalnym  	ze  współrzędnymi  uogólnionymi  :math:`q_l \quad (l = 1,2, \ldots ,f)`,  nie  zawierają  czasu  *explicite*,  oraz

2º	siły,  działające  na  układ  mają  (zwykły)  niezależny od  czasu  potencjał  :math:`V(q): \quad \frac{{\partial V}}{{\partial  t}} = 0`,
	to   :math:`G = T + V = \rm{ cst.}`,

	tzn.  funkcja  :math:`G` równa  się  energii  mechanicznej  układu,  która  jest  stałą  ruchu.


