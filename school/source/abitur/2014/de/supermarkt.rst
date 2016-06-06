Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  In einem Supermarkt erhalten Kunden abhängig vom Wert ihres Einkaufs
  eine bestimmte Anzahl von Päckchen mit Tierbildern, die in ein Sammelalbum
  eingeklebt werden können. Jedes Päckchen enthält fünf Bilder. Im
  Sammelalbum sind Plätze für insgesamt 200 verschiedene Bilder vorgesehen.
  Die Bilder werden jeweils in großer Stückzahl mit der gleichen Häufigkeit
  produziert und auf die Päckchen zufällig verteilt, wobei sich die Bilder in
  einem Päckchen nicht unterscheiden müssen.  

  a) Begründen Sie, dass der Term

     .. math::

       \frac{200\cdot199\cdot198\cdot197\cdot196}{200^5}

     die Wahrscheinlichkeit dafür beschreibt, dass sich in einem Päckchen fünf
     verschiedene Tierbilder befinden.

  b) Einem Jungen fehlen in seinem Sammelalbum noch 15 Bilder. Er geht
     mit seiner Mutter zum Einkaufen und erhält anschließend zwei Päckchen
     mit Tierbildern. Bestimmen Sie die Wahrscheinlichkeit dafür, dass die
     beiden Päckchen nur Bilder enthalten, die der Junge bereits in seinem
     Sammelalbum hat.

  Bei Kindern besonders beliebt sind die 3D-Bilder, auf denen die Tiere
  dreidimensional erscheinen. 20 der 200 für ein Sammelalbum vorgesehenen
  Bilder sind 3D-Bilder.

  c) Ermitteln Sie, wie viele Päckchen ein Kind mindestens benötigt, um mit
     einer Wahrscheinlichkeit von mehr als 99 % mindestens ein 3D-Bild zu
     erhalten.


**Lösung zu Teil a**

Das erste Bild, das der Junge ansieht ist logischerweise zu 100\% (=
:math:`\frac{200}{200}`) ein neues Bild. Das zweite Bild ist verschieden, falls
es nicht identisch mit dem ersten ist. Die Wahrscheinlichkeit dass das zweite
Bild verschieden vom ersten ist beträgt also :math:`\frac{199}{200}`. Das
dritte Bild ist, vorausgesetzt die ersten beiden Bilder unterscheiden sich, zu
einer Wahrscheinlichkeit von :math:`\frac{198}{200}` verschieden von den
ersten beiden. Diese Logik lässt sich bis zum fünften Bild und noch weiter
fortsetzen. Um die Wahrscheinlichkeit dafür zu erhalten, dass sich alle Bilder
in einem Päckchen unterscheiden, müssen die einzelnen Wahrscheinlichkeiten
aufmultipliziert werden und es ergibt sich für 5 Bilder:

.. math::

  \frac{200\cdot199\cdot198\cdot197\cdot196}{200^5}

Mit Sage lässt sich dieser Ausdruck als Dezimalwert zu 95\% nähern:

.. sagecellserver::

  sage: print "Die Wahrscheinlichkeit 5 verschiedene Bilder zu erhalten liegt bei", float(200*199*198*197*196/200**5)

.. end of output

Dieser Wert kann empirisch durch eine Simulation mit Sage bestätigt werden:

.. sagecellserver::

  sage: import random
  sage: bilder = range(200)
  sage: iterations = 100000
  sage: suc = 0
  sage: for _ in range(iterations):
  ...       a = set()
  ...       for _ in range(5):
  ...           a.add(random.choice(bilder))
  ...       if len(a) == 5:
  ...           suc +=1
  sage: print "Empirische Wahrscheinlichkeit 5 verschiedene Bilder zu erhalten:", float(suc/iterations)

.. end of output

**Lösung zu Teil b**

Die Wahrscheinlichkeit dafür, dass ein Bild, das der Junge aus einem der
beiden Päckchen zieht, sich bereits in seiner Sammlung befindent liegt bei

.. math::

  \frac{200-15}{200}=\frac{185}{200}.

Die Wahrscheinlichkeit dafür, dass alle 10 Bilder, die der Junge aus den beiden
Päckchen zieht, sich bereits in seiner Sammlung befinden, erhält man wieder
durch Multiplikation:

.. math::

  P=\left(\frac{185}{200}\right)^{10}

Mit Sage geben wir wieder einen gerundeten Dezimalwert aus

.. sagecellserver::

  sage: print "Wahrscheinlichkeit kein neues Bilder zu erhalten:", float((185/200)**10)

.. end of output

und überprüfen diesen Wert empirisch

.. sagecellserver::

  sage: iterations = 100000
  sage: besitz = range(185)
  sage: nosuccess = 0
  sage: for _ in range(iterations):
  ...       for _ in range(10):
  ...           bild = random.choice(bilder)
  ...           if not bild in besitz:
  ...               nosuccess += 1
  ...               break
  sage: print "Empirische Wahrscheinlichkeit kein neues Bild zu erhalten:", float(1 - nosuccess/iterations)

.. end of output

**Lösung zu Teil c**

Die Wahrscheinlichkeit, dass ein Bild kein 3D-Bild ist, liegt bei

.. math::

  \frac{200-20}{200}=\frac{9}{10}

Die Wahrscheinlichkeit dafür, dass von :math:`n` Bildern keines ein 3D-Bild
ist, liegt entsprechend bei

.. math::

  P(n)=\left(\frac{9}{10}\right)^n

Die Aufgabe lautet nun :math:`n` so zu bestimmen, dass der
Wahrscheinlichkeitsterm kleiner als 1\% ist. Wir lösen also die Gleichung

.. math::

  P(n)=0{,}01

mit Hilfe des Logarithmus zu 

.. math::

  n=43{,}7

Da die Bilder nur in 5er-Päckchen zu erhalten sind, benötigt man 9 Päckchen
um mit einer Wahrscheinlichkeit von über 99\% mindestens ein 3D-Bild zu ziehen.
Wir überprüfen dies wieder mit Sage.

.. sagecellserver::

  sage: iterations = 100000
  sage: dreiDBilder = range(20)
  sage: success = 0
  sage: for _ in range(iterations):
  ...       for _ in range(45):
  ...           bild = random.choice(bilder)
  ...           if bild in dreiDBilder:
  ...               success += 1
  ...               break
  sage: print "Empirische Wahrscheinlichkeit mindestens ein 3d-Bild zu erhalten:", float(success/iterations)

.. end of output
