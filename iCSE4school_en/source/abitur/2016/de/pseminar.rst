Bayerisches Abitur in Mathematik 2016
-------------------------------------

.. admonition:: Aufgabe

  An einem P-Seminar nehmen acht Mädchen und sechs Jungen teil, darunter Anna und Tobias.
  Für eine Präsentation wird per Los aus den Teilnehmerinnen und Teilnehmern ein Team aus
  vier Personen zusammengestellt.
  
  a) Geben Sie zu jedem der folgenden Ereignisse einen Term an, mit dem die Wahrscheinlichkeit
     des Ereignisses berechnet werden kann.    

     A: „Anna und Tobias gehören dem Team an.“    

     B: „Das Team besteht aus gleich vielen Mädchen und Jungen.“
  
  b) Beschreiben Sie im Sachzusammenhang ein Ereignis, dessen Wahrscheinlichkeit durch den
     folgenden Term berechnet werden kann:
     
  .. math::

    \frac{\binom{14}{4}-\binom{6}{4}}{\binom{14}{4}}

**Lösung zu Teil a**

Das kombinatorische Problem ein Team aus vier Personen bei insgesamt 14 Teilnehmern
zusammenzustellen, entspricht im Urnenmodell dem Ziehen von 4 Kugeln ohne Zurücklegen
und ohne Beachtung der Reihenfolge. Dementsprechend gibt es

.. math::

  \binom{14}{4} = 1001

Möglichkeiten.

Da in Ereignis :math:`A` die anderen Teammitglieder neben Anna und Tobias beliebig sind,
gibt es :math:`\binom{12}{2}=66` verschiedene Möglichkeiten das Ereignis zu realisieren.
Dementsprechend ergibt sich die Wahrscheinlichkeit für das Ereigis A zu

.. math::

  P(A) = \frac{66}{1001} \approx 6{,}6\%

Anhand einer Simulation mit Sage können wir diesen Wert überprüfen. Dabei werden
4 Elemente aus den Zahlen von 1 bis 14 gezogen und Anna und Tobias die Werte
:math:`1` bzw. :math:`2` zugeordnet.

.. sagecellserver::

  sage: iterationen = 30000
  sage: haeufigkeit = 0
  sage: for _ in range(iterationen):
  sage:     team = Subsets(14, 4).random_element()
  sage:     if 1 in team and 2 in team:
  sage:         haeufigkeit = haeufigkeit+1
  sage: print('Näherung für die Wahrscheinlichkeit P(A) = %4.1f%%' % float(100*haeufigkeit/iterationen))

Um Ereignis B zu realisieren, gibt es :math:`\binom{8}{2}=28` Möglichkeiten Mädchen
auszuwählen und :math:`\binom{6}{2}=15` Möglichkeiten bei den Jungen.
Zusammen gibt es also :math:`28\cdot 15 = 420` Möglichkeiten, ein Team aus zwei
Mädchen und zwei Jungen zusammenzustellen. 
Die zugehörige Wahrscheinlichkeit ergibt sich dann zu

.. math::

  P(B) = \frac{420}{1001} \approx 42{,}0\% 

Auch dieses Ergebnis können wir mit Sage ähnlich wie zuvor durch eine Simulation
überprüfen. Den Mädchen sind die Zahlen kleiner gleich :math:`8` zugeordnet, die
Zahlen über :math:`8` entsprechen Jungen.

.. sagecellserver::

  sage: iterationen = 30000
  sage: haeufigkeit = 0
  sage: for _ in range(iterationen):
  sage:     team = Subsets(14, 4).random_element()
  sage:     anzahl_maedchen = 0
  sage:     anzahl_jungen = 0
  sage:     for mitglied in team:
  sage:         if mitglied <= 8:
  sage:             anzahl_maedchen = anzahl_maedchen+1
  sage:         else:
  sage:             anzahl_jungen = anzahl_jungen+1
  sage:     if anzahl_maedchen == anzahl_jungen:
  sage:         haeufigkeit = haeufigkeit+1
  sage: print('Näherung für die Wahrscheinlichkeit P(B) = %4.1f%%' % float(100*haeufigkeit/iterationen))

**Lösung zu Teil b**

Die gegebene Wahrscheinlichkeit kann zu

.. math::

  1-\frac{\binom{6}{4}}{\binom{14}{4}}

vereinfacht werden. Das Ereignis ist also komplementär zu dem Ereignis, das durch die
Wahrscheinlichkeit

.. math::

  \frac{\binom{6}{4}}{\binom{14}{4}}

beschrieben wird. Letztere gehört beispielsweise zum Ereignis „Das Team besteht nur aus Jungen.“,
da die Anzahl der Möglichkeiten, 4 Jungen auszuwählen, gerade :math:`\binom{6}{4}` entspricht.
Das komplementäre Ereignis dazu ist dann „Mindestens ein Mädchen gehört dem Team an.“, welchem
die angebene Wahrscheinlichkeit zugeordnet werden kann.

Die zweite Simulation aus Teil a lässt sich leicht anpassen, um unsere
Interpretation zu überprüfen.

.. sagecellserver::

  sage: iterationen = 30000
  sage: haeufigkeit = 0
  sage: for _ in range(iterationen):
  sage:     team = Subsets(14, 4).random_element()
  sage:     for mitglied in team:
  sage:         if mitglied <= 8:
  sage:             haeufigkeit = haeufigkeit+1
  sage:             break
  sage: p = (binomial(14, 4)-binomial(6, 4))/binomial(14, 4)
  sage: print('vorgegebene Wahrscheinlichkeit = %6.3f' % float(p))
  sage: print('simulierte Wahrscheinlichkeit = %6.3f' % float(haeufigkeit/iterationen))
