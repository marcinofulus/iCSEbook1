Zasada  zachowania  energii  dla  układu  swobodnych  punktów  materialnych
===========================================================================


Dany układ N swobodnych punktów materialnych (brak więzów).

Współrzędne kartezjańskie wektorów położenia i sił działających na
kolejne punkty materialne oraz masy tych punktów numerujemy
następująco:

.. math::

   \vec r_{\,1} \;\, = \;\,(x_1 ,\;x_2 ,\;x_3 ),\vec r_{\,2} \;\, = \;\,(x_4 ,\;x_5 ,\;x_6 ),     ,   \vec r_N \;\, = \;\,(x_{3N - 2} ,\;x_{3N - 1} ,\;x_{3N} ), \\

   \vec F_{{\kern 1pt} 1} \;\, = \;\,(X_1 ,\;X_2 ,\;X_3 ), \vec F_{{\kern 1pt} 2} \;\, = \;\,(X_4 ,\;X_5 ,\;X_6 )`,     \vec F_N \;\, = \;\,(X_{3N - 2} ,\;X_{3N - 1} ,\;X_{3N} ),

gdzie

:math:`m_{{\kern 1pt} 3\,i - 2}  = \;\,m_{{\kern 1pt} 3\,i - 1}  = \;\,m_{{\kern 1pt} 3\,i}`  -  masa  i-tego  punktu  materialnego  :math:`(\,i = 1,2, \ldots ,N\,)`.

Załóżmy, że siły działające na cząstki mają potencjał :math:`U(x,t)`:

.. math:: X_j \;\, = \;\, - \frac{{\partial U}}{{\partial {\kern 1pt} x_j}}\;,{\rm{ }}j = 1,2, \ldots ,3N.

Równania  Newtona:

.. math:: 
   
   m_j \,\ddot x_j \;\, = \;\;X_j,     

gdzie     

.. math::
   
   X_j \;\, = \;\, - \;\frac{{\partial U}}{{\partial {\kern 1pt} x_j }},



czyli	:

.. math::

   m_j \,\ddot x_j  + \;\,\frac{{\partial U}}{{\partial {\kern 1pt} x_j }}\;\;{\rm{ = }}\;\;{\rm{0}}\;{\rm{,      }}j\;\, = \;\,1,\;2,\; \ldots ,\;3N.                                              

Energia  mechaniczna  układu:

.. math:: 

   E(x,\dot x,t)\;\; = \;\;{\textstyle{1 \over 2}}\;\;\sum\limits_{j = 1}^{3N} \; m_j \,\dot x_j^2 \;\; + \;\;U(x,t).

Wyliczamy  zupełną  pochodną  po  czasie  funkcji  :math:`E(x,\dot x,t)`:

.. math::

   \frac{{dE}}{{dt}}\;\;\; = \;\;\;\sum\limits_{j = 1}^{3N} {\;\,\left( {\,\frac{{\partial E}}{{\partial {\kern 1pt} x_j }}\;\dot x_j \;\, + \;\;\frac{{\partial E}}{{\partial {\kern 1pt} \dot x_j }}\;\ddot x_j } \right)} \;\;\; + \;\;\;\frac{{\partial E}}{{\partial {\kern 1pt} t}}`.

Tutaj	

.. math::
   
   \frac{{\partial E}}{{\partial {\kern 1pt} x_j }}\;\; = \;\;\frac{{\partial U}}{{\partial {\kern 1pt} x_j }}\;,{\rm{      }}\frac{{\partial E}}{{\partial {\kern 1pt} \dot x_j }}\;\; = \;\;m_j {\kern 1pt} \dot x_j \,,{\rm{     }}j\;\, = \;\,1,\;2,\; \ldots ,\;3N\;;{\rm{         }}\frac{{\partial E}}{{\partial {\kern 1pt} t}}\;\; = \;\;\frac{{\partial U}}{{\partial {\kern 1pt} t}},

wobec czego,  na  podstawie  równań  (1):

.. math::

   \begin{array}{l}
   & \frac{{dE}}{{dt}}\;\; = \;\;\sum\limits_{j = 1}^{3N} {\;\,\left( {\,\frac{{\partial U}}{{\partial {\kern 1pt} x_j }}\;\dot x_j \;\; + \;\;m_j \,\dot x_j \,\ddot x_j } \right)} \;\; + \;\;\frac{{\partial U}}{{\partial {\kern 1pt} t}}\;\;\; =  \\ 
   &  = \;\;\sum\limits_{j = 1}^{3N} {\;\,\left( {\,m_j \,\ddot x_j  + \;\,\frac{{\partial U}}{{\partial {\kern 1pt} x_j }}} \right)} \;\dot x_j \;\; + \;\;\frac{{\partial U}}{{\partial {\kern 1pt} t}}\;\;\; = \;\;\;\frac{{\partial U}}{{\partial {\kern 1pt} t}}\;. \\ 
   \end{array}


Wynika stąd prawo zachowania energii mechanicznej dla układu punktów
materialnych w polu sił potencjalnych: Jeżeli potencjał sił nie zależy
od czasu, to energia mechaniczna jest stałą ruchu.

.. sagecellserver::
   
   var('x v')
   def c(E):
       if abs(E-1)<1e-5:
           return "red"
       else:
           return "black"
   sum([implicit_plot(sin(x)+v^2-E,(x,-5,5),(v,-2.2,2.2),color=c(E)) for E in srange(-2.3,4,0.3)])
