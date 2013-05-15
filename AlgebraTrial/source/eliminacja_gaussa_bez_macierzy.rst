.. -*- coding: utf-8 -*-

Metoda eliminacji Gaussa dla układów równań
-------------------------------------------

.. sidebar:: Postać schodkowa układu równań:

   | Układ :math:`\,m\,` równań liniowych o :math:`\,n\,` niewiadomych ma postać
   | schodkową, gdy w każdym :math:`\,k`-tym równaniu nie występują
   | niewiadome :math:`x_1,\dots,x_{k-1}` (czyli współczynniki przy tych
   | niewiadomych znikają) :math:`,\ \ k=2,\dots,m;\ \ 2\le m\le n`. 

| Rozważmy układ trzech równań liniowych o trzech niewiadomych.
 
| Doprowadzimy go do postaci schodkowej poprzez następujące
| operacje elementarne, które nie zmieniają zbioru rozwiązań:

#. przestawienie dwóch równań
#. dodanie (bądź odjęcie) dwóch równań stronami
#. pomnożenie obu stron równania przez liczbę różną od zera.
              
.. code-block:: python

   var('x1 x2 x3')

   eq1 = x1+2*x2+2*x3==4
   eq2 = x1+3*x2+3*x3==5
   eq3 = 2*x1+6*x2+5*x3==6

   #show(vector([eq1,eq2,eq3]).column())

.. math::

   \begin{cases}
   \quad x_1 +\,2\,x_2 +\,2\,x_3 \ =\ 4 \\
   \quad x_1 +\,3\,x_2 +\,3\,x_3 \ =\ 5 \\
   \ \,2\,x_1 +\,6\,x_2 +\,5\,x_3 \ =\ 6
   \end{cases}

.. code-block:: python

    eq2 = eq2-eq1
    eq3 = eq3-2*eq1

    #show(vector([eq1,eq2,eq3]).column())
    
.. math::

   \begin{cases}
   \ \ x_1 +\,2\,x_2 +\,2\,x_3 \ =\ \ \:4 \\
   \qquad\quad\ \ \,x_2 \ \,+\ \, x_3 \ =\ \ \ 1 \\
   \qquad\quad 2\,x_2 \ \,+\ \,x_3 \ = -2
   \end{cases}

.. code-block:: python

   eq3 = eq3-2*eq2

   #show(vector([eq1,eq2,eq3]).column())
    
.. math::

   \begin{cases}
   \ \ x_1 +\,2\,x_2 +\,2\,x_3 \ =\ \ \ \,4 \\
   \qquad\quad\ \ \,x_2 \ \,+\ \, x_3 \ =\ \ \ \,1 \\
   \qquad\qquad\qquad -x_3 \ = -4
   \end{cases}

.. code-block:: python

   eq3 = -eq3

   #show(vector([eq1,eq2,eq3]).column())
   
.. math::

   \begin{cases}
   \ \ x_1 +\,2\,x_2 +\,2\,x_3 \ =\ 4 \\
   \qquad\quad\ \ \,x_2 \ \,+\ \, x_3 \ =\ 1 \\
   \qquad\qquad\qquad\ \ \; x_3 \ =\ 4
   \end{cases}

Wykonując odpowiednie podstawienia wstecz otrzymujemy:

.. code-block:: python

   html.table( [eq1.subs(eq2.subs(eq3)-4).subs(eq3)-2,eq2.subs(eq3)-4,eq3] )
  
.. math::
   
   \begin{cases}
   \ \; x_1 = \ \ \ 2 \\
   \ \; x_2 = -3 \\
   \ \; x_3 = \ \ \ 4
   \end{cases}

Sprawdźmy, czy odpowiedź jest zgodna z wbudowaną procedurą  ``solve()`` :

.. sagecellserver::

   var('x1 x2 x3')

   eq1 = x1+2*x2+2*x3==4
   eq2 = x1+3*x2+3*x3==5
   eq3 = 2*x1+6*x2+5*x3==6

   show(solve([eq1,eq2,eq3],[x1,x2,x3]))

.. admonition:: Uwaga

   Procedura ``solve()`` dla układów równań nieoznaczonych.

   Wyobraźmy sobie, że rozwiązujemy układ równań (niekoniecznie
   liniowy) w Sage za pomocą ``solve()`` i jako odpowiedź dostajemy
   wyrażenia zależne parametrów ``r1,r2,...``. Jeśli chcemy
   wykorzystać te parametry np. do narysowania rozwiązań to musimy po
   pierwsze zadeklarować zmienne, które odpowiadają tym parametrom. Po
   drugie, ich nazwy są często nieprzewidywalne, dlatego warto mieć
   procedurę, która automatycznie wyciągnie ze wzorów wszystkie
   zmienne. W poniższym kodzie jest zapisany przykład takiej
   procedury, zachęcam do wypróbowania go w Sage i zrozumienia:

   .. code-block:: python

    sage: var('x1 x2')
    sage: s=solve([x1+x2==1,x1+x2==1],[x1,x2])
    sage: print s[0]
    sage: # little hack - wyłuskanie wszytkich parametrów od których zalezy rozwiązanie
    sage: lvar=uniq(flatten(map(lambda w: w.variables(), s[0])))
    sage: for x in [x1,x2]:
    ...       lvar.remove(x)
    sage: for rvar in lvar:
    ...       var(rvar)
    sage: print lvar
    sage: ss=[ map(lambda w: w.rhs().subs({rvar:x}), s[0]) for x in srange(-1,1,0.1) ]
    sage: point(ss,color='green',figsize=5)




