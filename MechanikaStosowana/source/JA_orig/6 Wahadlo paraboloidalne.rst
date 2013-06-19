Wahadło paraboloidalne
======================


﻿Punkt materialny o masie  :math:`m`  porusza się  bez  tarcia  w  polu  siły ciężkości  po  paraboloidzie obrotowej  o  równaniu  :math:`z = {\textstyle{1 \over 2}}(x^2  + y^2 )`  (oś  z  jest skierowana pionowo do góry).  Zastosować zasadę  d’Alemberta  i  wyprowadzić  równania  różniczkowe  dla  funkcji  :math:`x(t),y(t),z(t)`.

Pokazać,  że  w  trakcie  ruchu  spełniony  jest  warunek:   :math:`\frac{d}{{dt}}(x \dot y - y \dot x ) \equiv x \ddot y - y \ddot x = 0`.

Uzasadnić  na  tej  podstawie,  że  z-owa  składowa  momentu  pędu  :math:`\vec L = \vec r \times \vec p`  jest  stałą  ruchu.

__________________________________________________________________________________



Równanie  więzów:

.. math::

   f(x,y,z) \equiv {\textstyle{1 \over 2}}(x^2  + y^2 ) - z = 0.


Siła  ciężkości:

.. math::

   \vec F = (0,0, - mg).


Zasada d’Alemberta:

.. math::
   :label: WP6.123

   \left\{ \begin{array}{l}
   m\ddot x\delta x + m\ddot y\delta y + m(\ddot z + g)\delta z = 0, & .1 \\ 
   {\textstyle{1 \over 2}}(x^2  + y^2 ) - z = 0, & .2 \\ 
   x\delta x + y\delta y - \delta z = 0. & .3 \\ 
   \end{array} \right.


Z  równania  :eq:`WP6.123`.3:

.. math::
   :label: WP6.4

   \delta z = x\delta x + y\delta y.


Dzieląc  :eq:`WP6.123`.1  przez  :math:`m`  i  podstawiając  :eq:`WP6.4` otrzymujemy:

.. math::

   \ddot x\delta x + \ddot y\delta y + (\ddot z + g)(x\delta x + y\delta y) = 0


czyli

.. math::

   [\ddot x + x(\ddot z + g)]\delta x + [\ddot y + y(\ddot z + g)]\delta y = 0.


Całkowita  dowolność  przesunięć  wirtualnych  :math:`\delta x` oraz  :math:`\delta y`  prowadzi  do  układu  równań

.. math::
   :label: WP6.56

   \left\{ \begin{array}{l}
   \ddot x + x(\ddot z + g) = 0 &  &  &  & .1 \\ 
   \ddot y + y(\ddot z + g) = 0 &  &  &  & .2 \\ 
   \end{array} \right.


który  należy  rozpatrywać  łącznie  z  warunkiem  :eq:`WP6.123`.2.

Różniczkując  :eq:`WP6.123`.2  dwukrotnie  względem  czasu  mamy:

.. math::
   :label: WP6.7

   \begin{array}{l}
   z = {\textstyle{1 \over 2}}(x^2  + y^2 ) \\ 
   \dot z = x\dot x + y\dot y \\ 
   \ddot z = \dot x^2  + x\ddot x + \dot y^2  + y\ddot y \\ 
   \end{array}


Wstawiając  :eq:`WP6.7` do  równań  :eq:`WP6.56`.1 i  :eq:`WP6.56`.2  otrzymujemy  układ  równań  na  funkcje  :math:`x(t)`  i  :math:`y(t)`:

.. math::

   \left\{ \begin{array}{l}
   \ddot x + x(\dot x^2  + x\ddot x + \dot y^2  + y\ddot y + g) = 0 \\ 
   \ddot y + y(\dot x^2  + x\ddot x + \dot y^2  + y\ddot y + g) = 0, \\ 
   \end{array} \right.


czyli

.. math::
   :label: WP6.8

   \left\{ \begin{array}{l}
   (1 + x^2 )\ddot x + x y\ddot y + x(\dot x^2  + \dot y^2  + g) = 0 \\ 
   (1 + y^2 )\ddot y + x y\ddot x + y(\dot x^2  + \dot y^2  + g) = 0. \\ 
   \end{array} \right.


Warto  zauważyć,  że  drugie  z  równań  :eq:`WP6.8` powstaje  z  pierwszego  przez  zamianę  :math:`x \leftrightarrow y`.


Pomnóżmy  równanie  :eq:`WP6.56`.1  przez  :math:`y`,  a  równanie  :eq:`WP6.56`.2  przez  :math:`x`:

.. math::

   \left\{ \begin{array}{l}
   y\ddot x + xy(\ddot z + g) = 0 \\ 
   x\ddot y + xy(\ddot z + g) = 0 \\ 
   \end{array} \right.


Odejmując  stronami  stwierdzamy,  że

.. math::

   \frac{d}{{dt}}(x \dot y - y \dot x ) \equiv x \ddot y - y \ddot x = 0,


skąd  otrzymujemy  stałą  ruchu

.. math::
   :label: WP6.9

   m(x \dot y - y \dot x) = {\rm{cst.}}


Lewa  strona  równości  :eq:`WP6.9`  jest  z-ową  współrzędną  momentu  pędu  cząstki  :math:`\vec L`.

Rzeczywiście,

.. math::

   \vec L = \vec r \times \vec p = \left| {\begin{array}{*{20}c}
   {\vec e_1 } & {\vec e_2 } & {\vec e_3 }  \\
   x & y & z  \\
   {p_x } & {p_y } & {p_z }  \\
   \end{array}} \right| = (yp_z  - zp_y )\vec e_1  + (zp_x  - xp_z )\vec e_2  + (xp_y  - yp_x )\vec e_3 ,


wobec  czego

.. math::

   L_z  = xp_y  - yp_x  = m(x\dot y - y\dot x).


Stałość    jest  oczywiście  konsekwencją  symetrii  obrotowej  układu  (obroty  wokół  osi  z).


