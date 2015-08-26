=====================================
Bayerisches Abitur in Mathematik 2015
=====================================

Prüfungsteil A (CAS)
====================

Quelle des Aufgabentexts: `http://www.isb.bayern.de/download/16164/abiturpruefung_mathematik_cas_2015_pruefungsteil_a.pdf <http://www.isb.bayern.de/download/16164/abiturpruefung_mathematik_cas_2015_pruefungsteil_a.pdf>`_

*Aufgabengruppe 1*
==================

Analysis
--------
Aufgabe 1
.........

Bestimmen Sie für :math:`x\in\mathbb{R}` die Lösungen der Gleichung
:math:`(4x-3)\cdot\ln\left(x^2-5x+7\right)=0`.

.. admonition:: Lösung

  Die Nullstellen der Funktion auf der linken Seite erhält man durch Bestimmung
  der Nullstellen der beiden Faktoren.

  Aus der Forderung :math:`4x-3=0` folgt durch Auflösen nach :math:`x`
  unmittelbar die Nullstelle :math:`x_1 = 3/4`.

  Der zweite Faktor verschwindet, wenn das Argument des Logarithmus gleich Eins
  ist. Daraus ergibt sich die Forderung :math:`x^2-5x+7=1`. Die Lösung der daraus 
  resultierenden quadratischen Gleichung :math:`x^2-5x+6=0` ergibt sich zu

  .. math::

     x_{2,3} = \frac{5\pm\sqrt{25-24}}{2}.

  Damit erhalten wir zwei weitere Nullstellen :math:`x_2=2` und :math:`x_3=3`.

  Dieses Ergebnis lässt sich leicht mit Sage überprüfen:

  .. sagecellserver::

    sage: x = var('x')
    sage: solve((4*x-3)*ln(x^2-5*x+7) == 0, x)

  .. end of output

Aufgabe 2
.........

Gegeben sind die in :math:`\mathbb{R}` definierten Funktionen :math:`f, g` und
:math:`h` mit :math:`f(x)=x^2-x+1`, :math:`g(x)=x^3-x+1` und
:math:`h(x)=x^4+x^2+1`.

a) Die Abbildung zeigt den Graphen einer der drei Funktionen. Geben Sie an, um
   welche Funktion es sich handelt. Begründen Sie, dass der Graph die anderen
   beiden Funktionen nicht darstellt.

.. image:: figs/abiturpruefung_mathematik_cas_2015_pruefungsteil_a_1_2_a.png
   :align: center

.. admonition:: Lösung

  Die vorgegebene Funktion hat zwei Extrema. Damit kommt die Funktion
  :math:`f(x)` nicht in Frage, da die Ableitung einer quadratischen Funktion nur
  eine Nullstelle besitzt. Zudem kann die vorgegebene Funktion negative Werte
  annehmen. Dies schließt die Funktion :math:`h(x)` aus. Bei der dargestellten
  Funktion handelt es sich also offenbar um die Funktion :math:`g(x)`. Wir
  überprüfen die Vermutung mit Sage:
  
  .. sagecellserver::
  
      sage: ranges = {'xmin': -2, 'xmax': 2.5, 'ymin': -2.5, 'ymax': 2.5}
      sage: p = sum([plot(x^2-x+1, color='blue', **ranges),
      ...            plot(x^3-x+1, color='red', **ranges),
      ...            plot(x^4+x^2+1, color='green', **ranges)])
      sage: p.show(figsize=(2.7, 3))
  
  .. end of output
  
  In der Tat passt der rot dargestellte Funktionsgraph der Funktion :math:`g(x)`
  zu der Vorgabe.

b) Die erste Ableitungsfunktion von :math:`h` ist :math:`h'`. Bestimmen Sie den    Wert von :math:`\int_0^1h'(x)\mathrm{d}x`.

