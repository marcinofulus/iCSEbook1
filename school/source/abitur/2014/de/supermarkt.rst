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
     einer Wahrscheinlichkeit von mehr als 99\% mindestens ein 3D-Bild zu
     erhalten.


**Lösung zu Teil a**

Um fünf verschiedene Bilder zu erhalten, kann man beim ersten Bild aus allen
200 Bildern wählen, beim zweiten Bild nur noch aus 199 Bildern usw. Die jeweiligen
Wahrscheinlichkeiten ergeben sich durch Division durch die Anzahl verschiedener Bilder,
also 200. Die Wahrscheinlichkeit, dass sich fünf Bilder unterscheiden, ergibt sich
durch Multiplikation der entsprechenden Wahrscheinlichkeiten:

.. math::

  \frac{200\cdot199\cdot198\cdot197\cdot196}{200^5}

Wertet man diesen Ausdruck mit Sage aus, ergibt sich

.. sagecellserver::

  sage: print "Die Wahrscheinlichkeit 5 verschiedene Bilder zu erhalten liegt bei {:4.1%}.".format(
  ...         float(200*199*198*197*196/200**5))

.. end of output

Dieser Wert kann empirisch durch eine Simulation mit Sage bestätigt werden:

.. sagecellserver::

  sage: from numpy.random import randint
  sage: iterationen = 100000
  sage: verschiedene = 0
  sage: for _ in range(iterationen):
  ...       a = set(randint(200, size=5))
  ...       if len(a) == 5:
  ...           verschiedene +=1
  sage: print "Empirische Wahrscheinlichkeit 5 verschiedene Bilder zu erhalten: {:4.1%}".format(
  ...         float(verschiedene)/iterationen)

.. end of output

**Lösung zu Teil b**

Die Wahrscheinlichkeit, dass sich ein Bild, das der Junge aus einem der
beiden Päckchen zieht, bereits in seiner Sammlung befindet beträgt

.. math:

  \frac{200-15}{200}=\frac{37}{40}.

Die Wahrscheinlichkeit, dass sich alle 10 Bilder, die der Junge aus den beiden
Päckchen zieht, bereits in seiner Sammlung befinden, erhält man wieder
durch Multiplikation:

.. math::

  P=\left(\frac{37}{40}\right)^{10}

Mit Sage kann man diesen Ausdruck auswerten

.. sagecellserver::

  sage: print "Wahrscheinlichkeit kein neues Bild zu erhalten: {:4.1%}".format(float((37/40)**10))

.. end of output

und mit einer Simulation überprüfen

.. sagecellserver::

  sage: iterationen = 100000
  sage: besitz = set(range(185))
  sage: kein_neues = 0
  sage: for _ in range(iterationen):
  ...       bilder = set(randint(200, size=10))
  ...       if bilder.issubset(besitz):
  ...           kein_neues = kein_neues+1
  sage: print "Empirische Wahrscheinlichkeit kein neues Bild zu erhalten: {:4.1%}".format(
  ...         float(kein_neues/iterationen))

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
Wahrscheinlichkeitsterm kleiner als 1% ist. Wir lösen also die Gleichung

.. math::

  P(n)=0{,}01

und erhalten

.. math::

  n= \frac{\log(0{,}01)}{\log(0{,}9)} = 43{,}7.

Da die Bilder nur in 5er-Päckchen zu erhalten sind, benötigt man 9 Päckchen,
um mit einer Wahrscheinlichkeit von über 99% mindestens ein 3D-Bild zu ziehen.
Wir überprüfen dies wieder durch Simulation mit Sage.

.. sagecellserver::

  sage: nr_paeckchen = 9
  sage: bilder_je_paeckchen = 5
  sage: iterationen = 100000
  sage: dreiDBilder = set(range(20))
  sage: dreiD_gefunden = 0
  sage: for _ in range(iterationen):
  ...       meinebilder = set(randint(200, size=nr_paeckchen*bilder_je_paeckchen))
  ...       if not meinebilder.isdisjoint(dreiDBilder):
  ...           dreiD_gefunden = dreiD_gefunden+1
  sage: print "Empirische Wahrscheinlichkeit mindestens ein 3D-Bild zu erhalten: {:4.1%}".format(
  ...         float(dreiD_gefunden/iterationen))

.. end of output
