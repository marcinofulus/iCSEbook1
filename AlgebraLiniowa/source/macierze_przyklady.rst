.. -*- coding: utf-8 -*-

Macierze przykłady
==================


Masy na liniowych sprężynach
----------------------------

Rozważmy :math:`n` mass połączonych sprężynami naprężonych siłą T i z
siłą zewnętrzą prostopadłą. Dla małych ugięć możemy napisać równanie
równowagi dla każdej masy:

.. math::
   :label: rownowaga

   F_i = T (x_i-x_{i-1}) - T (x_{i+1}-x_{i})  

czyli: 

.. math::
   :label: rownowaga2

   F_i = T (-x_{i-1} + 2 x_i- x_{i+1})  

Równanie to można traktować jako równanie liniowe i jego rozwiązaniem
będzie wektor odkształceń poszczególnych mass pod wpływem pewnej
siły. Siły możemy dowolnie kształtować.

.. math::

   \left(\begin{array}{rrrrr}
   1.0 & 0.0 & 0.0 & 0.0 & 0.0 \\
   -1.0 & 2.0 & -1.0 & 0.0 & 0.0 \\
   0.0 & -1.0 & 2.0 & -1.0 & 0.0 \\
   0.0 & 0.0 & -1.0 & 2.0 & -1.0 \\
   0.0 & 0.0 & 0.0 & 0.0 & 1.0
   \end{array}\right)
   \left(\begin{array}{r}
   x_{1} \\
   x_{2} \\
   x_{3} \\
   x_{4} \\
   x_{5}
   \end{array}\right) = 
   \left(\begin{array}{r}
   0 \\
   -1 \\
   -1 \\
   -1 \\
   0
   \end{array}\right)


.. admonition:: **Poeksperymentuj z Sage**!

   Wykorzystując notatnik Sage lub element interaktywny zbadaj jak
   zachowa się układ połączonych liniowymi sprężynami mass pod wpływej
   zadanej siły. Przyjmując za siłę stałą wartość -1 mamy sytuację
   swobodnie wiszącego łańcucha mass, który odkształca się pod wpływem
   grawitacji. Co będzie gdy na jedną masę podziałamy siłą dodatnia?
   Zacznij od poniższego kodu:
   
.. sagecellserver::

   nx=50
   L = matrix(RDF,nx)
   for i in range(1,nx-1):
       L[i,i-1],L[i,i],L[i,i+1] = -1,2, -1
   L[0,0]= 1
   L[-1,-1] = 1   

   f = vector(nx*[-1.0])
   f[0],f[nx-1] = 0,0
   list_plot(L\f,figsize=5)






Macierze Permutacji
-------------------

Jak wiemy z przykładów z układami równań liniowych, procedura
eliminacji Gaussa, czasem wymaga zamiany równań.

Weżmy np. macierz 

.. math::

   \boldsymbol{A} = \left(\begin{array}{rr}
   0 & 1 \\
   2 & 3
   \end{array}\right)

Widzimy, że aby wykonać krok eliminacji Gaussa należy zamienić wiersze
tej macierzy. Czy taką operację możemy zapisać jako mnożenie przez pewną macierz? 


.. admonition:: **Poeksperymentuj z Sage**!

   Wykorzystując notatnik Sage lub element interaktywny spróbuj
   znaleźć taką macierz :math:`\boldsymbol{P}` by zamieniała ona
   wiersze macierzy :math:`\boldsymbol{A}`. Mając wprawę na macierzy
   :math:`2\times 2` poeksperymentuj z macierzami :math:`3\times 3`. 

.. sagecellserver::

   A = matrix([[0,1],[2,3]])
   P = matrix([[0,0],[0,0]])

   show(A)
   show(P*A)
