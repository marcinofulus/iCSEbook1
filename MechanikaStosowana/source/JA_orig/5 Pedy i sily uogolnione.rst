Pędy i siły uogólnione
======================


﻿Pędy  uogólnione
------------------


Dany  układ  :math:`N`  punktów  materialnych  o  :math:`f`  stopniach  swobody,  z  funkcją  Lagrange'a  :math:`L(q,\dot q,t)`.

**Def.** Pęd  uogólniony  odpowiadający  współrzędnej  uogólnionej  :math:`q_{ l}`   (sprzężony ze współrzędną :math:`q_{ l}`):

.. math::

   p_{ l} : = \frac{{\partial L}}{{\partial \dot q_{ l} }}, \quad  l = 1,2, \ldots ,f.


Biorąc  pod  uwagę,  że  :math:`L(q,\dot q,t) = L\left[ {x(q,t),\dot x(q,\dot q,t),t} \right]`, otrzymujemy:

.. math::

   p_{ l}  = \frac{{\partial L}}{{\partial \dot q_{ l} }} = \sum\limits_{j = 1}^{3N} {\frac{{\partial L}}{{\partial  \dot x_j }}\frac{{\partial  \dot x_j }}{{\partial \dot q_{ l} }}}  = \sum\limits_{j = 1}^{3N} {\frac{{\partial  x_j }}{{\partial q_{ l} }}\frac{{\partial L}}{{\partial  \dot x_j }}}  = \sum\limits_{j = 1}^{3N} {\frac{{\partial  x_j }}{{\partial q_{ l} }}p_{x_j } }, \quad  l = 1,2, \ldots ,f.


gdzie  :math:`p_{x_j }  = \frac{{\partial L}}{{\partial  \dot x_j }}`  jest  j-tym  kartezjańskim  pędem  uogólnionym.

Pęd  uogólniony  :math:`p_{ l}`  jest  więc  formą  liniową  (superpozycją)  pędów  kartezjańskich.


**Przykłady:**

Pęd  uogólniony  1  cząstki  (N = 1):

.. math::

   L = T(\dot x) - U(x,t) = {\textstyle{1 \over 2}}m(\dot x_{ 1}^{ 2}  + \dot x_{ 2}^{ 2}  + \dot x_{ 3}^{ 2} ) - U(x_{ 1} ,x_{ 2} ,x_{ 3} ,t).



1.) Współrzędne  kartezjańskie  :math:`x_{ 1} ,x_{ 2} ,x_{ 3}`.

Wtedy

.. math::

   p_j  \equiv p_{x_j }  = \frac{{\partial L}}{{\partial  \dot x_j }} = \frac{{\partial T}}{{\partial  \dot x_j }} = m\dot x_j  = mv_j , \quad  j = 1,2,3,


czyli  :math:`\vec p = m\vec v`: kartezjański  pęd  uogólniony  jest  pędem  kinetycznym  cząstki.


2.) Współrzędne  cylindryczne  :math:`\rho ,\varphi ,z: \quad T = {\textstyle{1 \over 2}}m(\dot \rho ^{ 2}  + \rho ^{ 2} \dot \varphi ^{ 2}  + \dot z^{ 2} )`;

.. math::

   p_\rho   = \frac{{\partial  L}}{{\partial \dot \rho }} = \frac{{\partial  T}}{{\partial \dot \rho }} = m\dot \rho , \quad  p_\varphi   = \frac{{\partial  L}}{{\partial \dot \varphi }} = \frac{{\partial  T}}{{\partial \dot \varphi }} = m\rho ^{ 2} \dot \varphi , \quad  p_z  = \frac{{\partial  L}}{{\partial \dot z}} = \frac{{\partial  T}}{{\partial \dot z}} = m\dot z;


:math:`p_\rho`   –  długość  rzutu  pędu  na  kierunek  wektora  :math:`\vec \rho`,

:math:`p_\varphi`    –  z-owa  współrzędna  momentu  pędu  cząstki.


3.) Współrzędne  sferyczne  :math:`r,\varphi ,\theta : \quad T = {\textstyle{1 \over 2}}m(\dot r^{ 2}  + r^{ 2} \sin ^2 \theta  \cdot \dot \varphi ^2  + r^{ 2} \dot \theta ^{ 2} )`;

