.. _matura2015_r10.rst:

Czworokąt wpisany w okrąg z wykorzystaniem algebry komputerowej
---------------------------------------------------------------

.. image:: matura2015/matura2015_r10.png
   :align: center


Rozwiązanie klasyczne
=====================

Szkolny sposób rozwiązania tego zadania korzysta z dwóch twierdzeń. Po
pierwsze suma kątów naprzeciwległych w czworokącie opisanym na okręgu
wynosi :math:`\pi`. Po drugie można zastosować `twierdzenie cosinusów
<https://pl.wikipedia.org/wiki/Twierdzenie_cosinus%C3%B3w>`_ dla
trójkątów :math:`ABC` i :math:`ACD`. 

Oznaczając dla zwięzłości literami długości boków:
:math:`|AB|=a,|BC|=b,|CD|=c,|DA|=d,|AC|=x` oraz kąty
:math:`\sphericalangle ABC=\alpha` i :math:`\sphericalangle
CDA=\pi-\alpha` możemy w Sage napisać dla powyższych trójkątów dwa
równania:


.. sagecellserver::

   var('a,b,alpha,c,d,x')
   eq1 = a^2 + b^2 - 2*a*b*cos(alpha) == x^2 
   eq2 = c^2 + d^2 - 2*c*d*cos(pi-alpha) == x^2
   table([[eq1],[eq2]])


.. only:: latex

    Otrzymujemy: 

      - :math:`-2 \, a b \cos\left(\alpha\right) + a^{2} + b^{2} = x^{2}`
      - :math:`-2 \, c d \cos\left(\pi - \alpha\right) + c^{2} + d^{2} = x^{2}`


Drugie równanie można uprościć i otrzymamy układ równań z dwoma
niewiadomymi:

.. sagecellserver::

   eq2 = eq2.simplify()
   table([[eq1],[eq2]])

.. only:: latex

    Otrzymujemy: 

      - :math:`-2 \, a b \cos\left(\alpha\right) + a^{2} + b^{2} = x^{2}`
      - :math:`2 \, c d \cos\left(\alpha\right) + c^{2} + d^{2} = x^{2}`



Ponieważ interesuje nas tylko wartość długości przekątnej :math:`x`
możemy wyeliminować z powyższych równań :math:`\cos \alpha`. Wynik
otrzymamy natychmiast:

.. sagecellserver::

   (eq1*c*d + eq2*a*b).solve(x)[1].rhs().subs({a:2,b:3,c:4,d:5})


.. only:: latex

    Otrzymujemy: `sqrt(253/13)`



.. admonition:: Jak to działa?

   Wykonaj powyższe polecenie obcinająć kolejne wyrażenia po
   "kropkach" od lewej by przekonać się jak to działa krok po kroku:

   .. code:: python 
  
      (eq1*c*d + eq2*a*b)
      (eq1*c*d + eq2*a*b).solve(x)
      (eq1*c*d + eq2*a*b).solve(x)[1]
      (eq1*c*d + eq2*a*b).solve(x)[1].rhs()




Rozwiązanie alternatywne
========================

Przypuścmy jednak, że nie pamiętamy ani twierdzenia cosinusów ani nie
znamy własności czworokątów wpisanych w okrąg. Można by pokusić się o
napisanie układu równań spełnionych przez współrzędne wszystkich
punktów oraz promień okręgu, który jest też nieznany!. W sumie mamy
:math:`8+1=9` niewiadomych! Wynika z tego, że będziemy potrzebowali
dziewięciu równań. Współrzędne każdego z punków spełniają równanie
okręgu, co daje nam już cztery zależności. Następnie, ponieważ znamy
odleglości pomiędzy kolejnymi wspólrzędnymi to mamy znowu cztery
równości. Brakuje jeszcze jednej. Zauważmy, że nasz czworokąt wpisany
w okrag możemy obracać o dowolny kąt względem środka okręgu. Wybierzmy
tylko jedną orientację - na przykład taką w której pierwszy punkt leży
na osi :math:`X` - co nam da brakujące równanie :math:`y_0=0`. 

Wszyskie te rówania zapiszemy od razu w Sage:

.. sagecellserver::

   var('r,x0,y0,x1,y1,x2,y2,x3,y3')
   eqs=[x0^2+y0^2==r^2,\
    x1^2+y1^2==r^2,\
    x2^2+y2^2==r^2,\
    x3^2+y3^2==r^2,\
    (x1-x0)^2+(y1-y0)^2==2^2,\
    (x2-x1)^2+(y2-y1)^2==3^2,\
    (x3-x2)^2+(y3-y2)^2==4^2,\
    (x0-x3)^2+(y0-y3)^2==5^2,\
    y0==0]

   table(list(enumerate(eqs)))


.. only:: latex

    Otrzymujemy:

       - :math:`x_{0}^{2} + y_{0}^{2} = r^{2}`,
       - :math:`x_{1}^{2} + y_{1}^{2} = r^{2}`,
       - :math:`x_{2}^{2} + y_{2}^{2} = r^{2}`,
       - :math:`x_{3}^{2} + y_{3}^{2} = r^{2}`,
       - :math:`{\left(x_{0} - x_{1}\right)}^{2} + {\left(y_{0} - y_{1}\right)}^{2} = 4`,
       - :math:`{\left(x_{1} - x_{2}\right)}^{2} + {\left(y_{1} - y_{2}\right)}^{2} = 9`,
       - :math:`{\left(x_{2} - x_{3}\right)}^{2} + {\left(y_{2} - y_{3}\right)}^{2} = 16`,
       - :math:`{\left(x_{0} - x_{3}\right)}^{2} + {\left(y_{0} - y_{3}\right)}^{2} = 25`,
       - :math:`y_{0} = 0`

  
Pozostaje rozwiązać układ dziewięciu równań wielomianowych i otrzymamy
rozwiązanie zadania. Bez pomocy algebry komputerowej powyższy układ
równań nie wygląda zachęcająco. Okazuje się, że nawet dla komputera
jest on problemem i wymaga dość wyroafinowanych technik. Jednak po
chwili otrzymamy wynik:

.. sagecellserver::

   sols = solve(eqs,[x0,y0,x1,y1,x2,y2,x3,y3,r],solution_dict=True)
   print(((x0-x2)^2+(y0-y2)^2).subs(sols[0]).canonicalize_radical() )


.. only:: latex

    Otrzymujemy: `253/13`


Udało nam się otrzymać rozwiązanie (ściśle mówiąc kwadrat rozwiązania)!