.. admonition:: Lösung

  Die Stammfunktion der Ableitung einer Funktion ist die Funktion selbst. Daher
  folgt
  
  .. math::
  
     \int_0^1h'(x)\mathrm{d}x = h(1)-h(0) = 3-1 = 2.
  
  In Sage differenzieren wir zur Überprüfung zunächst die Funktion
  :math:`h(x)` und bestimmen dann das gesuchte bestimmte Integral:
  
  .. sagecellserver::
  
      sage: from sage.symbolic.integration.integral import definite_integral
      sage: h(x) = x^4+x^2+1
      sage: dh(x) = diff(h, x)
      sage: print 'Ableitung von h(x):', dh
      sage: print 'Wert des bestimmten Integrals:', definite_integral(dh(x), x, 0, 1)
  
  .. end of output
  
  Dieses Ergebnis erhalten wir natürlich auch, wenn wir entsprechend der obigen
  Überlegung die Funktionswerte an den Integrationsgrenzen voneinander abziehen:
  
  .. sagecellserver::
  
      sage: h(x) = x^4+x^2+1
      sage: h(1)-h(0)
  
  .. end of output

Aufgabe 3
.........

Gegeben ist die in :math:`\mathbb{R}` definierte Funktion
:math:`f: x\mapsto \sin(2x)`. Geben Sie Amplitude, Periode und Wertemenge der
Funktion :math:`f` an.

.. admonition:: Lösung

  Die Sinusfunktion hat die Amplitude 1, Periode :math:`2\pi` und den
  Wertebereich :math:`[-1, 1]`. Die gegebene Funktion :math:`f` hat die gleiche
  Amplitude und den gleichen Wertebereich. Aufgrund des Faktors 2 im Argument
  ist die Periode allerdings nur :math:`\pi`.
  
  Wir können diese Aussagen mit Sage überprüfen:
  
  .. sagecellserver::
  
       sage: plot(sin(2*x), (0, 2*pi), figsize=(4, 2.5))
  
  .. end of output

Aufgabe 4
.........

Geben Sie jeweils den Term einer Funktion an, die die angegebene(n)
Eigenschaft(en) besitzt.

a) Die Funktion :math:`g` hat die maximale Definitionsmenge :math:`]-\infty; 5]`.

.. admonition:: Lösung

  Eine Funktion mit Definitionsmenge :math:`[0; \infty[` ist
  :math:`x\mapsto\sqrt{x}`. Daraus erhalten wir mit :math:`g(x)=\sqrt{5-x}`
  eine mögliche Funktion mit der gewünschten Definitionsmenge.

b) Die Funktion :math:`k` hat in :math:`x=2` eine Nullstelle und in
   :math:`x=-3` eine Polstelle ohne Vorzeichenwechsel. Der Graph von :math:`k`
   hat die Gerade mit der Gleichung :math:`y=1` als Asymptote.

.. admonition:: Lösung

  Die Funktion :math:`k(x)` lässt sich als gebrochen-rationale Funktion wählen.
  Wegen der Nullstelle bei :math:`x=2` muss der Zähler mindestens einen Faktor
  :math:`x-2` enthalten. Eine Polstelle bei :math:`x=-3` ohne Vorzeichenwechsel
  erhält man mit einem Faktor :math:`(x+3)^2` im Nenner. Um das gesuchte
  asymptotische Verhalten für :math:`\vert x\vert\to\infty` zu erhalten, muss
  dann auch der Faktor im Zähler quadriert werden. Damit erhalten wir die
  Funktion
  
  .. math::
  
     k(x)=\frac{(x-2)^2}{(x+3)^2}.
  
  Mit Hilfe von Sage zeigen wir nun, dass diese Funktion in der Tat das
  gewünschte Verhalten aufweist.
  
  Nullstelle bei :math:`x=2`:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: plot(k, xmin=0, xmax=4, ymin=-0.1, ymax=0.5, figsize=(4, 2.5))
  
  .. end of output
  
  Polstelle bei :math:`x=-3` ohne Vorzeichenwechsel:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: plot(k, xmin=-6, xmax=0, ymin=0, ymax=1000, figsize=(4, 2.5))
  
  .. end of output
  
  Annäherung an die Gerade :math:`y=1` für :math:`\vert x\vert\to 1`:
  
  .. sagecellserver::
  
      sage: k(x) = ((x-2)/(x+3))^2
      sage: xmax = 1000
      sage: xmin = -xmax
      sage: p = plot(k, xmin=xmin, xmax=xmax, ymin=0.5, ymax=1.5)
      sage: p = p+line([(xmin, 1), (xmax, 1)], linestyle='dashed')
      sage: p.show(figsize=(4, 2.5))
  
  .. end of output

