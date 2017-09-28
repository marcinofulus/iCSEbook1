Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  Bei einem Zufallsexperiment wird eine ideale Münze so lange geworfen, bis
  zum zweiten Mal Zahl (:math:`Z`) oder zum zweiten Mal Wappen (:math:`W`) oben liegt. Als
  Ergebnismenge wird festgelegt: :math:`\{ZZ; WW; ZWZ; ZWW; WZZ; WZW\}`.
  
  a) Begründen Sie, dass dieses Zufallsexperiment kein Laplace-Experiment ist.
  
  b) Die Zufallsgröße :math:`X` ordnet jedem Ergebnis die Anzahl der entsprechenden Münzwürfe
     zu. Berechnen Sie den Erwartungswert von :math:`X`. 
  

**Lösung zu Teil a**

Bei einem Laplace-Experiment weist jedes Ereignis die gleiche Wahrscheinlichkeit auf.
Für diese Aufgabe würde das bedeuten, dass jedes Ereignis mit der Wahrscheinlichkeit von
:math:`\frac{1}{6}` auftritt. Da in dem Zufallsexperiment eine ideale Münze
verwendet wird, können wir die Wahrscheinlichkeiten der Ereignisse
folgendermaßen bestimmen:

.. math::

  P(ZZ) = P(WW) = \left(\frac{1}{2}\right)^2 = \frac{1}{4}

  P(ZWZ) = P(ZWW) = P(WZZ) = P(WZW) = \left(\frac{1}{2}\right)^3 = \frac{1}{8}

Da mindestens eine der Wahrscheinlichkeiten nun verschieden von :math:`\frac{1}{6}` ist,
handelt es sich bei dem Zufallsexperiment um kein Laplace-Experiment.

Die unterschiedlichen Wahrscheinlichkeiten werden auch deutlich, wenn man das
Zufallsexperiment mit Sage simuliert.

.. sagecellserver::

  sage: def wurf():
  sage:     return Set(["W", "Z"]).random_element()

  sage: def ereignis():
  sage:     ereignis = wurf()+wurf()
  sage:     if ereignis[0] != ereignis[1]:
  sage:         ereignis = ereignis+wurf()
  sage:     return ereignis

  sage: ereignismenge = {"ZZ": 0, "WW": 0,
  sage:                  "ZWZ": 0, "ZWW": 0, "WZZ": 0, "WZW": 0}
  sage: iterationen = 10000
  sage: for n in range(iterationen):
  sage:     e = ereignis()
  sage:     ereignismenge[e] = ereignismenge[e]+1
  sage: for k, v in ereignismenge.items():
  sage:     print "Häufigkeit des Ereignisses %3s: %5i" % (k, v)

**Lösung zu Teil b**

Mit den in Teilaufgabe a) bestimmten Wahrscheinlichkeiten können wir den Erwartungswert
von :math:`X` bestimmen. Er ergibt sich zu

.. math::
  
  E(X)=2\cdot P(ZZ)+2\cdot P(WW) + 3\cdot P(ZWZ) + 3\cdot P(ZWW) + 3\cdot P(WZZ) + 3\cdot P(WZW) = 2{,}5.

Eine Simulation mit Sage liefert:

.. sagecellserver::

  sage: iterationen = 10000
  sage: x = 0
  sage: for n in range(iterationen):
  sage:     x = x+len(ereignis())
  sage: print "Der Erwartungswert von X beträgt etwa: ", "%4.2f" % float(x/iterationen)
