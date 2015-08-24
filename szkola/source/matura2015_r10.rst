Zadanie 10 - od czworokątu wpisnego w okrąg do baz Gröbnera
-----------------------------------------------------------

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
   html.table([[eq1],[eq2]])

Drugie równanie można uprościć i otrzymamy układ równań z dwoma
niewiadomymi:

.. sagecellserver::

   eq2 = eq2.simplify()
   html.table([[eq1],[eq2]])

Ponieważ interesuje nas tylko wartość długości przekątnej :math:`x`
możemy wyeliminować z powyższych równań :math:`\cos \alpha`. Wynik
otrzymamy natychmiast:

.. sagecellserver::

   (eq1*c*d + eq2*a*b).solve(x)[1].rhs().subs({a:2,b:3,c:4,d:5})

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

   html.table(list(enumerate(eqs)))


Pozostaje rozwiązać układ dziewięciu równań wielomianowych i otrzymamy
rozwiązanie zadania. Bez pomocy algebry komputerowej powyższy układ
równań nie wygląda zachęcająco. Okazuje się, że nawet dla komputera
jest on problemem - poniższa komenda potrzebuje okolo pół minuty by
podać wynik:

.. sagecellserver::

   sols = solve(eqs,[x0,y0,x1,y1,x2,y2,x3,y3,r],solution_dict=True)
   print ((x0-x2)^2+(y0-y2)^2).subs(sols[0]).canonicalize_radical() 

Co gorsza, gdybyśmy inaczej poukładali równania, to komputer "męczył"
by się z tym układem jeszcze dłużej. Sugeruje to, że proste zadanie
maturalne jest wyczerpujące dla komputera. Hmmm - a może po prostu
nieumiejętnie go używamy? Zauważmy, że komenda :code:`solve` jest
procedurą rozwiązującą (a przynajmniej próbującą rozwiązać) dowolny
układ równań. My mamy wszystkie równania w postaci wielomianów -
niewiadome występują tylko w pierwszej i drugiej potędze w
mianowniku. Czy nie ma lepszych - wyspecjalizowanych metod w tym
przypadku?

Bazy Gröbnera
~~~~~~~~~~~~~~

Istnieje bardzo potężne narzędzie umożliwiające uproszczenie układu
równań wielomianowych zwane Bazą Gröbnera. Okazuje się, że z użyciem
algorytmu `Buchbergera
<https://en.wikipedia.org/wiki/Buchberger%27s_algorithm>`_ można
doprowadzić układ wielomianów do takiego, w którym znalezienie
rozwiązania jest bardzo łatwe. Algorytm ten można traktować jako
uogólnienie eliminacji Gaussa dla równań liniowych, na przypadek
wielomianów. Przekonajmy się sami:


.. sagecellserver::

   v = [x0,y0,x1,y1,x2,y2,x3,y3,r]
   R, vP = PolynomialRing(RationalField(), len(v), v).objgens()
   B = R.ideal(eqs).groebner_basis( ) 
   html.table(list(enumerate(B)))


Teraz, można wykonać podstawienia, lub nawet poprosić :code:`solve` do
rozwiązania układu równań, co zostanie wykonane w bardzo krótkim
czasie:

.. sagecellserver::

   sol = solve(map(SR,B),map(SR,vP) ,solution_dict=True)[0]
   print ((x2-x0)^2+(y2-y0)^2).subs(sol).canonicalize_radical()

   pkts = [vector((vars()['x%d'%i].subs(sol),vars()['y%d'%i].subs(sol))) for i in range(4)]
   plt = circle( (0,0), r.subs(sol))
   plt += point( [(vars()['x%d'%i].subs(sol),vars()['y%d'%i].subs(sol)) for i in range(4)],color='red' ,size=30)

   plt += sum([ line( [(0,0), 1/2*(pkts[i]+pkts[(i+1)%4])],color='brown') for i in range(4)] )
   plt += sum([ line( [pkts[i],pkts[(i+1)%4]],color='gray') for i in range(4)] )
   plt += line( [pkts[0],pkts[2]],color='green',thickness=2) 
   plt