Aufgabe 5
.........

Gegeben ist die Schar der in :math:`\mathbb{R}` definierten Funktionen
:math:`f_a : x\mapsto x\mathrm{e}^{ax}` mit
:math:`a\in\mathbb{R}\backslash\{0\}`. Ermitteln Sie, für welchen Wert von
:math:`a` die erste Ableitung von :math:`f_a` an der Stelle :math:`x=2` den
Wert 0 besitzt.

.. admonition:: Lösung

  Für die Ableitung der gegebenen Funktion erhält man
  
  .. math::
  
     \frac{\mathrm{d}f_a}{\mathrm{d}x} = (1+ax)\mathrm{e}^{ax}
  
  und damit
  
  .. math::
  
     \left.\frac{\mathrm{d}f_a}{\mathrm{d}x}\right\vert_{x=2} =
      (1+2a)\mathrm{e}^{2a}.
  
  Die Ableitung verschwindet somit, wenn :math:`1+2a=0`, also für :math:`a=-1/2`.
  
  Diese Rechnung lässt sich mit Sage überprüfen:
  
  .. sagecellserver::
  
      sage: a = var('a')
      sage: f(x, a) = x*exp(a*x)
      sage: df = f.derivative(x)
      sage: print 'Ableitung von f:', df
      sage: solve(df(2, a) == 0, a)
  
  .. end of output

Stochastik
----------

Aufgabe 1
.........

Bei der Wintersportart Biathlon wird bei jeder Schießeinlage auf fünf Scheiben
geschossen. Ein Biathlet tritt bei einem Einzelrennen zu einer Schießeinlage
an, bei der er auf jede Scheibe einen Schuss abgibt. Diese Schießeinlage wird
modellhaft durch eine Bernoullikette mit der Länge 5 und der
Trefferwahrscheinlichkeit :math:`p` beschrieben.

a) Geben sie für die folgenden Ereignisse A und B jeweils einen Term an, der
   die Wahrscheinlichkeit eines Ereignisses in Abhängigkeit von :math:`p`
   beschreibt.  
 | A: „Der Biathlet trifft bei genau vier Schüssen.“   
 | B: „Der Biathlet trifft nur bei den ersten beiden Schüssen.“