.. math::

   p_r  = \frac{{\partial L}}{{\partial \dot r}} = \frac{{\partial T}}{{\partial \dot r}} = m\dot r, \quad  p_\varphi   = \frac{{\partial  L}}{{\partial \dot \varphi }} = \frac{{\partial  T}}{{\partial \dot \varphi }} = mr^{ 2} \sin ^2 \theta  \cdot \dot \varphi , \quad  p_\theta   = \frac{{\partial  L}}{{\partial \dot \theta }} = \frac{{\partial  T}}{{\partial \dot \theta }} = mr^{ 2} \dot \theta ;


:math:`p_r`   –   długość  składowej  pędu  w  kierunku  promienia  wodzącego  :math:`\vec r`;

:math:`p_\varphi`    –   z-owa  współrzędna  momentu  pędu  cząstki;

:math:`p_\theta`    –   długość  rzutu  momentu  pędu  cząstki  na  kierunek  normalnej	do  płaszczyzny,  w  której  w  danej  chwili  odmierzamy  kąt  :math:`\theta`.


Równania  Lagrange'a

.. math::
   :label: PU5.1

   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot q_{ l} }} - \frac{{\partial L}}{{\partial q_{ l} }} = 0


można  teraz  zapisać  w  postaci

.. math::

   \frac{{dp_l }}{{dt}} = \frac{{\partial L}}{{\partial q_{ l} }} \quad  l = 1,2, \ldots ,f.


**Def.** Jeżeli  współrzędna  uogólniona  :math:`q_{ r}`   nie  występuje  w  funkcji  Lagrange'a:

.. math::

   \frac{{\partial  L}}{{\partial q_{ r} }} = 0,


to  nazywamy  ją  współrzędną  cykliczną.

Wówczas

.. math::

   \frac{{dp_r }}{{dt}} = 0, \quad  \text{czyli} \quad  p_r  = {\mathop{\rm cst}\nolimits}.


**Wniosek:**   Pęd  uogólniony,  odpowiadający  współrzędnej  cyklicznej,  jest  stałą  ruchu.


Siły  uogólnione
----------------


**Def.** Siła  uogólniona  odpowiadająca  współrzędnej  uogólnionej  :math:`q_{ l}`:

.. math::

   Q_{ l} : =  - \frac{{\partial U}}{{\partial q_{ l} }}, \quad  l = 1,2, \ldots ,f.


Biorąc  pod  uwagę,  że  :math:`U(q,t) = U\left[ {x(q,t),t} \right]`,  otrzymujemy:

.. math::

   Q_{ l}  =  - \frac{{\partial U}}{{\partial q_{ l} }} =  - \sum\limits_{j = 1}^{3N} {\frac{{\partial U}}{{\partial  x_j }}\frac{{\partial  x_j }}{{\partial q_{ l} }}}  = \sum\limits_{j = 1}^{3N} {\frac{{\partial  x_j }}{{\partial  q_{ l} }}} F_j , \quad  l = 1,2, \ldots ,f,


gdzie  :math:`F_j  =  - \frac{{\partial U}}{{\partial  x_j }}`  jest  j-tą  siłą  kartezjańską.

Siła  uogólniona  jest  więc  jest  więc  formą  liniową  (superpozycją)  sił  kartezjańskich.
W  ten  sam  sposób  pęd  uogólniony  wyraża  się  poprzez  pędy  kartezjańskie.

**Przykład:**  Siły  uogólnione  odpowiadające  współrzędnym  sferycznym  :math:`r,\varphi ,\theta`  jednej  cząstki.

Wyrażenie  współrzędnych  kartezjańskich  przez  sferyczne:

.. math::

   x = r\cos \varphi \sin \theta , \quad  y = r\sin \varphi \sin \theta , \quad  z = r\cos \theta .


:math:`Q_{ r}  = \frac{{\partial  x}}{{\partial  r}}F_x  + \frac{{\partial  y}}{{\partial  r}}F_y  + \frac{{\partial  z}}{{\partial  r}}F_z  = \frac{x}{r}F_x  + \frac{y}{r}F_y  + \frac{z}{r}F_z  = \frac{{\vec F \cdot \vec r}}{r} = \vec F \cdot \frac{{\vec r}}{r} = F_{ r}`

