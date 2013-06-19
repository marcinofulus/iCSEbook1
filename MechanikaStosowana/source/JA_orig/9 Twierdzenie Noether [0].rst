Twierdzenie  Noether
====================


**Lemat  1.**  Niech  będzie  dana  funkcja  :math:`F(q,t,\alpha )`  współrzędnych  uogólnionych  :math:`(q_l )_{ 1}^{ f}`,  czasu  :math:`t`   oraz  niezależnego  parametru  :math:`\alpha`,  o  ciągłych  drugich  pochodnych.  Wtedy

.. math::
   :label: TN9.0

   \frac{\partial }{{\partial \alpha }}\left( {\frac{{dF}}{{dt}}} \right) = \frac{d}{{dt}}\left( {\frac{{\partial F}}{{\partial \alpha }}} \right).


**Lemat  2.**  Dana  odwracalna  transformacja  współrzędnych  uogólnionych  z  parametrem  :math:`\alpha`,  która  przy  :math:`\alpha  = 0`  przechodzi  w  tożsamość:

.. math::
   :label: TN9.1

   \begin{array}{l} q'_l  = q'_l (q,t,\alpha ),   & q_l = q_l (q',t,\alpha ), \\ 
    q'_l (q,t,0) = q_l .   & q_l (q',t,0) = q'_l . \\ 
   \end{array}  \quad \quad    l = 1,2, \ldots ,f.


Zakładamy,  że  wypisane  funkcje  transformacyjne  mają  ciągłe  drugie  pochodne.  Wtedy

A. Prędkości  uogólnione  spełniają,  dla  ,  relacje  analogiczne  do  wzorów  :eq:`TN9.1`:

.. math::

   \begin{array}{l}
   \dot q'_l  = \dot q'_l (q,\dot q,t,\alpha ),  &  \dot q_l  = \dot q_l (q',\dot q',t,\alpha ), \\ 
   \dot q'_l (q,\dot q,t,0) = \dot q_l .  & \dot q_l (q',\dot q',t,0) = \dot q'_l . \\ 
   \end{array}	\quad \quad  l = 1,2, \ldots ,f.



B. Zachodzą  równości

.. math::

   \frac{\partial }{{\partial \alpha }}\left( {\frac{{dq_l }}{{dt}}} \right) = \frac{d}{{dt}}\left( {\frac{{\partial q_l }}{{\partial \alpha }}} \right), \quad l = 1,2, \ldots ,f.


**Definicja  1.**  Funkcja  Lagrange'a  :math:`L(q,\dot q,t)`  układu  mechanicznego  jest  *niezmiennicza*  względem  transformacji  :eq:`TN9.1`,  gdy  funkcja

.. math::

   L'(q',\dot q',t,\alpha ): = L\left[ {q(q',t,\alpha ),\dot q(q',\dot q',t,\alpha ),t} \right]


nie  zależy  od  parametru  :math:`\alpha`,  to  znaczy  gdy

.. math::

   L'(q',\dot q',t,\alpha ) = L(q',\dot q',t).


**Definicja  2.**  Funkcja  Lagrange'a  :math:`L(q,\dot q,t)`  układu  mechanicznego  jest   *niezmiennicza*   względem  transformacji  :eq:`TN9.1`  *w  rozszerzonym  sensie*,  gdy

.. math::

   L'(q',\dot q',t,\alpha ) = L(q',\dot q',t) + \frac{d}{{dt}}F(q',t,\alpha )


to  znaczy  gdy  nowa  funkcja  Lagrange'a  :math:`L'(q',\dot q',t,\alpha )`  zależy  od  parametru  :math:`\alpha`   jedynie  poprzez  składnik  w  postaci  zupełnej  pochodnej  po  czasie  pewnej  funkcji  współrzędnych  uogólnionych,  czasu  i  parametru  :math:`\alpha`.

**Twierdzenie.**   Dany  układ  punktów  materialnych  o  :math:`f`  stopniach  swobody,  opisany  przez  dwa  układy  współrzędnych  uogólnionych:  :math:`(q_l )_{ 1}^{ f}`  albo  :math:`(q'_l )_{ 1}^{ f}`,   między  którymi  zachodzą  związki:

.. math::
   :label: TN9.11

   \begin{array}{l} q'_l  = q'_l (q,t,\alpha ),  &  q_l  = q_l (q',t,\alpha ), \\ 
    q'_l (q,t,0) = q_l .  & q_l (q',t,0) = q'_l . \\ 
   \end{array}   \quad \quad  l = 1,2, \ldots ,f.


gdzie  funkcje  transformacyjne  mają  ciągłe  drugie  pochodne.

Zakładamy,  że  funkcja  Lagrange'a  :math:`L(q,\dot q,t)`  jest  niezmiennicza  względem  transformacji  :eq:`TN9.11` w  rozszerzonym  sensie,  to  znaczy

.. math::

   L'(q',\dot q',t,\alpha ) = L(q',\dot q',t) + \frac{d}{{dt}}F(q',t,\alpha )