.. admonition:: Lösung

  Wir beginnen mit der Wahrscheinlichkeit mit der Aussage B zutrifft. Da die
  Wahrscheinlichkeit eines Treffers durch :math:`p` gegeben ist, ist die
  Wahrscheinlichkeit nicht zu treffen gleich :math:`1-p`. Damit ergibt sich die
  Wahrscheinlichkeit, dass es sich genau bei den ersten beiden Schüssen um
  Treffer handelt, zu :math:`p^2(1-p)^3`. Wir überprüfen diese Aussage durch eine 
  Simulation. Dabei dürfen wir allerdings keine perfekte Übereinstimmung erwarten.
  
  .. sagecellserver::
  
      sage: p = 0.7
      sage: rounds = 1000000
      sage: goal = [True, True, False, False, False]
      sage: successes = 0
      sage: for round in range(rounds):
      ...       result = [random() < p for _ in range(5)]
      ...       if result == goal:
      ...           successes = successes+1
      sage: print N(successes/rounds), p^2*(1-p)^3
  
  .. end of output
  
  Wenden wir uns nun der Aussage A zu. Die Wahrscheinlichkeit für eine ganz
  bestimmte Sequenz von Treffern und Fehlschüssen ist in Analogie zur vorigen
  Überlegung bei nun vier Treffern gleich :math:`p^4(1-p)`. Allerdings ist nicht
  festgelegt, der wievielte Schuss ein Fehlschuss sein soll. Die Zahl der
  Möglichkeiten, :math:`M` Ereignisse auf :math:`N` Positionen zu verteilen,
  ist durch den Binomialkoeffizenten
  
  .. math::
  
     \binom{N}{M} = \frac{N!}{M!(N-M)!}
  
  gegeben. In unserem Fall ergibt sich somit für die gesuchte Wahrscheinlichkeit
  
  .. math::
  
     \binom{5}{4}p^4(1-p) = 5p^4(1-p).
  
  Nachdem wir kurz den hier verwendeten Binomialkoeffizienten verifiziert haben
  
  .. sagecellserver::
  
      sage: binomial(5, 4)
  
  .. end of output
  
  überprüfen wir unser Ergebnis für die Wahrscheinlichkeit wieder mit Hilfe einer 
  Simulation:
  
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

b) Erläutern Sie anhand eines Beispiels, dass die modellhafte Beschreibung der
   Schießeinlage durch eine Bernoullikette unter Umständen der Realität nicht
   gerecht wird.

.. admonition:: Lösung

  Die Bernoullikette nimmt an, dass die Trefferwahrscheinlichkeit für jeden
  Schuss gleich ist. In Wirklichkeit kann es aber zum Beispiel sein, dass die
  Trefferwahrscheinlichkeit nach einem Fehlschuss abnimmt.

Aufgabe 2
.........

Ein Moderator lädt zu seiner Talkshow drei Politiker, eine Journalistin und
zwei Mitglieder einer Bürgerinitiative ein. Für die Diskussionsrunde ist eine
halbkreisförmige Sitzordnung vorgesehen, bei der nach den Personen
unterschieden wird und der Moderator den mittleren Platz einnimmt.

a) Geben Sie einen Term an, mit dem die Anzahl der möglichen Sitzordnungen
berechnet werden kann, wenn keine weiteren Einschränkungen berücksichtigt
werden.

.. admonition:: Lösung

  Wenn wir alle möglichen Sitzverteilungen erzeugen wollen, haben wir für den
  ersten Platz die Wahl unter 6 Personen, für den zweiten Platz bleibt noch die
  Wahl zwischen 5 Personen, usw. Insgesamt gibt es also
  
  .. math::
  
     6!=6\cdot5\cdot4\cdot3\cdot2\cdot1=720
  
  Möglichkeiten.
  
  Bezeichnen wir den Moderator mit M, die Politiker mit 1, 2 und 3, die
  Journalistin mit J und die Mitglieder der Bürgerinitiative mit B und b, so
  können wir alle Sitzordnungen auflisten:
  
  .. sagecellserver::
  
      sage: for n, a in enumerate(Arrangements(["1", "2", "3", "J", "B", "b"], 6)):
      ...       if not n % 8:
      ...           print "%3i" % (n/8+1),
      ...       print "%sM%s" % ("".join(a[:3]), "".join(a[3:])),
      ...       if not (n+1) % 8:
      ...           print
  
  .. end of output
  
  Unsere Liste umfasst tatsächlich :math:`8\cdot90=720` verschiedene
  Sitzordnungen.

b) Der Sender hat festgelegt, dass unmittelbar neben dem Moderator auf einer
   Seite die Journalistin und auf der anderen Seite einer der Politiker sitzen
   soll. Berechnen Sie unter Berücksichtigung dieser weiteren Einschränkung
   die Anzahl der möglichen Sitzordnungen.

