Po co się męczyć - niech "pomyśli" komputer!
============================================

Zadanie 2
---------

Dane są liczby: :math:`a= \frac{1}{27}`, :math:`b=\frac{\log\left(64\right)}{\log\left(\frac{1}{4}\right)}`, :math:`c=\frac{\log\left(27\right)}{\log\left(\frac{1}{3}\right)}`. Mamy policzyć iloczyn. 

Wystarczy poprosić system algebry komputerowej i od razu mamy wynik:



.. sagecellserver::

    a = 1/27
    b = log(64,base=1/4)
    c = log(27,base=1/3)
    (a*b*c).radical_simplify()

.. admonition:: Jak to działa?

  Korzystamy tu z funkcji `log` z Sage - jest to algebraiczna
  implementacja logarytmu, która zna pewne zasady upraszczania np.:

  .. sagecellserver::

      show(  log(64,base=1/4) )



  Zauważmy, że końcowe wyrażenie to nie jest automatycznie
  uproszczone, jeżeli nie nakłonimy naszego systemu do tego metodą
  `.radical_simplify`.


Zadanie 4
---------

Równość 

.. math::

   -\frac{m}{\sqrt{5} - 5} = \frac{\sqrt{5} + 1}{5}  

zachodzi dla:  m=5, m=4, m=1, m = −5.


System algebry komputerowej z chęcią rozwiąże również i taką równość:

.. sagecellserver::

   var('m')
   solve( m/(5-sqrt(5))==(5+sqrt(5))/5,m)


Zadanie 5
---------

Pytanie jest o liczbę rozwiązań układu równań. Ponownie możemy uzyskać
odpowiedź od systemu:

.. sagecellserver::

   var('x,y,m')
   solve( [x-y==3,2*x+0.5*y==4],[x,y])



Zadanie 7
---------

Równanie też rozwiązujemy natychmiast:

.. sagecellserver::

   var('x')
   solve( (x-1)/(x+1)==x-1,x)
