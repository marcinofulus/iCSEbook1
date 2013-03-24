.. -*- coding: utf-8 -*-


Tensor zupełnie antysymetryczny
-------------------------------


.. MATH::    \varepsilon _{{\kern 1pt} ij{\kern 1pt} k} (i,\,j,\,k = 1,\,2,\,3).


Definicja

1. :MATH:`\varepsilon _{{\kern 1pt} 123} : = 1`

2. Przestawienie dowolnych dwóch (sąsiednich bądź skrajnych)
   wskaźników i, j, k zmienia znak symbolu.  Warunek jest niesprzeczny
   wewnętrznie, bo przestawienie wskaźników skrajnych jest równoważne
   trzem transpozycjom wskaźników sąsiednich.  np.  :math:`\varepsilon
   {\kern 1pt} _{213} = \, - 1,{\text{ }}\varepsilon _{{\kern 1pt}
   321} = \, - 1,{\text{ }}\varepsilon _{{\kern 1pt} 231} = \, + 1\,`.


Wnioski:


1. Jeżeli jakiekolwiek dwa (albo wszystkie trzy) wskaźniki są równe,
   symbol epsilon znika.  Rzeczywiście, przestawienie jednakowych
   wskaźników z jednej strony nie zmienia symbolu, z drugiej – zmienia
   jego znak, symbol równa się więc zeru.  np.  :math:`\varepsilon
   _{{\kern 1pt} 233} = \, - \varepsilon _{{\kern 1pt} 233} {\rm{ }}
   \Rightarrow {\rm{ }}\varepsilon _{{\kern 1pt} 233} = \,0`.

2. Cykliczne przestawienie wskaźnika (z pierwszego na ostatnie miejsce
   albo odwrotnie) nie zmienia wartości symbolu.  Rzeczywiście, takie
   cykliczne przestawienie wskaźników jest równoważne dwóm
   przestawieniom wskaźników sąsiednich, z których każde zmienia znak
   symbolu. W efekcie znak się nie zmienia.  np.

.. MATH::

    \varepsilon _{{\kern 1pt} 123}  = \, - \varepsilon _{{\kern 1pt} 213}  = \,\varepsilon _{{\kern 1pt} 231}.


3. Wśród 27 składowych symbolu :math:`\varepsilon _{{\kern 1pt} ijk}
   {\rm{ }}(i,j,k = 1,2,3)` tylko 6 jest różnych od zera.  Są to
   składowe, dla których wszystkie wskaźniki są różne: :math:`(i \ne j
   \ne k \ne i)`. Odpowiadają one sześciu permutacjom zbioru :math:`{
   1,2,3}`.  Niezerowe składowe to:

.. MATH::

 \varepsilon_{123}  = \,\varepsilon _{231}  = \,\varepsilon _{312}  &=& \,1 \\
 \varepsilon_{213}  = \,\varepsilon _{321}  = \,\varepsilon _{132}  &=& \, - 1.


\ 

   Jeżeli  permutacja 
 
.. MATH::

    \left( {\,\begin{array}{*{20}c}  1   2   3 \\  i   j   k \\ \end{array}\,} \right)


\
   jest  parzysta  (nieparzysta),  to  

.. MATH::

    \varepsilon _{ijk}  =  + 1 (\varepsilon _{ijk}  =  - 1).


4. Symbol :math:`\varepsilon_{ijk}` można przedstawić jako wyznacznik
   złożony z delt Kroneckera:

.. MATH::

    \varepsilon_{ ijk}  = \left| {\begin{array}{*{20}c}    {\delta_{1i} }  {\delta_{1j} }  {\delta_{1k} }  \\    {\delta_{2i} }  {\delta_{2j} }  {\delta_{2k} }  \\    {\delta_{3i} }  {\delta_{3j} }  {\delta_{3k} }  \\ \end{array}} \right| = \left| {\begin{array}{*{20}c}    {\delta_{i1} }  {\delta_{i2} }  {\delta_{i3} }  \\    {\delta_{j1} }  {\delta_{j2} }  {\delta_{j3} }  \\    {\delta_{k1} }  {\delta_{k2} }  {\delta_{k3} }  \\ \end{array}} \right|.


\ 
   Rzeczywiście, 	 

.. MATH::

    \varepsilon_{123}  = \left| {\begin{array}{*{20}c}    1  0  0  \\    0  1  0  \\    0  0  1  \\ \end{array}} \right| = 1,


\ 
    a przestawieniu dwóch wskaźników odpowiada przestawienie
    odpowiednich kolumn (wierszy) wyznacznika, co zmienia jego znak.

    W konsekwencji, gdy jakieś dwa wskaźniki są równe, odpowiednie
    kolumny (wiersze) wyznacznika stają się identyczne, przez co
    wyznacznik znika.


W systemie Sage nie ma symbolu :math:`\varepsilon_{ijk}`, ale można
użyć zdefiniowanej funkcji symbolicznej w pakiecie sympy:

.. code-block:: python

    sage: from  sympy import Eijk


.. end of output

.. code-block:: python

    sage: Eijk(1, 1, 2)
    0

.. end of output

.. code-block:: python

    sage: from  sympy import Eijk
    sage: for i,j,k in CartesianProduct([1,2,3],[1,2,3],[1,2,3]):
    ...       if Eijk(i,j,k)!=0:
    ...           print i,j,k,Eijk(i,j,k)
    1 2 3 1
    1 3 2 -1
    2 1 3 -1
    2 3 1 1
    3 1 2 1
    3 2 1 -1

.. end of output

.. code-block:: python

    sage: p = Graphics()
    sage: for i,j,k in CartesianProduct([1,2,3],[1,2,3],[1,2,3]):
    ...       if Eijk(i,j,k)>0:
    ...           p += point3d( (i,j,k) ,size = 25,color='red')
    ...       else:
    ...           if Eijk(i,j,k)<0:
    ...               p += point3d( (i,j,k) ,size = 25,color='blue')
    ...           else:
    ...               p += point3d( (i,j,k) ,size = 15,color='grey')
    sage: p.show(viewer='tachyon')


.. end of output


