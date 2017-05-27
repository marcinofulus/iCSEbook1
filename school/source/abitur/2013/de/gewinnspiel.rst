Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Um Geld für die Ausstattung des Spielbereichs in der Kinderstation des
  Krankenhauses einzunehmen, wird ein Gewinnspiel angeboten. Nachdem der
  Spieler zwei Euro bezahlt hat, werden aus einem Behälter, in dem sich drei
  rote, drei grüne und drei blaue Kugeln befinden, drei Kugeln ohne Zurücklegen
  zufällig entnommen. Haben die drei entnommenen Kugeln die gleiche Farbe, so
  gewinnt der Spieler und bekommt einen bestimmten Geldbetrag ausgezahlt;
  ansonsten verliert er und erhält keine Auszahlung. Anschließend werden die
  gezogenen Kugeln in den Behälter zurückgelegt.
  
  a) Zeigen Sie, dass bei einem Spiel die Wahrscheinlichkeit für einen Gewinn
     :math:`\frac{1}{28}` beträgt.
  b) Berechnen Sie, welcher Geldbetrag im Fall eines Gewinnes ausgezahlt werden
     muss, damit im Mittel eine Einnahme von 1,25 Euro pro Spiel für die
     Ausstattung des Spielbereiches erwartet werden kann.

**Lösung zu Teil a**

Die Wahrscheinlichkeit drei Kugeln mit derselben Farbe zu ziehen, kann wie folgt
berechnet werden. Zuerst befinden sich 9 Kugeln in dem Behälter. Nun wird eine
Kugel zufällig gezogen. Im Behälter befinden sich nun nur noch acht Kugeln.
Zwei dieser Kugeln haben jedoch dieselbe Farbe wie die bereits gezogene Kugel.
Die Wahrscheinlichkeit für den nächsten Zug, eine der beiden Kugeln zu ziehen,
ist also :math:`\frac{2}{8}`. Danach muss noch die letzte Kugel mit der selbigen
Farbe aus dem Behälter mit den verbleibenden sieben Kugeln gezogen werden. Die
Wahrscheinlichkeit dafür beträgt :math:`\frac{1}{7}`.

Die Gesamtwahrscheinlichkeit zu gewinnen ist somit:

.. math::

  \frac{2}{8} \cdot \frac{1}{7} = \frac{1}{28} \approx 0.0357\,.

Mit Sage kann dieses Glücksspiel simuliert werden. Dazu mischen wir die Kugeln
und betrachten die Farbe der ersten drei Kugeln.

.. sagecellserver::

  sage: from random import choice

  sage: def spiel():
  sage:    urne = ['r', 'r', 'r', 'g', 'g', 'g', 'b', 'b', 'b']
  sage:    shuffle(urne)
  sage:    return urne[0] == urne[1] == urne[2]

  sage: spiele = 100000
  sage: erfolge = 0

  sage: for _ in range(spiele):
  sage:    if spiel():
  sage:        erfolge = erfolge+1

  sage: print("In {} von {} Fällen hatten die drei Kugeln die gleiche Farbe.".format(erfolge, spiele))

.. end of output

**Lösung zu Teil b**

Die erwarteten Einnahmen :math:`E` pro Spiel errechnen sich für einen Einsatz
von 2 Euro pro Spiel und einem Gewinn von :math:`x` Euro nach:

.. math:: 

  E(x) = 2 - \frac{1}{28} \cdot x\,.

Wenn die Einnahmen pro Spiel 1,25 Euro betragen sollen, also
:math:`E(x)=1{,}25`, folgt :math:`x=21`. Der auszuzahlende Gewinn muss also 21
Euro betragen.

Mit Sage können wir testen, wie sich ein Gewinn von 21 Euro auf die Einnahmen
pro Spiel auswirkt.

.. sagecellserver::

  sage: spiele = 100000
  sage: einsatz = 2
  sage: gewinn = 21
  sage: einnahmen = 0

  sage: for _ in range(spiele):
  sage:     einnahmen = einnahmen+einsatz
  sage:     if spiel():
  sage:         einnahmen = einnahmen-gewinn

  sage: print("Es wurden {} Spiele durchgeführt und insgesamt {} Euro eingenommen. Dies entspricht {:.2f} Euro pro Spiel".format(
  sage:        spiele, einnahmen, float(einnahmen/spiele)))

.. end of output
