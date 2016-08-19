Bayerisches Abitur in Mathematik 2013
-------------------------------------

.. admonition:: Aufgabe

  Der Umfrage zufolge hätte der Kandidat der Partei A etwa 50% aller Stimmen
  erhalten, wenn die Wahl zum Zeitpunkt der Befragung stattgefunden hätte. Ein
  Erfolg im ersten Wahlgang, für den mehr als 50% aller Stimmen erforderlich
  sind, ist demnach fraglich. Deshalb rät die von der Partei A eingesetzte
  Wahlkampfberaterin in der Endphase des Wahlkampfs zu einer zusätzlichen
  Kampagne. Der Schatzmeister der Partei A möchte die hohen Kosten, die mit
  einer zusätzlichen Kampagne verbunden wären, jedoch möglichst vermeiden.
  
  a) Um zu einer Entscheidung über die Durchführung einer zusätzlichen
     Kampagne zu gelangen, soll die Nullhypothese "Der Kandidat der Partei A
     würde gegenwärtig höchstens 50% aller Stimmen erhalten." mithilfe einer
     Stichprobe von 200 Wahlbeteiligten auf einem Signifikanzniveau von 5%
     getestet werden. Bestimmen Sie die zugehörige Entscheidungsregel.

  b) Begründen Sie, dass die Wahl der Nullhypothese für den beschriebenen
     Test in Einklang mit dem Anliegen der Wahlkampfberaterin steht, einen
     Erfolg bereits im ersten Wahlkampf zu erreichen.

**Lösung zu Teil a**

Wir wollen die Nullhypothese widerlegen. Dafür gehen wir davon aus, dass 50%
der Wähler den Kandidaten der Partei A wählen. Bei einer Umfrage von 200
Personen, müssen wir nun die Anzahl der Personen bestimmen die für unseren
Kandidaten wählen, sodass das Signifikanzniveau bei 5% liegt. Die Gleichung

.. math::

  1- P^{200}_{0{,}5}(X \leq k) \leq 5\%

Muss also nach :math:`k` gelöst werden. Aus einem Tafelwerk zur
Binomialverteilung können wir :math:`k=112` bestimmen.

Mit Sage können wir dieses Experiment simulieren und überprüfen bei wie vielen
Umfragen mindestens 112 Personen angeben würden Kandidat A zu wählen, obwohl
die Wahrscheinlichkeit dass eine Person Kandidat A wählt bei 50% liegt.


.. sagecellserver::

  sage: from random import random
  sage: iteration = 5000
  sage: p = 0.5
  sage: n = 200
  sage: k = 112
  sage: success = 0

  sage: def umfrage():
  sage:     i = 0
  sage:     for _ in range(n):
  sage:         if(random() < p):
  sage:             i += 1
  sage:     return i >= k

  sage: for _ in range(iteration):
  sage:     if(umfrage()):
  sage:         success += 1

  sage: print("Die Wahrscheinlichkeit, dass bei einer Umfrage von {} Personen mindestens {} Personen Kandidat A wählen, obwohl die Wahrscheinlichkeit sich für Kandidat A zu entscheiden bei {:3.1%} liegt, beträgt:  {:4.3%} ".format(n, k, float(p), float(success/iteration)))


.. end of output

**Lösung zu Teil b**

Mit der gewählten Nullhypothese kann relativ sicher gesagt werden, dass bei
Erfolg der Kandidat der Partei A gewählt wird. Stimmt die erste Umfrage, dass
der Kandidat nur ungefähr 50% der stimmen erhält, so wird die Nullhypothese
wahrscheinlich widerlegt und die Wahlhelferin bekommt die Mittel für eine
zusätzliche Kampagne genehmigt.

