Bayerisches Abitur in Mathematik 2014
-------------------------------------

.. admonition:: Aufgabe

  In Urne A befinden sich zwei rote und drei weiße Kugeln. Urne B enthält drei
  rote und zwei weiße Kugeln. Betrachtet wird folgendes Zufallsexperiment:
     
     Aus Urne A wird eine Kugel zufällig entnommen und in Urne B gelegt;
     danach wird aus Urne B eine Kugel zufällig entnommen und in Urne A
     gelegt.

  a) Geben Sie alle Möglichkeiten für den Inhalt der Urne A nach der
     Durchführung des Zufallsexperiments an.

  b) Betrachtet wird das Ereignis E: „Nach Durchführung des Zufallsexperiments
     befinden sich wieder drei weiße Kugeln in Urne A.“ Untersuchen
     Sie, ob das Ereignis E eine größere Wahrscheinlichkeit als sein
     Gegenereignis hat.

**Lösung zu Teil a**     

Da es nur zwei verschiedene Farben unter den Kugeln gibt und das Zufallsexperiment
zwei Schritte hat, betrachten wir vier mögliche Abläufe des Experiments, bei denen
wir die jeweils verschobenen Kugeln und den Endinhalt der Urne A betrachten:

  1. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\color{red}{\bullet}}{\underset{\color{\red}{\bullet}}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ`

  2. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\color{red}{\bullet}}{\underset{\circ}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \circ \circ \circ \circ`

  3. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\circ}{\underset{\color{red}{\bullet}}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ`

  4. :math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ
     \overset{\circ}{\underset{\circ}{\rightleftarrows}}
     \color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ
     \quad\Rightarrow
     \mathrm{A}: \color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ`

Der erste und der vierte Ablauf liefern also das gleiche Ergebnis. Die drei möglichen Endkonfigurationen
für die Urne A sind somit: :math:`\color{red}{\bullet} \circ \circ \circ \circ`,
:math:`\color{red}{\bullet} \color{red}{\bullet} \circ \circ \circ` und
:math:`\color{red}{\bullet} \color{red}{\bullet} \color{red}{\bullet} \circ \circ`.

**Lösung zu Teil b**

Um die Wahrscheinlichkeit zu bestimmen, dass Urne A am Ende wieder drei weiße Kugeln enthält,
berechnen wir die Wahrscheinlichkeiten für den ersten und den vierten
Ablauf in Teilaufgabe a, die beide am Ende zu drei weißen Kugeln in Urne
A führen.

  1. Die Wahrscheinlichkeit, zunächst eine rote Kugel aus Urne A zu
     ziehen, beträgt :math:`\frac{2}{5}`, da zwei der fünf Kugeln rot sind.
     Anschließend sind 4 der 6 Kugeln in Urne B rot.
     Die Wahrscheinlichkeit, nun wiederum eine rote Kugel
     zu ziehen, beträgt also :math:`\frac{4}{6}=\frac{2}{3}`. Die Wahrscheinlichkeit
     des gesamten Ablaufs beträgt dann :math:`\frac{2}{5}\cdot\frac{2}{3}=\frac{4}{15}`.

  2. Entsprechend beträgt die Wahrscheinlichkeit, beide Male eine weiße
     Kugel zu ziehen, :math:`\frac{3}{5}\cdot\frac{1}{2}=\frac{3}{10}`.

Die Gesamtwahrscheinlichkeit für das Ereignis E errechnet sich aus der Summe der Wahrscheinlichkeiten
der beiden Abläufe:

.. math::

  p(\mathrm{E}) = \frac{4}{15}+\frac{3}{10}=\frac{17}{30}\approx0.5667

Die Wahrscheinlichkeit des Gegenereignisses 

.. math::

  p(\bar{\mathrm{E}})=1-p(\mathrm{E})=\frac{13}{30}

ist demzufolge kleiner als die
Wahrscheinlichkeit des Ereignisses E.

Mit Sage haben wir zwei Möglichkeiten, die Wahrscheinlichkeit für das Ereignis E zu bestimmen. Die erste
Möglichkeit besteht darin, jeden möglichen Zug von zwei (unterscheidbaren) Kugeln durchzugehen. Um die
Wahrscheinlichkeit für das Ereignis E zu berechnen, gehen wir davon aus, dass jede Kugel mit gleicher
Wahrscheinlichkeit gezogen werden kann. Mit dieser Lösung können wir auch alle Möglichkeiten
für den Inhalt der Urne A (Teilaufgabe a) überprüfen.	

.. sagecellserver::

    sage: haeufigkeit_e = 0
    sage: gesamtzahl = 0
    sage: A0 = ['w', 'w', 'w', 'r', 'r']
    sage: B0 = ['w', 'w', 'r', 'r', 'r']
    sage: for a_kugel in A0:
    ...       A1 = A0[::]
    ...       B1 = B0[::]
    ...       A1.remove(a_kugel)
    ...       B1.append(a_kugel)
    ...       for b_kugel in B1:
    ...           print 'A->B:', a_kugel,
    ...           A2 = A1[::]
    ...           A2.append(b_kugel)
    ...           print '  B->A:', b_kugel,
    ...           gesamtzahl = gesamtzahl+1
    ...           if A2.count('w') == 3:
    ...               haeufigkeit_e = haeufigkeit_e+1
    ...               print "   A: ", A2, "<==="
    ...           else:
    ...               print "   A: ", A2
    sage: print "p(E) = %s/%s" % (haeufigkeit_e, gesamtzahl)

Eine etwas leichtere Lösung besteht darin, die Wahrscheinlichkeit für
das Ereignis E durch eine Simulation zu bestimmen. Hierfür verschieben
wir eine zufällige Kugeln von Urne A nach Urne B, sowie eine weitere
zufällige Kugel in umgekehrter Richtung und zählen dabei, wie oft das
Ereignis E bei einer bestimmten Anzahl an Durchführungen eintritt.


.. sagecellserver::

    sage: import random
    sage: def verschiebe_kugel(urne1, urne2):
    ...       kugel = random.choice(urne1)
    ...       urne1.remove(kugel)
    ...       urne2.append(kugel)
    ...       return urne1, urne2
    sage: haeufigkeit_e = 0
    sage: iterationen = 100000
    sage: for _ in range(iterationen):
    ...       A = ['w', 'w', 'w', 'r', 'r']
    ...       B = ['w', 'w', 'r', 'r', 'r']
    ...       verschiebe_kugel(A, B)
    ...       verschiebe_kugel(B, A)
    ...       if A.count('w') == 3 :
    ...           haeufigkeit_e = haeufigkeit_e+1
    sage: print "Näherung für die Wahrscheinlichkeit p(E) = ", float(haeufigkeit_e/iterationen)









