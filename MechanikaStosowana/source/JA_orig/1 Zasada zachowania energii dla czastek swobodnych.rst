Zasada  zachowania  energii  dla  układu  swobodnych  punktów  materialnych
===========================================================================

Dany  układ  :math:`N`  swobodnych  punktów  materialnych  (brak więzów).  Współrzędne  kartezjańskie wektorów  położenia  i  sił  działających  na  kolejne  punkty materialne  oraz  masy  tych  punktów numerujemy  następująco:

.. math::


   \vec r_{1}  = (x_1 ,x_2 ,x_3 ), \quad  \vec r_{2}  = (x_4 ,x_5 ,x_6 ), \quad ... \quad , \quad  \vec r_N  = (x_{3N - 2} ,x_{3N - 1} ,x_{3N} ), \\
   \vec F_{ 1}  = (X_1 ,X_2 ,X_3 ), \quad \vec F_{ 2}  = (X_4 ,X_5 ,X_6 ), \quad ... \quad , \quad \vec F_N  = (X_{3N - 2} ,X_{3N - 1} ,X_{3N} ),


:math:`m_{ 3i - 2}  = m_{ 3i - 1}  = m_{ 3i}`   –  masa  i-tego  punktu  materialnego  (:math:`i = 1,2, \ldots ,N`).

Załóżmy,  że  siły  działające na cząstki mają potencjał  :math:`U(x,t):   X_j  =  - \frac{{\partial U}}{{\partial  x_j }}, \quad  j = 1,2, \ldots ,3N`.

Równania  Newtona:

.. math::

   m_j \ddot x_j  = X_j ,  \quad  \text{gdzie} \quad  X_j  =  - \frac{{\partial U}}{{\partial  x_j }},


czyli

.. math::
   :label: ZZ1.1

   m_j \ddot x_j  + \frac{{\partial U}}{{\partial  x_j }} = 0, \quad  j = 1,2,\ldots ,3N.


Energia  mechaniczna  układu:

.. math::

   E(x,\dot x,t) = {\textstyle{1 \over 2}}\sum\limits_{j = 1}^{3N}  m_j \dot x_j^2  + U(x,t).


Wyliczamy  zupełną  pochodną  po  czasie  funkcji  :math:`E(x,\dot x,t)`:

.. math::

   \frac{{dE}}{{dt}} = \sum\limits_{j = 1}^{3N} {\left( {\frac{{\partial E}}{{\partial  x_j }}\dot x_j  + \frac{{\partial E}}{{\partial  \dot x_j }}\ddot x_j } \right)}  + \frac{{\partial E}}{{\partial  t}}.


Tutaj

.. math::

   \frac{{\partial E}}{{\partial  x_j }} = \frac{{\partial U}}{{\partial  x_j }}, \quad \frac{{\partial E}}{{\partial  \dot x_j }} = m_j  \dot x_j , \quad j = 1,2, \ldots ,3N; \quad \frac{{\partial E}}{{\partial  t}} = \frac{{\partial U}}{{\partial  t}},


wobec czego,  na  podstawie  równań  :eq:`ZZ1.1`:

.. math::

   \begin{array}{l}
   & \frac{{dE}}{{dt}} = \sum\limits_{j = 1}^{3N} {\left( {\frac{{\partial U}}{{\partial  x_j }}\dot x_j  + m_j \dot x_j \ddot x_j } \right)}  + \frac{{\partial U}}{{\partial  t}} =  \\ 
   &  = \sum\limits_{j = 1}^{3N} {\left( {m_j \ddot x_j  + \frac{{\partial U}}{{\partial  x_j }}} \right)} \dot x_j  + \frac{{\partial U}}{{\partial  t}} = \frac{{\partial U}}{{\partial  t}}. \\ 
   \end{array}


Wynika  stąd  prawo  zachowania  energii  mechanicznej  dla  układu  punktów  materialnych  w  polu sił  potencjalnych:

Jeżeli  potencjał  sił  nie  zależy  od  czasu,  to  energia  mechaniczna  jest  stałą  ruchu.



Równania  Lagrange'a  we  współrzędnych  kartezjańskich
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Rozważmy  jeden  punkt  materialny  w  polu  siły  o  potencjale  :math:`U(\vec r,t)`.

Jako  współrzędne  uogólnione  przyjmujemy  współrzędne  kartezjańskie:

.. math::

   (q_{ 1} ,q_{ 2} ,q_{ 3} ) \to (x,y,z)


Funkcja  Lagrange'a:

.. math::

   L(\vec r,\vec v,t) = {\textstyle{1 \over 2}}mv^2  - U(\vec r,t) = {\textstyle{1 \over 2}}m(\dot x^2  +  \dot y^2  +  \dot z^2 ) - U(x,y,z,t)


Równania  Lagrange'a:

.. math::

   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot x}} - \frac{{\partial L}}{{\partial x}} = 0: \quad m\ddot x + \frac{{\partial U}}{{\partial x}} = 0: \quad  m\ddot x =  - \frac{{\partial U}}{{\partial x}} \\
   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot y}} - \frac{{\partial L}}{{\partial y}} = 0: \quad m\ddot y + \frac{{\partial U}}{{\partial y}} = 0: \quad  m\ddot y =  - \frac{{\partial U}}{{\partial y}} \\
   \frac{d}{{dt}}\frac{{\partial L}}{{\partial \dot z}} - \frac{{\partial L}}{{\partial z}} = 0: \quad m\ddot z + \frac{{\partial U}}{{\partial z}} = 0: \quad m\ddot z =  - \frac{{\partial U}}{{\partial z}}


W  zapisie  wektorowym:

.. math::

   m \ddot {\vec r} = \vec F, \quad  \text{gdzie} \quad  \vec F =  - {\mathop{\rm grad}\nolimits} U(\vec r) \quad (\text{równanie  Newtona}).


