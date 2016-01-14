Bayerisches Abitur in Mathematik 2015
-------------------------------------

.. admonition:: Aufgabe

  In Urne A befinden sich zwei rote und drei weiße Kugeln. Urne B enthält drei
  rote und zwei weiße Kugeln. Betrachtet wird folgendes Zufallsexperiment.
     
     Aus Urne A wird eine Kugel zufällig entnommen und in Urne B gelegt;
     danach wird aus Urne B eine Kugel zufällig entnommen und in Urne A
     gelegt.

  a) Geben Sie alle Möglichkeiten für den Inhalt der Urne A nach der Durch-
     führung des Zufallsexperiments an.

  b) Betrachtet wird das Ereignis E: „Nach Durchführung des Zufallsexperi-
     ments befinden sich wieder drei weiße Kugeln in Urne A.“ Untersuchen
     Sie, ob das Ereignis E eine größere Wahrscheinlichkeit als sein Gegen-
     ereignis hat.

**Lösung zu Teil a**     

Da es nur zwei verschiedene Farben unter den Kugeln gibt und das Zufallsexperiment
zwei Schritte hat, betrachten wir vier mögliche Abläufe des Experiments, bei denen
wir die jeweils verschobenen Kugeln und den Endinhalt der Urne A betrachten:

  1. A :math:`\overset{\mathrm{r}{\rightarrow}}` B, A :math:`\underleftarrow{\mathrm{rot}}` B, 
     :math:`\quad \Rightarrow` A=\{rrwww\}

  2. A :math:`\underrightarrow{\mathrm{weiß}}` B, A :math:`\underleftarrow{\mathrm{weiß}}` B, 
     :math:`\quad \Rightarrow` A=\{rrwww\}

  3. A :math:`\underrightarrow{\mathrm{rot}}` B, A :math:`\underleftarrow{\mathrm{weiß}}` B, 
     :math:`\quad \Rightarrow` A=\{rwwww\}

  4. A :math:`\underrightarrow{\mathrm{weiß}}` B, A :math:`\underleftarrow{\mathrm{rot}}` B, 
     :math:`\quad \Rightarrow` A=\{rrrww\}

Die ersten beiden Abläufe liefern also das gleiche Ergebnis. Die drei möglichen Endkonfigurationen
für die Urne A sind somit: A=\{rwwww\}, A=\{rrwww\} und A=\{rrrww\}.

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

Um die Wahrscheinlichkeit zu berechnen, dass Urne A am Ende wieder drei weiße Kugeln enthält,
berechnen wir die Wahrscheinlichkeiten von den ersten beiden Abläufen des Experiments aus
Teilaufgabe a.

  1. Die Wahrscheinlichkeit zunächst eine rote Kugel aus Urne A zu ziehen beträgt :math:`2/5`.
     Anschließend befinden sich vier rote und zwei weiße Kugeln in Urne B. Die Wahrscheinlichkeit
     nun wiederum eine rote Kugel zu ziehen beträgt also :math:`2/3`. Die Wahrscheinlichkeit
     dieses Ablaufs beträgt also :math:`2/5\cdot2/3=4/15`

  2. Entsprechend beträgt die Wahrscheinlichkeit beide Male eine weiße Kugel zu ziehen den Wert
     :math:`3/5\cdot1/2=3/10`

Die Gesamtwahrscheinlichkeit für das Ereignis E errechnet sich aus der Summe der Wahrscheinlichkeiten
der beiden Abläufe:

.. math::

  p(\mathrm{E}) = \frac{4}{15}+\frac{3}{10}=\frac{17}{30}\approx0.5667

Die Wahrscheinlichkeit des Gegenereignisses 

.. math::

  p(\bar{\mathrm{E}})=1-p(\mathrm{E})=13/30

ist demzufolge kleiner als die
Wahrscheinlichkeit des Ereignisses E.

Mit Sage haben wir zwei Möglichkeiten die Wahrscheinlichkeit für das Ereignis E zu bestimmen. Die erste
Möglichkeit ist es, jeden Möglichen Zug von zwei (unterscheidbaren) Kugeln durchzugehen. Um die
Wahrscheinlichkeit für das Ereignis E zu berechnen, gehen wir davon aus, dass jede Kugel mit gleicher
gleicher Wahrscheinlichkeit gezogen werden kann. Mit dieser Lösung können wir auch alle Möglichkeiten
für den Inhalt der Urne A (Teilaufgabe a) überprüfen.	

.. sagecellserver::

    sage: whitecountlist = [0] * 6
    sage: totalcount = 0
    sage: A_original = ['w','w','w','r','r']
    sage: A = A_original[::]
    sage: B = ['w','w','r','r','r']
    sage: for a_ball in A_original:
    sage:     A = A_original[::]
    sage:     A.remove(a_ball)
    sage:     B.append(a_ball)
    sage:     for b_ball in B:
    sage:         A.append(b_ball)
    sage:         print "A: ", A
    sage:         whitecountlist[A.count('w')] += 1
    sage:         totalcount += 1
    sage:         del A[-1]
    sage:     B.remove(a_ball)
    sage: print " p(E) = ", whitecountlist[3]/totalcount, " and p(!E) = ", 1-whitecountlist[3]/totalcount

Eine etwas leichtere Lösung ist es, die Wahrscheinlichkeit für das Ereignis E empirisch zu bestimmen. 
Hierfür simulieren wir das zufällige Ziehen aus den Urnen und zählen, wie oft das Ereignis E bei einer
bestimmten Anzahl an Durchführungen eintritt.


.. sagecellserver::

    sage: import random
    sage: successcount = 0
    sage: testiterations = 100000
    sage: for i in range(testiterations):
    sage:     A = ['w','w','w','r','r']
    sage:     B = ['w','w','r','r','r']
    sage:     ball = random.choice(A)
    sage:     A.remove(ball)
    sage:     B.append(ball)
    sage:     ball = random.choice(B)
    sage:     B.remove(ball)
    sage:     A.append(ball)
    sage:     if(A.count('w') == 3):
    sage:         successcount += 1
    sage: print "empiric probability p(E) = ", float(successcount/testiterations), "p(!E) = ", float(1-successcount/testiterations)









