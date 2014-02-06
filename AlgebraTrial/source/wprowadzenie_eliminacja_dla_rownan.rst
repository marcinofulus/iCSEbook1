.. -*- coding: utf-8 -*-

Metoda eliminacji dla układów równań
------------------------------------

Postać schodkowa układu równań
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Rozważmy układ :math:`\,m\,` równań o :math:`\,n\,` niewiadomych
:math:`\,(2\le m\le n):`

.. math::
   :label: 01
   :nowrap:

   \begin{alignat*}{4}
      a_{11}\,x_1 & {\,} + {\,} & a_{12}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{1n}\,x_n & {\ } = {\ \ }  b_1    \\
      a_{21}\,x_1 & {\,} + {\,} & a_{22}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{2n}\,x_n & {\ } = {\ \ }  b_2    \\
      \ldots\ \   & {\,} + {\,} & \ldots\ \   & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & \ldots\ \   & {\ } = {\ }    \ldots \\
      a_{m1}\,x_1 & {\,} + {\,} & a_{m2}\,x_2 & {\,} + {\,} & \,\ldots\, & {\ } + {\,} & a_{mn}\,x_n & {\ } = {\ \ }  b_m
   \end{alignat*}

Przyjmujemy, że współczynniki :math:`\,a_{ij}\,` 
oraz wolne wyrazy :math:`\,b_i\ \ (i=1,2,\ldots,m;\ j=1,2,\ldots,n)\,`
należą do pewnego ciała :math:`\,K,\,` na przykład są liczbami wymiernymi lub rzeczywistymi.  

Niewiadoma :math:`\,x_l\,` jest *niewiadomą wiodącą* w danym równaniu układu,
gdy wszystkie niewiadome o numerach wcześniejszych :math:`\,` 
(tzn. :math:`\,x_j\,` dla :math:`\,1 \leq j < l\,`) :math:`\,` w tym równaniu nie występują
:math:`\ \,(l=1,2,\ldots,n).`

Dla przykładu, w równaniu :math:`\ 2\,x_3\,+\,4\,x_4\,-\,8\,x_6\ =\ 10\,,\,`
należącym do układu o niewiadomych :math:`\,x_1,\,x_2,\,\ldots,\,x_7\,,`
niewiadomą wiodącą jest :math:`\,x_3:\,`
niewiadome o numerach wcześniejszych, :math:`\,x_1\ \,\text{i}\ \;x_2,`
są w tym równaniu nieobecne (współczynniki przy tych niewiadomych są równe zero). 

Układ równań ma :math:`\,` *postać schodkową*, :math:`\,`
gdy w każdym równaniu (począwszy od drugiego) niewiadoma wiodąca ma numer większy
niż niewiadoma wiodąca w równaniu poprzednim.

Oznacza to w szczególności, że w każdym :math:`\,k`-tym równaniu
nie występują niewiadome :math:`\ x_1,\dots,x_{k-1}\ \,` :math:`(k=2,\dots,m)\,.` 

..  | Układ :math:`\,m\,` równań liniowych o :math:`\,n\,` niewiadomych ma *postać schodkową*,
    | gdy w każdym :math:`\,k`-tym równaniu nie występują niewiadome :math:`x_1,\dots,x_{k-1}`
    | (czyli współczynniki przy tych niewiadomych są równe zeru).
    | Tutaj :math:`\ k=2,\dots,m;\ \ 2\le m\le n`. 

Eliminacja Gaussa
~~~~~~~~~~~~~~~~~

| Rozważymy teraz konkretny układ trzech równań liniowych o trzech niewiadomych.
|  
| Doprowadzimy go do postaci schodkowej poprzez następujące *operacje elementarne*:

#. przestawienie dwóch równań,
#. pomnożenie obu stron równania przez liczbę różną od zera,
#. | dodanie stronami do jednego z równań dowolnej wielokrotności innego równania
   | (w szczególności: dodanie bądź odjęcie dwóch równań stronami).

| Jest oczywiste, że operacje te nie zmieniają zbioru rozwiązań,
| czyli prowadzą do układu równań równoważnego z wyjściowym.
             
.. code-block:: python

   var('x1 x2 x3')

   eq1 = x1+2*x2+2*x3==4
   eq2 = x1+3*x2+3*x3==5
   eq3 = 2*x1+6*x2+5*x3==6

   #show(vector([eq1,eq2,eq3]).column())