.. admonition:: Lösung

  Bei der Besetzung der Stühle können wir zum Beispiel folgendermaßen vorgehen:
  Die Journalistin bekommt einen der beiden Stühle (2 Möglichkeiten), den anderen 
  Stuhl erhält dann einer der drei Politiker (3 Möglichkeiten), so dass noch vier 
  Personen auf die restlichen Stühle zu verteilen sind (in Analogie zur
  Überlegung aus Teilaufgabe a ergibt das :math:`4\cdot3\cdot2\cdot1=24`
  Möglichkeiten). Damit ergeben sich insgesamt :math:`2\cdot3\cdot24`
  Sitzordnungen. Diese können wir wiederum auflisten:
  
  .. sagecellserver::
  
      sage: persons = set(["1", "2", "3", "B", "b"])
      sage: n = 0
      ...   for jleft in (True, False):
      ...       for pmiddle in ("1", "2", "3"): 
      ...           for others in Arrangements(persons-set([pmiddle]), 4):
      ...               if jleft:
      ...                   a = "".join(others[:2])+"JM"+pmiddle+"".join(others[2:])
      ...               else:
      ...                   a = "".join(others[:2])+pmiddle+"MJ"+"".join(others[2:])
      ...               if not n % 8:
      ...                   print "%3i" % (n/8+1),
      ...               print a,
      ...               if not (n+1) % 8:
      ...                   print
      ...               n = n+1
  
  Wie erwartet erhalten wir :math:`18\cdot8=144` Sitzordnungen.

Geometrie
---------

Aufgabe 1
.........

Die Gerade g verläuft durch die Punkte A(0|1|2) und B(2|5|6).

a) Zeigen Sie, dass die Punkte A und B den Abstand 6 haben. Die Punkte C und D
   liegen auf g und haben von A jeweils den Abstand 12. Bestimmen Sie die
   Koordinaten von C und D.

.. admonition:: Lösung

  Der Verbindungsvektor von Punkt A nach Punkt B lautet (2, 4, 4) und hat damit
  die Länge :math:`\sqrt{2^2+4^2+4^2}=\sqrt{36}=6`. Die Punkte C und D ergeben
  sich, indem man das Doppelte des Verbindungsvektors zwischen A und B zum
  Ortsvektor von A addiert bzw. subtrahiert. Wir erhalten so die Punkte C(4|9|10) 
  und D(-4|-7|-6).
  
  Wir führen nun die entsprechenden Überlegungen mit der Hilfe von Sage durch.
  Zunächst berechnen wir den Abstand der Punkte A und B und bestimmen dann die
  Koordinaten der Punkte C und D. Abschließend überprüfen wir noch, ob der
  Abstand zwischen den Punkten C und D und dem Punkt A wie gewünscht gleich 12
  ist.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: print 'Länge des Verbindungsvektors von A nach B:', norm(b-a)
      sage: c = a+2*(b-a)
      sage: d = a-2*(b-a)
      sage: print 'Koordinaten von C:', c
      sage: print 'Koordinaten von D:', d
      sage: print 'Abstand der Punkte A und C:', norm(c-a)
      sage: print 'Abstand der Punkte A und D:', norm(d-a)
  
  .. end of output

b) Die Punkte A, B und E(1|2|5) sollen mit einem weiteren Punkt die Eckpunkte
   eines Parallelogramms bilden. Für die Lage des vierten Eckpunkts gibt es
   mehrere Möglichkeiten. Geben Sie für zwei dieser Möglichkeiten die
   Koordinaten des vierten Eckpunkts an.

