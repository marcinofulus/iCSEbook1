Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  Um Geld für die Ausstattung des örtlichen Kindergartens einzunehmen,
  veranstaltet der Supermarkt ein Gewinnspiel. Die fünf Sektoren des dabei
  eingesetzten Glücksrads sind von 1 bis 5 durchnummeriert. Die Größe der
  Sektoren ist direkt proportional zum Zahlenwert der Nummern; beispielsweise
  ist der Sektor mit der Nummer 3 dreimal so groß wie der Sektor mit der
  Nummer 1. Nachdem der Spieler sechs Euro bezahlt hat, wird das Glücksrad
  einmal gedreht. Erzielt der Spieler eine der Nummern 1 bis 4, so wird
  ihm der zugehörige Zahlenwert als Betrag in Euro ausgezahlt, erzielt er die
  Nummer 5, so erhält er eine Eintrittskarte für einen Freizeitpark im Wert von
  fünfzehn Euro.

  a) Bestimmen Sie die Größe des Öffnungswinkels des Sektors mit der
     Nummer 1 sowie die Wahrscheinlichkeit dafür, dass ein Spieler bei einem
     Spiel eine Eintrittskarte gewinnt.

  b) Berechnen Sie den Erwartungswert der Auszahlung pro Spiel, wenn der
     Gewinn einer Eintrittskarte mit einer Auszahlung von fünfzehn Euro
     gleichgesetzt wird. Interpretieren Sie das Ergebnis.

  c) Der Supermarkt muss für jede Eintrittskarte nur zehn Euro an den
     Freizeitpark bezahlen. Damit ist bei der Spielaktion ein finanzieller
     Überschuss zu erwarten, der an den örtlichen Kindergarten gespendet werden
     soll. Ermitteln Sie den zu erwartenden Überschuss, wenn man davon
     ausgeht, dass das Spiel insgesamt 6000-mal durchgeführt wird.


**Lösung zu Teil 1a**

Der Öffnungswinkel des Sektors 1 lässt sich durch Lösung mit der folgenden
Gleichung bestimmen:

.. math::

  x+2x+3x+4x+5x &=360°\Leftrightarrow\\
  x &=24°

Die Wahrscheinlichkeit für den Gewinn des Gutscheins liegt bei

.. math::

  \frac{5}{15}=\frac{1}{3}

**Lösung zu Teil 1b**

Der Erwartungswert berechnet sich mit der Formel

.. math::

  E=\sum\limits_{X}P(X)\cdot X.

Der Wert von X ist dabei der Gewinn beim Spielen. Wir müssen hierfür also den
Spieleinsatz berücksichtigen. Unter der Annahme, dass der Gewinn des Gutscheins
wie eine Auszahlung von 15 Euro zu behandeln ist, erhalten wir

.. math::

  E=\frac{1}{15}\cdot(-5)+\frac{2}{15}\cdot(-4)+\frac{3}{15}\cdot(-3)+\frac{4}{15}\cdot(-2)+\frac{5}{15}\cdot9=1.

Ein Spieler macht also im Schnitt pro Runde einen Euro Gewinn.

**Lösung zu Teil 1c**

Im Vergleich zu Teil b) ändert sich in der Formel für den Erwartungswert
lediglich das Vorzeichen aller Gewinne, da der Supermarkt Gewinn macht, wenn
der Spieler verliert und umgekehrt, und der Betrag des letzten Gewinns.
Wir erhalten

.. math::

  E=\frac{1}{15}\cdot5+\frac{2}{15}\cdot4+\frac{3}{15}\cdot3+\frac{4}{15}\cdot2+\frac{5}{15}\cdot(-4)=\frac{2}{3}\approx0,67.

Der Supermarkt macht also im Mittel pro Spiel etwa 67 Cent Gewinn.
Bei 6000 Spielen müsste in etwa ein Überschuss von

.. math::

  6000\cdot\frac{2}{3}\mathrm{Euro}=4000\mathrm{Euro}

für den Kindergarten entstehen. Bei einer derart großen Wiederholungsanzahl
dürfte das tatsächliche Ergebnis auch nicht allzu sehr von dem Erwartungswert
abweichen.

Wir simulieren das Spiel mit Sage aus Sicht des Supermarkts:



.. sagecellserver::

  sage: import random
  sage: def spielen():
  ...       winkel = 24
  ...       ergebnis = random.random()*360
  ...       if ergebnis < winkel:
  ...           return 5
  ...       elif ergebnis < 3*winkel:
  ...           return 4
  ...       elif ergebnis < 6*winkel:
  ...           return 3
  ...       elif ergebnis < 10*winkel:
  ...           return 2
  ...       else:
  ...           return -4
  sage: iterations = 6000
  sage: ueberschuss = 0
  sage: tickets = 0
  sage: for _ in range(iterations):
  ...       spiel = spielen()
  ...       if spiel == -4:
  ...           tickets += 1
  ...       ueberschuss += spiel
  sage: print "Überschuss für den Kindergarten:", ueberschuss, "Euro"
  sage: print "Erwartungswert:", float(ueberschuss/iterations), "Euro"
  sage: print "Gewinnwahrscheinlichkeit Ticket:", float(tickets/iterations)


.. end of output