gdzie

.. math::

   L'(q',\dot q',t,\alpha ): = L\left[ {q(q',t,\alpha ),\dot q(q',\dot q',t,\alpha ),t} \right],


przy  czym  funkcja  :math:`F(q',t,\alpha )`  ma  ciągłe  drugie  pochodne.

Wtedy  wielkość

.. math::

   J: = \sum\limits_{l = 1}^f {\left( {\frac{{\partial  L}}{{\partial  \dot q_l }}} \right)\left( {\frac{{\partial  q_l }}{{\partial  \alpha }}} \right)_0  - \left( {\frac{{\partial  F}}{{\partial  \alpha }}} \right)_0 }


jest  stałą  ruchu.  Wskaźnik  0  oznacza  wartość  dla  :math:`\alpha  = 0`,  a  więc  również  dla  :math:`q' = q`.


**Dowód.**

.. math::
   :label: TN9.22

   \begin{array}{l}
   & \frac{\partial }{{\partial \alpha }}L(q',\dot q',t) = \frac{\partial }{{\partial \alpha }}\left[ {L'(q',\dot q',t,\alpha ) - \frac{d}{{dt}}F(q',t,\alpha )} \right] =  \\ 
   &  = \frac{\partial }{{\partial \alpha }}L'(q',\dot q',t,\alpha ) - \frac{\partial }{{\partial \alpha }}\frac{d}{{dt}}F(q',t,\alpha ) = 0. \\ 
   \end{array}


Tutaj

.. math::

   \frac{\partial }{{\partial \alpha }}L'(q',\dot q',t,\alpha ) = \sum\limits_{l = 1}^f {\left[ {\frac{{\partial  L}}{{\partial  q_l }}(q,\dot q,t) \cdot \frac{{\partial  q_l }}{{\partial  \alpha }} + \frac{{\partial  L}}{{\partial  \dot q_l }}(q,\dot q,t) \cdot \frac{{\partial  \dot q_l }}{{\partial  \alpha }}} \right]},


gdzie  po  prawej  stronie  trzeba  podstawić  :math:`q_l  = q_l (q',t,\alpha ), \quad \dot q_l  = \dot q_l (q',\dot q',t,\alpha ), \quad l = 1,2, \ldots ,f`.

Ale  w  trakcie  ruchu:   :math:`\frac{{\partial  L}}{{\partial  q_l }} = \frac{d}{{dt}}\frac{{\partial  L}}{{\partial  \dot q_l }}`,   a  ponadto   :math:`\frac{{\partial  \dot q_l }}{{\partial  \alpha }} = \frac{d}{{dt}}\frac{{\partial  q_l }}{{\partial  \alpha }}, \quad l = 1,2, \ldots ,f`.

Wobec  tego

.. math::
   :label: TN9.33

   \frac{\partial }{{\partial \alpha }}L'(q',\dot q',t,\alpha ) = \sum\limits_{l = 1}^f {\left[ {\frac{d}{{dt}}\frac{{\partial  L}}{{\partial  \dot q_l }} \cdot \frac{{\partial  q_l }}{{\partial  \alpha }} + \frac{{\partial  L}}{{\partial  \dot q_l }} \cdot \frac{d}{{dt}}\frac{{\partial  q_l }}{{\partial  \alpha }}} \right]}  = \frac{d}{{dt}}\sum\limits_{l = 1}^f  \left( {\frac{{\partial  L}}{{\partial  \dot q_l }} \cdot \frac{{\partial  q_l }}{{\partial  \alpha }}} \right).


Z  drugiej  strony:

.. math::
   :label: TN9.44

   \frac{\partial }{{\partial \alpha }}\frac{d}{{dt}}F(q',t,\alpha ) = \frac{d}{{dt}}\frac{\partial }{{\partial \alpha }}F(q',t,\alpha ).


Podstawiając  :eq:`TN9.33` i  :eq:`TN9.44` do  :eq:`TN9.22` i  kładąc  :math:`\alpha  = 0`  dochodzimy  do  tezy.


