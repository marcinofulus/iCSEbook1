.. -*- coding: utf-8 -*-


Metoda Eliminacji Gaussa dla układów równań
-------------------------------------------

Rozważmy układ trzech równań. Za pomocą operacji dodawania do siebie wielokrotności równań, oraz ich przestawiania doprowadzamy układ do postaci schodkowej.

.. admonition:: **Definicja**

   Układ równań w postaci schodkowej to taki w którym współczynnki w
   :math:`n`-tym równaniu są zero dla zmiennych
   :math:`x_1,...,x_{n-1}`.
                
.. code-block:: python

    sage: var('x1 x2 x3')
    sage: eq1=x1+2*x2+2*x3==4
    sage: eq2=x1+3*x2+3*x3==5
    sage: eq3=2*x1+6*x2+5*x3==6
    sage: html.table([eq1,eq2,eq3])


.. MATH::

    \begin{cases}
    x_{1} + 2 \, x_{2} + 2 \, x_{3} = 4 \\
    x_{1} + 3 \, x_{2} + 3 \, x_{3} = 5 \\
    2 \, x_{1} + 6 \, x_{2} + 5 \, x_{3} = 6
    \end{cases}

.. end of output

.. code-block:: python

    sage: eq2=eq2-eq1
    sage: #html.table([eq1,eq2,eq3])
    sage: show(vector([eq1,eq2,eq3]).column())


.. MATH::

    \begin{cases}
    x_{1} + 2 \, x_{2} + 2 \, x_{3} = 4 \\
    x_{2} + x_{3} = 1 \\
    2 \, x_{1} + 6 \, x_{2} + 5 \, x_{3} = 6
    \end{cases}

.. end of output

.. code-block:: python

    sage: eq3=eq3-2*eq1
    sage: #html.table([eq1,eq2,eq3])
    sage: show(vector([eq1,eq2,eq3]).column())


.. MATH::

    \begin{cases}
    x_{1} + 2 \, x_{2} + 2 \, x_{3} = 4 \\
    x_{2} + x_{3} = 1 \\
    2 \, x_{2} + x_{3} = \left(-2\right)
    \end{cases}

.. end of output

.. code-block:: python

    sage: eq3=eq3-2*eq2
    sage: #html.table([eq1,eq2,eq3])
    sage: show(vector([eq1,eq2,eq3]).column())


.. MATH::

    \begin{cases}
    x_{1} + 2 \, x_{2} + 2 \, x_{3} = 4 \\
    x_{2} + x_{3} = 1 \\
    -x_{3} = \left(-4\right)
    \end{cases}

.. end of output

Mnożąc ostatnie równanie przez :math:`-1` dostajemy układ równań w postaci schodkowej:


.. code-block:: python

    sage: eq3=-eq3
    sage: #html.table([eq1,eq2,eq3])
    sage: show(vector([eq1,eq2,eq3]).column())


.. MATH::

    \begin{cases}
    x_{1} + 2 \, x_{2} + 2 \, x_{3} = 4 \\
    x_{2} + x_{3} = 1 \\
    x_{3} = 4
    \end{cases}

.. end of output

Wykonując odpowiednie podstawienia wstecz otrzymujemy:


.. code-block:: python

    sage: html.table( [eq1.subs(eq2.subs(eq3)-4).subs(eq3)-2,eq2.subs(eq3)-4,eq3] )
    

.. math::
   
    \begin{cases}
    x_{1} = 2\\
    x_{2} =-3\\
    x_{3} = 4
    \end{cases}

.. end of output

Sprawdźmy czy odpowiedź jest zgodna z wbudowaną procedurą  ``solve()`` :


.. code-block:: python

    sage: solve([eq1,eq2,eq3],[x1,x2,x3])
    [[x1 == 2, x2 == -3, x3 == 4]]

.. end of output

.. note:: Procedura ``solve`` dla układów równań nieoznaczonych

   Wyobraźmy sobie, że rozwiązujemy układ równań (nie koniecznie
   liniowy) w Sage za pomocą ``solve`` i jako odpowiedź dostajemy
   wyrażenia zależne parametrów ``r1,r2,...``. Jeśli chcemy
   wykorzystać te parametry np. do narysowania rozwiązań to musimy po
   pierwsze zadeklarować zmienne, które odpowiadają tym parametrom. Po
   drugie, ich nazwy są często nieprzewidywalne, dlatego warto mieć
   procedurę, która automatycznie wyciągnie ze wzrorów wszystkie
   zmienne. W poniższym kodzie jest zapisany przykład takiej
   procedury, zachecam do jedo wypróbowania w Sage i zrozumienia:

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