–   długość  składowej  siły  :math:`\vec F`  w  kierunku  promienia  wodzącego  :math:`\vec r`;

:math:`Q_{ \varphi }  = \frac{{\partial  x}}{{\partial  \varphi }}F_x  + \frac{{\partial  y}}{{\partial  \varphi }}F_y  + \frac{{\partial  z}}{{\partial  \varphi }}F_z  =  - yF_x  + xF_y  = xF_y  - yF_x  = (\vec r \times \vec F)_{z}  = D_{ z}`

–   z-owa  współrzędna  momentu  siły,  działającej  na  cząstkę;

:math:`Q_{ \theta }`   –   długość  rzutu  momentu  siły  :math:`\vec D`  na  kierunek  normalnej  do  płaszczyzny,  w  której  w  danej  chwili  odmierzamy  kąt  :math:`\theta`.

Jeżeli

.. math::

   L(q,\dot q,t) = T(q,\dot q,t) - U(q,t),


to

.. math::

   \frac{{\partial L}}{{\partial \dot q_{ l} }} = \frac{{\partial T}}{{\partial \dot q_{ l} }},	\frac{{\partial L}}{{\partial q_{ l} }} = \frac{{\partial T}}{{\partial q_{ l} }} - \frac{{\partial U}}{{\partial q_{ l} }} = \frac{{\partial T}}{{\partial q_{ l} }} + Q_{ l},


skąd  równania  Lagrange'a  :eq:`PU5.1`  można  przepisać  w  postaci

.. math::
   :label: PU5.2

   \frac{d}{{dt}}\frac{{\partial T}}{{\partial \dot q_{ l} }} - \frac{{\partial T}}{{\partial q_{ l} }} = Q_{ l}, \quad  l = 1,2, \ldots ,f.


Równania  Lagrange'a  w  formie  :eq:`PU5.2` można  wyprowadzić  niezależnie  z  zasady  d'Alemberta  bez  zakładania  istnienia  potencjału  sił.  Są  więc  one  faktycznie  bardziej  ogólne  od  równań  Lagrange'a  w  ich  standardowej  postaci  :eq:`PU5.1`.


Czy,  w  analogii  do  równań  Newtona

.. math::

   \frac{d}{{dt}}p_{x_j }  = F_j , \quad  j = 1,2, \ldots ,3N,


gdzie   :math:`p_{x_j }  = m_j \dot x_j`    –   pęd  kartezjański,  zachodzą  w  trakcie  ruchu  równości

.. math::
   :label: PU5.3

   \frac{d}{{dt}}p_{ l}  = Q_{ l} , \quad  l = 1,2, \ldots ,f,


gdzie  :math:`p_{ l}  = \frac{{\partial L}}{{\partial \dot q_{ l} }}`   –   pęd  uogólniony ?

W  ogólności  nie,  gdyż  wobec  definicji  funkcji  Lagrange'a  :math:`L = T - U`,

.. math::

   \frac{d}{{dt}}p_{ l}  = \frac{{\partial L}}{{\partial q_{ l} }} = \frac{{\partial T}}{{\partial q_{ l} }} + Q_{ l} , \quad  l = 1,2, \ldots ,f.


A  zatem  równania  :eq:`PU5.3`  zachodzą  tylko  wtedy,  gdy

.. math::

   \frac{{\partial T}}{{\partial q_{ l} }} = 0, \quad  l = 1,2, \ldots ,f,


co  na  ogół  nie  jest  prawdą.

Niektórzy  autorzy  (np. L. Landau  i  E. Lifszic,  *Mechanika*)  definiują  siły  uogólnione  jako

.. math::

   \tilde F_{ l} : = \frac{{\partial L}}{{\partial q_{ l} }}, \quad  l = 1,2, \ldots ,f.


Wtedy  oczywiście

.. math::

   \frac{d}{{dt}}p_{ l}  = \tilde F_{ l} , \quad  l = 1,2, \ldots ,f,


bez  dodatkowych  zastrzeżeń.


Potencjał  uogólniony
---------------------


Przypuśćmy,  że  siły  działające  na  punkty  materialne  układu  nie  mają  potencjału  :math:`U(x,t)`,  dla  którego

