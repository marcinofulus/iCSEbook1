Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  Bei der Wintersportart Biathlon wird bei jeder Schießeinlage auf fünf Scheiben
  geschossen. Ein Biathlet tritt bei einem Einzelrennen zu einer Schießeinlage
  an, bei der er auf jede Scheibe einen Schuss abgibt. Diese Schießeinlage wird
  modellhaft durch eine Bernoullikette mit der Länge 5 und der
  Trefferwahrscheinlichkeit :math:`p` beschrieben.

  a) Geben sie für die folgenden Ereignisse A und B jeweils einen Term an, der
     die Wahrscheinlichkeit eines Ereignisses in Abhängigkeit von :math:`p`
     beschreibt.  
   | A: „Der Biathlet trifft bei genau vier Schüssen.“   
   | B: „Der Biathlet trifft nur bei den ersten beiden Schüssen.“

  b) Erläutern Sie anhand eines Beispiels, dass die modellhafte Beschreibung der
     Schießeinlage durch eine Bernoullikette unter Umständen der Realität nicht
     gerecht wird.

**Lösung zu Teil a**     

Wir beginnen mit der Wahrscheinlichkeit mit der Aussage B zutrifft. Da die
Wahrscheinlichkeit eines Treffers durch :math:`p` gegeben ist, ist die
Wahrscheinlichkeit nicht zu treffen gleich :math:`1-p`. Damit ergibt sich die
Wahrscheinlichkeit, dass es sich genau bei den ersten beiden Schüssen um
Treffer handelt, zu :math:`p^2(1-p)^3`. Wir überprüfen diese Aussage durch eine 
Simulation. Dabei dürfen wir allerdings keine perfekte Übereinstimmung erwarten.

.. sagecellserver::

    sage: p = 0.7
    sage: rounds = 1000000
    sage: goal = [True, True, False, False, False]
    sage: successes = 0
    sage: for round in range(rounds):
    ...       result = [random() < p for _ in range(5)]
    ...       if result == goal:
    ...           successes = successes+1
    sage: print N(successes/rounds), p^2*(1-p)^3

.. end of output

Wenden wir uns nun der Aussage A zu. Die Wahrscheinlichkeit für eine ganz
bestimmte Sequenz von Treffern und Fehlschüssen ist in Analogie zur vorigen
Überlegung bei nun vier Treffern gleich :math:`p^4(1-p)`. Allerdings ist nicht
festgelegt, der wievielte Schuss ein Fehlschuss sein soll. Die Zahl der
Möglichkeiten, :math:`M` Ereignisse auf :math:`N` Positionen zu verteilen,
ist durch den Binomialkoeffizenten

.. math::

   \binom{N}{M} = \frac{N!}{M!(N-M)!}

gegeben. In unserem Fall ergibt sich somit für die gesuchte Wahrscheinlichkeit

.. math::

   \binom{5}{4}p^4(1-p) = 5p^4(1-p).

Nachdem wir kurz den hier verwendeten Binomialkoeffizienten verifiziert haben

.. sagecellserver::

    sage: binomial(5, 4)

.. end of output

überprüfen wir unser Ergebnis für die Wahrscheinlichkeit wieder mit Hilfe einer 
Simulation:

.. sagecellserver::

    sage: p = 0.7
    sage: rounds = 1000000
    sage: successes = 0
    sage: for round in range(rounds):
    ...       result = [random() < p for _ in range(5)]
    ...       if sum(result) == 4:
    ...           successes = successes+1
    sage: print N(successes/rounds), 5*p^4*(1-p)

.. end of output

**Lösung zu Teil b**

Die Bernoullikette nimmt an, dass die Trefferwahrscheinlichkeit für jeden
Schuss gleich ist. In Wirklichkeit kann es aber zum Beispiel sein, dass die
Trefferwahrscheinlichkeit nach einem Fehlschuss abnimmt.
