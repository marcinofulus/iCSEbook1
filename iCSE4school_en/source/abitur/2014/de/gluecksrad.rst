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

     *(Teilergebnis: Größe des Öffnungswinkels: 24°)*

  b) Berechnen Sie den Erwartungswert der Auszahlung pro Spiel, wenn der
     Gewinn einer Eintrittskarte mit einer Auszahlung von fünfzehn Euro
     gleichgesetzt wird. Interpretieren Sie das Ergebnis.

  c) Der Supermarkt muss für jede Eintrittskarte nur zehn Euro an den
     Freizeitpark bezahlen. Damit ist bei der Spielaktion ein finanzieller
     Überschuss zu erwarten, der an den örtlichen Kindergarten gespendet werden
     soll. Ermitteln Sie den zu erwartenden Überschuss, wenn man davon
     ausgeht, dass das Spiel insgesamt 6000-mal durchgeführt wird.


**Lösung zu Teil 1a**

Der Öffnungswinkel des Sektors 1 lässt sich mit Hilfe der folgenden
Gleichung bestimmen:

.. math::

  x+2x+3x+4x+5x =360°\quad\Leftrightarrow\quad x=24°

Die Wahrscheinlichkeit für den Gewinn der Eintrittskarte liegt bei

.. math::

  \frac{5}{1+2+3+4+5}=\frac{5}{15}=\frac{1}{3}.

**Lösung zu Teil 1b**

Der Erwartungswert berechnet sich mit der Formel

.. math::

  E=\sum\limits_{X}P(X)\cdot X,

wobei :math:`X` der Auszahlungsbetrag ist. Unter der Annahme, dass der Gewinn der Eintrittskarte
wie eine Auszahlung von 15 Euro zu behandeln ist, erhalten wir

.. math::

  E=\frac{1}{15}+\frac{2}{15}\cdot2+\frac{3}{15}\cdot3+\frac{4}{15}\cdot4+\frac{5}{15}\cdot15=7.

Ein Spieler bekommt also im Schnitt pro Runde 7 Euro ausbezahlt.

Mit Sage lässt sich eine entsprechende Simulation durchführen.

.. sagecellserver::

   sage: import random
   sage: gewinne = [1]*1+[2]*2+[3]*3+[4]*4+[15]*5
   sage: spiele = 6000
   sage: gewinnsumme = 0
   sage: for _ in range(spiele):
   ...       gewinnsumme = gewinnsumme+random.choice(gewinne)
   sage: print "Erwartungswert = {:4.2f} Euro".format(float(gewinnsumme)/spiele)

.. end of output

**Lösung zu Teil 1c**

Im Vergleich zu Teil b muss nun statt des Auszahlungsbetrags der Gewinn
für den Supermarkt eingesetzt werden, also :math:`5`, :math:`4`,
:math:`3`, :math:`2` und :math:`-4`. Wir erhalten somit für den
Erwartungswert

.. math::

  E=\frac{1}{15}\cdot5+\frac{2}{15}\cdot4+\frac{3}{15}\cdot3+\frac{4}{15}\cdot2+\frac{5}{15}\cdot(-4)=\frac{2}{3}.

Der Supermarkt macht also im Mittel pro Spiel etwa 67 Cent Gewinn.
Bei 6000 Spielen müsste in etwa ein Überschuss von

.. math::

  6000\cdot\frac{2}{3}\mathrm{Euro}=4000\mathrm{Euro}

für den Kindergarten entstehen. Bei einer derart großen Wiederholungsanzahl
dürfte das tatsächliche Ergebnis auch nicht allzu sehr von dem Erwartungswert
abweichen.

Wir simulieren das Spiel mit Sage aus Sicht des Supermarkts oder des
Kindergartens.

.. sagecellserver::

  sage: gewinne = [5]*1+[4]*2+[3]*3+[2]*4+[-4]*5
  sage: spiele = 6000
  sage: ueberschuss = 0
  sage: for _ in range(spiele):
  ...       ueberschuss = ueberschuss+random.choice(gewinne)
  sage: print "Überschuss für den Kindergarten: {} Euro".format(ueberschuss)
  sage: print "Durchschnittlicher Gewinn pro Spiel für den Kindergarten: {:4.2f} Euro".format(
  ...         float(ueberschuss/spiele))


.. end of output

Einen Eindruck von der Bandbreite der Ergebnisse liefert eine Simulation,
die die 6000 Spiele oft wiederholt und die Häufigkeit der Überschüsse
in einem Histogram aufträgt.

.. sagecellserver::

  sage: import matplotlib.pyplot as plt
  sage: versuche = 500
  sage: spiele = 6000
  sage: ueberschuesse = []
  sage: for versuch in range(versuche):
  ...       ueberschuss = 0
  ...       for _ in range(spiele):
  ...           ueberschuss = ueberschuss+random.choice(gewinne)
  ...       ueberschuesse.append(ueberschuss)
  sage: plt.hist(ueberschuesse, bins=30)
  sage: plt.show()


.. end of output