.. math::

   F_j  =  - \frac{{\partial U}}{{\partial x_j }},  \quad  j = 1,2, \ldots ,3N,


ale  istnieje  funkcja  :math:`U(x,\dot x,t)`,  zależna  od  prędkości,  taka,  że

.. math::
   :label: PU5.4

   F_j  =  - \frac{{\partial  U}}{{\partial  x_j }} + \frac{d}{{dt}}\frac{{\partial  U}}{{\partial  \dot x_j }}, \quad  j = 1,2, \ldots ,3N.


Wtedy  również

.. math::
   :label: PU5.5

   Q_{ l}  =  - \frac{{\partial U}}{{\partial q_{ l} }} + \frac{d}{{dt}}\frac{{\partial  U}}{{\partial  \dot q_{ l} }}, \quad  l = 1,2, \ldots ,f,


gdzie

.. math::

   U(q,\dot q,t) = U\left[ {x(q,t),\dot x(q,\dot q,t),t} \right].


Równania  Lagrange'a  :eq:`PU5.2`  przyjmują  teraz  postać

.. math::

   \frac{d}{{dt}}\frac{{\partial T}}{{\partial \dot q_{ l} }} - \frac{{\partial T}}{{\partial q_{ l} }} = \frac{d}{{dt}}\frac{{\partial  U}}{{\partial  \dot q_{ l} }} - \frac{{\partial U}}{{\partial q_{ l} }}


z  której  dochodzimy  ponownie  do  standardowej  formy  :eq:`PU5.1`:

.. math::

   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot q_{ l} }} - \frac{{\partial L}}{{\partial q_{ l} }} = 0, \quad  l = 1,2, \ldots ,f,


gdzie

.. math::
   :label: PU5.6

   L(q,\dot q,t) = T(q,\dot q,t) - U(q,\dot q,t).


Funkcja  :math:`U`,  określona  przez  równania  :eq:`PU5.4`  lub  :eq:`PU5.5`, nazywa  się  potencjałem  uogólnionym  sił.


Jeżeli

.. math::

   L(x,\dot x,t) = T(\dot x) - U(x,\dot x,t)


to

.. math::

   p_{x_j} = \frac{\partial L}{\partial \dot x_j} = \frac{\partial T}{\partial \dot x_j} - \frac{\partial U}{\partial \dot x_j} = m_j \dot x_j - \frac{\partial U}{\partial \dot x_j}, \quad  j=1,2,...,3N,


czyli

.. math::

   \vec p_i  = m\vec v_i  - \frac{{\partial U}}{{\partial \vec v_i }}, \quad  i = 1,2, \ldots ,N.


–   kartezjański  pęd  uogólniony  i-tej  cząstki  :math:`\vec p_i`   jest  różny  od  jej  pędu  kinetycznego  :math:`m\vec v_i`.

Przykładem  siły,  która  nie  ma  potencjału  w  zwykłym  sensie,  ale  ma  potencjał  uogólniony,  jest  siła  Lorentza  działająca  na  ładunek  :math:`e`  poruszający  się  z  prędkością  :math:`\vec v`  w  polu  elektrycznym  o  natężeniu  :math:`\vec E`  i  w  polu  magnetycznym  o  indukcji  :math:`\vec B`  (układ jednostek SI):

.. math::

   \vec F = e(\vec E + \vec v \times \vec B).


Zachodzą  związki:

.. math::

   \vec E =  - {\mathop{\rm grad}\nolimits} \varphi  - \frac{{\partial  \vec A}}{{\partial  t}}, \quad  \vec B = {\mathop{\rm rot}\nolimits} \vec A,


gdzie	:math:`\varphi  = \varphi (\vec r,t)`   –    potencjał  skalarny  pola  elektrycznego,
	:math:`\vec A = \vec A(\vec r,t)`   –    potencjał  wektorowy  pola  magnetycznego.


Potencjał  uogólniony  siły  Lorentza wynosi

.. math::

   U(\vec r,\vec v,t) = e(\varphi  - \vec A \cdot \vec v).


Wobec  tego  kartezjański  pęd  uogólniony  cząstki

.. math::

   \vec p = m\vec v - \frac{{\partial U}}{{\partial \vec v}} = m\vec v + e\vec A


jest  różny  od  zera  nawet  gdy  cząstka  spoczywa.


