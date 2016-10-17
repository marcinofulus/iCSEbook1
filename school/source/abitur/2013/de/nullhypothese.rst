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
     Kampagne zu gelangen, soll die Nullhypothese „Der Kandidat der Partei A
     würde gegenwärtig höchstens 50% aller Stimmen erhalten.“ mithilfe einer
     Stichprobe von 200 Wahlberechtigten auf einem Signifikanzniveau von 5%
     getestet werden. Bestimmen Sie die zugehörige Entscheidungsregel.

  b) Begründen Sie, dass die Wahl der Nullhypothese für den beschriebenen
     Test in Einklang mit dem Anliegen der Wahlkampfberaterin steht, einen
     Erfolg bereits im ersten Wahlkampf zu erreichen.

**Lösung zu Teil a**

Wir wollen die Nullhypothese widerlegen. Dafür gehen wir davon aus, dass 50% der
Wähler den Kandidaten der Partei A wählen. Bei einer Umfrage unter 200 Personen
müssen wir nun die Anzahl :math:`k` der Personen bestimmen, die sich für unseren
Kandidaten aussprechen, sodass das Signifikanzniveau bei 5% liegt. Die Gleichung

.. math::

  1- P^{200}_{0{,}5}(X \leq k) \leq 0{,}05

muss also nach :math:`k` aufgelöst werden. Aus einem Tafelwerk zur
Binomialverteilung können wir :math:`k\approx112` bestimmen. Alternativ können wir
Sage heranziehen:

.. sagecellserver::

  sage: from scipy.stats import binom
  sage: gesamt = 200
  sage: p = 0.5
  sage: for zustimmend in (111, 112, 113):
  sage:     print "Signifikanzniveau für {} Zustimmungen: {:4.2f}%".format(
  sage:         zustimmend, (1-binom.cdf(zustimmend-1, gesamt, p))*100)

.. end of output

Zudem können wir die Umfrage simulieren und überprüfen, bei wie vielen
Umfragen mindestens 112 Personen angeben würden, Kandidat A zu wählen, obwohl
die Wahrscheinlichkeit, dass eine Person Kandidat A wählt, bei 50% liegt.


.. sagecellserver::

  sage: import numpy as np
  sage: from numpy.random import random_sample
  sage: wiederholungen = 10000
  sage: p = 0.5
  sage: personen = 200
  sage: schwelle = 112
  sage: fuer_A = random_sample((personen, wiederholungen)) < p
  sage: ueber_schwelle = np.sum(fuer_A, axis=0) >= schwelle
  sage: faelle = np.sum(ueber_schwelle)

  sage: print(("Die Wahrscheinlichkeit, dass bei einer Umfrage unter {} Personen mindestens "
               "{} Personen Kandidat A wählen,\nwenn die Wahrscheinlichkeit, sich für "
               "Kandidat A zu entscheiden, bei {:2.0%} liegt, beträgt:  {:3.2%} ").format(
            personen, schwelle, float(p), float(faelle)/wiederholungen))


.. end of output

**Lösung zu Teil b**

Mit der gewählten Nullhypothese kann relativ sicher gesagt werden, dass bei
mindestens 112 positiven Äußerungen der Kandidat der Partei A gewählt wird.
Stimmt die erste Umfrage, dass der Kandidat nur ungefähr 50% der Stimmen erhält,
so wird die Nullhypothese wahrscheinlich widerlegt und die Wahlhelferin bekommt
die Mittel für eine zusätzliche Kampagne genehmigt.