.. math::
   :nowrap:

   \begin{alignat*}{4}
         x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 4 \\
         x_1 & {\,} + {\,} & 3\,x_2 & {\,} + {\,} & 3\,x_3 & {\;} = {\;} & 5 \\
      2\,x_1 & {\,} + {\,} & 6\,x_2 & {\,} + {\,} & 5\,x_3 & {\;} = {\;} & 6
   \end{alignat*}

.. code-block:: python

    eq2 = eq2-eq1
    eq3 = eq3-2*eq1

    #show(vector([eq1,eq2,eq3]).column())
    
.. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {} &  4 \\
          &             &    x_2 & {\,} + {\,} &    x_3 & {\;} = {} &  1 \\
          &             & 2\,x_2 & {\,} + {\,} &    x_3 & {\;} = {} & -2
   \end{alignat*}

.. code-block:: python

   eq3 = eq3-2*eq2

   #show(vector([eq1,eq2,eq3]).column())
    
.. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {} &  4 \\
          &             &    x_2 & {\,} + {\,} &    x_3 & {\;} = {} &  1 \\
          &             &        & {\,} - {\,} &    x_3 & {\;} = {} & -4
   \end{alignat*}

.. code-block:: python

   eq3 = -eq3

   #show(vector([eq1,eq2,eq3]).column())
   
.. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 4 \\
          &             &    x_2 & {\,} + {\,} &    x_3 & {\;} = {\;} & 1 \\
          &             &        &             &    x_3 & {\;} = {\;} & 4
   \end{alignat*}

| Otrzymaliśmy układ równań w postaci schodkowej.
| Wykonując teraz odpowiednie podstawienia wstecz otrzymujemy:

.. .. code-block:: python
      
      html.table( [eq1.subs(eq2.subs(eq3)-4).subs(eq3)-2,eq2.subs(eq3)-4,eq3] )
  
.. math::
   :nowrap:

   \begin{alignat*}{5}
      x_3 & {\;} = {\;} & 4 &             &        &             &        &             &   \\
      x_2 & {\;} = {\;} & 1 & {\,} - {\,} &    x_3 & {\,} = {\,} & -3     &             &   \\
      x_1 & {\,} = {\,} & 4 & {\,} - {\,} & 2\,x_2 & {\,} - {\,} & 2\,x_3 & {\,} = {\,} & 2 
   \end{alignat*}

Metoda rozwiązywania układów równań liniowych, polegająca na sprowadzeniu układu
do postaci schodkowej i zastosowaniu podstawień wstecznych, nazywa się eliminacją Gaussa.

Eliminacja Gaussa-Jordana
~~~~~~~~~~~~~~~~~~~~~~~~~

Można jednak nie poprzestać na postaci schodkowej:

.. math::
   :nowrap:

   \begin{alignat*}{4}
      x_1 & {\,} + {\,} & 2\,x_2 & {\,} + {\,} & 2\,x_3 & {\;} = {\;} & 4 \\
          &             &    x_2 & {\,} + {\,} &    x_3 & {\;} = {\;} & 1 \\
          &             &        &             &    x_3 & {\;} = {\;} & 4
   \end{alignat*}

ale, wykonując w dalszym ciągu operacje elementarne na równaniach,
otrzymać jeszcze wygodniejszą postać układu równań:

.. code-block:: python

   eq1 = eq1-2*eq2
   eq2 = eq2-eq3

   #show(vector([eq1,eq2,eq3]).column())
   
.. math::
   :nowrap:

   \begin{alignat*}{2}
      x_1 & {\,} = {} &  2 \\
      x_2 & {\,} = {} & -3 \\
      x_3 & {\,} = {} &  4
   \end{alignat*}

Doprowadzenie układu równań do takiej trywialnej postaci,
która daje bezpośrednio wartości niewiadomych, określa się mianem eliminacji Gaussa-Jordana.

| Sprawdźmy, czy odpowiedź jest zgodna z wbudowaną procedurą  ``solve()`` :

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = x1+2*x2+2*x3==4
   eq2 = x1+3*x2+3*x3==5
   eq3 = 2*x1+6*x2+5*x3==6

   show(solve([eq1,eq2,eq3],[x1,x2,x3]))