.. admonition:: Lösung

  Man wählt zwei der drei möglichen Verbindungsvektoren und fügt an einen
  Verbindungsvektor den anderen Verbindungsvektor an, um den vierten Punkt zu
  erhalten.
  
  Im ersten Fall verwenden wir die Verbindungvektoren von A nach B und von A nach 
  E:
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: a_to_b = b-a
      sage: a_to_e = e-a
      sage: f1 = b+a_to_e
      sage: f2 = e+a_to_b
      sage: f1, f2
  
  .. end of output
  
  Die beiden Berechnungswege ergeben, wie es auch sein muss, das gleiche
  Resultat. Der vierte Eckpunkt ist also zum Beispiel F(3|6|9).
  
  Ein anderes Parallelogramm ergibt sich, wenn der Punkt B diagonal gegenüber
  dem neuen Punkt liegt.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: b_to_a = a-b
      sage: b_to_e = e-b
      sage: f1 = a+b_to_e
      sage: f2 = e+b_to_a
      sage: f1, f2
  
  .. end of output
  
  Der Vollständigkeit halber berechnen wir noch den dritten möglichen Eckpunkt.
  
  .. sagecellserver::
  
      sage: a = vector([0, 1, 2])
      sage: b = vector([2, 5, 6])
      sage: e = vector([1, 2, 5])
      sage: e_to_a = a-e
      sage: e_to_b = b-e
      sage: f1 = a+e_to_b
      sage: f2 = b+e_to_a
      sage: f1, f2

  .. end of output

Aufgabe 2
.........

Betrachtet wird die Pyramide ABCDS mit A(0|0|0), B(4|4|2), C(8|0|2), D(4|-4|0)
und S(1|1|-4). Die Grundfläche ist ein Parallelogramm.

a) Weisen Sie nach, dass das Parallelogramm ABCD ein Rechteck ist.

.. admonition:: Lösung

  Ein Rechteck liegt vor, wenn ausgehend von einem Eckpunkt der Winkel zwischen
  den beiden kürzesten Verbindungsvektoren zu den anderen Eckpunkten gleich
  90 Grad ist.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: print ' Abstand A-B:', N(norm(b-a))
      sage: print ' Abstand A-C:', N(norm(c-a))
      sage: print ' Abstand A-D:', N(norm(d-a))
      sage: (b-a).dot_product(d-a)
  
  .. end of output
  
  Die Verbindungsvektoren von A nach B und D stehen demnach senkrecht
  aufeinander. Der Punkt C liegt diagonal gegenüber A. Es liegt somit ein
  Rechteck vor. Da diese Lösung von der Vorgabe abhängt, dass ABCD ein
  Parallelogramm ist, überprüfen wir noch die anderen drei Innenwinkel.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: (c-b).dot_product(a-b), (d-c).dot_product(b-c), (a-d).dot_product(c-d)
  
  .. end of output

b) Die Kante [AS] steht senkrecht auf der Grundfläche ABCD. Der Flächeninhalt
   der Grundfläche beträgt :math:`24\sqrt{2}`. Ermitteln Sie das Volumen der
   Pyramide.

.. admonition:: Lösung

  Nachdem der Verbindungsvektor von A nach S senkrecht auf der Grundfläche steht, 
  gibt seine Länge die Höhe :math:`h` der Pyramide an. Die Grundfläche ist als
  :math:`A=24\sqrt{2}` vorgegeben, was wir kurz überprüfen wollen:
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: d = vector([4, -4, 0])
      sage: norm(a-b)*norm(a-d)
  
  .. end of output
  
  Die Höhe der Pyramide ist
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: s = vector([1, 1, -4])
      sage: norm(s-a)
  
  .. end of output
  
  Somit ergibt sich das Volumen zu :math:`V=\frac{h}{3}A=48`. Dieses Ergebnis
  lässt sich auch direkt mit Hilfe von Sage bestätigen.
  
  .. sagecellserver::
  
      sage: a = vector([0, 0, 0])
      sage: b = vector([4, 4, 2])
      sage: c = vector([8, 0, 2])
      sage: d = vector([4, -4, 0])
      sage: s = vector([1, 1, -4])
      sage: Polyhedron(vertices=[a, b, c, d, s]).volume()
  
  .. end of output
